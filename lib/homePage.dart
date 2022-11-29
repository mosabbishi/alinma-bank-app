// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app1/screens/services.dart';
import 'screens/mainPage.dart';
import './screens/services.dart';
import './screens/settings.dart';
import 'screens/exit.dart';
import 'screens/menu_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _isSelected = 2;

  List<Widget> BNB = const [
    Exit(),
    Services(),
    Main(),
    Settings(),
    MenuList(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),

      body: Center(
        child: BNB[_isSelected],
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _isSelected,
        onTap: (index) {
          setState(() {
            _isSelected = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app_outlined), label: 'خروج'),
          BottomNavigationBarItem(
              icon: Icon(Icons.widgets_outlined), label: 'خدمات أخرى'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'الرئيسية'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'الإعدادات'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'القائمة'),
        ],
      ),
    );
  }
}
