import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:moviaapp/components/app_colors.dart';
import 'package:moviaapp/widgets/onboarding_custom_bottomsheet.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview({
    super.key,
    required this.size,
    required this.title,
    required this.caption,
    required this.image,
  });

  final Size size;
  final String title;
  final String caption;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Animate(
            effects: const [
              FadeEffect(curve: Curves.easeIn, duration: Duration(seconds: 2)),
              MoveEffect()
            ],
            child: Image.asset(image),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0)),
                      color: AppColors.bottomNavColor,
                    ),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 2.6,
                    child: Animate(
                      effects: const [
                        FadeEffect(
                            curve: Curves.easeIn,
                            duration: Duration(seconds: 2)),
                        MoveEffect()
                      ],
                      child: OnBoardingCustomBottomSheet(
                          size: size, title: title, subtitle: caption),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
