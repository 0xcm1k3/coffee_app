// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:coffee_app/screens/home_screen/home_screen.dart';
import 'package:coffee_app/screens/product_screen/product_screen.dart';
import 'package:coffee_app/screens/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class APPCONFIG {
  static final ROUTES = [
    GetPage(name: "/", page: () => const SplashScreen()),
    GetPage(name: "/home", page: () => HomeScreen()),
    GetPage(name: "/product", page: () => ProductScreen()),
  ];
}
