import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Gridviewbuilder extends StatefulWidget {
  const Gridviewbuilder({Key key}) : super(key: key);

  @override
  _GridviewbuilderState createState() => _GridviewbuilderState();
}

class _GridviewbuilderState extends State<Gridviewbuilder> {
  List<String> images = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
    "images/image5.jfif",
    "images/image6.jpg",
    "images/image7.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: Container(
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage("${images[index]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
