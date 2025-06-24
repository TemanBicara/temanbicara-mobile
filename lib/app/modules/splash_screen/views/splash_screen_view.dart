import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:temanbicara/app/themes/colors.dart';
import 'package:temanbicara/app/themes/fonts.dart';
import '../../../routes/app_pages.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    // bool isTestEnv = Platform.environment.containsKey('FLUTTER_TEST');
    final box = GetStorage();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      bool isFirstTime =
          box.hasData('firstTime') ? box.read('firstTime') : true;

      if (isFirstTime) {
        box.write('firstTime', false);
        Get.offAllNamed(Routes.ON_BOARDING);
        return;
      }

      if (box.read('token') == null) {
        Get.offAllNamed(Routes.LOGIN);
      } else if (box.read('name') == null) {
        Get.offAllNamed(Routes.ASSESMENT_1);
      } else {
        Get.offAllNamed(Routes.NAVIGATION_BAR, arguments: {'indexPage': 0});
      }
    });
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              scale: 2,
            ),
            const SizedBox(height: 12),
            Text('Teman Bicara', style: textLogo),
          ],
        ),
      ),
    );
  }
}
