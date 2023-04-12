import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:travelappdribbble/screens/home_page.dart';
import 'dart:ui' as ui;

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
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Container(
                  padding: const EdgeInsets.all(5),
                  child: const Icon(FluentSystemIcons.ic_fluent_home_regular),
                ),
                activeIcon: ClipRect(
                  child: BackdropFilter(
                    filter: ui.ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.35),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child:
                          const Icon(FluentSystemIcons.ic_fluent_home_filled),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'explore',
                icon: Container(
                  padding: const EdgeInsets.all(5),
                  child: const Icon(FluentIcons.compass_northwest_20_regular),
                ),
                activeIcon: ClipRect(
                  child: BackdropFilter(
                    filter: ui.ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.35),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Icon(
                            FluentIcons.compass_northwest_20_filled)),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Ticket',
                icon: Container(
                  padding: const EdgeInsets.all(5),
                  child: const Icon(FluentSystemIcons.ic_fluent_heart_regular),
                ),
                activeIcon: ClipRect(
                  child: BackdropFilter(
                    filter: ui.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.35),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Icon(
                            FluentSystemIcons.ic_fluent_heart_filled)),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Container(
                      padding: const EdgeInsets.all(5),
                      child: const Icon(
                          FluentSystemIcons.ic_fluent_person_regular)),
                  activeIcon: ClipRect(
                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.35),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Icon(
                              FluentSystemIcons.ic_fluent_person_filled)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
