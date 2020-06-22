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
//        scaffoldBackgroundColor: Color(0xff011d40)
        scaffoldBackgroundColor: Color(0xff492540),
      ),
      home: InputPage(),
    );
  }
}

// TODO : use media query for height wala thing on input page
//TODO : different containers for results wala page and height wala container
