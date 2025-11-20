import 'package:flutter/material.dart';

// import '../app_config.dart';
import '../services/sdk_initializer.dart';
import 'package:v_0_0_2/core/app_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp(); // Раскомитить при деплое
  }

  Future<void> _initializeApp() async {
    await SdkInitializer.initAll(context);
    // await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
    // Navigator.of(context).pushReplacement(
    //   MaterialPageRoute(builder: (context) => const MainScreen()),
    // );dd
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.width;
    final logoSize = screenHeight * 0.8; // Адаптивный размер логотипа

    return Scaffold(
      body: Container(
        decoration: AppConfig
            .splashDecoration, // const BoxDecoration(gradient: AppConfig.splashGradient),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    AppConfig.logoPath,
                    height: logoSize,
                    width: logoSize,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      image: AssetImage("assets/images/header-0.png"), 
                      width: 320,
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 10),
                    CircularProgressIndicator(
                      color: AppConfig.spinerColor,
                      strokeWidth: 4,
                    ),
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
