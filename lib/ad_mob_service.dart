import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobService{
  static String? get bannerAdUnitId{
    if(Platform.isAndroid){
      return "ca-app-pub-3940256099942544/6300978111";
    }
    else if(Platform.isIOS){
      return "ca-app-pub-3940256099942544/6300978111";
    }
    return null;
  }

  static String? get InterstitialAdUnitId{
    if(Platform.isAndroid){
      return "ca-app-pub-3940256099942544/1033173712";
    }
    else if(Platform.isIOS){
      return "ca-app-pub-3940256099942544/1033173712";
    }
    return null;
  }

  static String? get OpenAdUnitId{
    if(Platform.isAndroid){
      return "ca-app-pub-3940256099942544/3419835294";
    }
    else if(Platform.isIOS){
      return "ca-app-pub-3940256099942544/3419835294";
    }
    return null;
  }

  static final BannerAdListener bannerAdListener = BannerAdListener(
    onAdLoaded: (ad) => print("Add Loaded"),
    onAdFailedToLoad: (ad, errorCode) {
      ad.dispose();
       print("Add Failed to Load: $errorCode");
    },
    onAdOpened: ((ad) => print("Add Opened")),


  );
}