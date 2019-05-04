import 'package:flutter/material.dart';

class CirCleBox extends StatelessWidget {
  Color boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: boxColor,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey[200])),
      width: 18,
      height: 18,
    );
  }

  CirCleBox(this.boxColor);
}