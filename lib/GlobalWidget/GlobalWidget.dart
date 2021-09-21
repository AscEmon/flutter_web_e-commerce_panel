import 'package:flutter/material.dart';
import 'package:futter_web_dashboard/Util/Constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalWidget {
  static AppBar customAppBar() => AppBar(
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
