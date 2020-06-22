import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String title;
  BottomButton({this.onTap, this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Padding(
//                padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 40.0),  instead of this we can do that
          padding: EdgeInsets.only(bottom: 20.0),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff492540),
                  fontSize: 27.0),
            ),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.09,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
//        color: Colors.yellow.shade800,
        color: Color(0xffe88774),
      ),
    );
  }
}
