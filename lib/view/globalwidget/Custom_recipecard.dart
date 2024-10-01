import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class CustomRecipeCart extends StatelessWidget {
  const CustomRecipeCart({
    super.key,
    required this.image,
    required this.title,
    required this.rating,
    required this.Ingredients,
  });

  final String image;
  final String title;
  final String rating;
  final String Ingredients;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 223,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ColorConstants.grey.withOpacity(.3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 30,
                  width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: ColorConstants.white,
                        size: 14,
                      ),
                      Text(
                        rating,
                        style: TextStyle(
                          color: ColorConstants.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: ColorConstants.white,
                  child: Icon(
                    Icons.more_horiz,
                    color: ColorConstants.primarycolor,
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: 162,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              Ingredients,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
