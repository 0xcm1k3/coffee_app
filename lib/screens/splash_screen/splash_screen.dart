import 'package:coffee_app/constants/app_consts.dart';
import 'package:coffee_app/constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConstants.kBackgroundColor,
        body: Stack(
          children: [
            Positioned(
              top: -(Dimensions.calculateH(context: context, number: 35)),
              left: -(Dimensions.calculateH(context: context, number: 55)),
              child: SvgPicture.asset(
                "assets/SVGs/bg_pattern.svg",
                color: Colors.white.withOpacity(0.4),
              ),
            ),
            Positioned(
              top: -(Dimensions.calculateH(context: context, number: 35)),
              right: -(Dimensions.calculateH(context: context, number: 55)),
              child: SvgPicture.asset(
                "assets/SVGs/bg_pattern.svg",
                color: Colors.white.withOpacity(0.4),
              ),
            ),
            Positioned.fill(
              top: -(Dimensions.calculateH(context: context, number: 250)),
              child: const Image(
                image: AssetImage("assets/products/product4.png"),
              ),
            ),
            Positioned.fill(
              top: Dimensions.calculateH(context: context, number: 300),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppConstants.CustomText(
                    text: "StarBucks Dark",
                    fontSize:
                        Dimensions.calculateH(context: context, number: 25),
                  ),
                  AppConstants.CustomText(
                    text:
                        "Coffee cups set vector top view diffrent types\ncoffee menu hot latte cappuchino americano \n raf coffee fast food cup beverage white",
                    color: AppConstants.kSubtitlesColor.withOpacity(0.8),
                    fontSize:
                        Dimensions.calculateH(context: context, number: 17),
                  ),
                  SizedBox(
                    height: Dimensions.calculateH(context: context, number: 55),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                  bottom: Dimensions.calculateH(context: context, number: 80),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: MaterialButton(
                    height: 50,
                    minWidth: 40,
                    onPressed: () {
                      Get.offAndToNamed(
                        "/home",
                      );
                    },
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      size: Dimensions.calculateH(context: context, number: 27),
                    ),
                    color: AppConstants.kSecondaryColor,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
