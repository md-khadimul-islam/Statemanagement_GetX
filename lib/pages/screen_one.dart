import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Screen One'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.toNamed('/screenTwo');
          },
          child: const Text('Navigate To Next Page'),

        ),
      ),
    );
  }
}
