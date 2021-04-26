import 'package:flutter/material.dart';

// class ReusableCard extends StatefulWidget {
//   @override
//   _ReusableCardState createState() => _ReusableCardState();
// }

// class _ReusableCardState extends State<ReusableCard> {
//   Color color;
// //Color(0xff1D1F33)
//   void setColor(color) {
//     this.color = color;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin:EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color:color,
        
//         borderRadius:BorderRadius.circular(10.0)
//       )
//     );
//   }
// }

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;
  ReusableCard({@required this.color, this.cardChild, this.onPress});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin:EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:color,
          borderRadius:BorderRadius.circular(10.0)
        )
      ),
    );
  }
}