import 'package:flutter/material.dart';
import 'package:sportcenter/theme.dart';

// class Order {
//   final String productName;
//   final double productPrice;
//   final int quantity;
//   final double shippingCost;
//   final double adminFee;
//   final String deliveryAddress;
//   final String deliveryStatus;
//   final String trackingInfo;

//   Order({
//     required this.productName,
//     required this.productPrice,
//     required this.quantity,
//     required this.shippingCost,
//     required this.adminFee,
//     required this.deliveryAddress,
//     required this.deliveryStatus,
//     required this.trackingInfo,
//   });
// }

class OrderDetailPage extends StatelessWidget {
  // final Order order;

  // const OrderDetailPage({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Order Detail',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Details',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            // INVOICE CODE
            Text(
              'INVOICE: #ADIDASX19',
              style: priceTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.only(
                    right: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage('assets/shoes-product.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nike Flyknit 2021',
                        style: primaryTextStyle,
                      ),
                      Text(
                        '\$500.000',
                        style: priceTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Order Summary',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Quantity',
                  style: secondaryTextStyle,
                ),
                Text(
                  '2 Items',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Purchase Date',
                  style: secondaryTextStyle,
                ),
                Text(
                  '09 Dec, 2023, 10:00',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping Cost',
                  style: secondaryTextStyle,
                ),
                Text(
                  '\$522',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Admin Fee',
                  style: secondaryTextStyle,
                ),
                Text(
                  '\$100',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: secondaryTextStyle,
                ),
                Text(
                  '\$10.000',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount',
                  style: secondaryTextStyle,
                ),
                Text(
                  '\$1.000',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Grand Total',
                    style: priceTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16)),
                Text(
                  '\$20.000',
                  style: priceTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 8),
            Divider(
              height: 24,
              thickness: 1,
              color: secondaryTextColor,
            ),
            SizedBox(height: 8),
            Text(
              'Delivery Information',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name Recipient',
                  style: secondaryTextStyle,
                ),
                Flexible(
                  child: Text(
                    'Joko Widodo',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      // overflow: TextOverflow.ellipsis,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Phone Number',
                  style: secondaryTextStyle,
                ),
                Flexible(
                  child: Text(
                    '085123456789',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      // overflow: TextOverflow.ellipsis,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery Address',
                  style: secondaryTextStyle,
                ),
                Flexible(
                  child: Text(
                    'Teguhan, Berbah, Sleman, Yogyakarta',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      // overflow: TextOverflow.ellipsis,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Status',
                  style: secondaryTextStyle,
                ),
                Text(
                  'Shipped',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Courier',
                  style: secondaryTextStyle,
                ),
                Text(
                  'JNE',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Resi Number',
                  style: secondaryTextStyle,
                ),
                Text(
                  'TLJRX112388SS',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Order getDummyOrder() {
//   return Order(
//     productName: 'Adidas Running Shoes',
//     productPrice: 57.15,
//     quantity: 2,
//     shippingCost: 10.0,
//     adminFee: 5.0,
//     deliveryAddress: '123 Main Street, Cityville',
//     deliveryStatus: 'Shipped',
//     trackingInfo: 'XYZ123456',
//   );
// }
