import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../help/const.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({this.getPage, required this.text, required this.width});
  String? getPage;
  String text;
  double? width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Get.toNamed(getPage!);
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          primary: kBaseColor,
          elevation: 15,
          fixedSize: Size(width!, 53),
        ),
      );

  }
}
