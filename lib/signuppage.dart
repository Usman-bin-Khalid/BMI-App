import 'dart:developer';

import 'package:bmi/bmi_app.dart';
import 'package:bmi/loginpage.dart';
import 'package:bmi/widgets/rounded_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'uihelper.dart';

class Signuppage extends StatefulWidget {
  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var msg = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 34,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff2af598),
            Color(0xff009efd),
          ],
              begin: FractionalOffset(1.0, 0.0),
              end: FractionalOffset(0.0, 1.0),
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 120,
                    height: 120,
                    child: Image.asset('assets/images/img4.png')),
                SizedBox(
                  height: 20,
                ),
                UiHelper.CustomTextField(
                  nameController,
                  'Enter Your Name',
                  Icons.person,
                  false,
                ),
                SizedBox(
                  height: 10,
                ),
                UiHelper.CustomTextField(phoneController, 'Enter Your Phone no',
                    Icons.phone_android, false),
                SizedBox(
                  height: 10,
                ),
                UiHelper.CustomTextField(emailController, 'Enter Your Email',
                    Icons.email_rounded, false),
                SizedBox(
                  height: 10,
                ),
                UiHelper.CustomTextField(passwordController,
                    'Enter Your Password', Icons.password, true),
                SizedBox(
                  height: 20,
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       var name = nameController.text.toString();
                //       var phone = phoneController.text.toString();
                //       var email = emailController.text.toString();
                //       var password = passwordController.text.toString();
                //       if (name == "" &&
                //           phone == "" &&
                //           email == "" &&
                //           password == "") {
                //         msg = "Enter all required fields";
                //       } else {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //               builder: (context) => LoginPage(),
                //             ));
                //       }
                //       setState(() {});
                //     },
                //     child: Text(
                //       'Sign Up',
                //       style: TextStyle(color: Colors.black),
                //     )),

                Container(
                  width: 180,
                  height: 50,
                  child: RoundedButton(
                    btnName: 'Sign Up',
                    icon: Icon(Icons.lock, color: Colors.white,),
                    callback: () {
                      var name = nameController.text.toString();
                      var phone = phoneController.text.toString();
                      var email = emailController.text.toString();
                      var password = passwordController.text.toString();
                      if (name == "") {
                        msg = 'Enter all required fields!!';
                      } else if (phone == "") {
                        msg = 'Enter all required fields!!';
                      }
                      else if(email == ""){
                        msg = "Enter all required fields";
                      }else if(password == ""){
                        msg = 'Enter all required fields';
                      }
                      else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      }
                      setState(() {});
                    },
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? ', style: TextStyle(color: Colors.white, fontSize: 19),),
                    InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                     },
                        child: Text('LogIn', style: TextStyle(color: Colors.white, fontSize: 24),)),
                  ],
                ),
                Center(
                    child: Text(
                  msg,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
                Container(
                  height: 150,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
