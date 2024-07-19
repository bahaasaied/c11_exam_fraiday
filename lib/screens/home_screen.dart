import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Buttons/buttons.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  HomeScreen({super.key});

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
                itemCount: 12,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Buttons(
                    label: 'Art',
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 24),
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
            SizedBox(height: 20,),
            CarouselSlider(
              options: CarouselOptions(
                initialPage: 0,
                height: 300,
        
                enlargeCenterPage: true,
                enlargeFactor: 0.5,
              ),
        
              items: imgList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(i);
                  },
                );
              }).toList(),
        
            ),
            SizedBox(height: 30,),
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

            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                children: [
                  Image.asset('assets/images/Image Placeholder 2.png'),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Light Mage'),
                      Text('Laurie Forest'),
                    ],
                  ),
                ],
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
