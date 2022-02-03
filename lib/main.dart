import 'package:flutter/material.dart';
import 'package:flutterbasicdesign/basicdesign.dart';
import 'buttonclicking.dart';
import 'ListViewBuilder.dart';
import 'forInLoopSkills.dart';
import 'GridViewBuilder.dart';
import 'contact.dart';
import 'pageview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageViewPages(),
    );
  }
}
