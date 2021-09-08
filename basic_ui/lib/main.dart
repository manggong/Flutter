import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;
  var _page = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Basic UI',
        style: TextStyle(color: Colors.black),
        ),
        actions: <Widget> [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
        centerTitle: true,
      ),
      body: _page[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '이용서비스',
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            label: '내 정보',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget> [
        Column(
          children: <Widget> [
            Icon(
              Icons.local_taxi,
              size: 40,
            ),
            Text('택시')
          ]
        ),
        Column(
          children: <Widget> [
            Icon(
              Icons.local_taxi,
              size: 40,
            ),
            Text('블랙')
          ]
        ),
        Column(
          children: <Widget> [
            Icon(
              Icons.local_taxi,
              size: 40,
            ),
            Text('바이크')
          ]
        ),
        Column(
          children: <Widget> [
            Icon(
              Icons.local_taxi,
              size: 40,
            ),
            Text('트럭')
          ]
        )
      ]
    );
  }

    Widget _buildMiddle() {
    return Text('Middle');
  }

    Widget _buildBottom() {
    return Text('Bottom');
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Text('Top');
  }

    Widget _buildMiddle() {
    return Text('Middle');
  }

    Widget _buildBottom() {
    return Text('Bottom');
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Text('Top');
  }

    Widget _buildMiddle() {
    return Text('Middle');
  }

    Widget _buildBottom() {
    return Text('Bottom');
  }
}