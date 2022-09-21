// ignore_for_file: unused_local_variable

import 'dart:ffi';

import 'package:first_one_flutter/src/screens/second_screen.dart';
import 'package:first_one_flutter/src/screens/utils/theme.dart';
import 'package:flutter/material.dart';

import 'src/screens/home_screen.dart';

void main() {
  //runApp(MyApp());

runApp(MyApp());
}

//ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myThemeData,
      title: 'New Test App ',
      //initialRoute: '/second',
      // ignore: dead_code
      home: true ? HomeScreen() : SecondScreen(),
      // routes : {
      //   '/'  :        (context) => HomeScreen() ,
      //   '/second' :  (context) => SecondScreen() ,
      //   '/third' :  (context) => ThirdScreen() ,
      //   '/fourth' :  (context) => FourthScreen() ,

      // }
    );
  }
}
