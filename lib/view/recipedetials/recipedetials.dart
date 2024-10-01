import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/globalwidget/Custom_Button.dart';
import 'package:food_recipe_app/view/globalwidget/Customcontainer.dart';

class Recipedetials extends StatelessWidget {
  final String recipetitle;
  final String recipeimage;
  final String reciperating;
  final String recipeprofileimage;
  final String recipeusername;
  const Recipedetials(
      {required this.recipetitle,
      required this.reciperating,
      required this.recipeimage,
      required this.recipeprofileimage,
      required this.recipeusername,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              _buildtitlesection(),
              _Buildcontainersection(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar Appbar() {
    return AppBar(
      actions: [
        Icon(
          Icons.more_horiz,
          color: ColorConstants.black,
          size: 25,
        ),
        SizedBox(width: 15),
      ],
    );
  }

  Column _Buildcontainersection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
        Row(
          children: [
            Text(
              'Ingredients',
              style: TextStyle(
                color: ColorConstants.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  DummyDb.incredientdata.length.toString(),
                  style: TextStyle(
                    color: ColorConstants.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Item",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.grey),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 13),
        SizedBox(
          child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => CustomContainerScreen(
                    incredientImage: DummyDb.incredientdata[index]
                        ["incredientImage"],
                    incredientName: DummyDb.incredientdata[index]
                        ["incredientName"],
                    incredientQuantity: DummyDb.incredientdata[index]
                        ["incredientQuantity"],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 12,
                  ),
              itemCount: DummyDb.incredientdata.length),
        )
      ],
    );
  }

  Column _buildtitlesection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          recipetitle,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 233,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(recipeimage), fit: BoxFit.cover)),
          child: Center(
            child: CircleAvatar(
              radius: 30,
              backgroundColor: ColorConstants.grey,
              child: Icon(
                Icons.play_arrow,
                color: ColorConstants.white,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 16,
            ),
            Text(reciperating,
                style: TextStyle(
                    fontSize: 14,
                    color: ColorConstants.black,
                    fontWeight: FontWeight.w600)),
            SizedBox(width: 5),
            Text(
              "(300 Reviews)",
              style: TextStyle(
                  color: ColorConstants.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(height: 4),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(recipeprofileimage),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(recipeusername,
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorConstants.black,
                        fontWeight: FontWeight.w600)),
                Row(
                  children: [
                    Icon(Icons.location_on,
                        color: ColorConstants.primarycolor, size: 16),
                    Text("Bali, Indonesia",
                        style: TextStyle(
                            color: ColorConstants.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ],
            ),
            Spacer(),
            CustomButton(
              text: "Follow",
              OnButtonpressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
