import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// abstract로 추상화 하여 필드를 get으로 가정
abstract mixin class StockPercentageDataProvider {
  int get currentPrice;
  int get yesterdayClosePrice;


  double get todayPercentage =>
      ((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100)
          .toPrecision(2);

  String get todayPercentageString => '$symbol$todayPercentage';

  bool get isPlus => currentPrice > yesterdayClosePrice;

  bool get isSame => currentPrice == yesterdayClosePrice;

  bool get isMinus => currentPrice < yesterdayClosePrice;

  String get symbol => isSame
      ? ''
      : isPlus
      ? '+'
      : '-';

  Color getPriceColor(BuildContext context) => isSame ? context.appColors.lessImportant : isPlus ? context.appColors.plus : context.appColors.minus;
}