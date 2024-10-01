import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class Customvideocard extends StatelessWidget {
  double width;
  String bgimage;
  String rating;
  String duration;
  String foodname;
  String username;
  String userurl;
  void Function()? oncardTap;
  Customvideocard({
    this.width = 280,
    required this.bgimage,
    required this.rating,
    required this.duration,
    required this.foodname,
    required this.username,
    required this.userurl,
    super.key,
    this.oncardTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: oncardTap,
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            Container(
              height: 200,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(bgimage)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: ColorConstants.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: ColorConstants.white,
                                  ),
                                  Text(
                                    rating,
                                    style:
                                        TextStyle(color: ColorConstants.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: ColorConstants.white,
                            child: Icon(Icons.bookmark_border_outlined),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.play_arrow,
                          color: ColorConstants.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: ColorConstants.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              duration,
                              style: TextStyle(color: ColorConstants.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  foodname,
                  style: TextStyle(
                      color: ColorConstants.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage("assets/images/dp.webp"),
                ),
                SizedBox(width: 8),
                Text(username),
              ],
            )
          ],
        ),
      ),
    );
  }
}
