import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import '../../../colors/color.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Image.asset('assets/images/bgg.png'),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 150, bottom: 10),
              child: SelectableText(
                "About Me",
                style: GoogleFonts.comfortaa(
                  color: textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Wrap(
                  children: [
                    Text(
                      "My name is Onurcan, I'm 22 years old and i live in Turkey.  ",
                      style: GoogleFonts.comfortaa(),
                      softWrap: true,
                    ),
                    Text(
                      "I'm currently studying at a university.",
                      style: GoogleFonts.comfortaa(),
                      softWrap: true,
                    ),
                    Text(
                      "I've also been studying a lot on my own to learn new technologies and skills.",
                      style: GoogleFonts.comfortaa(),
                      softWrap: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "I started as a Software Engineering Trainee in 2022. I have been dedicating about 3-4 hrs a day to code.",
                        style: GoogleFonts.comfortaa(),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: btnColor,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(LineIcons.linkedin),
                    const SizedBox(width: 5),
                    Text(
                      "Linkedin",
                      style: GoogleFonts.comfortaa(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
