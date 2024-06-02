import 'package:flutter/material.dart';

class AddNewStoryWidget extends StatelessWidget {
  const AddNewStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey)
            ),
            child: const CircleAvatar(
              radius: 35,
              backgroundColor: Colors.white,
              child: Icon(Icons.add),
            ),
          ),
          const Text(
            'New',
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
