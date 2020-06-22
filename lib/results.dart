import 'package:bmi_calculator/bottom.dart';
import 'package:flutter/material.dart';

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
                Color(0xff492540),
                Color(0xff4d2743),
                Color(0xff5c2d4f),
                Color(0xff693259),
                Color(0xff5c2d4f),
                Color(0xff4d2743),
                Color(0xff492540),
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
                    color: Color(0xffe88774),
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Color(0xffe39271),
                ),
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resText,
                      style: TextStyle(
                        color: Color(0xff235211),
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmiNum,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff492540),
                        fontWeight: FontWeight.bold,
                        fontSize: 100.0,
                      ),
                    ),
                    Text(
                      bmiInterpret,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: Color(0xff492540), fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
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
