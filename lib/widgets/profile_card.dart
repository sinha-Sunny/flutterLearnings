import 'package:flutter/material.dart';
import 'package:personal_app/widgets/avatar_icon.dart';
import 'package:personal_app/widgets/name_text.dart';
import 'package:personal_app/widgets/description.dart';
import 'package:personal_app/widgets/footer_row.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      child: Card(
        elevation: 10,
        margin: EdgeInsets.all(8),
        // Setting the background color of the Card
        color: const Color.fromARGB(255, 254, 233, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        // Adding a child with padding
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              // Text widget that has a icon as a text i.e a avatar icon.
              AvatarIcon(),
              SizedBox(height: 15),
              // Text widget that displays the text.
              NameText(),
              SizedBox(height: 3),
              // Text widget that displays the description.
              Description(),
              SizedBox(height: 20),
              // Row widget that has a row of icons such as mail, location, phone, etc.
              InfoIcon(),
            ],
          ),
        ),
      ),
    );
  }
}
