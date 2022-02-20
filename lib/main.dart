import 'package:coffee_app/config/app_config.dart';
import 'package:coffee_app/controllers/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var cont = Get.put(ProductController());
  await cont.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    getPages: APPCONFIG.ROUTES,
  ));
}
