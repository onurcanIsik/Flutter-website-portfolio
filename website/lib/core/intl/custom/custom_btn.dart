import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/colors/color.dart';
import 'package:website/page/large_screen.dart';

class CustomBtn extends StatefulWidget {
  CustomBtn({super.key, required this.text});
  String? text;

  @override
  State<CustomBtn> createState() => _CustomBtnState();
}

class _CustomBtnState extends State<CustomBtn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width / 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 13),
              ),
            ],
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: bgColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              side: BorderSide(
                width: 4,
                color: btnColor,
              ),
            ),
            onPressed: () {
              setState(() {
                //! Scrollable.ensureVisible(key1.currentContext!);
                print("dnm");
              });
            },
            child: Text(
              widget.text!,
              style: GoogleFonts.comfortaa(
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
