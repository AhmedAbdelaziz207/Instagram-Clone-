import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key, this.storyImage, this.storyName});

  final String? storyName;
  final String? storyImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey,width: 2,)
            ),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(storyImage.toString()),
            ),
          ),
          Text(
            storyName.toString(),
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
