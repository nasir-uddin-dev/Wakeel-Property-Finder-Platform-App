import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wakeel_property_finder_platform_app/core/routes/app_routes.dart';
import 'package:wakeel_property_finder_platform_app/core/shared/common_widgets/custom_button.dart';

class LoginFlowScreen extends StatefulWidget {
  const LoginFlowScreen({super.key});

  @override
  State<LoginFlowScreen> createState() => _LoginFlowScreenState();
}

class _LoginFlowScreenState extends State<LoginFlowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/login_flow_background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          Positioned(
            top: 64.h,
            left: 126.w,
            child: Image.asset(
              'assets/images/wakeel_logo.png',
              width: 122.w,
              height: 80.h,
            ),
          ),

          Align(
            alignment: AlignmentGeometry.bottomEnd,
            child: Image.asset('assets/images/white_rectangle.png'),
          ),

          Positioned(
            left: 0,
            bottom: 120.h,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.loginScreen);
                },
                text: 'Sign in with Agent',
                textColor: Color(0xFFFFFFFF),
              ),
            ),
          ),

          Positioned(
            left: 0,
            bottom: 50.h,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: CustomButton(
                onTap: () {},
                text: 'Sign in with Decedants',
                backgroundColor: Colors.transparent,
                boxBorder: Border.all(color: Color(0xFF007267), width: 2),
                textColor: Color(0xFF007267),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
