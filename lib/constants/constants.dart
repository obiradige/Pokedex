import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static const String title = 'Pokedex';

  static TextStyle titleTextStyle() {
    return  TextStyle(color: Colors.white ,fontSize: _calculateFontSize(48), fontWeight: FontWeight.bold,);
  }
  static TextStyle pokemonTextStyle() {
    return  TextStyle(color: Colors.white ,fontSize: _calculateFontSize(30), fontWeight: FontWeight.bold,);
  }

  static TextStyle pokemonTypeChipTextStyle() {
    return  TextStyle(color: Colors.white ,fontSize: _calculateFontSize(20));
  }
  static _calculateFontSize(int size){
    if(ScreenUtil().orientation == Orientation.portrait){
      return size.sp;
    }else{
      return (size * 1.5).sp;
    }
  }
  static getPokeInfoLabelTextStyle(){
    return TextStyle(fontSize: _calculateFontSize(20),fontWeight: FontWeight.bold);
  }
  static getPokeInfoTextStyle(){
    return TextStyle(fontSize: _calculateFontSize(16));
  }
}
