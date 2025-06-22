import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundedButton({
     required this.btnName, this.icon, this.bgColor, this.textStyle, this.callback});

  @override
  Widget build(BuildContext context) {
     return ElevatedButton(onPressed: (){
       callback!();
     }, child:icon!=null? Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         icon!,
         SizedBox(
           width: 7,
         ),
         Text(btnName, style: TextStyle(fontSize: 18, color: Colors.white),),
       ],
     ): Text(btnName, style: TextStyle(fontSize: 18, color: Colors.white),),
       style: ElevatedButton.styleFrom(
       shadowColor: bgColor,
       backgroundColor: Colors.lightBlueAccent,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(25),
        ),
       ),
     );
  }
}
