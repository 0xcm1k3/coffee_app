import 'dart:convert';

// ignore_for_file: non_constant_identifier_names

class Product {
  final String product_name;
  final String product_desc;
  final String subText;
  final String imgPath;
  final double product_price;
  Product({
    required this.product_name,
    required this.product_desc,
    required this.subText,
    required this.product_price,
    required this.imgPath,
  });

  Map<String, dynamic> toMap() {
    return {
      'product_name': product_name,
      'product_desc': product_desc,
      'subText': subText,
      'imgPath': imgPath,
      'prodcut_price': product_price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      product_name: map['product_name'] ?? '',
      product_desc: map['product_desc'] ?? '',
      subText: map['product_subtext'] ?? '',
      imgPath: map['img_path'] ?? '',
      product_price: map['product_price']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
