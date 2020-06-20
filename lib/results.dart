import 'package:bmi_calculator/bottom.dart';
import 'package:flutter/material.dart';
import 'cardLayout.dart';

class Results extends StatelessWidget {

  final String bmiNum;
  final String resText;
  final String bmiInterpret;
  Results({this.bmiNum, this.resText, this.bmiInterpret});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xfffff0d6)),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color(0xff011d40),
                Color(0xff09255c),
                Color(0xff0d2f70),
                Color(0xff09255c),
                Color(0xff011d40),
              ])),
        ),
      ),
      body: Center(
        child: Column(
          
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
             // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              padding: EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 5.0),
              child: Text(
                'Your Results',

                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ReusableCard(
                c: Color(0xff6d9fb0),
                myChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resText,
                      style: TextStyle(
                        color: Color(0xff05450c),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmiNum,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 100.0,
                      ),
                    ),
                    Text(
                      bmiInterpret,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              title: 'RE-CALCULATE',
            )
          ],
        ),
      ),
    );
  }
}
