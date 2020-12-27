import 'package:firebase_crud_final/cotrollers/bindings/authController.dart';
import 'package:firebase_crud_final/screens/home.dart';
import 'package:firebase_crud_final/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthController>().user != null) ? Home() : Login();
    });
  }
}
