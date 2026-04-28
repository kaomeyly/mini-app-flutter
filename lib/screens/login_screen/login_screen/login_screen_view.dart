import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_app_bank/routes/app_routes.dart';

part 'login_screen_binding.dart';
part 'login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Spacer(),
              _buildbtn1(),
              SizedBox(height: 15),
              _buildbtn2(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildbtn1() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 60,
          child: OutlinedButton(
            onPressed: () {
              Get.toNamed(AppRoutes.homescreen);
            },
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2, color: Color(0xFFCCA2C9)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            child: Row(
              children: [
                Text(
                  "WITH GOOGLE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFCCA2C9),
                  ),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFCCA2C9),
                  ),
                  child: Image.asset(
                    "assets/imgs/google.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Container(width: 125, height: 3, color: Colors.grey),
            Text(
              "  or continue with  ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            Container(width: 125, height: 3, color: Colors.grey),
          ],
        ),
      ],
    );
  }

  Widget _buildbtn2() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed(AppRoutes.homescreen);
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFCCA2C9),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            child: Row(
              children: [
                Text(
                  "AS GUEST",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.arrow_outward_sharp,
                    color: Color(0xFFCCA2C9),
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(fontSize: 16, color: Colors.black),
            children: [
              TextSpan(text: "By signing in, you accept our "),
              TextSpan(
                text: "Terms of Service",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(text: " and "),
              TextSpan(
                text: "Privacy Policy",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(text: "."),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
