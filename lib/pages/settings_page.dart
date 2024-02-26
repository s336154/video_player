import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr),
      ),
      backgroundColor: Colors.white60,
      body: Center(
        child: Text(
          'settings'.tr,
        ),
      ),
    );
  }
}
