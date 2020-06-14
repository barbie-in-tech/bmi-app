import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconLayout.dart';
import 'cardLayout.dart';

const initialCardColor = Color(0xff6d9fb0);
const finalCardColor = Color(0xffF9A825);
const kNumStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w800,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color(0xff09255c),
                Color(0xff0d2f70),
                Color(0xff1a418a),
                Color(0xff0d2f70),
                Color(0xff09255c)
              ])),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
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
          Expanded(
              child: ReusableCard(
                  c: initialCardColor,
                  myChild: Column(
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
                      Slider(
                          value: height.toDouble(),
                          activeColor: Colors.yellow.shade800,
                          inactiveColor: Colors.black87,
                          min: 40,
                          max: 85,
                          onChanged: (double newVal) {
                            setState(() {
                              height = newVal.round();
                            });
                          })
                    ],
                  ))),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: ReusableCard(
                        c: initialCardColor, myChild: Text('Yes'))),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    c: initialCardColor,
                    myChild: Text('yes'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
            color: Colors.yellow.shade800,
          )
        ],
      ),
    );
  }
}
