import 'package:flutter/material.dart';
import 'package:sportcenter/theme.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Wishlist Page',
          style: TextStyle(fontSize: 30, color: primaryTextColor),
        ),
      ),
    );
  }
}
