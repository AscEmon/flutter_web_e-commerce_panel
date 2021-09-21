import 'package:flutter/material.dart';
import 'package:futter_web_dashboard/Util/Constant.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: kPrimaryGradient,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
              decoration: BoxDecoration(
              gradient: kPrimaryGradient,
            ),
          ),
        )
      ],
    );
  }
}
