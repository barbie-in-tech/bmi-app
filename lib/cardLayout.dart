import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  final Color c;
  final Widget myChild;
  final Function onPressed;
  ReusableCard({this.c, this.myChild, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPressed,
      child: Container(
          child: myChild,

          decoration: BoxDecoration(
            color: c,
            borderRadius: BorderRadius.circular(
                10.0), // to change the border of top left corner container
          ),
          height: 250.0,
          width: double.infinity,
          margin: EdgeInsets.all(15.0),
        ),
    );
  }
}
