import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconLayout.dart';
import 'cardLayout.dart';

const initialCardColor = Color(0xff6d9fb0);
const finalCardColor = Color(0xffF9A825);

enum Gender{
  M,
  F
}
// we can do thr same for all variables like bottom bar color and so on

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender gender;

//  Color male = initialCardColor;
//  Color female = initialCardColor;
//
//  void updateC(Gender gender){
//    if(gender == Gender.M){
//      if(male == initialCardColor){
//        male= finalCardColor;
//        female = initialCardColor;
//      }
//      else{
//        male=initialCardColor;
//      }
//    }
//
//   else {
//      if(female == initialCardColor){
//        female= finalCardColor;
//        male = initialCardColor;
//      }
//      else{
//        female=initialCardColor;
//      }
//    }
//
//
//  }

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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        gender = Gender.M;
                      });


                    },
                    child: ReusableCard(
                      gender == Gender.M ? finalCardColor : initialCardColor,
                      IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        gender = Gender.F;
                      });

                    },
                    child: ReusableCard(
                      gender == Gender.F ? finalCardColor : initialCardColor,
                      IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(initialCardColor, Text('yes'))),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(flex: 1, child: ReusableCard(initialCardColor, Text('Yes'))),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    initialCardColor,
                    Text('yes'),
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
