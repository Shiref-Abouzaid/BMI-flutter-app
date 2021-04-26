import 'package:flutter/material.dart';
import '/components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/components/icon_card.dart'; //card

import '/constance.dart';// constant styles
import '/components/roundediconbutton.dart'; //rounded icon 

import 'calculator_brain.dart';

import 'resaults_page.dart';
const Color   activeCardColor       = Color(0xff1D1F33);
const Color   inActiveCardColor     = Color(0xff111328);
const Color   bottomContainerColor  = Colors.pink;

      
enum Gender {
  male,
  female
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int userHeight = 175;
  int weight     = 75;
  int age        = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [

                Expanded(
                  child: ReusableCard(
                    color:selectedGender == Gender.male ? activeCardColor : inActiveCardColor,
                    cardChild: CardIcon(
                      icon:FontAwesomeIcons.mars,
                      label: 'Male'
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  )
                ),
                Expanded(
                  child: ReusableCard(
                    color:selectedGender == Gender.female ? activeCardColor : inActiveCardColor,
                    cardChild: CardIcon(
                      icon:FontAwesomeIcons.venus,
                      label: 'Female'
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  )
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
              cardChild:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height'.toUpperCase(),
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Text(
                        userHeight.toString(),
                        style:kLableBold,
                      ),
                      Text(
                        'CM',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    onChanged:(double newValue) {
                      setState(() {
                        userHeight = newValue.round();                  
                      });
                    },
                    activeColor:Colors.pink,
                    inactiveColor: Color(0xff8d8e98),
                    min: 130,
                    max: 200,
                    value: userHeight.toDouble(),
                  )
                ],
              )
            )
          ),
          Expanded(
            child:Row(
              children: [
                Expanded(
                  child:ReusableCard(
                    color: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight'.toUpperCase(),
                          style:kLabelTextStyle
                        ),
                        Text(
                          weight.toString(),
                          style: kLableBold,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              icon:Icons.remove,
                              onPressed: () {
                                setState(() {
                                  weight--;                       
                                });
                              },
                            ),
                            SizedBox(width:15),
                            RoundedIconButton(
                              icon:Icons.add,
                              onPressed: () {
                                setState(() {
                                  weight++;                                  
                                });
                              },
                            ),

                          ],
                        )
                      ],
                    ),
                  )
                ),
                Expanded(
                  child:ReusableCard(
                    color:  activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'age'.toUpperCase(),
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kLableBold,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 15),
                            RoundedIconButton(
                              icon:Icons.add,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        ), 
    
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top:10),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                CalculatorBrain calc = new CalculatorBrain(
                  height:userHeight,
                  weight: weight
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resaults(
                        resaultText: calc.getResault(),
                        bmiResault:calc.calculateBMI(),
                        interpertaion:calc.getInterpretation()
                      ) 
                    )
                );
              },
              child: Text(
                'Calculate'.toUpperCase(),
                style: kLargeButton
              )
            ),
          )
        ],
      ),
      // body: Container(
        
      //   height: 200,
      //   width: 170,
      //   margin:EdgeInsets.all(10),
      //   decoration: BoxDecoration(
      //     color:Color(0xff1D1F33),
      //     borderRadius:BorderRadius.circular(10.0)
      //   )
      // )

    );
  }
}

