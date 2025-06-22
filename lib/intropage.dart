import 'package:bmi/bmi_app.dart';
import 'package:bmi/faqs.dart';
import 'package:bmi/signuppage.dart';
import 'package:bmi/widgets/aboutuspage.dart';
import 'package:bmi/widgets/rounded_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff9890e3), Color(0xffb1f4cf)],
          begin: FractionalOffset(1.0, 0.0),
          end: FractionalOffset(0.0, 1.0),
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BMI Application',
                style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 27,
              ),
              Container(
                  width: 120,
                  height: 120,
                  child: Image.asset('assets/images/img3.png')),
              SizedBox(
                height: 27,
              ),
              Center(
                child: Container(
                  width: 320,
                  height: 270,
                  child: Text(
                        'Welcome to the BMI (Body Mass Index) App,your personal health companion '
                        'designed to help you keep track of your body mass index easily and '
                        'efficiently. Understanding your BMI is an important step in managing '
                        'your overall health and well-being. This app provides a user-friendly '
                        'interface and a variety of features that make calculating and monitoring '
                        'your BMI simple and insightful.',
                    style: TextStyle(color: Colors.white, fontSize: 16, height: 1.5
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(
                height: 27,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 160,
                      height: 40,
                      child: RoundedButton(
                        btnName: 'BMI App',
                        bgColor: Colors.lightBlueAccent.shade100,
                        icon: Icon(
                          FontAwesomeIcons.calculator,
                          color: Colors.white,
                        ),
                        callback: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BMIApp(),
                              ));
                        },
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 160,
                      height: 40,
                      child: RoundedButton(
                        btnName: 'FAQs',
                        bgColor: Colors.lightBlueAccent.shade100,
                        icon: Icon(
                          Icons.question_answer_outlined,
                          color: Colors.white,
                        ),
                        callback: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FAQsPage(),
                              ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 160,
                      height: 40,
                      child: RoundedButton(
                        btnName: 'About Us',
                        bgColor: Colors.lightBlueAccent.shade100,
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        callback: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AboutUsPage(),
                              ));
                        },
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 160,
                      height: 40,
                      child: RoundedButton(
                        btnName: 'Log Out',
                        bgColor: Colors.lightBlueAccent.shade100,
                        icon: Icon(
                          Icons.logout_rounded,
                          color: Colors.white,
                        ),
                        callback: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signuppage(),
                              ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
