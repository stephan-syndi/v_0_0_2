import 'package:v_0_0_2/core/app_config.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class NoInternetConnectionScreen extends StatelessWidget {
  const NoInternetConnectionScreen({super.key});

  static Future<bool> checkInternetConnection() async {
    try {
      // print('Check internet');
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      //    print('Check internet error false');
      return false;
    }
  }

  static void showIfNoInternet(BuildContext context) async {
    print('ShowIfNoInternet');
    Navigator.pushAndRemoveUntil(
      context!,
      MaterialPageRoute(
        builder: (context) => const NoInternetConnectionScreen(),
        fullscreenDialog: true,
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: AppConfig.errorScreenDecoration,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image(
                image: AssetImage("assets/images/popup.png", 
                )
              ),
              
              Container(
                width: 260,
                padding: EdgeInsets.all(8),
                color: const Color.fromARGB(0, 0, 0, 0),
                child: Text(
                  'Please, check your internet connection and restart',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: AppConfig.errorScreenTextColor,
                    ),
                    textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
