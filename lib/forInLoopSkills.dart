import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";

class ForInLoopSkills extends StatefulWidget {
  const ForInLoopSkills({Key key}) : super(key: key);

  @override
  _ForInLoopSkillsState createState() => _ForInLoopSkillsState();
}

class _ForInLoopSkillsState extends State<ForInLoopSkills> {
  List<String> skills = [
    "HTML5",
    "javaScript",
    "Flutter",
    "Firebase",
    "Google API",
    "Google Map",
    "Laravel",
    "Php",
    "C#",
    "Microsoft Office",
    "Object Orinted Programming Language",
    "Computer Network"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.spaceAround,
                runSpacing: 2,
                spacing: 2,
                children: [
                  for (var skill in skills)
                    Container(
                      height: 60,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade400,
                      ),
                      child: Center(
                        child: Text(
                          "$skill",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
