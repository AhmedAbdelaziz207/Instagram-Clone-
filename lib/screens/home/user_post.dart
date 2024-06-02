import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Post owner details
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),

              // spacer

              SizedBox(
                width: 10,
              ),

              // Profile Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // User Name
                    Text(
                      "Messi",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // location

                    Text('Argentina ,Rozario')
                  ],
                ),
              ),

              Icon(Icons.menu)
            ],
          ),
        ),

        // Spacer
        const SizedBox(
          height: 20,
        ),

        // post content
        Container(
          width: double.infinity,
          height: 400,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_outline,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.mode_comment_outlined,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.send,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.bookmark,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        // Post React and caption
        const Column(
          children: [
            // Reactions
            Row(
              children: [
                Text("Liked by "),
                Text(
                  "Louis Suarez ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("and "),
                Text("787873 others " , style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),

              ],
            )
            // Caption
            ,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Messi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                    child: Text(
                        "  Football is my life I'm so sad to say that but official this is last dance ")),
              ],
            )
          ],
        )
      ],
    );
  }
}
