import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:moviaapp/components/app_colors.dart';
import 'package:moviaapp/gen/assets.gen.dart';
import 'package:moviaapp/screens/onboarding_page/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void gotoNextPage() {
    Future.delayed(const Duration(milliseconds: 3500), () {
      Get.to(OnBoardingPage(),
          transition: Transition.circularReveal,
          curve: Curves.easeIn,
          duration: const Duration(milliseconds: 1500));
    });
  }

  @override
  void initState() {
    gotoNextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.images.logo.path),
            const SizedBox(height: 60),
            const SpinKitFadingCube(
              color: Colors.white,
              size: 34,
              duration: Duration(milliseconds: 3500),
            )
          ],
        ),
      ),
    ));
  }
}
