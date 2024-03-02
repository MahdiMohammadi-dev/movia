import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moviaapp/components/app_colors.dart';
import 'package:moviaapp/components/app_dimens.dart';
import 'package:moviaapp/gen/fonts.gen.dart';
import 'package:moviaapp/screens/otp/email_otp_screen.dart';
import 'package:moviaapp/widgets/form_text_field.dart';

class SignUpWithEmailScreen extends StatefulWidget {
  const SignUpWithEmailScreen({super.key});

  @override
  State<SignUpWithEmailScreen> createState() => _SignUpWithEmailScreenState();
}

class _SignUpWithEmailScreenState extends State<SignUpWithEmailScreen> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //! TODO: BackButton
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 15),
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
            const SizedBox(
              height: AppDimens.small,
            ),
            const Text(
              'ساخت حساب کاربری',
              style: TextStyle(
                  fontFamily: FontFamily.danabold,
                  fontSize: 23,
                  color: Colors.white),
            ),
            const SizedBox(
              height: AppDimens.large,
            ),
            const Text(
              'اطلاعات کاربری خود را در زیر وارد کنید\n یا اگر حسابی دارید وارد شوید',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: FontFamily.danamed,
                  fontSize: 15,
                  color: AppColors.bottomNavCaptionColor),
            ),
            //! TODO: TextFields
            FormTextField(
                textEditingController: usernameController,
                title: 'نام کاربری',
                textInputType: TextInputType.text,
                prefixIcon: Iconsax.user),
            FormTextField(
                textEditingController: emailController,
                title: 'پست الکترونیک',
                textInputType: TextInputType.emailAddress,
                prefixIcon: Iconsax.direct_inbox),
            FormTextField(
              textEditingController: passwordController,
              title: 'رمز عبور',
              textInputType: TextInputType.visiblePassword,
              prefixIcon: Iconsax.lock,
              suffixIcon: Icons.remove_red_eye,
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'با ایجاد حساب کاربری شما با قوانین و مقررات ما \n موافقت نموده اید',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: FontFamily.danabold, color: Colors.grey),
              ),
            ),
            //* TODO: Submit Button
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                  width: size.width / 1.1,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor: AppColors.primaryColor),
                      onPressed: () {
                        Get.to(EmailOtpScreen(),
                            transition: Transition.downToUp,
                            curve: Curves.ease,
                            duration: const Duration(milliseconds: 1000));
                      },
                      child: const Text(
                        'ایجاد حساب',
                        style: TextStyle(
                            fontFamily: FontFamily.danabold,
                            color: Colors.white),
                      ))),
            ),
            //! TODO: Already Have Account Part
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'از قبل حسابی دارید؟',
                  style: TextStyle(
                      fontFamily: FontFamily.danamed,
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 15),
                ),
                const TextSpan(
                    text: 'وارد شوید',
                    style: TextStyle(
                        fontFamily: FontFamily.danamed,
                        color: AppColors.primaryColor,
                        fontSize: 15))
              ])),
            )
          ],
        ),
      ),
    ));
  }
}
