import 'package:beautyphoto/com/tom/beautypohto/data/Data.dart';
import 'package:beautyphoto/com/tom/beautypohto/ui/MovieList.dart';
import 'package:beautyphoto/com/tom/beautypohto/page/shoot_processPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Main',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('全球专业&检测拍摄平台'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.only(top: 40, left: 40, right: 40),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 30.0,
                  crossAxisSpacing: 40.0,
                  childAspectRatio: 0.7),
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ShootProcessPage(datas.HomeMenus[index]);
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Image.asset(
                            datas.HomeMenus[index].pic,
                            fit: BoxFit.cover,
                            width: 36,
                            height: 48,
                          ),
//                          decoration: BoxDecoration(boxShadow: [
//                            BoxShadow(
//                                color: Colors.black26, offset: Offset(4.0, 4.0))
//                          ]),
                        ),
                        SizedBox(width: 0, height: 14),
                        Text(
                          "${datas.HomeMenus[index].menu}",
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        SizedBox(width: 0, height: 5),
                        Text(
                          "${datas.HomeMenus[index].dec}",
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                );
              }, childCount: datas.HomeMenus.length),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MovieList();
          }));
        },
        child: Text(
          "MovieList",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
