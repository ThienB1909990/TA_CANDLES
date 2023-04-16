import 'package:flutter/material.dart';
import 'package:ta_candles/representation/screen/splash_screen.dart';
import 'package:ta_candles/routes.dart';

import 'core/constants/color_constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TA Candles',
      theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
        scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
        // ignore: deprecated_member_use
        backgroundColor: ColorPalette.backgroundScaffoldColor,
        
      ),
      routes: routes, 
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key,});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(),
      );}}