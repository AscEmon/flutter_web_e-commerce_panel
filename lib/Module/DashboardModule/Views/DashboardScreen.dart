import 'package:flutter/material.dart';
import 'package:futter_web_dashboard/Common/ResponsiveWidget.dart';
import 'package:futter_web_dashboard/Module/DashboardModule/Views/Components/LargeScreen.dart';
import 'package:futter_web_dashboard/Module/DashboardModule/Views/Components/SmallScreen.dart';
import 'package:futter_web_dashboard/GlobalWidget/GlobalWidget.dart';

class DashBoardScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: GlobalWidget.topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsivenessWidget(
          largeScreen: LargeScreen(), smallScreen: SmallScreen()),
    );
  }
}
