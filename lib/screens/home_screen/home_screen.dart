// ignore_for_file: must_be_immutable

import 'package:coffee_app/constants/app_consts.dart';
import 'package:coffee_app/constants/dimensions.dart';
import 'package:coffee_app/controllers/products_controller.dart';
import 'package:coffee_app/models/product.dart';
import 'package:coffee_app/screens/home_screen/widgets/customChip.dart';
import 'package:coffee_app/screens/home_screen/widgets/productCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var cont = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical:
                            Dimensions.calculateH(context: context, number: 20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(10),
                            child: SvgPicture.asset(
                              "assets/SVGs/menu.svg",
                              height: Dimensions.calculateH(
                                  context: context, number: 27),
                              color: Colors.black,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Coffee",
                              style: TextStyle(
                                fontFamily: "Amerigo",
                                fontSize: Dimensions.calculateH(
                                    context: context, number: 25),
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              children: const [
                                TextSpan(
                                    text: "House",
                                    style: TextStyle(
                                        color: AppConstants.kPrimaryColor)),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(10),
                            child: SvgPicture.asset(
                              "assets/SVGs/shopping_bag.svg",
                              height: Dimensions.calculateH(
                                  context: context, number: 27),
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal:
                            Dimensions.calculateW(context: context, number: 15),
                      ),
                      margin: EdgeInsets.symmetric(
                        vertical:
                            Dimensions.calculateH(context: context, number: 20),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xFFbdc6cf).withOpacity(0.1),
                      ),
                      height: 45,
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.search,
                            size: Dimensions.calculateH(
                                context: context, number: 25),
                            color: Colors.black.withOpacity(0.7),
                          ),
                          SizedBox(
                            width: Dimensions.calculateW(
                                context: context, number: 8),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: AppConstants.kPrimaryColor
                                      .withOpacity(0.7),
                                  fontFamily: "Amerigo",
                                  fontSize: Dimensions.calculateH(
                                      context: context, number: 20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    NotificationListener<OverscrollIndicatorNotification>(
                      onNotification: (scroll) {
                        scroll.disallowIndicator();
                        return true;
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomChip(
                              action: () {},
                              label: "All",
                              selected: true,
                            ),
                            CustomChip(
                              action: () {},
                              label: "Cappuccino",
                            ),
                            CustomChip(
                              action: () {},
                              label: "Starbucks",
                            ),
                            CustomChip(
                              action: () {},
                              label: "Starbucks",
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height:
                          Dimensions.calculateH(context: context, number: 30),
                    ),
                    NotificationListener<OverscrollIndicatorNotification>(
                      onNotification: (scroll) {
                        scroll.disallowIndicator();
                        return true;
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GetBuilder(
                          init: ProductController(),
                          builder: (controller) {
                            List products = <Widget>[];
                            for (Product product in cont.products) {
                              products.add(ProductCardV(product: product));
                            }
                            return Row(
                              children: [...products.toList()],
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height:
                          Dimensions.calculateH(context: context, number: 20),
                    ),
                    const Text(
                      "Special For you",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height:
                          Dimensions.calculateH(context: context, number: 20),
                    ),
                    GetBuilder(
                      init: ProductController(),
                      builder: (controller) {
                        List products = <Widget>[];
                        for (Product product in cont.products) {
                          products.add(ProductCardH(product: product));
                        }
                        return Column(
                          children: [...products.toList()],
                        );
                      },
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
