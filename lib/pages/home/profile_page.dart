import 'package:flutter/material.dart';
import 'package:sportcenter/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Profile Page',
          style: TextStyle(fontSize: 30, color: primaryTextColor),
        ),
      ),
    );
  }
}
