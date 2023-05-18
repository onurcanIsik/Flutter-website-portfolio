import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/colors/color.dart';

class MyProject extends StatelessWidget {
  MyProject({
    super.key,
    required this.title1,
    required this.text1,
    required this.icon1,
    required this.title2,
    required this.text2,
    required this.icon2,
    required this.icon3,
    required this.icon4,
    required this.icon5,
    required this.icon6,
  });
  String? text1;
  String? text2;
  String? title1;
  String? title2;
  IconData? icon1;
  IconData? icon2;
  IconData? icon3;
  IconData? icon4;
  IconData? icon5;
  IconData? icon6;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(-2, 7),
                    blurRadius: 2,
                    spreadRadius: 3,
                    color: Colors.grey.withOpacity(0.3),
                  )
                ],
              ),
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 3,
              margin: const EdgeInsets.all(10),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            title1!,
                            style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            ),
                          ),
                          Row(
                            children: [
                              FaIcon(icon1),
                              const SizedBox(width: 10),
                              FaIcon(icon5),
                              const SizedBox(width: 10),
                              FaIcon(icon6),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Text(
                          text1!,
                          style: GoogleFonts.comfortaa(),
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
                              const FaIcon(
                                FontAwesomeIcons.link,
                                size: 20,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "MORE",
                                style: GoogleFonts.comfortaa(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(-2, 7),
                    blurRadius: 2,
                    spreadRadius: 3,
                    color: Colors.grey.withOpacity(0.3),
                  )
                ],
              ),
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 3,
              margin: const EdgeInsets.all(10),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            title2!,
                            style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            ),
                          ),
                          Row(
                            children: [
                              FaIcon(icon2),
                              const SizedBox(width: 10),
                              FaIcon(icon3),
                              const SizedBox(width: 10),
                              FaIcon(icon4),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Text(
                          text2!,
                          style: GoogleFonts.comfortaa(),
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
                              const FaIcon(
                                FontAwesomeIcons.link,
                                size: 20,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "MORE",
                                style: GoogleFonts.comfortaa(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 9,
        )
      ],
    );
  }
}
