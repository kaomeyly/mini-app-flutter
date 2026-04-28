import 'package:get/get.dart';
import 'package:mini_app_bank/routes/app_routes.dart';
import 'package:mini_app_bank/screens/homescreen/home_screen/home_screen_view.dart';
import 'package:mini_app_bank/screens/login_screen/login_screen/login_screen_view.dart';
import 'package:mini_app_bank/screens/onborading_screen/onborading_screen/onborading_screen_view.dart';
import 'package:mini_app_bank/screens/splash_screen/spash_screen.dart';

class AppPages {
  static List<GetPage<dynamic>> getPages = [
    GetPage(name: AppRoutes.spash, page: () => SpashScreen()),
    GetPage(
      name: AppRoutes.onbording,
      page: () => OnboradingScreenView(),
      binding: OnboradingScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.homescreen,
      page: () => HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
  ];
}
