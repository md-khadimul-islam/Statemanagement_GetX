import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Api With GetX'),
      ),

    );
  }
}
