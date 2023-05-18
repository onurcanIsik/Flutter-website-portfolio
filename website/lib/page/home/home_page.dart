import 'package:flutter/material.dart';
import 'package:website/page/large_screen.dart';
import 'package:website/page/small_screen.dart';

import '../../colors/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return const SmallScreen();
        } else {
          return const LargeScreen();
        }
      },
    );
  }
}
