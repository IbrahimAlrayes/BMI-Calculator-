import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: FloatingActionButton(
        onPressed: (() {
          Navigator.pop(context);
        }),
      )),
    );
  }
}
