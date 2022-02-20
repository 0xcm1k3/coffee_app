import 'package:flutter/cupertino.dart';

class Dimensions{


  static double calculateH({required BuildContext context,required double number}){

    double factor = MediaQuery.of(context).size.height / number;

    return MediaQuery.of(context).size.height/factor.roundToDouble();
  }

  static double calculateW({required BuildContext context,required double number}){

    double factor = MediaQuery.of(context).size.height / number;

    return MediaQuery.of(context).size.height/factor.roundToDouble();
  }
}