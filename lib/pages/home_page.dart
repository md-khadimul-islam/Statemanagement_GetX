import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('State management GetX'),
      ),
      body: Column(
        children: [
          // Get X Alert Dialog
          Card(
            child: ListTile(
              title: const Text('GetX Alert Dialog'),
              onTap: () {
                Get.defaultDialog(
                  middleText: 'Are you sure delete this chat',
                  title: 'Delete Chat',
                  confirm: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('OK'),
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('CANCEL'),
                  ),
                );
              },
            ),
          ),
          // Get X Bottom Sheet
          Card(
            child: ListTile(
              title: const Text('GetX Bottom Sheet'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue),
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text('Light Theme'),
                          leading: const Icon(Icons.light_mode),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                            Get.back();
                          },
                        ),
                        ListTile(
                          title: const Text('Dark Theme'),
                          leading: const Icon(Icons.dark_mode),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                            Get.back();
                          },
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Center(
            child: IconButton(
              onPressed: () {
                Get.toNamed('screenOne');
              },
              icon: const Icon(
                Icons.add,
                size: 50,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('showMsg', 'GetX successfully run',
              backgroundColor: Colors.blue);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
