import 'package:flutter/material.dart';
import 'app_background.dart';

var homePageKey = GlobalKey<_HomePageState>();

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading:
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              // Pressed Action
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.info, color: Colors.white),
              onPressed: () {
                // Pressed Action
              },
            ),
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white),
              onPressed: () {
                // Pressed Action
              },
            ),
          ],
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
//              AppBackgroundPage(),
            ],
          ), // appBar
        ), // プロパティに AppBar Widget を追加
      ),
    );
  }
}
