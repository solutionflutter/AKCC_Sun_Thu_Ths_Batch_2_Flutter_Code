import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonClicking extends StatefulWidget {
  const ButtonClicking({Key key}) : super(key: key);

  @override
  _ButtonClickingState createState() => _ButtonClickingState();
}

class _ButtonClickingState extends State<ButtonClicking> {
  int change = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 250,
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: change == 1 ? Colors.red : Colors.black,
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: change == 2 ? Colors.yellow : Colors.black,
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: change == 3 ? Colors.green : Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: change == 1
                      ? Colors.red
                      : change == 2
                          ? Colors.yellow
                          : change == 3
                              ? Colors.green
                              : Colors.black,
                ),
                child: FlatButton(
                  onPressed: () {
                    if (change == 0) {
                      setState(() {
                        change = 1;
                      });
                    } else if (change == 1) {
                      setState(() {
                        change = 2;
                      });
                    } else if (change == 2) {
                      setState(() {
                        change = 3;
                      });
                    } else {
                      setState(() {
                        change = 0;
                      });
                    }
                  },
                  child: Text(
                    "Click",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
