import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  openCloseFabMenu() {
    if (fabKey.currentState!.isOpen) {
      fabKey.currentState!.close();
    }
    else{
       fabKey.currentState!.open();
    }
  }
}
