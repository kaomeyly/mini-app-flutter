part of 'onborading_screen_view.dart';

class OnboradingScreenController extends GetxController {
  var value = 100.0.obs;
  var showFooter2 = false.obs;
  void changeTheme(ThemeMode mode) async {
    // Get.changeTheme(AppColor.darkMode());
    Get.changeThemeMode(mode);
  }

  void onGetStartedTapped() {
    showFooter2.value = true;
  }
}
