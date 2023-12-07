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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
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
                height: Get.height * .2,
                width: Get.width * .5,
                color: Colors.red,
                child: const Center(child: Text('This is Add Button')),
              ),
              TextButton(onPressed: () {
                Get.toNamed('/screenThree');
              }, child: const Text('Change Language'),),
            ],
          ),
        ],
      ),
    );
  }
}
