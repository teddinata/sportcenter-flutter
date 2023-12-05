import 'package:flutter/material.dart';
import 'package:sportcenter/pages/checkout_page.dart';
import 'package:sportcenter/pages/detail_chat_page.dart';
import 'package:sportcenter/pages/edit_profile_page.dart';
import 'package:sportcenter/pages/sign_in_page.dart';
import 'package:sportcenter/pages/splash_page.dart';
import 'package:sportcenter/pages/sign_up_page.dart';
import 'package:sportcenter/pages/home/main_page.dart';
import 'package:sportcenter/pages/product_page.dart';
import 'package:sportcenter/pages/cart_page.dart';
import 'package:sportcenter/pages/checkout_success.dart';

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
        '/detail-chat': (context) => DetailChatPage(), // ubah ke splash page
        '/edit-profile': (context) => EditProfilePage(), // ubah ke splash page
        '/product': (context) => ProductPage(), // ubah ke splash page
        '/cart': (context) => CartPage(), // ubah ke splash page
        '/checkout': (context) => CheckoutPage(),
        '/checkout-success': (context) => CheckoutSuccessPage(),
      },
    );
  }
}
