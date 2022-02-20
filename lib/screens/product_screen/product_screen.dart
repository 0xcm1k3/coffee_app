// ignore_for_file: must_be_immutable

import 'package:coffee_app/constants/app_consts.dart';
import 'package:coffee_app/constants/dimensions.dart';
import 'package:coffee_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);

  Product product = Get.arguments["product"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              borderRadius: BorderRadius.circular(10),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: Dimensions.calculateH(context: context, number: 27),
                color: Colors.black,
              ),
            ),
            RichText(
              text: TextSpan(
                text: "Coffee",
                style: TextStyle(
                  fontFamily: "Amerigo",
                  fontSize: Dimensions.calculateH(context: context, number: 25),
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                children: const [
                  TextSpan(
                      text: "House",
                      style: TextStyle(color: AppConstants.kPrimaryColor)),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: SvgPicture.asset(
                "assets/SVGs/shopping_bag.svg",
                height: Dimensions.calculateH(context: context, number: 27),
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (scroll) {
            scroll.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimensions.calculateW(context: context, number: 15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(product.imgPath),
                    height:
                        Dimensions.calculateH(context: context, number: 325),
                    width: Dimensions.calculateW(context: context, number: 325),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical:
                          Dimensions.calculateH(context: context, number: 15),
                      horizontal:
                          Dimensions.calculateW(context: context, number: 20),
                    ),
                    decoration: const BoxDecoration(
                        color: AppConstants.kBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(13),
                          bottomRight: Radius.circular(13),
                        )),
                    height: 150,
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppConstants.CustomText(
                              text: product.product_name,
                              weight: FontWeight.w600,
                              maxLines: 2,
                              fontSize: 22,
                            ),
                            SizedBox(
                              height: Dimensions.calculateH(
                                  context: context, number: 8),
                            ),
                            Text(
                              product.subText,
                              maxLines: 1,
                              style: TextStyle(
                                  color: AppConstants.kSubtitlesColor
                                      .withOpacity(0.9),
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: Dimensions.calculateH(
                                  context: context, number: 8),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: Dimensions.calculateH(
                                      context: context, number: 27),
                                  color: Colors.yellow[400],
                                ),
                                SizedBox(
                                  width: Dimensions.calculateW(
                                      context: context, number: 5),
                                ),
                                Text(
                                  "4.5",
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: AppConstants.kSubtitlesColor
                                        .withOpacity(0.9),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.calculateW(
                                      context: context, number: 8),
                                ),
                                Text(
                                  "(6,500)",
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: AppConstants.kSubtitlesColor
                                        .withOpacity(0.9),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              AppConstants.CustomText(
                                text:
                                    "\$${product.product_price.toStringAsFixed(2)}",
                                fontSize: 25,
                                spacing: 1,
                                weight: FontWeight.bold,
                                color: AppConstants.kPrimaryColor,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: MaterialButton(
                                  onPressed: () {},
                                  height: 47,
                                  minWidth: 110,
                                  color: AppConstants.kPrimaryColor,
                                  child: const Text(
                                    "Add to cart",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.calculateH(context: context, number: 20),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.calculateH(context: context, number: 20),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      product.product_desc,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.calculateH(context: context, number: 30),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: MaterialButton(
                        onPressed: () {},
                        height:
                            Dimensions.calculateH(context: context, number: 50),
                        minWidth: Dimensions.calculateW(
                            context: context, number: 190),
                        color: AppConstants.kBackgroundColor,
                        child: const Text(
                          "BUY NOW",
                          style: TextStyle(
                            color: AppConstants.kPrimaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.calculateH(context: context, number: 30),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
