import 'package:flutter/material.dart';
import 'package:sportcenter/theme.dart';

class TermsOfServicePage extends StatelessWidget {
  const TermsOfServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primaryTextColor,
          ),
        ),
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Terms of Service',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1. Acceptance of Terms',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'By accessing or using the SportCenter app, you agree to comply with and be bound by these Terms of Service. If you do not agree to these terms, please do not use the app.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 16),
                Text(
                  '2. Use of the App',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'You agree not to reproduce, duplicate, copy, sell, resell, or exploit any portion of the app, use of the app, or access to the app without express written permission by SportCenter.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 16),
                Text(
                  '3. User Account',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'To access certain features of the app, you may be required to create an account. You are responsible for maintaining the confidentiality of your account and password and for restricting access to your account.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 16),
                Text(
                  '4. Termination',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'SportCenter reserves the right to terminate or suspend your account and access to the app at any time, without notice, for any reason, including, but not limited to, breach of these Terms.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 16),
                Text(
                  '5. Governing Law',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'These Terms are governed by and construed in accordance with the laws of the state of [Your State], without regard to its conflict of law principles.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                // Add more sections as needed
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
