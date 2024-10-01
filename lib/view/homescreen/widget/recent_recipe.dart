import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class RecentRecipecard extends StatelessWidget {
  final String image;
  final String foodname;
  final String user;
  const RecentRecipecard(
      {required this.image,
      required this.foodname,
      required this.user,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: 200,
        width: 124,
        child: Column(
          children: [
            Container(
              height: 124,
              width: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            SizedBox(height: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  foodname,
                  selectionColor: ColorConstants.black,
                ),
                Text(user, selectionColor: ColorConstants.grey),
              ],
            )
          ],
        ),
      ),
    );
  }
}
