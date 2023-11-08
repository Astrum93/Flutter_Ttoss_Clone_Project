import 'package:fast_app_base/screen/opensource/vo_package.dart';
class SimpleStock {
  final String name;

  SimpleStock(this.name);

  factory SimpleStock.fromJson(dynamic json){
    return SimpleStock(json['name']);
  }

  @override
  String toString() {
    return name;
  }


}
