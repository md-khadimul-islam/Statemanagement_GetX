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
          Card(
            child: ListTile(
              title: const Text('GetX Alert Dialog'),
              onTap: () {
                Get.defaultDialog(
                  title: 'GetX Dialog',

                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('showMsg', 'GetX successfully run', backgroundColor: Colors.blue);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
