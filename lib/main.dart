import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futter_web_dashboard/Util/AppRoutes.dart';
import 'package:futter_web_dashboard/Util/Constant.dart';
import 'package:get/get.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 820), // Zeplin UI size
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.INITIAL,
        getPages: AppRoutes.AppRoutesList(),
        title: 'E-commerce Panel',
        theme: ThemeData(
          fontFamily: 'CircularStd',
          primaryColor: kPrimaryColor,
          accentColor: kAccentColor,
          scaffoldBackgroundColor: kWhiteColor,
          backgroundColor: kBackgroundColor,
        ),
      ),
    );
  }
}
