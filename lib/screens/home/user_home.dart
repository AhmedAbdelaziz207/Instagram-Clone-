import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_colone/screens/home/user_post.dart';
import 'package:instagram_colone/screens/profile/user_stories.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const UserStories(),
          SizedBox(
            height: 600,
            child: ListView(
              children: List.generate(100, (index) => UserPost()),
            ),
          ),
        ],
      ),
    );
  }
}
