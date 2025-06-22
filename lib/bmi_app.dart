import 'package:bmi/widgets/rounded_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMIApp extends StatefulWidget {
  @override
  State<BMIApp> createState() => _BMIAppState();
}

class _BMIAppState extends State<BMIApp> {
  TextEditingController wtController = TextEditingController();
  TextEditingController ftController = TextEditingController();
  TextEditingController inController = TextEditingController();
  var result = "";
  var bgColor = Colors.lightBlueAccent.shade100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'BMI App',
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMI',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 21,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: wtController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.line_weight),
                    label: Text('Enter your weight (in Kgs)'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: ftController,
                  decoration: InputDecoration(
                      label: Text('Enter your height (in Feet)'),
                      prefixIcon: Icon(Icons.height),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      )),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text('Enter your height (in Inches)'),
                    prefixIcon: Icon(Icons.height),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),

                Container(
                  width: 170,
                  height: 50,
                  child: RoundedButton(
                    btnName: 'Calculate',
                    bgColor: Colors.lightBlueAccent.shade100,
                    icon: Icon(
                      FontAwesomeIcons.calculator,
                      color: Colors.white,
                    ),
                    callback: () {
                      var wt = wtController.text.toString();
                      var ft = ftController.text.toString();
                      var inch = inController.text.toString();
                      if (wt != "" && ft != "" && inch != "") {
                        var iwt = int.parse(wt);
                        var ift = int.parse(ft);
                        var incht = int.parse(inch);
                        var tinch = (ift * 12) + incht;
                        var tcm = tinch * 2.54;
                        var tm = tcm / 100;
                        var bmi = iwt / (tm * tm);
                        var msg = "";
                        if (bmi > 25) {
                          msg = "You're Overweight!!";
                          bgColor = Colors.red.shade100;
                        } else if (bmi < 18) {
                          msg = "You're Underweight!!";
                          bgColor = Colors.lightGreen.shade100;
                        } else {
                          msg = "You're Healthy!!";
                          bgColor = Colors.yellow.shade100;
                        }
                        setState(() {
                          result =
                              '$msg \n Your BMI is ${bmi.toStringAsFixed(4)}';
                        });
                      } else {
                        setState(() {
                          result = "Enter all required fields!!";
                        });
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  result,
                  style: TextStyle(fontSize: 19),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
