import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key, required this.label , required this.count });
 final String label ;
 final int count ;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(count.toString(), style:  const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
        ),),
        Text(label, style:const TextStyle(fontSize: 16)),
      ],
    );
  }
}
