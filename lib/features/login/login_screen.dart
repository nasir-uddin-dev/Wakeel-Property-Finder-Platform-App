import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wakeel_property_finder_platform_app/core/constants/app_colors.dart';
import 'package:wakeel_property_finder_platform_app/core/routes/app_routes.dart';
import 'package:wakeel_property_finder_platform_app/core/shared/common_widgets/custom_button.dart';
import 'package:wakeel_property_finder_platform_app/core/shared/common_widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              "Sign In",
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
                    'User Name',
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
                    'Password',
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
                    textInputAction: TextInputAction.done,
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  24.verticalSpace,
                  CustomButton(
                    onTap: () {},
                    text: 'Sign In',
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
                    Navigator.pushNamed(context, AppRoutes.signUpScreen);
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset('assets/images/rectangle.png'),
          ],
        ),
      ),
    );
  }
}
