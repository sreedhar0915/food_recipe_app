import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/globalwidget/Custom_recipecard.dart';
import 'package:food_recipe_app/view/globalwidget/Customvideocard.dart';
import 'package:food_recipe_app/view/recipedetials/recipedetials.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My profile",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: ColorConstants.black,
            )),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          SizedBox(width: 20),
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          rowdp(),
          Namebiotext(),
          followersrow(),
          Divider(
            color: ColorConstants.grey,
          ),
          SizedBox(height: 10),
          TabBar(
              padding: EdgeInsets.symmetric(horizontal: 20),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: ColorConstants.white,
              unselectedLabelColor: ColorConstants.primarycolor,
              dividerHeight: 0,
              //    isScrollable: true,
              // tabAlignment: TabAlignment.start,
              indicator: BoxDecoration(
                  color: ColorConstants.primarycolor,
                  borderRadius: BorderRadius.circular(10)),
              tabs: [
                Tab(
                  text: "Video",
                ),
                Tab(
                  text: "Recipe",
                ),
              ]),
          Expanded(
              child: TabBarView(children: [
            ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Customvideocard(
                      oncardTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Recipedetials(
                                      recipetitle: DummyDb
                                          .trendingnowlist[index]["title"],
                                      recipeimage: DummyDb
                                          .trendingnowlist[index]["bgimage"],
                                      reciperating: DummyDb
                                          .trendingnowlist[index]["rating"],
                                      recipeprofileimage: DummyDb
                                          .trendingnowlist[index]["userurl"],
                                      recipeusername: DummyDb
                                          .trendingnowlist[index]["username"],
                                    )));
                      },
                      width: double.infinity,
                      rating: DummyDb.trendingnowlist[index]["rating"],
                      bgimage: DummyDb.trendingnowlist[index]["bgimage"],
                      duration: DummyDb.trendingnowlist[index]["duration"],
                      foodname: DummyDb.trendingnowlist[index]["title"],
                      username: DummyDb.trendingnowlist[index]["username"],
                      userurl: DummyDb.trendingnowlist[index]["userurl"],
                    ),
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: 4),
            // Container(color: ColorConstants.primarycolor),
            ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => CustomRecipeCart(
                      image: DummyDb.Recipecard[index]["image"],
                      title: DummyDb.Recipecard[index]["title"],
                      rating: DummyDb.Recipecard[index]["rating"],
                      Ingredients: DummyDb.Recipecard[index]["Ingredients"],
                    ),
                separatorBuilder: (context, index) => SizedBox(),
                itemCount: DummyDb.Recipecard.length)
          ]))
        ]),
      ),
    );
  }

  Padding followersrow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(children: [
            Text("Recipe",
                style: TextStyle(color: ColorConstants.grey, fontSize: 12)),
            SizedBox(height: 2),
            Text("3",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontSize: 20,
                )),
          ]),
          Column(children: [
            Text("videos",
                style: TextStyle(
                  color: ColorConstants.grey,
                  fontSize: 12,
                )),
            SizedBox(height: 2),
            Text("13",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontSize: 20,
                )),
          ]),
          Column(children: [
            Text("Followers",
                style: TextStyle(color: ColorConstants.grey, fontSize: 12)),
            SizedBox(height: 2),
            Text("14K",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontSize: 20,
                )),
          ]),
          Column(children: [
            Text("Following",
                style: TextStyle(
                  color: ColorConstants.grey,
                  fontSize: 12,
                )),
            SizedBox(height: 2),
            Text("120",
                style: TextStyle(
                  color: ColorConstants.black,
                  fontSize: 20,
                )),
          ]),
        ],
      ),
    );
  }

  Padding Namebiotext() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Text("Alessandra Blair",
              style: TextStyle(
                  color: ColorConstants.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 12),
          Text(
            "Hello world I’m Alessandra Blair, I’m\nfrom Italy 🇮🇹 I love cooking so much!",
            style: TextStyle(
                color: ColorConstants.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Padding rowdp() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/dp.webp"),
          ),
          Spacer(),
          Container(
            height: 36,
            width: 110,
            decoration: BoxDecoration(
              border: Border.all(color: ColorConstants.primarycolor, width: 2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
                child: Text(
              "Edit profile",
              style:
                  TextStyle(color: ColorConstants.primarycolor, fontSize: 14),
            )),
          )
        ],
      ),
    );
  }
}
