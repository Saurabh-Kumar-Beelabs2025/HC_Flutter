import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutternew/ui_screens/languagesheet.dart';
import 'package:get/get.dart';

import '../color_file/color.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(

      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(19.0, 25.0, 0, 0),
                  child: SvgPicture.asset('assets/image/backbtn.svg'),
                )),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 25.0, 0, 0),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.fromLTRB(90.0, 30.0, 0, 0),
              padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.blueAccent)),
              child: Row(
                children: [
                  Text(
                    'English',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5.0,0, 0, 0),
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/image/dropdown_icon.svg'),
                  ),
                ],
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: ' Enter a search term',
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "Or",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: ' Enter email ID',
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "Signin with",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(children: [
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(136.0, 31.0, 0, 0),
                  child: SvgPicture.asset('assets/image/mailicon.svg'),
                )),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25.0, 31.0, 0, 0),
                  child: SvgPicture.asset('assets/image/facebook.svg'),
                )),
          ]),
          Spacer(),
          Row(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.fromLTRB(10.0, 220.0, 0, 0),
                child: Column(
                  children: <Widget>[
                    Checkbox(
                      value: isChecked,
                      activeColor: Colors.orange,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue ?? false;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(5.0, 220.0, 0, 0),
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            children: <TextSpan>[
                          TextSpan(text: 'I accept the'),
                          TextSpan(
                              text: ' Terms & Conditions.',
                              style: TextStyle(color: Customcolor.orangecolor)),
                        ]))),
              ),
            ],
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => languagesheet()),
              );
            },
            child: Container(
              alignment: Alignment.bottomCenter,
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
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
