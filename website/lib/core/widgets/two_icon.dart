import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:website/colors/color.dart';

class TwoIcon extends StatefulWidget {
  const TwoIcon({super.key});

  @override
  State<TwoIcon> createState() => _TwoIconState();
}

class _TwoIconState extends State<TwoIcon> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToTop() {
    Scrollable.ensureVisible(
      context,
      alignment: 0.0,
      duration: Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  onPressed: () {},
                  icon: Logo(Logos.linkedin),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: IconButton(
                  onPressed: () {},
                  icon: Logo(Logos.google_play),
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: btnColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextButton(
              onPressed: () {
                setState(() {
                  _scrollToTop();
                });
              },
              child: Icon(
                Icons.arrow_drop_up_rounded,
                color: bgColor,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
