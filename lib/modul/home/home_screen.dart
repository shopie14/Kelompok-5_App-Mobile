import 'package:flutter/material.dart';
import 'package:pertemuan_v/modul/menu/menu_screen.dart';
import 'package:pertemuan_v/modul/anime_list/anime_screen.dart';

import '../../models/user.dart';
import 'header_widget.dart';
import 'hotanime_widget.dart';
import 'lates_anime_widget.dart';
import 'searchbar_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, required this.user});

  User user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tabIndex = 0;
  _selectedTabIndex(int value) {
    setState(() {
      _tabIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _tabIndex,
        children: [
          ListView(
            children: [
              HeaderWidget(widget: widget),
              const SearchbarWidget(),
              const HotNewsWidget(),
              const LatesNewsWidget()
            ],
          ),
          const NewsScreen(),
          const MenuScreen(),
        ],
      ),
      bottomNavigationBar: bottomNavigation(),
    );
  }

  BottomNavigationBar bottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _tabIndex,
      onTap: _selectedTabIndex,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Anime List",
          icon: Icon(Icons.newspaper),
        ),
        BottomNavigationBarItem(
          label: "Menu",
          icon: Icon(Icons.menu),
        )
      ],
    );
  }
}
