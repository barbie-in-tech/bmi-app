//import 'dart:ui';
//import 'dart:io';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';


void main() {
//  FlutterError.onError = (FlutterErrorDetails details) {
//    FlutterError.dumpErrorToConsole(details);
//    if (kReleaseMode)
//      exit(1);
//  };
  runApp(BMICalculator());
}


class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff011d40)
      ),
      home: InputPage(),
    );
  }
}



