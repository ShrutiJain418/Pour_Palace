// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sequeenze_assignment/next_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BackgroundImage(),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  width: screenWidth * 0.95,
                  height: screenHeight * 0.9,
                  decoration: BoxDecoration(
                    color: Color(0xFF000000).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(
                      color: Color(0xFF000000),
                      width: screenWidth * 0.00274,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.25),
                        blurRadius: screenWidth * 0.0109,
                        spreadRadius: 0,
                        offset: Offset(0, screenHeight * 0.00533),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 70,
                          width: 89,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Swift',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 64,
                            //height: screenHeight * 0.0626,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Café',
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 40,
                            //height: screenHeight * 0.0626,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '"latte but never late"',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            //height: screenHeight * 0.0626,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            obscureText: true,
                            cursorColor: Colors.white,
                            decoration: const InputDecoration(
                              hintText: "UserName",
                              hintStyle: TextStyle(color: Colors.white),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            obscureText: true,
                            cursorColor: Colors.white,
                            decoration: const InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.white),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: screenWidth * 0.5,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF4D2B1A),
                                Color(0xFFA7745A),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(33),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FirstScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: screenWidth * 0.0493,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: screenWidth * 0.5,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FirstScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(33),
                                side: BorderSide(color: Colors.white, width: 1),
                              ),
                            ),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: screenWidth * 0.0493,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Privacy Policy',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            //height: screenHeight * 0.0626,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
