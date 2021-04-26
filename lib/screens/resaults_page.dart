import '/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constance.dart';
class Resaults extends StatelessWidget {

  final String bmiResault;
  final String resaultText;
  final String interpertaion;

  Resaults({@required this.bmiResault, @required this.resaultText, @required this.interpertaion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Your resaults'
        ),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Resault',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resaultText.toUpperCase(),
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiResault,
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    interpertaion,
                    textAlign:TextAlign.center,
                    style: TextStyle(
                      color:Color(0xff8d8e98),
                      fontWeight: FontWeight.bold,
                     
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            height: bottomContainerHeight,
            color: Colors.pink,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'reset Calculate'.toUpperCase(),
                style: kLargeButton,
              ),
            ),
          )
        ],

      )
    );
  }
}