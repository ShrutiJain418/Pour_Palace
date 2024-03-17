// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sequeenze_assignment/second_screen.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final String imagePath;
  final String bottomImage; // New property for the bottom image path

  const CustomContainer({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.bottomImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: screenWidth * 0.5,
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth * 0.05),
        color: Color.fromRGBO(180, 180, 180, 0.33),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, screenWidth * 0.01),
            blurRadius: screenWidth * 0.01,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          color: Color.fromRGBO(205, 205, 205, 1),
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '4.9',
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '(429)',
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.verified,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Caffè latte is a milk coffee that is a made\nup of one or two shots of espresso,\nsteamed milk and a final, thin layer of \nfrothed milk on top.',
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.25,
                  height: screenWidth * 0.25,
                  margin: EdgeInsets.only(
                    top: screenHeight * 0.1,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.014),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                        offset:
                            Offset(screenWidth * 0.008, screenWidth * 0.008),
                        blurRadius: screenWidth * 0.016,
                        spreadRadius: -screenWidth * 0.004,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 30,
              left: screenWidth * 0.63,
              child: Container(
                height: 20.0,
                decoration: BoxDecoration(
                  color: Colors.green, // Green color
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.transparent, // Transparent background
                    elevation: 0, // No shadow
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Border radius 5
                    ),
                  ),
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
