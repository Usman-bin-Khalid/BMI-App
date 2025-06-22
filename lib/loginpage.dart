import 'package:bmi/bmi_app.dart';
import 'package:bmi/intropage.dart';
import 'package:bmi/signuppage.dart';
import 'package:bmi/widgets/rounded_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var msg = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Log In',
          style: TextStyle(fontSize: 34),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xffe0c3fc), Color(0xff8ec5fc)],
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/img5.png')),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                obscureText: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      )),
                  label: Text(
                    'Enter Your Email',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: passwordController,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      )),
                  label: Text(
                    'Enter Your Password',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 27,
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       Icon(Icons.login);
              //       Colors.blueAccent;
              //
              //       var email = emailController.text.toString();
              //       var password = passwordController.text.toString();
              //       if (email == "" && password == "") {
              //         msg = "Enter all required fields";
              //       } else {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => BMIApp(),
              //             ));
              //       }
              //       setState(() {});
              //     },
              //     child: Text('LogIn')),
              Container(
                width: 180,
                height: 50,
                child: RoundedButton(
                  btnName: 'Log In',
                  bgColor: Colors.lightBlueAccent.shade100,
                  icon: Icon(Icons.lock_outline_rounded, color: Colors.white,),
                  callback: () {
                    var email = emailController.text.toString();
                    var password = passwordController.text.toString();
                    if (email == "") {
                      msg = 'Enter all required fields!!';
                    } else if (password == "") {
                      msg = 'Enter all required fields!!';
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IntroPage(),
                          ));
                    }
                    setState(() {});
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                msg,
                style: TextStyle(color: Color(0xff1a73e8), fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
