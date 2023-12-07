import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Screen Two'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('This Second Screen'),
            IconButton(
              onPressed: () {
                Get.back();
                Get.back();
              },
              icon: const Icon(
                Icons.add,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
