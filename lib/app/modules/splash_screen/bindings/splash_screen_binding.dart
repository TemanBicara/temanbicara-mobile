import 'package:get/get.dart';
import 'package:temanbicara/app/utils/localstorage.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(
      () => SplashScreenController(
        storage: GetStorageService(),
      ),
    );
  }
}
