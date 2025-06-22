import 'dart:async';

import 'package:bmi/bmi_app.dart';
import 'package:bmi/signuppage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signuppage(),));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             colors: [
               Color(0xff5ee7df), Color(0xffb490ca),
             ],
             begin: FractionalOffset(1.0, 0.0),
             end: FractionalOffset(0.0, 1.0),
           ),
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Center(child: Container(
                 width: 150,
                 height: 150,
                 child: Image.asset('assets/images/img3.png'))),
             Text('BMI App', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 34,
                 color: Colors.white ),),
           ],
         ),
       ),
     );
  }
}