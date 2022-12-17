import 'package:flutter/material.dart';

import 'package:google_ads/app.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// String? version;
//   List<String> testDeviceIds = ['289C....E6'];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  MobileAds.instance.initialize();
  // MobileAds.instance.updateRequestConfiguration(
  //     RequestConfiguration(testDeviceIds: ['3940256099942544~3347511713']));

  runApp(MyApp());
}

