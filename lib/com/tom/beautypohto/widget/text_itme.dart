import 'package:flutter/material.dart';

class TextItem extends StatelessWidget {
  String title;
  String dec;

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
            child: Text(
              '$dec',
              style: TextStyle(color: Colors.black87, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }

  TextItem(this.title, this.dec);
}