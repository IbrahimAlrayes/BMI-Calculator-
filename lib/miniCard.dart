import 'package:flutter/material.dart';

class miniCard extends StatelessWidget {
  miniCard(
      {required this.cardChild,
      required this.backgroundColor,
      required this.onPress});

  final Color backgroundColor;
  final Widget cardChild;
  final Function() onPress;
  // final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(8.0),
        width: 170,
        height: 200,
        child: Card(
          color: backgroundColor,
          child: cardChild,
        ),
      ),
    );
  }
}
