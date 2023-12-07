import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Change Language'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(
                    const Locale('en', 'US'),
                  );
                },
                child: const Text('English'),
              ),
              const SizedBox(
                width: 30,
              ),
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(
                    const Locale('bn', 'BD'),
                  );
                },
                child: const Text('Bangla'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
