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
                Color(0xff011d40),
                Color(0xff09255c),
                Color(0xff0d2f70),
                Color(0xff09255c),
                Color(0xff011d40),
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
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Colors.yellow.shade800,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          activeTrackColor: Colors.black87,
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                          overlayColor: Color(0x30F9A825),
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            inactiveColor: Colors.black26,
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
                                 icon :  FontAwesomeIcons.minus,
                              press : (){
                                  setState(() {
                                    weight--;
                                  });
                              },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Button(icon : FontAwesomeIcons.plus,
                              press: (){
                                setState(() {
                                  weight++;
                                });
                              },)
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
                        Text('AGE', style: kLabelStyle,),
                        Text(age.toString(), style: kNumStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Button(icon : FontAwesomeIcons.minus,
                            press: (){
                              setState(() {
                                age--;
                              });
                            },),
                            SizedBox(
                              width: 10.0,
                            ),
                            Button(icon : FontAwesomeIcons.plus,
                            press: (){
                              setState(() {
                                age++;
                              });
                            },)
                          ],
                        ),
                      ],
                    )
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

class Button extends StatelessWidget {
  final IconData icon;
  final Function press;
  Button( {this.icon , this.press});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: press,
      elevation: 6.0,
      child: Icon(
        icon,
        color: Colors.black87,
      ),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)),
      fillColor: Colors.yellow.shade800,
    );
  }
}
