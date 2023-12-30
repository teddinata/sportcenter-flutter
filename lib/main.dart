import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
import 'package:sportcenter/pages/order_page.dart';
import 'package:sportcenter/pages/detail_order_page.dart';
import 'package:sportcenter/pages/help_page.dart';
import 'package:sportcenter/pages/privacy_policy_page.dart';
import 'package:sportcenter/pages/term_of_service_page.dart';
import 'package:sportcenter/pages/rate_app_page.dart';
import 'package:sportcenter/providers/auth_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(), // ubah ke splash page
          '/sign-in': (context) => SignInPage(), // ubah ke splash page
          '/sign-up': (context) => SignUpPage(), // ubah ke splash page
          '/home': (context) => MainPage(), // ubah ke splash page
          '/detail-chat': (context) => DetailChatPage(), // ubah ke splash page
          '/edit-profile': (context) =>
              EditProfilePage(), // ubah ke splash page
          '/product': (context) => ProductPage(), // ubah ke splash page
          '/cart': (context) => CartPage(), // ubah ke splash page
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
          '/my-order': (context) => OrderPage(), // ubah ke splash page
          '/detail-order': (context) => OrderDetailPage(),
          '/help': (context) => HelpPage(), // ubah ke splash page
          '/privacy-policy': (context) => PrivacyPolicyPage(), // ubah ke splash
          '/term-of-service': (context) =>
              TermsOfServicePage(), // ubah ke splash
          '/rate-app': (context) => RateAppPage(), // ubah ke splash page
        },
      ),
    );
  }
}
