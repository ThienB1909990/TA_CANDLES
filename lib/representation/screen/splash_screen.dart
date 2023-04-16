import 'package:flutter/material.dart';
import 'package:ta_candles/core/helper/asset_helper.dart';
import 'package:ta_candles/core/helper/image_helper.dart';
import 'package:ta_candles/core/helper/local_storage_helper.dart';
import 'package:ta_candles/representation/screen/main_app.dart';

import 'intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    redirectIntroScreen();
  }
  void redirectIntroScreen() async {
    final ignoreIntroScreen = LocalStorageHelper.getValue('ignoreIntroScreen') as bool?;
    await Future.delayed(const Duration(seconds: 2));
  if(ignoreIntroScreen != null && ignoreIntroScreen){
    Navigator.of(context).pushNamed(MainApp.routeName);
  } else {
    LocalStorageHelper.setValue('ignoreIntroScreen', true);
    Navigator.of(context).pushNamed(IntroScreen.routeName);

  }
  }


  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetHelper.imageBackGroundSplash, 
            fit: BoxFit.fitWidth,), ),
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetHelper.imageBackGroundSplash, 
        ),
        )
        
      ],
    );
  }
}