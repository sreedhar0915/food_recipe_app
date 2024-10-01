import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/utils/constants/image_constants.dart';

class Popularcategorycard extends StatelessWidget {
  final image;
  final title;
  final duration;
  const Popularcategorycard(
      {required this.image,
      required this.title,
      required this.duration,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 231,
          width: 150,
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: 180,
                decoration: BoxDecoration(
                    color: ColorConstants.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 59,
                      ),
                      Center(
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstants.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          "Time",
                          style: TextStyle(
                              color: ColorConstants.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Time",
                              selectionColor: ColorConstants.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12, right: 15, bottom: 12),
                        child: Row(
                          children: [
                            Text(
                              duration,
                              style: TextStyle(
                                  color: ColorConstants.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: ColorConstants.white,
                              child: Icon(
                                Icons.bookmark_outline_rounded,
                                color: ColorConstants.black,
                              ),
                            )
                          ],
                        ),
                      )
                    ]))),
        Positioned(
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage(ImageConstants.FOOD1),
          ),
        ),
      ],
    );
  }
}
