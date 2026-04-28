import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_app_bank/routes/app_pages.dart';
import 'package:mini_app_bank/routes/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.spaceGroteskTextTheme()),
      debugShowCheckedModeBanner: false,
      // home: SpashScreen(),
      initialRoute: AppRoutes.spash,
      getPages: AppPages.getPages,
    );
  }
}
