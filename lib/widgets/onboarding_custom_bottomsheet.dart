import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moviaapp/components/app_colors.dart';
import 'package:moviaapp/components/app_dimens.dart';
import 'package:moviaapp/gen/fonts.gen.dart';

class OnBoardingCustomBottomSheet extends StatelessWidget {
  const OnBoardingCustomBottomSheet({
    super.key,
    required this.size,
    required this.title,
    required this.subtitle,
  });

  final Size size;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: FontFamily.danabold,
                fontSize: 20),
          ),
          const SizedBox(
            height: AppDimens.medium,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 45),
            child: Text(
              subtitle,
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                  fontFamily: FontFamily.iransansreg,
                  color: AppColors.bottomNavCaptionColor,
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
