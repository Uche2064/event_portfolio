import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Responsive {
  static bool isDesktop(BuildContext context) =>
      Get.context!.mediaQuery.size.width >= 1100;

  static bool isTablet(BuildContext context) =>
      Get.context!.mediaQuery.size.width >= 850 &&
      Get.context!.mediaQuery.size.width < 1100;

  static bool isMobile(BuildContext context) =>
      Get.context!.mediaQuery.size.width <= 850;

  static bool isMiniMobile(BuildContext context) =>
      Get.context!.mediaQuery.size.width < 850;
}
