import 'package:flutter/material.dart';
import 'package:ta_candles/representation/screen/candles_screen.dart';
import 'package:ta_candles/representation/screen/cart_screen.dart';
import 'package:ta_candles/representation/screen/detail_products_screen.dart';

import 'package:ta_candles/representation/screen/intro_screen.dart';
import 'package:ta_candles/representation/screen/main_app.dart';
import 'package:ta_candles/representation/screen/product_screen.dart';
import 'package:ta_candles/representation/screen/splash_screen.dart';

import 'data/model/products_model.dart';

final Map<String, WidgetBuilder> routes = {
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => MainApp(),
  CandlesScreen.routeName: (context) => CandlesScreen(),
  
   RoomsScreen.routeName: (context) => RoomsScreen(),
 };

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case DetailHotelScreen.routeName:
      final CandlesModel hotelModel = (settings.arguments as CandlesModel);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => DetailHotelScreen(
          hotelModel: hotelModel,
        ),
      );
    

    
    default:
      return null;
  }
}


