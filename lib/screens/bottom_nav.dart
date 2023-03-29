import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:travelappdribbble/screens/home_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const Text('Explore'),
    const Text('Favorites'),
    const Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: _widgetOptions[_selectedIndex],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            elevation: 10,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              ),
              BottomNavigationBarItem(
                label: 'explore',
                icon: Icon(FluentIcons.compass_northwest_20_regular),
                activeIcon: Icon(FluentIcons.compass_northwest_20_filled),
              ),
              BottomNavigationBarItem(
                label: 'Ticket',
                icon: Icon(FluentSystemIcons.ic_fluent_heart_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_heart_filled),
              ),
              BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)),
            ],
          ),
        ),
      ),
    );
  }
}
