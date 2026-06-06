import 'package:flutter/material.dart';
import 'package:wakeel_property_finder_platform_app/features/login/login_flow_screen.dart';
import 'package:wakeel_property_finder_platform_app/features/login/login_screen.dart';
import 'package:wakeel_property_finder_platform_app/features/signup/signup_screen.dart';
import 'package:wakeel_property_finder_platform_app/features/splash/splash_screen.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String splashScreen = '/splashScreen';
  static const String loginFlowScreen = '/loginFlowScreen';
  static const String loginScreen = '/loginScreen';
  static const String signUpScreen = '/signUpScreen';
}

class RouteGenerator {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case AppRoutes.loginFlowScreen:
        return MaterialPageRoute(builder: (context) => LoginFlowScreen());

      case AppRoutes.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());

      case AppRoutes.signUpScreen:
        return MaterialPageRoute(builder: (context) => SignUpScreen());
    }
    return null;
  }
}
