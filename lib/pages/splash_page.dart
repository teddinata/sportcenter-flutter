import 'package:flutter/material.dart';
import 'package:sportcenter/theme.dart';
import 'dart:async';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String _loadingText = 'Loading 0%';

  @override
  void initState() {
    super.initState();
    Timer.periodic(
      Duration(milliseconds: 600), // adjust the interval as needed
      (Timer timer) {
        setState(() {
          final int percentage =
              int.parse(_loadingText.split(' ')[1].replaceAll('%', ''));
          if (percentage == 0) {
            _loadingText = 'Loading 23%';
          } else if (percentage == 23) {
            _loadingText = 'Loading 58%';
          } else if (percentage == 58) {
            _loadingText = 'Loading 77%';
          } else if (percentage == 77) {
            _loadingText = 'Loading 100%';
          } else {
            timer.cancel();
            Navigator.pushNamedAndRemoveUntil(
                context, '/sign-in', (route) => false);
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 130,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img-splash.png'),
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              _loadingText,
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Make sure your internet connection is stable.',
              style: TextStyle(
                color: secondaryTextColor,
                fontWeight: regular,
                fontSize: 14,
              ),
            ),
            Text(
              'Close the application and open it again if there is an error.',
              style: TextStyle(
                color: secondaryTextColor,
                fontWeight: regular,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
