import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BasicDesign extends StatefulWidget {
  const BasicDesign({Key key}) : super(key: key);

  @override
  _BasicDesignState createState() => _BasicDesignState();
}

class _BasicDesignState extends State<BasicDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 40,),
              child: Text("I am a flutter developer and trainer."
                  "I get knowledge of flutter form a government project. "
                  "After this course my aim is get online work or remote work",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.justify,
              ),
            ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Dhaka",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                ),
                Text("Khulna",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),),
                Text("Rajshahi",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w700,
                  ),),
                Text("Shylet",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),),
                Text("Jashore",
                  style: TextStyle(
                  fontSize: 16,
                  color: Colors.amber.shade700,
                  fontWeight: FontWeight.w700,
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
