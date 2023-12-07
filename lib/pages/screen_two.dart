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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
          Container(
            height: Get.height * .3,
            color: Colors.red,
            child: const Center(child: Text('This is Add Button')),

          )
        ],
      ),
    );
  }
}
