import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_colone/screens/profile/user_profile.dart';
import 'package:instagram_colone/screens/home/user_home.dart';
import 'package:instagram_colone/screens/user_search.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
    int selectedScreenIndex =0 ;
    static var screens = const[
      UserHome(),
      UserSearch(),
      Text('Add New Story '),
      UserProfile(),
    ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: screens[selectedScreenIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        onTap: (value) => {
          setState(() {
            selectedScreenIndex = value ;
          })
        },
        currentIndex: selectedScreenIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black87,
        items: const [
        BottomNavigationBarItem(icon:Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(icon:Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon:Icon(Icons.add_box_outlined), label: "Add"),
        BottomNavigationBarItem(icon:Icon(Icons.person_outline), label: "Profile"),
      ],
    
      ),
    );
  }
}
