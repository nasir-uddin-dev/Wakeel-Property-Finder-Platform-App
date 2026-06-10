import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:wakeel_property_finder_platform_app/core/constants/app_colors.dart';
import 'package:wakeel_property_finder_platform_app/core/shared/common_widgets/custom_button.dart';
import 'package:wakeel_property_finder_platform_app/core/shared/common_widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _fullNameController = TextEditingController();
  final _userNameController = TextEditingController();
  final _nationalIdController = TextEditingController();
  final _passwordController = TextEditingController();
  final _reTypePasswordController = TextEditingController();
  final _licenseNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  PhoneNumber? phoneNumber;
  bool isValidNumber = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    _userNameController.dispose();
    _nationalIdController.dispose();
    _passwordController.dispose();
    _reTypePasswordController.dispose();
    _licenseNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              56.verticalSpace,
              Center(
                child: Image.asset(
                  'assets/images/login_logo.png',
                  width: 61.w,
                  height: 40.h,
                ),
              ),
              40.verticalSpace,
              Text(
                "Create Account",
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              24.verticalSpace,
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name*',
                      style: TextStyle(
                        color: AppColors.textLabelColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.verticalSpace,
                    CustomTextFormField(
                      controller: _fullNameController,
                      hintText: 'Enter a full name',
                      textInputAction: TextInputAction.next,
                      prefixIcon: Image.asset(
                        'assets/icons/user_icon.png',
                        width: 10.w,
                        height: 10.h,
                      ),
                    ),
                    16.verticalSpace,
                    Text(
                      'User Name*',
                      style: TextStyle(
                        color: AppColors.textLabelColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.verticalSpace,
                    CustomTextFormField(
                      controller: _userNameController,
                      hintText: 'Enter a user name',
                      textInputAction: TextInputAction.next,
                      prefixIcon: Image.asset(
                        'assets/icons/user_icon.png',
                        width: 10.w,
                        height: 10.h,
                      ),
                    ),
                    16.verticalSpace,
                    Text(
                      'Phone Number*',
                      style: TextStyle(
                        color: AppColors.textLabelColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.verticalSpace,
                    InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        phoneNumber = number;
                      },
                      onInputValidated: (bool value) {
                        setState(() {
                          isValidNumber = value;
                        });
                      },

                      autoValidateMode: AutovalidateMode.onUserInteraction,
                      errorMessage: 'Invalid phone number',
                      selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.DROPDOWN,
                        setSelectorButtonAsPrefixIcon: true,
                        leadingPadding: 20,
                        trailingSpace: false,
                      ),
                      inputDecoration: InputDecoration(
                        hintText: 'Enter your phone number',
                        hintStyle: TextStyle(
                          color: AppColors.hintTextColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                            color: AppColors.inputBorderColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                            color: AppColors.inputBorderColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(color: AppColors.primaryColor),
                        ),
                      ),
                    ),

                    16.verticalSpace,
                    Text(
                      'National ID*',
                      style: TextStyle(
                        color: AppColors.textLabelColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.verticalSpace,
                    CustomTextFormField(
                      controller: _nationalIdController,
                      hintText: 'Enter a national id',
                      textInputAction: TextInputAction.next,

                      prefixIcon: Image.asset(
                        'assets/icons/id_card_icon.png',
                        width: 10.w,
                        height: 10.h,
                      ),
                    ),
                    16.verticalSpace,
                    Text(
                      'Password*',
                      style: TextStyle(
                        color: AppColors.textLabelColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.verticalSpace,
                    CustomTextFormField(
                      controller: _passwordController,
                      hintText: 'Enter a password',
                      textInputAction: TextInputAction.next,
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: AppColors.inputBorderColor,
                        size: 24.sp,
                      ),
                      obscureText: true,
                      prefixIcon: Image.asset(
                        'assets/icons/lock_icon.png',
                        width: 10.w,
                        height: 10.h,
                      ),
                    ),
                    16.verticalSpace,
                    Text(
                      'Re-type Password*',
                      style: TextStyle(
                        color: AppColors.textLabelColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.verticalSpace,
                    CustomTextFormField(
                      controller: _reTypePasswordController,
                      hintText: 'Enter a re-type password',
                      textInputAction: TextInputAction.next,
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: AppColors.inputBorderColor,
                        size: 24.sp,
                      ),
                      obscureText: true,
                      prefixIcon: Image.asset(
                        'assets/icons/lock_icon.png',
                        width: 10.w,
                        height: 10.h,
                      ),
                    ),
                    16.verticalSpace,
                    Text(
                      'License Number*',
                      style: TextStyle(
                        color: AppColors.textLabelColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.verticalSpace,
                    CustomTextFormField(
                      controller: _licenseNumberController,
                      hintText: 'Enter a license number',
                      textInputAction: TextInputAction.done,

                      prefixIcon: Image.asset(
                        'assets/icons/id_card_icon.png',
                        width: 10.w,
                        height: 10.h,
                      ),
                    ),
                    16.verticalSpace,
                    Text(
                      'License Certification File*',
                      style: TextStyle(
                        color: AppColors.textLabelColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.verticalSpace,
                    Container(
                      width: double.infinity,
                      height: 56.h,
                      decoration: DottedDecoration(
                        shape: Shape.box,
                        color: AppColors.primaryColor,
                        dash: [4,4],
                        strokeWidth: 1.5,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    24.verticalSpace,
                    CustomButton(
                      onTap: () {},
                      text: 'Sign Up',
                      textColor: Color(0xFFFFFFFF),
                    ),
                  ],
                ),
              ),
              24.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account yet?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  4.horizontalSpace,
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              24.verticalSpace,
              Image.asset('assets/images/rectangle.png'),
            ],
          ),
        ),
      ),
    );
  }
}
