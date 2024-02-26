import 'package:video_player/pages/home_page.dart';
import 'package:video_player/pages/settings_page.dart';
import 'package:video_player/pages/career_page.dart';
import 'package:video_player/pages/language_page.dart';
import 'package:video_player/pages/health_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work,
            ),
            label: "Career",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.health_and_safety,
            ),
            label: "Health",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.language,
            ),
            label: "Language",
          ),
        ],
      ),
    );
  }
}
