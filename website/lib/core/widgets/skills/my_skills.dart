import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class MySkills extends StatefulWidget {
  MySkills({required this.icon});
  String? icon;
  @override
  _MySkillsState createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ]
              : [],
        ),
        child: Center(
          child: Logo(
            '${widget.icon}',
            size: 40,
          ),
        ),
      ),
    );
  }
}
