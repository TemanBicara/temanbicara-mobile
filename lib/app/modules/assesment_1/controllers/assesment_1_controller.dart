// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:temanbicara/app/config/config.dart';
import 'package:temanbicara/app/routes/app_pages.dart';
import 'package:temanbicara/app/widgets/custom_snackbar.dart';

enum Gender { none, male, female }

class Assesment1Controller extends GetxController {
  TextEditingController nameC = TextEditingController();
  TextEditingController nicknameC = TextEditingController();
  TextEditingController phoneC = TextEditingController();

  var isLoading = false.obs;

  GetStorage box = GetStorage();

  var selectedGender = Gender.none.obs;
  void toggleGender(Gender gender) {
    selectedGender.value = gender;
  }

  var selectedDate = DateTime.now().obs;
  void updateDate(DateTime date) {
    selectedDate.value = DateTime(date.year, date.month, date.day);
  }

  var isSportTap = false.obs;
  var isArtTap = false.obs;
  var isPoliticsTap = false.obs;
  var isAnxietyTap = false.obs;
  var isTechTap = false.obs;
  var isInnovationTap = false.obs;
  var isLainnyaTap = false.obs;

  bool isFilled() {
    return nameC.text.isNotEmpty &&
        nicknameC.text.isNotEmpty &&
        selectedGender.value != Gender.none;
  }

  Future<void> saveAssesment() async {
    if (isFilled()) {
      box.write('name', nameC.text);
      box.write('nickname', nicknameC.text);
      if (phoneC.text.isNotEmpty) {
        box.write('phone', phoneC.text);
      } else {
        CustomSnackbar.showSnackbar(
          title: "Oops!",
          message: "Please Fill the Fields!",
          status: false,
        );
      }
      if (selectedGender.value == Gender.male) {
        box.write('gender', 'male');
      } else if (selectedGender.value == Gender.female) {
        box.write('gender', 'female');
      }

      String formattedDate =
          DateFormat('yyyy-MM-dd').format(selectedDate.value);
      box.write('birthdate', formattedDate);
      isLoading.value = true;
      try {
        var response = await http.post(
          Uri.parse("${Config.apiEndPoint}/do-assessment"),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer ${box.read('token')}',
          },
          body: json.encode({
            'name': box.read('name'),
            'nickname': box.read('nickname'),
            'gender': box.read('gender'),
            'birthdate': box.read('birthdate'),
            'phone_number': box.read('phone'),
          }),
        );

        var data = json.decode(response.body);
        if (response.statusCode == 200 && data['status']) {
          CustomSnackbar.showSnackbar(
            title: "Yeay!",
            message: "Account Created!",
            status: true,
          );
          Get.offNamed(Routes.ASSESMENT_2);
        } else {
          CustomSnackbar.showSnackbar(
            title: "Invalid!",
            message: "Invalid Phone Number!",
            status: false,
          );
        }
      } catch (e) {
        isLoading.value = false;
      } finally {
        isLoading.value = false;
      }
    } else {
      CustomSnackbar.showSnackbar(
        title: "Oops!",
        message: "Please Fill the Fields!",
        status: false,
      );
    }
  }
}
