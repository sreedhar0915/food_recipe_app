import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/globalwidget/Customvideocard.dart';
import 'package:food_recipe_app/view/homescreen/widget/popularcategorycard.dart';
import 'package:food_recipe_app/view/homescreen/widget/recent_recipe.dart';
import 'package:food_recipe_app/view/recipedetials/recipedetials.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _titlesection(),
              _trendingsection(),
              _popularcategory(),
              _Recentrecipe()
            ],
          ),
        ),
      ),
    );
  }

  Column _Recentrecipe() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
          child: Row(
            children: [
              Text("Recent recipe",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.primarycolor),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.arrow_forward,
                color: ColorConstants.primarycolor,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => RecentRecipecard(
                    image: DummyDb.recentrecipe[index]["image"],
                    foodname: DummyDb.recentrecipe[index]["foodname"],
                    user: DummyDb.recentrecipe[index]["user"],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: 4),
        ),
      ],
    );
  }

  DefaultTabController _popularcategory() {
    return DefaultTabController(
      length: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Popular category",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: ColorConstants.white,
              unselectedLabelColor: ColorConstants.primarycolor,
              dividerHeight: 0,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicator: BoxDecoration(
                  color: ColorConstants.primarycolor,
                  borderRadius: BorderRadius.circular(10)),
              tabs: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Tab(text: "salad"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Tab(text: "noodles"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Tab(text: "breakfast"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Tab(text: "appetizer"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Tab(text: "lunch"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Tab(text: "falooda"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 233,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Popularcategorycard(
                      image: DummyDb.popularCategoryList[index]['image'],
                      title: DummyDb.popularCategoryList[index]['title'],
                      duration: DummyDb.popularCategoryList[index]['duration'],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 16,
                    ),
                itemCount: DummyDb.popularCategoryList.length),
          )
        ],
      ),
    );
  }

  Column _trendingsection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
          child: Row(
            children: [
              Text("Trending now 🔥",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.primarycolor),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.arrow_forward,
                color: ColorConstants.primarycolor,
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 280,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Customvideocard(
                    oncardTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Recipedetials(
                                    recipetitle: DummyDb.trendingnowlist[index]
                                        ["title"],
                                    recipeimage: DummyDb.trendingnowlist[index]
                                        ["bgimage"],
                                    reciperating: DummyDb.trendingnowlist[index]
                                        ["rating"],
                                    recipeprofileimage: DummyDb
                                        .trendingnowlist[index]["userurl"],
                                    recipeusername: DummyDb
                                        .trendingnowlist[index]["username"],
                                  )));
                    },
                    rating: DummyDb.trendingnowlist[index]["rating"],
                    bgimage: DummyDb.trendingnowlist[index]["bgimage"],
                    duration: DummyDb.trendingnowlist[index]["duration"],
                    foodname: DummyDb.trendingnowlist[index]["title"],
                    username: DummyDb.trendingnowlist[index]["username"],
                    userurl: DummyDb.trendingnowlist[index]["userurl"],
                  ),
              separatorBuilder: (context, index) => SizedBox(width: 16),
              itemCount: 4),
        ),
      ],
    );
  }

  Column _titlesection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            "Find best recipes\nfor cooking",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
              hintText: "search recipes",
              hintStyle: TextStyle(color: ColorConstants.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorConstants.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorConstants.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.search, color: ColorConstants.grey),
            ),
          ),
        ),
      ],
    );
  }
}
