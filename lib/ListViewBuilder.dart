import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Listviewbuilder extends StatefulWidget {
  const Listviewbuilder({Key key}) : super(key: key);

  @override
  _ListviewbuilderState createState() => _ListviewbuilderState();
}

class _ListviewbuilderState extends State<Listviewbuilder> {
  List<String> information = [
    "Name : Saied Ahammed Foyez",
    "Father Name : Md.Eskender Ali",
    "Mother Name : Mst.Rawsan Ara",
    "Address : Mirpur-2,Dhaka-1216",
    "Home Town : Khumarkhali,Kushtia",
    "College Name : Bangladesh Raifles",
    "Nationality : Bangladeshi",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 450,
          width: 350,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: index == 0
                      ? Colors.red.shade600
                      : index == 1
                          ? Colors.blue.shade700
                          : index == 2
                              ? Colors.orange.shade600
                              : index == 3
                                  ? Colors.green.shade600
                                  : index == 4
                                      ? Colors.grey.shade500
                                      : index == 5
                                          ? Colors.yellow.shade700
                                          : Colors.black,
                ),
                child: Center(
                  child: Text(
                    "${information[index]}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              );
            },
            itemCount: information.length,
          ),
        ),
      ),
    );
  }
}
