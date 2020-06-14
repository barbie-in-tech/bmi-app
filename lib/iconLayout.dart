import 'package:flutter/material.dart';

const kLabelStyle =  TextStyle(fontSize: 20.0);
class IconContent extends StatelessWidget {
  final IconData gender;
  final String text;

  IconContent(this.gender, this.text);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text, style: TextStyle(fontSize: 20.0),)
      ],
    );
  }
}
