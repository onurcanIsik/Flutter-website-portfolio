import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:website/core/intl/my_dvider.dart';
import 'package:website/core/widgets/about_me/about_me.dart';
import 'package:website/core/widgets/icon/icons_widget.dart';
import 'package:website/core/widgets/info/infoo.dart';
import 'package:website/core/widgets/project/my_project.dart';
import 'package:website/core/widgets/two_icon.dart';
import '../core/intl/custom/custom_btn.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({super.key});

  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  final GlobalKey key1 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/images/icon_nobg.png"),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                        child: Text(
                          "My Portfolio",
                          style: GoogleFonts.righteous(
                            fontSize: 23,
                          ),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width / 3),
                      CustomBtn(
                        text: "About Me",
                      ),
                      CustomBtn(
                        text: "Projects",
                      ),
                      CustomBtn(
                        text: "Skills",
                      ),
                      CustomBtn(
                        text: "Blog",
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 25,
                        child: IconButton(
                          onPressed: () {},
                          icon: Logo(Logos.google_play),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Infoo(key: key1),
            const MyDvider(),
            const AboutMe(),
            const MyDvider(),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  "Project",
                  style: GoogleFonts.comfortaa(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            MyProject(
              title1: "BMI Calculator",
              text1: "You can calculate your bmi",
              icon1: FontAwesomeIcons.code,
              title2: 'Firebase CVGO',
              text2:
                  "You can register app, see your profile also save your photo",
              icon2: FontAwesomeIcons.code,
              icon3: FontAwesomeIcons.database,
              icon4: FontAwesomeIcons.server,
              icon5: null,
              icon6: null,
            ),
            MyProject(
              title1: "FoodVio",
              text1: "You can learn How to learn to cook ",
              icon1: FontAwesomeIcons.code,
              title2: "My ToDo",
              text2: "You can save your notes",
              icon2: FontAwesomeIcons.code,
              icon3: FontAwesomeIcons.database,
              icon4: null,
              icon5: null,
              icon6: null,
            ),
            MyProject(
              title1: "Curving",
              text1: "The simple usage Dictionary",
              icon1: FontAwesomeIcons.code,
              icon5: FontAwesomeIcons.cube,
              icon6: FontAwesomeIcons.database,
              title2: "Flutter Bloc Sample",
              text2: "Fetch api data which use bloc package",
              icon2: FontAwesomeIcons.code,
              icon3: FontAwesomeIcons.cubes,
              icon4: null,
            ),
            const MyDvider(),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  "Skills",
                  style: GoogleFonts.comfortaa(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const MyIcons(),
            const MyIcons2(),
            const MyDvider(),
            const TwoIcon(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 9,
            ),
          ],
        ),
      ),
    );
  }
}
