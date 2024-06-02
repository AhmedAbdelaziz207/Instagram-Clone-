import 'package:flutter/material.dart';
import 'package:instagram_colone/screens/profile/story_widget.dart';

import '../../model/Story.dart';
import 'add_new_story_widget.dart';

class UserStories extends StatelessWidget {
  const UserStories({super.key});

  static var stories = storiesList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return index == 0 ? const AddNewStoryWidget() : StoryWidget(
            storyName: stories[index].storyTitle,
            storyImage: stories[index].storyImage,
          );
        },
        itemCount: stories.length,
      ),
    );
  }
}
