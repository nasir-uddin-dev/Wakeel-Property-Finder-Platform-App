import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wakeel_property_finder_platform_app/core/constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText,
    required this.textInputAction,
    this.suffixIcon
  });

  final TextEditingController controller;
  final String hintText;
  final Widget prefixIcon;
  final bool? obscureText;
  final TextInputAction textInputAction;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.r),
        hint: Text(
          hintText,
          style: TextStyle(
            color: AppColors.hintTextColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.inputBorderColor),
          borderRadius: BorderRadius.circular(12.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.inputBorderColor),
          borderRadius: BorderRadius.circular(12.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(12.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent),
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    );
  }
}
