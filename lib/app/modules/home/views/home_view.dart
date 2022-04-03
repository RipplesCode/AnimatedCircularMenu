import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Menu'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Perform Action'),
        ),
      ),
      floatingActionButton: Builder(
        builder: (context) => FabCircularMenu(
          alignment: Alignment.bottomRight,
          ringColor: Colors.blue.withOpacity(0.4),
          ringDiameter: 450.0,
          ringWidth: 100.0,
          fabSize: 64.0,
          fabElevation: 8.0,
          fabIconBorder: CircleBorder(),
          fabColor: Colors.blueAccent,
          fabOpenIcon: Icon(Icons.menu, color: Colors.white),
          fabCloseIcon: Icon(Icons.close, color: Colors.white),
          fabMargin: const EdgeInsets.all(16.0),
          animationDuration: const Duration(milliseconds: 800),
          animationCurve: Curves.easeInOutCirc,
          onDisplayChange: (isOpen) {
            print(isOpen);
          },
          children: <Widget>[
            RawMaterialButton(
              onPressed: () {
                controller.fabKey.currentState!.close();
              },
              shape: CircleBorder(
                side: BorderSide(width: 1, color: Colors.blue),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.home, color: Colors.blue),
            ),
            RawMaterialButton(
                onPressed: () {},
                shape: CircleBorder(
                  side: BorderSide(width: 1, color: Colors.blue),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.email, color: Colors.blue)),
            RawMaterialButton(
                onPressed: () {},
                shape: CircleBorder(
                  side: BorderSide(width: 1, color: Colors.blue),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.settings, color: Colors.blue)),
            RawMaterialButton(
              onPressed: () {},
              shape: CircleBorder(
                side: BorderSide(width: 1, color: Colors.blue),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.account_box, color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
