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

  void _selectedTabIndex(int value) {
    setState(() {
      _tabIndex = value;
      Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(widget.user.profileImage!),
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.user.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                // Navigasi ke halaman profile
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                // Navigasi ke halaman settings
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                // Lakukan logout
              },
            ),
          ],
        ),
      ),
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
          // const AnimeScreen(),
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
          label: "Anime",
          icon: Icon(Icons.new_releases),
        ),
        BottomNavigationBarItem(
          label: "Menu",
          icon: Icon(Icons.menu),
        )
      ],
    );
  }
}
