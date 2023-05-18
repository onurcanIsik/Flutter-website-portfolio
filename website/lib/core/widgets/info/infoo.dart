import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../colors/color.dart';

class Infoo extends StatelessWidget {
  const Infoo({required this.key}) : super(key: key);
  final Key key;

  @override
  Widget build(BuildContext context) {
    bool isTextSelected = false;
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 100),
                child: Text(
                  "Hello, I'm ",
                  style: GoogleFonts.comfortaa(
                    color: textColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 10),
                child: Text(
                  "ONURCAN IŞIK",
                  style: GoogleFonts.pacifico(
                    fontSize: 40,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 5),
                child: Text(
                  "FLUTTER DEVELOPER",
                  style: GoogleFonts.concertOne(
                    fontSize: 20,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: btnColor,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.email),
                      const SizedBox(width: 5),
                      Text(
                        "Email",
                        style: GoogleFonts.comfortaa(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 100, top: 100),
          child: CircleAvatar(
            radius: 150,
            backgroundImage: const AssetImage('assets/images/me.jpg'),
            backgroundColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
