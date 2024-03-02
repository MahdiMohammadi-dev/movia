import 'package:flutter/material.dart';
import 'package:moviaapp/components/app_colors.dart';
import 'package:moviaapp/gen/fonts.gen.dart';

class FormTextField extends StatefulWidget {
  FormTextField({
    super.key,
    required this.title,
    required this.textEditingController,
    required this.textInputType,
    required this.prefixIcon,
    this.suffixIcon,
  });

  final String title;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  bool isVisible = false;

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
      child: TextFormField(
        obscureText: widget.isVisible,
        keyboardType: widget.textInputType,
        controller: widget.textEditingController,
        style: const TextStyle(
            fontFamily: FontFamily.iransansreg,
            color: AppColors.bottomNavCaptionColor),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(8)),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColors.bottomNavCaptionColor),
                borderRadius: BorderRadius.circular(8)),
            hintText: widget.title,
            hintStyle: const TextStyle(
                fontFamily: FontFamily.iransansreg,
                color: AppColors.bottomNavCaptionColor),
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.isVisible = !widget.isVisible;
                  });
                },
                child: Icon(widget.suffixIcon,
                    color: AppColors.iconTextFieldColor)),
            prefixIcon: Icon(
              widget.prefixIcon,
              color: AppColors.iconTextFieldColor,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
