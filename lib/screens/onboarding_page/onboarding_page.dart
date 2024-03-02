import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviaapp/components/app_colors.dart';
import 'package:moviaapp/gen/assets.gen.dart';
import 'package:moviaapp/gen/fonts.gen.dart';
import 'package:moviaapp/widgets/onboarding_pageview.dart';
import 'package:moviaapp/widgets/sign_up_bottomsheet.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final onBoardingPageController = PageController(initialPage: 0);

  List<String> images = [
    Assets.images.onboard1.path,
    Assets.images.onboard2.path,
    Assets.images.onboard1.path,
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(children: [
        ///TODO:Page view Seciton
        PageView(
          controller: onBoardingPageController,
          children: [
            OnBoardingPageview(
              size: size,
              title: 'سریال و فیلم های جدید رو \n از دست نمیدی',
              caption: 'جزو اولین نفرایی باش که فیلم و\n سریال بروز رو میبینن',
              image: images[0],
            ),
            OnBoardingPageview(
              size: size,
              title: 'نظرات و ببین مقایسه کن',
              caption: 'نظرات مردم رو ببین و خودت هم نظر بزار',
              image: images[1],
            ),
            OnBoardingPageview(
              size: size,
              title: 'اطلاعات بیشتر از فیلم و سریال میخوای؟',
              caption: 'به همه جزییات فیلم ها\n دسترسی داری و میتونی بخونیش',
              image: images[2],
            ),
          ],
        ),
        //? Smooth Page Indicator Section
        Positioned(
          right: 25,
          bottom: 100,
          child: SmoothPageIndicator(
              effect: const ExpandingDotsEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  activeDotColor: AppColors.primaryColor,
                  dotColor: AppColors.dotsUnselectedColor),
              controller: onBoardingPageController,
              count: 3),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 20, left: 20),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SignUpBottomSheetSection(size: size);
                  },
                );
              },
              child: Container(
                width: size.width - 70,
                height: 44,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Text(
                    'برو بریم',
                    style: TextStyle(
                        fontFamily: FontFamily.iransansBold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
