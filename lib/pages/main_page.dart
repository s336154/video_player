import 'package:video_player/pages/home_page.dart';
import 'package:video_player/pages/settings_page.dart';
import 'package:video_player/pages/career_page.dart';
import 'package:video_player/pages/language_page.dart';
import 'package:video_player/pages/health_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> pages = [
    const HomePage(),
    const CareerPage(),
    const HealthPage(),
    const SettingsPage(),
    LanguagePage(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        backgroundColor: Colors.white, // Set background color here
        selectedItemColor: Colors.blue, // Set selected item color if needed
        unselectedItemColor: Colors.grey, // Set unselected item color if needed
        items:  [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'home'.tr,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work,
            ),
            label: 'career'.tr,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.health_and_safety,
            ),
            label: 'health'.tr,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'settings'.tr,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.language,
            ),
            label: 'language'.tr,
          ),
        ],
      ),
    );
  }
}
