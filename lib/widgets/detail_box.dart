import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DetailBox extends StatelessWidget {
  DetailBox({
    super.key,this.validator,
    RxBool? obscureText,
    this.visibility=false,
    required this.icons,
    required this.controller,
    required this.text}): obscureText=obscureText ?? RxBool(false);
  final String text;
  final IconData icons;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final RxBool obscureText;
  final bool visibility;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return  Obx(() {
      return TextFormField(
        controller: controller,
        obscureText: obscureText.value,
        decoration: InputDecoration(
            prefixIcon: Icon(icons),
            suffixIcon:visibility ? IconButton(
              icon: Icon(
                obscureText.value ? Icons.visibility_off_outlined : Icons.visibility_outlined
              ),
              onPressed: () {
                obscureText.value=!obscureText.value;
              },
            ) : null,
            hintText: text,
            hintStyle: TextStyle(
              color: theme.hintColor
            ),

            // labelText: labelText,
            // labelStyle:TextStyle(color:(Colors.grey.shade800)),
            border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                )
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff6A33FF),
                  width: 1.5,
                )
            )
        ),
        validator: validator,
      );

    });
  }
}
