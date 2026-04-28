import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'home_screen_binding.dart';
part 'home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Text("Hello")
        ],
      ),
    );
  }
}
