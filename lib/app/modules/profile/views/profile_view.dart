// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shimmer/shimmer.dart';
import 'package:temanbicara/app/routes/app_pages.dart';
import 'package:temanbicara/app/themes/colors.dart';
import 'package:temanbicara/app/themes/fonts.dart';
import 'package:temanbicara/app/themes/spaces.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({super.key});
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 65, 32, 32),
              child: Center(
                child: Column(
                  children: [
                    sby12,
                    Obx(
                      () {
                        if (controller.isLoading.value) {
                          return Column(
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Shimmer.fromColors(
                                    baseColor: Colors.grey[300]!,
                                    highlightColor: Colors.grey[100]!,
                                    child: const CircleAvatar(
                                      radius: 80,
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: primaryColor,
                                    ),
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 16,
                                      color: whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                              sby24,
                              Text(
                                controller.box.read('name') ?? 'username',
                                style: h3Bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          );
                        } else {
                          return Column(
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CircleAvatar(
                                    radius: 80,
                                    backgroundColor: border,
                                    child: CircleAvatar(
                                      radius: 78,
                                      backgroundColor: whiteColor,
                                      backgroundImage: NetworkImage(
                                          controller.profileUrl.value),
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: primaryColor,
                                    ),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.camera_alt,
                                        size: 16,
                                        color: whiteColor,
                                      ),
                                      onPressed: () async {
                                        await controller.pickImage();
                                        await controller.changeImage();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              sby24,
                              Text(
                                controller.box.read('name') ?? 'username',
                                style: h3Bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 16, 32, 24),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Account Settings',
                            style: h3Regular.copyWith(
                                color: grey2Color, fontSize: 18),
                          ),
                        ),
                        sby16,
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.EDIT_PROFILE);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Edit Profile',
                                style: h4SemiBold,
                              ),
                              const Icon(
                                Icons.chevron_right_outlined,
                                size: 32,
                              ),
                            ],
                          ),
                        ),
                        sby24,
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.CHANGE_PASSWORD);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Change Password',
                                style: h4SemiBold,
                              ),
                              const Icon(
                                Icons.chevron_right_outlined,
                                size: 32,
                              )
                            ],
                          ),
                        ),
                        sby24,
                        GestureDetector(
                          onTap: () => Get.toNamed(Routes.CONSULT_HISTORY),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Consultations History',
                                style: h4SemiBold,
                              ),
                              const Icon(
                                Icons.chevron_right_outlined,
                                size: 32,
                              )
                            ],
                          ),
                        ),
                        sby24,
                        GestureDetector(
                          onTap: () => Get.toNamed(Routes.BOOKING_HISTORY),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Booking History',
                                style: h4SemiBold,
                              ),
                              const Icon(
                                Icons.chevron_right_outlined,
                                size: 32,
                              )
                            ],
                          ),
                        ),
                        sby16,
                        const Divider(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(31, 0, 31, 24),
                    child: GestureDetector(
                      onTap: () {
                        Get.offAllNamed(
                          Routes.LOGIN,
                        );
                        box.erase();
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Logout',
                            style: h4SemiBold.copyWith(color: error),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
