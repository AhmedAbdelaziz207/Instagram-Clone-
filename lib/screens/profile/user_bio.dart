import 'package:flutter/material.dart';

class UserBio extends StatelessWidget {
  const UserBio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Lionel Messi " , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Text("Football player ⚽"),
          Row(
            children: [
              Text("Current Team "),
              Text("@Inter Miami ex PSG " , style: TextStyle(color: Colors.blue),),
            ],
          ),
        ],
      ),
    );
  }
}
