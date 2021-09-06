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

  final items = List.generate(100, (index) => index).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목")
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: items.map((i) => Text('$i')).toList(),
        ),
      ),
      // 본문 들어갈 부분
    );
  }
}