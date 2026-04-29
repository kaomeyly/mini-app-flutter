// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_app_bank/routes/app_routes.dart';

part 'onborading_screen_binding.dart';
part 'onborading_screen_controller.dart';

class OnboradingScreenView extends GetView<OnboradingScreenController> {
  const OnboradingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SizedBox.expand(
      //   child: Image.asset(
      //     "assets/imgs/background_image.png",
      //     fit: BoxFit.fill,
      //     color: Colors.purple,
      //   ),
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imgs/background_image.png"),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              Colors.purple.shade400,
              BlendMode.srcATop,
            ),
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Obx(
                () => controller.showFooter2.value
                    ? _buildFooter2()
                    : buildFooter(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFooter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "BOOST FINANCIAL\nAWARENESS THROUGH",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
        ),
        Text(
          "---------------> TRACKING",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            controller.onGetStartedTapped();
          },
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFCCA2C9),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text(
                    "STARTED",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Spacer(),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.arrow_outward_sharp,
                      size: 38,
                      color: Color(0xFFCCA2C9),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }

  Widget _buildFooter2() {
    return Column(
      
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.topLeft,
          height: 250,
          decoration: BoxDecoration(
            color: Color(0xFFCCA2C9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "ALLOCATE MONTHLY FUNDS",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Obx(() {
                  final amount = controller.value.value;
                  final whole = amount.toInt();
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$ $whole",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: ".00",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          trackShape: RoundedRectSliderTrackShape(),
                          trackGap: 8,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          child: Slider(
                            min: 0.0,
                            max: 1500.0,
                            divisions: 150,
                            activeColor: Colors.white,
                            inactiveColor: Color(0xFFDBBED9),
                            value: amount,
                            onChanged: (value) {
                              controller.value.value = value;
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                }),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "CYCLE : 30DAYS",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.login);
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Text(
                            "GET STARTED",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFCCA2C9),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFCCA2C9),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Icon(
                              Icons.arrow_outward_sharp,
                              size: 38,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
