import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tricks_ui/Trick_1/Button_UI.dart';

class Page_Button extends StatefulWidget {
  const Page_Button({super.key});

  @override
  State<Page_Button> createState() => _ButtonState();
}

class _ButtonState extends State<Page_Button> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black54,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Button(width: 150,height: 150 ,text: 'push and pull',border: false,isboxShadow: true,ColorOfButton: Colors.white,Function: (){
               setState(() {
                 isPressed=!isPressed;
               });
               Timer(const Duration(milliseconds: 300), () {  setState(() {
                 isPressed=!isPressed;
               });
               });
             } ,radius: 60),
             const SizedBox(height: 25,),
             Button(width: 150,height: 150 ,text: 'one push',border: false,isboxShadow: true,ColorOfButton: Colors.white,Function: (){
               setState(() {
                 isPressed=!isPressed;
               });
             } ,radius: 60),
             const SizedBox(height: 25,),
             Button(width: 150,height: 150 ,text: 'with Border',border: true,isboxShadow: true,ColorOfButton: Colors.white,Function: (){
               setState(() {
                 isPressed=!isPressed;
               });
             } ,radius: 60),
           ],

        ),
      ),
    );
  }
}