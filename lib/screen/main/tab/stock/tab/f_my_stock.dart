import 'package:flutter/material.dart';

class MyStockFragment extends StatefulWidget {
  const MyStockFragment({super.key});

  @override
  State<MyStockFragment> createState() => _MyStockFragmentState();
}

class _MyStockFragmentState extends State<MyStockFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 700,
    );
  }
}
