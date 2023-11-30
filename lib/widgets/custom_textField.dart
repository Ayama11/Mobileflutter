import 'package:flutter/material.dart';

import '../help/const.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  IconData? icons;
  TextInputType? typeKey;
  CustomTextField({this.hintText, this.icons,@required this.typeKey});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType:typeKey ,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(199),
          borderSide: BorderSide(color: Color(0xffd6d9f1),width: 3.5),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color:Color(0xffa795c5) ,fontSize: 16),
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(199),
        ),
        prefixIcon: Icon(
          icons,
          color:Color(0xffec98ea),
          size:   29,
        ),
      ),
    );
  }
}
