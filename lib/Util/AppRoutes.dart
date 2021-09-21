import 'package:futter_web_dashboard/Module/DashboardModule/Views/DashboardScreen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String INITIAL = "/";
  static String HOMEPAGE = "/homepage";

  static List<GetPage> AppRoutesList() {
    return [
      GetPage(name: INITIAL, page: () => DashBoardScreen()),
    ];
  }
}
