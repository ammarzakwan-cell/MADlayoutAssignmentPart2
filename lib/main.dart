//MUHAMMAD AMMAR ZAKWAN BIN AMRAN 1712711
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tab/page/first_page.dart';
import 'package:flutter_tab/page/second_page.dart';
import 'package:flutter_tab/page/third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tab',
      // ignore: unnecessary_new
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Garage'),
                Tab(text: 'Bedroom'),
              ],
            ),
            title: const Text('My Home'),
          ),
          body: TabBarView(
            children: [
              FirstPage(),
              SecondPage(),
              ThirdPage(),
            ],
          ),
        ),
      ),
    );
  }
}
