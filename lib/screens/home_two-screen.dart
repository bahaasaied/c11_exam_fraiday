import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Widget/CardWidget.dart';
import '../Widget/Text_card.dart';

class HomeTwoscreen extends StatelessWidget {
  static const String routeName = 'HometwoScreen';

  HomeTwoscreen({super.key});

  final PageController cardController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            'assets/images/logo (1).png',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge(
              child: ImageIcon(
                color: Color(0XFF4838D1),
                AssetImage('assets/images/bell_Icon.png'),
              ),
              backgroundColor: Colors.red,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        ', Sara Rose',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'How are you feeling today ?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/Frame 14.png'),
                      Image.asset('assets/images/Frame 19.png'),
                      Image.asset('assets/images/Frame 15.png'),
                      Image.asset('assets/images/Frame 16.png'),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Feature',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text(
                            'See more',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0XFF027A48),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('assets/images/arrow_Icon.png'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: 500,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Card(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffecfdf3),
                                    shape: BoxShape.rectangle),
                                width: 320,
                                height: 150,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Positive vibes',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Boost your mood with\npositive vibes',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                        'assets/images/Play button.png'),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      '10 mins',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/images/Walking the Dog.png'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      controller: cardController,
                      itemCount: 3,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmoothPageIndicator(
                        controller: cardController,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          activeDotColor: Color(0XFFD9D9D9),
                          dotColor: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exercise',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text(
                            'See more',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0XFF027A48),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('assets/images/arrow_Icon.png'),
                          SizedBox(height: 20,),

                        ],

                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextCard(label: 'Relaxation', img: 'assets/images/Frame.png',cardColor: Color(0xffd5d1ee),),
                      TextCard(label: 'Meditation', img: 'assets/images/Frame (1).png',cardColor: Color(0xfffdf2fa),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextCard(label: 'Beathing', img: 'assets/images/Frame (2).png',cardColor: Color(0xfffffaf5),),
                      TextCard(label: 'Yoga', img: 'assets/images/Frame (3).png',cardColor: Color(0xfff0f9ff),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff027A48),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Home.png')),
            label: '.',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/grid-01.png')),
            label: '',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/calendar.png')),
            label: '',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/user-03.png')),
            label: '',
            backgroundColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
