import 'package:flutter/material.dart';

import '../../core/constants/dismention_constants.dart';
import '../../core/helper/asset_helper.dart';
import '../widgets/app_bar_container.dart';
import '../widgets/item_button_widget.dart';
import '../widgets/item_option_booking.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({Key? key, this.destination}) : super(key: key);

  static const String routeName = '/hotel_booking_screen';

  final String? destination;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  String? selectDate;
  String? guestAndRoom;

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Hotel Booking',
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: kMediumPadding * 2,
            ),
            ItemOptionsBookingWidget(
              title: 'Destination',
              value: widget.destination ?? 'Viet Nam',
              icon: AssetHelper.icoLocation,
              onTap: () {},
            ),
            
            
            ItemButtonWidget(
              data: 'Search',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
