// ignore_for_file: non_constant_identifier_names, file_names, avoid_print

import 'package:coffee_app/constants/app_consts.dart';
import 'package:coffee_app/constants/dimensions.dart';
import 'package:coffee_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class ProductCardV extends StatelessWidget {
  final Product product;
  const ProductCardV({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/product", arguments: {"product": product});
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        // height: 200,
        width: 180,
        decoration: BoxDecoration(
            color: AppConstants.kBackgroundColor,
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            Image(
              image: AssetImage(product.imgPath),
              height: Dimensions.calculateH(context: context, number: 150),
              width: Dimensions.calculateW(context: context, number: 150),
            ),
            AppConstants.CustomText(
              text: product.product_name,
              maxLines: 2,
              weight: FontWeight.w600,
              fontSize: 25,
            ),
            SizedBox(
              height: Dimensions.calculateH(context: context, number: 8),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                product.subText,
                maxLines: 1,
                style: TextStyle(
                    color: AppConstants.kSubtitlesColor.withOpacity(0.9),
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: Dimensions.calculateH(context: context, number: 8),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppConstants.CustomText(
                    text: "\$${product.product_price.toStringAsFixed(2)}",
                    fontSize: 25,
                    spacing: 1,
                    weight: FontWeight.bold,
                    color: AppConstants.kPrimaryColor,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: AppConstants.kPrimaryColor,
                      radius: 18,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductCardH extends StatelessWidget {
  final Product product;
  const ProductCardH({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey<String>(product.product_name),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              print("sss");
            },
            foregroundColor: AppConstants.kPrimaryColor,
            icon: Icons.add,
            label: "Add to cart",
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Get.toNamed("/product", arguments: {"product": product});
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          margin: const EdgeInsets.symmetric(vertical: 7),
          decoration: BoxDecoration(
              color: AppConstants.kBackgroundColor,
              borderRadius: BorderRadius.circular(18)),
          width: double.maxFinite,
          child: Row(
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
                    height: Dimensions.calculateH(context: context, number: 8),
                  ),
                  Text(
                    product.subText,
                    maxLines: 1,
                    style: TextStyle(
                        color: AppConstants.kSubtitlesColor.withOpacity(0.9),
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: Dimensions.calculateH(context: context, number: 8),
                  ),
                  AppConstants.CustomText(
                    text: "\$${product.product_price.toStringAsFixed(2)}",
                    fontSize: 25,
                    spacing: 1,
                    weight: FontWeight.bold,
                    color: AppConstants.kPrimaryColor,
                  ),
                ],
              )),
              Expanded(
                child: Image(
                  image: AssetImage(product.imgPath),
                  height: Dimensions.calculateH(context: context, number: 150),
                  width: Dimensions.calculateW(context: context, number: 150),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
