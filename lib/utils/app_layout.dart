import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getWidth(double pixels) {
    double x = Get.width / pixels;
    return Get.width / x;
  }

  static getHeight(double pixels) {
    double x = Get.height / pixels;
    return Get.height / x;
  }
}
