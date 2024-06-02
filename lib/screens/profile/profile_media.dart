import 'package:flutter/material.dart';

class ProfileMedia extends StatelessWidget {
  const ProfileMedia({super.key , this.color});
  final String? color ;

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(8),
      children: List.generate(10, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20,
            width: 20,
            color: color == 'color'? Colors.blueAccent :  Colors.grey,
          ),
        );
      }

      ),
    );
  }
}
