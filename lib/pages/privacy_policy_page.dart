import 'package:flutter/material.dart';
import 'package:sportcenter/theme.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

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
          'Privacy & Policy',
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
                  '1. Introduction',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'This Privacy Policy governs the manner in which SportCenter collects, uses, maintains, and discloses information collected from users (each, a "User") of the SportCenter app.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 16),
                Text(
                  '2. Information We Collect',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'We may collect personal identification information from Users in a variety of ways, including, but not limited to, when Users visit our app, register on the app, and in connection with other activities, services, features, or resources we make available on our app. Users may be asked for, as appropriate, name, email address, phone number, and other relevant details.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 16),
                Text(
                  '3. How We Use Collected Information',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'SportCenter may collect and use Users personal information for the following purposes: to improve customer service, to personalize user experience, to improve our app, to process payments, and to send periodic emails. We may use the email address to respond to inquiries, questions, and/or other requests from Users.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 16),
                Text(
                  '4. Sharing Your Personal Information',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'We do not sell, trade, or rent Users personal identification information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates, and advertisers for the purposes outlined above.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 16),
                Text(
                  '5. Changes to This Privacy Policy',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'SportCenter has the discretion to update this privacy policy at any time. When we do, we will revise the updated date at the bottom of this page. We encourage Users to frequently check this page for any changes to stay informed about how we are helping to protect the personal information we collect. You acknowledge and agree that it is your responsibility to review this privacy policy periodically and become aware of modifications.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 16),
                Text(
                  '6. Your Acceptance of These Terms',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'By using this app, you signify your acceptance of this policy. If you do not agree to this policy, please do not use our app. Your continued use of the app following the posting of changes to this policy will be deemed your acceptance of those changes.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 16),
                Text(
                  '7. Contacting Us',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'If you have any questions about this Privacy Policy, the practices of this app, or your dealings with this app, please contact us at support@sportcenter.com.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 16),
                Text(
                  '8. Effective Date',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'This Privacy Policy is effective as of January 1, 2023.',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 16),
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
