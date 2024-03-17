// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sequeenze_assignment/custom_button.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/image.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: -90,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/latte.png',
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: 330,
                left: 0,
                right: 0,
                child: Opacity(
                  opacity: 0.9,
                  child: Container(
                    width: 439,
                    height: 769,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      color: Color.fromARGB(255, 69, 68, 68),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 340,
                left: 20,
                child: Text(
                  'Lattè',
                  style: TextStyle(
                    color: Color.fromRGBO(205, 205, 205, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                top: 365,
                left: 20,
                child: Row(
                  children: [
                    Text(
                      '4.9',
                      style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '(458)',
                      style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.verified,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 390,
                left: 20,
                child: Text(
                  'Caffè latte is a milk coffee that is made up of one or two shots of\nespresso, steamed milk, and a final, thin layer of frothed milk on top.', // Your text
                  style: TextStyle(
                      color: Color.fromRGBO(192, 192, 192, 1), fontSize: 10.0),
                ),
              ),
              Positioned(
                top: 343,
                right: 20,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      quantity++;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                        color: Color.fromRGBO(155, 155, 155, 1),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          quantity.toString(),
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(155, 155, 155, 1)),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 20,
                          width: 1,
                          color: Color.fromRGBO(155, 155, 155, 1),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color.fromRGBO(155, 155, 155, 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 420,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choice of Cup Filling',
                      style: TextStyle(
                          color: Color.fromRGBO(205, 205, 205, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CustomButton(
                          textColor: Colors.white,
                          text: 'Full',
                          color: Colors.green,
                          onPressed: () {},
                        ),
                        SizedBox(width: 10),
                        CustomButton(
                          textColor: Colors.black,
                          text: '1/2 Full',
                          color: Color.fromRGBO(217, 217, 217, 1),
                          onPressed: () {},
                        ),
                        SizedBox(width: 10),
                        CustomButton(
                          textColor: Colors.black,
                          text: '3/4 Full',
                          color: Color.fromRGBO(217, 217, 217, 1),
                          onPressed: () {},
                        ),
                        SizedBox(width: 10),
                        CustomButton(
                          textColor: Colors.black,
                          text: '1/4 Full',
                          color: Color.fromRGBO(217, 217, 217, 1),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Choice of Milk',
                      style: TextStyle(
                          color: Color.fromRGBO(205, 205, 205, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 510,
                left: 20,
                child: SizedBox(
                  width: 300,
                  height: 150,
                  child: Image.asset('assets/images/Group15.png'),
                ),
              ),
              Positioned(
                top: 650,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choice of Sugar',
                      style: TextStyle(
                          color: Color.fromRGBO(205, 205, 205, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.toggle_off,
                          color: Color.fromRGBO(146, 146, 146, 1),
                          size: 28,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Sugar X1',
                          style: TextStyle(
                            color: Color.fromRGBO(205, 205, 205, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(width: 50),
                        Icon(
                          Icons.toggle_on,
                          color: Colors.green,
                          size: 28,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Sugar X2',
                          style: TextStyle(
                            color: Color.fromRGBO(205, 205, 205, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Icon(
                          Icons.toggle_off,
                          color: Color.fromRGBO(146, 146, 146, 1),
                          size: 28,
                        ),
                        SizedBox(width: 10),
                        Text(
                          '½ Sugar',
                          style: TextStyle(
                            color: Color.fromRGBO(205, 205, 205, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(width: 50),
                        Icon(
                          Icons.toggle_off,
                          color: Color.fromRGBO(146, 146, 146, 1),
                          size: 28,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'No Sugar',
                          style: TextStyle(
                            color: Color.fromRGBO(205, 205, 205, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 730,
                left: 20.0,
                right: 20.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(51, 51, 51, 0.84),
                  ),
                  height: 50,
                  child: Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (newValue) {},
                        activeColor: Colors.transparent,
                        checkColor: Colors.white,
                        side: BorderSide(color: Colors.white),
                      ),
                      SizedBox(width: 3),
                      Text(
                        'High Priority',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.error,
                        color: Colors.pink[300],
                        size: 15,
                      ),
                      SizedBox(width: 50),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Color.fromRGBO(205, 205, 205, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
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
