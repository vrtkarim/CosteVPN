import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class Ads {
  String interstitialButtonText = 'InterstitialAd';
  InterstitialAd? interstitialAd;
  int numInterstitialLoadAttempts = 0;
  int maxFailedLoadAttempts = 3;
  final AdRequest request = AdRequest(
    keywords: <String>['foo', 'bar'],
    contentUrl: 'http://foo.com/bar.html',
    nonPersonalizedAds: true,
  );
  void createInterstitialAd() {
    InterstitialAd.load(
        adUnitId: Platform.isAndroid
            ? 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
            : 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
        request: request,
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            interstitialAd = ad;
            //int numInterstitialLoadAttempts = 0;
            interstitialAd!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            numInterstitialLoadAttempts += 1;
            interstitialAd = null;
            if (numInterstitialLoadAttempts < maxFailedLoadAttempts) {
              createInterstitialAd();
            }
          },
        ));
  }

  void showInterstitialAd() {
    if (interstitialAd == null) {
      print('Warning: attempt to show interstitial before loaded.');
      return;
    }
    interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) =>
          print('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        print('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
        createInterstitialAd();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        print('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        createInterstitialAd();
      },
    );
    interstitialAd!.show();
    interstitialAd = null;
  }

  static BannerAd banner = BannerAd(
      size: AdSize.mediumRectangle,
      adUnitId: 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
      listener: BannerAdListener(),
      request: AdRequest());
  static BannerAd banner2 = BannerAd(
      size: AdSize.banner,
      adUnitId: 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
      listener: BannerAdListener(),
      request: AdRequest());
  

}
