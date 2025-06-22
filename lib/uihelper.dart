import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper{
  static CustomTextField(TextEditingController controller,  String text, IconData icondata, bool toHide,
      ){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: controller,
        obscureText: toHide,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          prefixIcon: Icon(icondata, color: Colors.grey,),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(
              color: Colors.blueAccent,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1,
              )
          ),

          label: Text(text, style: TextStyle(color: Colors.grey),),
        ),
      ),
    );

  }
  static CustomButton(VoidCallback voidcallback, String text){
    return ElevatedButton(onPressed: (){}, child: Text(text));

  }
}