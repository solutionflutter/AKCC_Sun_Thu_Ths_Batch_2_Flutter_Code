import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'basicdesign.dart';
import 'ListViewBuilder.dart';
import 'GridViewBuilder.dart';
import 'buttonclicking.dart';
import 'contact.dart';
import 'forInLoopSkills.dart';

class PageViewPages extends StatefulWidget {
  const PageViewPages({Key key}) : super(key: key);

  @override
  _PageViewPagesState createState() => _PageViewPagesState();
}

class _PageViewPagesState extends State<PageViewPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          BasicDesign(),
          ForInLoopSkills(),
          Gridviewbuilder(),
          Listviewbuilder(),
          ButtonClicking(),
          Contact(),
        ],
      ),
    );
  }
}
