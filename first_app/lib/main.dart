import 'package:flutter/material.dart';

// 앱 시작 부분
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목")
      ),
      body: Row( // Colunm, Row
        mainAxisSize: MainAxisSize.max, // 가로로 꽉 채우기
        mainAxisAlignment: MainAxisAlignment.center, // 가로 방향으로 가운데 정렬하기 justify-content
        crossAxisAlignment: CrossAxisAlignment.center, // 세로 방향으로 가운데 정렬하기 align-items
        // mainAxis 기본방향, CrossAxis 반대 축
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0)
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0)
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0)
          )
        ]
      ) // 본문 들어갈 부분
    );
  }
}