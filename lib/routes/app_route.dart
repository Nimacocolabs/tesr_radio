import 'package:flutter/material.dart';
import 'package:text_radio/presentation/home_screen/home_screen.dart';
import 'package:text_radio/presentation/welcome_screen/welcome_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

   static const String homeScreen = '/home_screen';
  //
  // static const String styleguideScreen = '/styleguide_screen';
  //
  // static const String detallesOpcionalScreen = '/detalles_opcional_screen';
  //
  // static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
     homeScreen: (context) => HomeScreen(),
    // styleguideScreen: (context) => StyleguideScreen(),
    // detallesOpcionalScreen: (context) => DetallesOpcionalScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen()
  };
}
