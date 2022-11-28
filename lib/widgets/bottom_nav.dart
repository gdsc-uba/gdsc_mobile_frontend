import 'package:flutter/material.dart';
import 'package:gdsc_app/views/homescreen.dart';
import 'package:gdsc_app/views/people.dart';
import 'package:gdsc_app/views/profile_screen.dart';

class BottomNav extends StatefulWidget {
  static const bottomNavId = "/bottom_nav";
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final List _screens = [
    const Homescreen(),
    const ProfileScreen(),
    const People(),
  ];
  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Use this code if you just want to go back to 0th index
        if (_currentIndex == 0) return true;
        setState(() {
          _currentIndex = 0;
        });
        return false;
      },
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _updateIndex,
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.black54,
          type: BottomNavigationBarType.fixed,
          iconSize: 38.0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_outline_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
