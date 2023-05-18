import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../skills/my_skills.dart';
import '../skills/my_skills2.dart';

class MyIcons extends StatelessWidget {
  const MyIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MySkills(
            icon: Logos.firebase,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MySkills(
            icon: Logos.flutter,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MySkills(
            icon: Logos.android,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MySkills(
            icon: Logos.apple,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MySkills(
            icon: Logos.figma,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MySkills(
            icon: Logos.github,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MySkills(
            icon: Logos.react,
          ),
        ),
      ],
    );
  }
}

class MyIcons2 extends StatelessWidget {
  const MyIcons2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MySkills2(
            icon: HeroIcons.code_bracket,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MySkills2(
            icon: HeroIcons.server,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MySkills2(
            icon: Iconsax.data,
          ),
        ),
      ],
    );
  }
}
