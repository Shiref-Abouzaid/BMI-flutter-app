import 'package:flutter/material.dart';
class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundedIconButton({this.icon,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6,
      child:Icon(icon),

      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints:BoxConstraints.tightFor(
        width:56,
        height: 56
      ) ,
    );
  }
}