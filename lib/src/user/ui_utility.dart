import 'package:flutter/material.dart';

class UIUtility {
  static OutlineInputBorder textfiledinputborder(){ //return type is OutlineInputBorder
    return OutlineInputBorder( //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color:Colors.blueAccent,
          width: 2,
        )
    );
  }

  static OutlineInputBorder textfiledfocusborder(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color:Colors.greenAccent,
          width: 2,
        )
    );
  }

  static OutlineInputBorder textfilederrorborder(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color:Colors.redAccent,
          width: 2,
        )
    );
  }
}

