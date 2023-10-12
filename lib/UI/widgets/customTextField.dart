import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  CustomTextField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
