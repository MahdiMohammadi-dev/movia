import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:moviaapp/components/app_colors.dart';
import 'package:moviaapp/gen/assets.gen.dart';
import 'package:moviaapp/gen/fonts.gen.dart';
import 'package:moviaapp/screens/signup/sign_up_with_email_screen.dart';

class SignUpBottomSheetSection extends StatelessWidget {
  const SignUpBottomSheetSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        color: AppColors.bottomNavColor,
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 13,
          ),
          Container(
            width: 80,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.lineColorBottomSheet),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'بزن بریم با',
            style: TextStyle(
                fontFamily: FontFamily.danamed,
                fontSize: 17,
                color: Colors.white),
          ),
          const SizedBox(
            height: 25,
          ),

          ///TODO: Sign Up with Mobile Number Section
          Container(
            width: size.width - 60,
            height: size.height / 8.5,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: AppColors.primaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 15),
                  child: SvgPicture.asset(
                    Assets.images.simcard,
                    height: 30,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'شماره تلفن همراه(بزودی)',
                        style: TextStyle(
                          fontFamily: FontFamily.danamed,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'میتونی با شماره موبایلت اکانت بسازی \nیا وارد حسابت بشی',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: FontFamily.danareg,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          ///TODO: Sign Up with Email Section
          InkWell(
            onTap: () {
              Get.to(
                transition: Transition.downToUp,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.bounceIn,
                const SignUpWithEmailScreen(),
              );
            },
            child: Container(
              width: size.width - 60,
              height: size.height / 8.5,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: AppColors.bottomNavCaptionColor),
                  color: AppColors.bottomNavColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 15),
                    child: SvgPicture.asset(
                      Assets.images.email,
                      height: 30,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'پست الکترونیک',
                          style: TextStyle(
                            fontFamily: FontFamily.danamed,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'میتونی با پست الکترونیکت اکانت بسازی \nیا وارد حسابت بشی',
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: FontFamily.danareg,
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
