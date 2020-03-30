import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'globals.dart';

void showtoast(String text, Color col) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIos: 1,
      backgroundColor: col,
      textColor: Colors.white,
      fontSize: 16.0
  );
}
ThemeData maintheme(){
  return ThemeData(
    // Define the default brightness and colors.
      brightness: Brightness.light,
      primaryColor: prim_color,
      accentColor: prim_color,

      // Define the default font family.
      fontFamily: 'Montserrat',

      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: TextTheme(
        headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        subtitle: TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic),
      ));
}
BoxDecoration bg(){
  return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Colors.grey[300]]),
      image: DecorationImage(
        image: AssetImage(bg_image),fit: BoxFit.cover,
        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
      ));
}