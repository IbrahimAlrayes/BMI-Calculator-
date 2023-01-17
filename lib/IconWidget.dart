import 'package:flutter/material.dart';
class IconWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  TextStyle textStyle =TextStyle(color: Colors.grey, fontSize: 18);
  IconWidget({required this.text, required this.icon});

  // ignore: empty_constructor_bodies

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(
        //   height: 45,
        // ),
        Icon(
          icon,
          color: Colors.white,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}