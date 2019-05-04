import 'package:beautyphoto/com/tom/beautypohto/widget/circle_box.dart';
import 'package:flutter/material.dart';

class ColorItme extends StatelessWidget {
  String title;
  List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              '$title',
              style: TextStyle(color: Colors.black87, fontSize: 14),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                CirCleBox(Colors.blueAccent),
                SizedBox(
                  width: 8,
                  height: 0,
                ),
                CirCleBox(Colors.white),
                SizedBox(
                  width: 8,
                  height: 0,
                ),
                CirCleBox(Colors.red)
              ],
            ),
          )
        ],
      ),
    );
  }

  ColorItme(this.title, this.colors);
}