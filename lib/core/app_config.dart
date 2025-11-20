import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppConfig {
  static const String appsFlyerDevKey = 'UtHpK3AgbiqZFgPEfet2zR';
  static const String appsFlyerAppId = '6755425209'; // Для iOS'
  static const String bundleId = 'com.mixmagic.sortingtheelixir'; // Для iOS'
  static const String locale = 'en'; // Для iOS'
  static const String os = 'iOS'; // Для iOS'
  static const String endpoint = 'https://sortingtheelixir.com'; // Для iOS'
  static const String firebaseProjectId = 'sorting-the-elixir'; // Для iOS'

//UI Settings
// Splash Screen
  static const Decoration splashDecoration = const BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/back-1.png'),
      fit: BoxFit.fitHeight,
      alignment: Alignment.center
    ),    
    gradient: AppConfig.splashGradient,
  );

  static const Gradient splashGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF30225C),
      Color(0xFF150B34),
    ],
  );
  static const Color loadingTextColor = Color(0xFFFFFFFF);
  static const Color spinerColor = Color(0xFCFFFFFF);
// Push Request Screen Settings

  static const Decoration pushRequestDecoration = const BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/back-2.png'),
      fit: BoxFit.fitHeight,
      alignment: Alignment.center
    ),
    gradient: AppConfig.pushRequestFadeGradient,
  );

  static const Gradient pushRequestGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF30225C),
      Color(0xFF150B34),
    ],
  );
  static const Gradient pushRequestFadeGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(0, 0, 4, 94),
      Color.fromARGB(255, 0, 4, 94),
    ],
  );
  static const Color titleTextColor = Color(0xFFFFFFFF);
  static const Color subtitleTextColor = Color(0x80FDFDFD);

  static const Color yesButtonColor = Color.fromARGB(255, 178, 94, 245);
  static const Color yesButtonShadowColor = Color(0xA3D1710B);
  static const Color yesButtonTextColor = Color(0xFFFFFFFF);
  static const Color skipTextColor = Color(0x7DF9F9F9);

  // Путь к логотипу, если не находит добавить в pubspec.yaml
  static const String logoPath = 'assets/images/Logo.png';

  // экран ошибки подключения интернета
  // Splash Screen
  static const Decoration errorScreenDecoration = const BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/back-1.png'),
      fit: BoxFit.fitHeight,
      alignment: Alignment.center
    ),
    gradient: AppConfig.errorScreenGradient,
  );

  static const Gradient errorScreenGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF30225C),
      Color(0xFF150B34),
    ],
  );
  static const Color errorScreenTextColor = Color(0xFFFFFFFF);
  static const Color errorScreenIconColor = Color(0xFCFFFFFF);

// экран загрузки WebGL
  static String webGLEndpoint =
      'https://play.unity.com/api/v1/games/game/3941c904-7528-4160-b775-082e72371147/build/latest/frame';

  static const Decoration webGLLoadingDecoration = const BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/back-1.png'),
      fit: BoxFit.fitHeight,
      alignment: Alignment.center
    ),
    gradient: AppConfig.splashGradient,
  );
  static const String webGLLoadingLogoPath = 'assets/images/Logo.png';
  static const Gradient webGLLoadingGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF30225C),
      Color(0xFF150B34),
    ],
  );
  static const Color webGLLoadingTextColor = Color(0xFFFFFFFF);
  static const Color webGLSpinerColor = Color(0xFCFFFFFF);
}
