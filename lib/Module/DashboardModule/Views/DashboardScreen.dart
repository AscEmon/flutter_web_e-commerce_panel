import 'package:flutter/material.dart';
import 'package:futter_web_dashboard/Common/ResponsiveWidget.dart';
import 'package:futter_web_dashboard/Module/DashboardModule/Views/Components/LargeScreen.dart';
import 'package:futter_web_dashboard/Module/DashboardModule/Views/Components/SmallScreen.dart';
import 'package:futter_web_dashboard/GlobalWidget/GlobalWidget.dart';

class DashBoardScreen extends ResponsivenessWidget {
  DashBoardScreen({Key? key}) : super(largeScreen: Container());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalWidget.customAppBar(),
      body: ResponsivenessWidget(
          largeScreen: LargeScreen(), smallScreen: SmallScreen()),
    );
  }
}
