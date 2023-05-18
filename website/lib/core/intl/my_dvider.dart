import 'package:flutter/material.dart';

import '../../colors/color.dart';

class MyDvider extends StatelessWidget {
  const MyDvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Divider(
        color: appBarColor,
        thickness: 2,
        indent: 50,
        endIndent: 50,
      ),
    );
  }
}
