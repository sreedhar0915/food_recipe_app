import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    this.height,
    this.width,
    this.OnButtonpressed,
    super.key,
  });
  final String text;
  final void Function()? OnButtonpressed;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnButtonpressed,
      child: Container(
        height: 36,
        width: 77,
        child: Center(
            child: Text(
          "Follow",
          style: TextStyle(
              color: ColorConstants.white,
              fontSize: 14,
              fontWeight: FontWeight.w600),
        )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstants.primarycolor,
        ),
      ),
    );
  }
}
