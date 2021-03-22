import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

import 'delegate.dart';
import 'home_page.dart';

void main() {
  runApp(FairApp(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FairWidget(
        name: 'home_page',
        path: 'http://172.16.30.63:3000/home.json',
        data: {
          'title': 'Flutter Demo Home Page',
        },
        delegate: MyHomePageDelegate(),
      ) /*MyHomePage(title: 'Flutter Demo Home Page')*/,
    );
  }
}
