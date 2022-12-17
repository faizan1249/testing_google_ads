import 'package:flutter/material.dart';
import 'package:google_ads/ad_mob_service.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'package:platform_device_id/platform_device_id.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  BannerAd? _bannerAd;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  
    _createBannerAd();
  }

  void _createBannerAd() {
    _bannerAd = BannerAd(
        size: AdSize.fullBanner,
        adUnitId: AdMobService.bannerAdUnitId.toString(),
        listener: AdMobService.bannerAdListener,
        request: const AdRequest())..load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _bannerAd == null
          ? Container()
          : Container(
              margin: const EdgeInsets.only(bottom: 12),
              height: 52,
              child: AdWidget(
                ad: _bannerAd!,
              ),
            ),
    );
  }
}

PreferredSizeWidget _buildAppBar() {
  return AppBar(title: Text("Google Ads"));
}

Widget _buildBody() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:  [
      ElevatedButton(onPressed: ()async{
        // String? result = await PlatformDeviceId.getDeviceId;
        // print(result);
      }, child: Text("Get")),
      Center(
        child: Text("Google ads"),
      ),
    ],
  );
}
