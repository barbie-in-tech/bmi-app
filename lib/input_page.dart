import 'package:bmi_calculator/results.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottom.dart';
import 'cardLayout.dart';
import 'function.dart';
import 'iconLayout.dart';
import 'results.dart';

const initialCardColor = Color(0xffe39271);

const finalCardColor = Color(0xffe88774);
const kNumStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w800,
  color: Color(0xff492540),
);

enum Gender { M, F }
// we can do thr same for all variables like bottom bar color and so on

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  int height = 60;
  int weight = 60;
  int age = 25;
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
//                Color(0xff011d40),
//                Color(0xff09255c),
//                Color(0xff0d2f70),
//                Color(0xff09255c),
//                Color(0xff011d40),
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
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.97,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      c: gender == Gender.M ? finalCardColor : initialCardColor,
                      myChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                      onPressed: () {
                        setState(() {
                          gender = Gender.M;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      c: gender == Gender.F ? finalCardColor : initialCardColor,
                      myChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                      onPressed: () {
                        setState(() {
                          gender = Gender.F;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: initialCardColor,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: kLabelStyle,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: kNumStyle,
                          ),
                          Text(
                            'in',
                            style: kLabelStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xff492540),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          activeTrackColor: Color(0xff492540),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                          overlayColor: Color(0x30492540),
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            inactiveColor: Color(0x30492540),
                            min: 40,
                            max: 85,
                            onChanged: (double newVal) {
                              setState(() {
                                height = newVal.round();
                              });
                            }),
                      )
                    ],
                  ))),
          Expanded(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.97,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                        c: initialCardColor,
                        myChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('WEIGHT', style: kLabelStyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  weight.toString(),
                                  style: kNumStyle,
                                ),
                                Text(
                                  'kg',
                                  style: kLabelStyle,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Button(
                                  icon: FontAwesomeIcons.minus,
                                  press: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Button(
                                  icon: FontAwesomeIcons.plus,
                                  press: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                        c: initialCardColor,
                        myChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: kLabelStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kNumStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Button(
                                  icon: FontAwesomeIcons.minus,
                                  press: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Button(
                                  icon: FontAwesomeIcons.plus,
                                  press: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Brain calculation = Brain(h: height, w: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Results(
                          bmiNum: calculation.calculateBMI(),
                          resText: calculation.getResult(),
                          bmiInterpret: calculation.getInterpretation(),
                        )),
              );
            },
            title: 'CALCULATE',
          )
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final IconData icon;
  final Function press;
  Button({this.icon, this.press});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: press,
      child: Icon(
        icon,
        color: Color(0xff492540),
      ),
      constraints: BoxConstraints.tightFor(
        width: MediaQuery.of(context).size.width * 0.12,
        height: MediaQuery.of(context).size.height * 0.055,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      fillColor: Color(0xffe88774),
    );
  }
}
