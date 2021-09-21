import 'package:flutter/material.dart';
import 'package:futter_web_dashboard/Util/Constant.dart';

class ResponsivenessWidget extends StatelessWidget {
  const ResponsivenessWidget(
      {Key? key,
      required this.largeScreen,
      this.mediumScreen,
      this.smallScreen,
      this.customScreen})
      : super(key: key);
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  final Widget? customScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth >= largeScreenSize) {
        return largeScreen;
      } else if (constraint.maxWidth < largeScreenSize &&
          constraint.maxWidth >= mediumScreenSize) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}
