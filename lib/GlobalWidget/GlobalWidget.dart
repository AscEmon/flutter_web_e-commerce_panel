import 'package:flutter/material.dart';
import 'package:futter_web_dashboard/Util/Constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futter_web_dashboard/Common/ResponsiveWidget.dart';

class GlobalWidget {
  static AppBar customAppBar(
          BuildContext context, GlobalKey<ScaffoldState> key) =>
      AppBar(
        leading: !ResponsivenessWidget.isSmallScreen(context)
            ? Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Image.asset(
                      "assets/icons/logo.png",
                      width: 28,
                    ),
                  ),
                ],
              )
            : IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  key.currentState!.openDrawer();
                }),
        title: Text(
          "E-commerce Admin Panel",
          style: TextStyle(
              color: Colors.white,
              fontSize: 30.sp,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kPrimaryColor,
      );
}
