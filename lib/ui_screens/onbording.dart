import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../assets/image/image_constant.dart';
import 'package:flutternew/ui_screens/languagescreen.dart';
import 'package:get/get.dart';

import '../color_file/color.dart';
import '../constants/image_constant.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(19.0, 50.0, 0, 0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Get'),
                      TextSpan(
                        text: ' Delivered \n',
                        style: TextStyle(color: Colors.orange),
                      ),
                      TextSpan(text: 'from'),
                      TextSpan(
                        text: ' Anywhere',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(19.0, 16.0, 0, 0),
                child: Text(
                  "Search your neighbourhood on ",
                  style: TextStyle(
                    color: Color(0xFF686868),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(19.0, 2.0, 0, 0),
                child: Text(
                  "Handover.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 80.0, 0, 0),
                child: Image.asset(ImageConstant.imagePath),
              ),
            ),
            Spacer(), // Spacer widget to take up remaining space
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Languagescreen()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(16.0, 0, 16, 20.0),
                padding: const EdgeInsets.all(17.0),
                decoration: BoxDecoration(
                  color: Customcolor.orangecolor,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
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


