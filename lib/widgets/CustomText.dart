import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  CustomText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(color: Colors.black, letterSpacing: 1.5, fontWeight: FontWeight.bold),
    );
  }
}
