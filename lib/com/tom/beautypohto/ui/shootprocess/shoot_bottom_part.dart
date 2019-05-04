import 'package:beautyphoto/com/tom/beautypohto/data/HomeMenu.dart';
import 'package:flutter/material.dart';

class ShootBottomPart extends StatelessWidget {
  HomeMenu homeMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildItem("无噪音"),
            buildItem("不模糊"),
            buildItem("服装突出"),
            buildItem("肩膀等高"),
            buildItem("中性表情"),
            buildItem("中性表情"),
            buildItem("双眼水平"),
            buildItem("头像居中"),
            buildItem("正面（人脸姿态自然）"),
          ],
        ),
      ),
    );
  }

  ShootBottomPart(this.homeMenu);
}

Padding buildItem(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
    child: Text(title, style: TextStyle(color: Colors.black87, fontSize: 14)),
  );
}
