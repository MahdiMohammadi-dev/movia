import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviaapp/components/app_colors.dart';
import 'package:moviaapp/gen/fonts.gen.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class EmailOtpScreen extends StatelessWidget {
  const EmailOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          //! TODO: BackButton
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 15),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          const Text(
            'کد احراز هویت',
            style: TextStyle(
                fontFamily: FontFamily.danabold,
                color: Colors.white,
                fontSize: 25),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            textAlign: TextAlign.center,
            'لطفا کد را وارد کنید به ایمیلی که ارسال شد به \n exmample@yahoo.com',
            style: TextStyle(
                fontFamily: FontFamily.danamed,
                color: AppColors.bottomNavCaptionColor),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 50),
            child: OtpPinField(
              autoFillEnable: true,
              cursorColor: AppColors.primaryColor,
              cursorWidth: 2.0,
              onSubmit: (text) {
                print(text);
              },
              onChange: (text) {
                print(text);
              },
            ),
          ),
        ],
      ),
    ));
  }
}
