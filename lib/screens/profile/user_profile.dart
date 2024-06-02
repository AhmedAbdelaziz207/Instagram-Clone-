import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_colone/screens/profile/profile_info.dart';
import 'package:instagram_colone/screens/profile/profile_tabs.dart';
import 'package:instagram_colone/screens/profile/user_stories.dart';
import 'package:instagram_colone/screens/profile/user_bio.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Summary
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/564x/56/39/59/5639592110dd9c1f7f2f0aa7fc85ec0f.jpg'),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileInfo(label: "Posts", count: 59),
                    ProfileInfo(label: "Following", count: 38),
                    ProfileInfo(label: "Followers", count: 889),
                  ],
                ),
              )
            ],
          ),

          // Spacer
          const SizedBox(
            height: 20,
          ),

          // User bio info
          const UserBio(),

          // Edit Profile button
          Container(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 20, bottom: 8),
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Edit Profile",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const UserStories(),
          const SizedBox(
            height: 4,
          ),
          const Divider(),
        const ProfileTabs(),

        ],
      ),
    );
  }
}
