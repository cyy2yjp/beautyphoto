import 'package:beautyphoto/com/tom/beautypohto/data/HomeMenu.dart';
import 'package:beautyphoto/com/tom/beautypohto/widget/color_itme.dart';
import 'package:beautyphoto/com/tom/beautypohto/widget/text_itme.dart';
import 'package:flutter/material.dart';

class ShootProcessTopPart extends StatelessWidget {
  HomeMenu homeMenu;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 8, bottom: 10),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.bookmark,
                size: 25,
                color: Colors.blueAccent,
              ),
              SizedBox(
                width: 10,
                height: 0,
              ),
              Text(
                "证件照规格要求",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
        ),
        Divider(
          height: 0.5,
        ),
        TextItem("像素大小", "${homeMenu.dec}"),
        TextItem("纸质照片尺寸", "25x35mm"),
        TextItem("照片格式", "jpg"),
        ColorItme("背景色", null),
      ],
    );
  }

  ShootProcessTopPart(this.homeMenu);
}
