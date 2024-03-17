// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sequeenze_assignment/reusable.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/image.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.0),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/Goodmorning.png',
                              width: screenWidth * 0.8,
                            ),
                            Image.asset(
                              'assets/images/Ellipse.png',
                              width: screenWidth * 0.1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.05),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Search favourite Beverages',
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Icon(Icons.search),
                            iconColor: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: screenWidth * 0.05),
                      Container(
                        width: screenWidth,
                        color: Color.fromRGBO(49, 49, 49, 0.45),
                        padding:
                            EdgeInsets.symmetric(vertical: screenWidth * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: screenWidth * 0.05),
                              child: Text(
                                'Most Popular Beverages',
                                style: TextStyle(
                                  color: Color.fromRGBO(182, 182, 182, 1),
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(height: screenWidth * 0.02),
                            Image.asset(
                              'assets/images/Group14.png',
                              fit: BoxFit.cover,
                              width: screenWidth,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenWidth * 0.05),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.05),
                        child: Text(
                          'Get it instantly',
                          style: TextStyle(
                            color: Color.fromRGBO(182, 182, 182, 1),
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      CustomContainer(
                        text: 'Lattè',
                        imagePath: 'assets/images/Bev1.png',
                        bottomImage: 'assets/images/add.png',
                      ),
                      SizedBox(height: 10.0),
                      CustomContainer(
                        text: 'Flat White',
                        imagePath: 'assets/images/Bev2.png',
                        bottomImage: 'assets/images/add.png',
                      ),
                      SizedBox(height: 80),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(51, 51, 51, 0.84),
              ),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
