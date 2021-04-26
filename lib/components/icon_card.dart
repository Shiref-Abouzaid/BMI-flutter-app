import 'package:flutter/material.dart';
import '/constance.dart';




class CardIcon extends StatelessWidget {
  final IconData  icon;
  final String    label;

  CardIcon({@required this.icon, @required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 75,
        ),
        SizedBox(height: 10),
        Text(
          label.toUpperCase(),
          style: kLabelTextStyle
        )
      ],
    );
  }
}