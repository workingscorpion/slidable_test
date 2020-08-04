import 'package:flutter/material.dart';
import 'package:slidable_test/slidablePage.dart';
import 'package:slidable_test/volunteerListTile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _list = [
    {
      'icon': 'assets/hedgehog.png',
      'code': 1,
      "company": '국민건강보험공단 인재개발원',
      'address': '구로1동, 구로2동',
      'item': '마스크, 소독제'
    },
    {
      'icon': 'assets/hedgehog.png',
      'code': 2,
      'company': '구로1동주민센터',
      'address': '구로1동',
      'item': '가정용 체온계, 라면, 참치캔'
    },
    {
      'icon': 'assets/hedgehog.png',
      'code': 3,
      'company': '지파운데이션',
      'address': '신림동',
      'item': '생리대키트'
    },
    {
      'icon': 'assets/hedgehog.png',
      'code': 4,
      'company': '구로2동주민센터',
      'address': '구로2동',
      'item': '가정용 체온계, 라면, 참치캔'
    },
    {
      'icon': 'assets/hedgehog.png',
      'code': 5,
      'company': '구로3동주민센터',
      'address': '구로3동',
      'item': '생리대키트'
    },
    {
      'icon': 'assets/hedgehog.png',
      'code': 6,
      'company': '구로4동주민센터',
      'address': '구로4동',
      'item': '마스크, 소독제'
    },
    {
      'icon': 'assets/hedgehog.png',
      'code': 7,
      'company': '구로5동주민센터',
      'address': '구로5동',
      'item': '마스크, 소독제'
    },
    {
      'icon': 'assets/hedgehog.png',
      'code': 8,
      'company': '구로6동주민센터',
      'address': '구로6동',
      'item': '마스크, 소독제'
    },
    {
      'icon': 'assets/hedgehog.png',
      'code': 9,
      'company': '구로7동주민센터',
      'address': '구로7동',
      'item': '마스크, 소독제'
    },
    {
      'icon': 'assets/hedgehog.png',
      'code': 10,
      'company': '구로8동주민센터',
      'address': '구로8동',
      'item': '마스크, 소독제'
    }
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: VolunteerListTile(this._list)));
  }
}
