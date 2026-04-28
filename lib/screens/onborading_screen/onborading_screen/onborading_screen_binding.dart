part of 'onborading_screen_view.dart';

class OnboradingScreenBinding extends Bindings {

   @override
   void dependencies() {
       Get.lazyPut<OnboradingScreenController>(
      () => OnboradingScreenController(),
    );
   }
}