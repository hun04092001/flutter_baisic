import 'package:flutter/material.dart';

class MyCustomCard extends StatelessWidget {
  String imageAsset;

  MyCustomCard({super.key, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(imageAsset), fit: BoxFit.cover)),
      margin: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 30),
    );
  }
}
