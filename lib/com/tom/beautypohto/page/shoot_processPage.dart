import 'package:beautyphoto/com/tom/beautypohto/data/HomeMenu.dart';
import 'package:beautyphoto/com/tom/beautypohto/page/PhotoPage.dart';
import 'package:beautyphoto/com/tom/beautypohto/ui/shootprocess/shoot_bottom_part.dart';
import 'package:beautyphoto/com/tom/beautypohto/ui/shootprocess/shoot_process_top_part.dart';
import 'package:flutter/material.dart';

class ShootProcessPage extends StatefulWidget {
  HomeMenu homeMenu;

  @override
  _ShootProcessPageState createState() => new _ShootProcessPageState(homeMenu);

  ShootProcessPage(this.homeMenu);
}

class _ShootProcessPageState extends State<ShootProcessPage> {
  HomeMenu homeMenu;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('${homeMenu.menu}'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "友情提示：请仔细查看一下参数，特别是\"像素大小\",\"文件大小\"",
                      style: TextStyle(color: Colors.orange, fontSize: 12),
                    ),
                    SizedBox(width: 0, height: 10),
                    buildCenter(),
                    buildBottomButton(),
                  ],
                ))));
  }

  Expanded buildBottomButton() {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        //your elements here
        Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context){
                      return PhotoPage();
                    }));
                  },
                  color: Colors.blueAccent,
                  child: Text("去拍证件照", style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
        SizedBox(width: 0,height: 8,),
        Text("请你一定要统一软件获取你的相机和相册权限，否则无法拍照和保存电子照（点我获取权限～～）",
            style: TextStyle(color: Colors.orange))
      ],
    ));
  }

  Container buildCenter() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ShootProcessTopPart(homeMenu),
          Divider(indent: 15),
          ShootBottomPart(homeMenu),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }

  _ShootProcessPageState(this.homeMenu);
}
