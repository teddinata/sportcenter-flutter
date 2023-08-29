import 'package:flutter/material.dart';
import 'package:sportcenter/pages/sign_in_page.dart';
import 'package:sportcenter/pages/splash_page.dart';
import 'package:sportcenter/pages/sign_up_page.dart';
import 'package:sportcenter/pages/home/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(), // ubah ke splash page
        '/sign-in': (context) => SignInPage(), // ubah ke splash page
        '/sign-up': (context) => SignUpPage(), // ubah ke splash page
        '/home': (context) => MainPage(), // ubah ke splash page
      },
    );
  }
}
