import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ufs_technology/Core/Utils/Dimensions.dart';
import 'package:ufs_technology/Presentations/Home/Controller/HomeController.dart';

class Homepage extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
  Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/1.png",
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                    Image.asset(
                      "assets/2.png",
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
                child: Text(
                  "Recently Played",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.h),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        image: DecorationImage(
                          image: AssetImage("assets/4.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 19.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "OET Beginner special class\nand Preparation Tips",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "20:45/35:12",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/5.png",
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  width: 300.h,
                  height: 45.h,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Explore Courses",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Container(
                  width: 330.w,
                  height: 110.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage("assets/1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "Find a Mentor",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Anywhere, Anytime!",
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Connect now",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                child: Text(
                  "Mock Tests",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15.r),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                child: Row(
                  children: [
                    // First icon with text
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              color: Colors.grey.shade200,
                              child: Image.asset("assets/9.png"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Reading",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              color: Colors.grey.shade200,
                              child: Image.asset("assets/6.png"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Listening",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              color: Colors.grey.shade200,
                              child: Image.asset("assets/7.png"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Writing",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              color: Colors.grey.shade200,
                              child: Image.asset("assets/8.png"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Speaking",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                child: Text(
                  "Popular Courses",
                  style: TextStyle(fontSize: 15.r, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 200,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/3.png"))),
                              child: Image.asset(
                                "assets/3.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 8.0),
                          Text(
                            "OET Beginner special class\nand Preparation\nTips",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 16,
                              ),
                              SizedBox(width: 4.0),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book), label: 'My Courses'),
          BottomNavigationBarItem(
              icon: Icon(Icons.mode_comment_outlined), label: 'Mentor'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: 'Profile')
        ],
      ),
    );
  }
}
