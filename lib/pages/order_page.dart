import 'package:flutter/material.dart';
import 'package:sportcenter/theme.dart';
import 'package:sportcenter/pages/detail_order_page.dart';

// Order order = getDummyOrder();

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

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
          'Your Orders',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    // make content to show history order
    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          // NOTE: LIST OF ORDER
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Orders',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                // NOTE: ORDER LIST
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderDetailPage(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: backgroundColor4,
                    ),
                    child: Column(
                      children: [
                        // NOTE: ORDER ITEM
                        Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              margin: EdgeInsets.only(
                                right: 12,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/shoes-product.png',
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Adidas Running',
                                    style: primaryTextStyle,
                                  ),
                                  Text(
                                    '\$57.15',
                                    style: priceTextStyle.copyWith(
                                      fontWeight: medium,
                                    ),
                                  ),
                                  Text(
                                    '09 Dec 2023 00:10',
                                    style: secondaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: light,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '1 Items ',
                                  style: secondaryTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 4),
                                // Badge for Shipment Status
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .red, // You can customize the color based on the status
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    'Pending',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderDetailPage(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: backgroundColor4,
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(
                            right: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/shoes-product.png',
                              ),
                            ),
                          ),
                          // BADGE : Status order
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nike Football',
                                style: primaryTextStyle,
                              ),
                              Text(
                                '\$103.15',
                                style: priceTextStyle.copyWith(
                                  fontWeight: medium,
                                ),
                              ),
                              Text(
                                '09 Dec 2023 00:10',
                                style: secondaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: light,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '1 Items ',
                              style: secondaryTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),

                            SizedBox(height: 4),
                            // Badge for Shipment Status
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors
                                    .green, // You can customize the color based on the status
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                'Shipped',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
