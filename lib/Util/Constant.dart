import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


const kWhiteColor = Color(0xffffffff);
const kPrimaryColor = Color(0xff102c35);
const kAccentColor = Color(0xFFFFFFFF);
const kBackgroundColor = Color(0xFFFFFFFF);




const kPrimaryGradient = LinearGradient(
  colors: [Color(0xff1e5262), Color(0xff1A2373)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

double kDefaultPadding = 20.w;
double kFontSizeBig = 20.sp;


//custom fontFamily
const String circularStdNormarl = "CircularStd";
const String circularStdBold = "CircularStd-Bold";
const String circularStdBook = "CircularStd-Book";
const String circularStdMedium = "CircularStd-Medium";



//Assume Screen Size 
const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallSceenSize = 360;
const int customScreenSize = 1100;