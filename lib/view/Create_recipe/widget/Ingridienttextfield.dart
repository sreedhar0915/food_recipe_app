import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:hugeicons/hugeicons.dart';

class ingridient_textfield extends StatelessWidget {
  const ingridient_textfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Item name",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue, width: 1)),
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          flex: 3,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Quantity",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue, width: 1)),
            ),
          ),
        ),
        HugeIcon(
            icon: HugeIcons.strokeRoundedRemoveSquare,
            color: ColorConstants.black)
      ],
    );
  }
}
