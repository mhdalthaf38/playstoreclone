import 'package:flutter/material.dart';
import 'package:play_store_app/core/AppsPage/AppsmainPage.dart';
import 'package:play_store_app/core/games/Foryou.dart';
import 'package:play_store_app/core/offer/OffersPage.dart';
import 'package:play_store_app/core/games/Playstore.dart';
import 'package:play_store_app/core/books/Booksmainpage.dart';
import 'package:play_store_app/core/games/categories.dart';
import 'package:play_store_app/core/games/kids.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        PlaystorePage(),
        Appsmainpage(),
        Offerspage(),
        Booksmainpage()
      ][_currentIndex],
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: (newindex) {
            setState(() {
              _currentIndex = newindex;
            });
          },
          selectedIndex: _currentIndex,
          destinations: [
            NavigationDestination(
                icon: ImageIcon(AssetImage('assets/images/joystick.png')),
                label: 'Games'),
            NavigationDestination(
                icon: ImageIcon(AssetImage('assets/images/apps.png')),
                label: 'Apps'),
            NavigationDestination(
                icon: ImageIcon(AssetImage('assets/images/offers.png')),
                label: 'Offers'),
            NavigationDestination(
                icon: ImageIcon(AssetImage('assets/images/books.png')),
                label: 'Books'),
          ]),
    );
  }
}
