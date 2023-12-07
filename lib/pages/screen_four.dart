import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/controller/counter_controller.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    // print('rebuild');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('GetX State-management'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () {
              return Text(
                'Increment value:${counterController.counter}',
                style: const TextStyle(fontSize: 20),
              );
            },
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue.withOpacity(counterController.opacity.value),
          ),
          Slider(
            value: counterController.opacity.value,
            onChanged: (value) {
              counterController.opacity.value = value;
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.IncrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
