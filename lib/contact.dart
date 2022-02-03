import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact_model.dart';

class Contact extends StatefulWidget {
  const Contact({Key key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<ContactInformation> info = [
    ContactInformation(
      name: "Rafidul",
      number: "+8801748302894",
    ),
    ContactInformation(
      name: "Nafisa Akter",
      number: "+8801644533404",
    ),
    ContactInformation(
      name: "Osmita mou Zinuk",
      number: "+8801644039997",
    ),
    ContactInformation(
      name: "Kaniz",
      number: "+8801846689552",
    ),
    ContactInformation(
      name: "Sumi Khaton",
      number: "+8801797773839",
    ),
    ContactInformation(
      name: "Al Rafi Amin",
      number: "+8801913913037",
    ),
    ContactInformation(
      name: "Tama Mondal",
      number: "+8801305379908",
    ),
    ContactInformation(
      name: "Sunjida Islam Shimmi",
      number: "+8801316819257",
    ),
    ContactInformation(
      name: "Antora Bairagi",
      number: "+8801881206436",
    ),
    ContactInformation(
      name: "Md.Dulal Shikdar",
      number: "+8801881206436",
    ),
    ContactInformation(
      name: "Md.Saiful Islam",
      number: "+8801992931935",
    ),
    ContactInformation(
      name: "Fabiha Busra Mridula",
      number: "+8801748643273",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Contact Information",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          iconSize: 15,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            iconSize: 15,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: ListView.builder(
            itemCount: info.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 80,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.blue.shade300,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: "${info[index].name}\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                          children: [
                            TextSpan(
                              text: "${info[index].number}",
                              style: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
