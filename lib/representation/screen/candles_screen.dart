import 'package:flutter/material.dart';

import '../../core/helper/asset_helper.dart';
import '../../data/model/products_model.dart';
import '../widgets/app_bar_container.dart';
import '../widgets/item_hotel_widget.dart';
import 'detail_products_screen.dart';

class CandlesScreen extends StatefulWidget {
  const CandlesScreen({Key? key}) : super(key: key);

  static const String routeName = '/hotels_screen';

  @override
  State<CandlesScreen> createState() => _CandlesScreenState();
}

class _CandlesScreenState extends State<CandlesScreen> {
  final List<CandlesModel> listCandles = [
    CandlesModel(
      candImage: AssetHelper.lady,
      candName: 'Lady Freesia',  
      brand: 'Aurae',
      price: 143,
    ),
    CandlesModel(
      candImage: AssetHelper.deep,
      candName: 'Deep Ocean',  
      brand: 'Aurae',
      price: 143,
    ),
    CandlesModel(
      candImage: AssetHelper.wood,
      candName: 'Wood Sage & Sea Salt',  
      brand: 'Aurae',
      price: 143,
    ),
    CandlesModel(
      candImage: AssetHelper.dalat,
      candName: 'Da Lat',  
      brand: 'Aurae',
      price: 143,
    ),
    CandlesModel(
      candImage: AssetHelper.pine,
      candName: 'Fresh Pine',  
      brand: 'Aurae',
      price: 143,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      implementTraling: true,
      titleString: 'Candles',
      child: SingleChildScrollView(
        child: Column(
          children: listCandles
              .map(
                (e) => ItemCandlesWidget(
                  candlesModel: e,
                  onTap: () {
                    Navigator.of(context).pushNamed(DetailHotelScreen.routeName, arguments: e);
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
