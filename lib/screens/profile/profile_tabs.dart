import 'package:flutter/material.dart';
import 'package:instagram_colone/screens/profile/profile_media.dart';

class ProfileTabs extends StatelessWidget {
  const ProfileTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return  const DefaultTabController(
      animationDuration: Duration(milliseconds: 2),
      length: 2,
      child: Column(
        children: [
          TabBar(
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
          SizedBox(
            height: 300,
            child: TabBarView(
              children: [
               ProfileMedia(),
                ProfileMedia(color: 'color'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
