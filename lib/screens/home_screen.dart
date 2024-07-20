import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Widget/buttons.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imgList = [
    'assets/images/Image Placeholder 1.png',
    'assets/images/Image Placeholder 1 (1).png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/Logo.png',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ImageIcon(
                color: Color(0XFF4838D1),
                AssetImage('assets/images/Setting.png'),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0XFF4838D1),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 500,
              height: 70,
              child: ListView.builder(
                itemCount: labels.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Buttons(
                    label: labels[index],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended For You',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0XFF4838D1),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 20,),
            Center(
              child: CarouselSlider(
                options: CarouselOptions(
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 2),
                  height: 340,
                  viewportFraction: 0.4,
                  enlargeCenterPage: false,
                  enlargeFactor: 1,
                ),
                items: imgList.map((i) {
                  return Center(
                    child: Container(
                      height: 270,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Image.asset(
                        i,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Seller',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0XFF4838D1),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),


            SizedBox(
              width: 415,
              height: 200,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(21.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 310,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                    'assets/images/Image Placeholder 2.png'),
                                SizedBox(
                                  width: 10,
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Text(
                                      'Light Mage',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Laurie Forest',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: selectedIndex,
        onTap: (value) {},
        // backgroundColor: MyThemeData.primaryColor,

        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Home.png')),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Search.png')),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Document.png')),
            label: "Document",
          ),
        ],
      ),
    );
  }
}
