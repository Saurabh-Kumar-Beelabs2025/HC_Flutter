import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../color_file/color.dart';
import '../constants/image_constant.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 25.0),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(19.0, 25.0, 0, 0),
                              child:
                                  SvgPicture.asset('assets/image/backbtn.svg'),
                            )),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(16.0, 25.0, 0, 0),
                            child: Text(
                              "Sign Up ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ]),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                    child: TextField(
                      style: TextStyle(
                          color: Color(0xFF90A2AF),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                        fillColor: Color(0xFFF7F8FA),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: ' Enter your number',
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
                          "continue with",
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
                          child: SvgPicture.asset('assets/image/facebook.svg'),
                        )),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 31.0, 0, 0),
                          child: SvgPicture.asset('assets/image/facebook.svg'),
                        )),
                  ]),
                  SizedBox(height: 400,),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        // margin: const EdgeInsets.fromLTRB(16.0, 320.0, 0, 0),
                        // child: Column(
                        //   children: <Widget>[
                           child: Checkbox(
                              value: isChecked,
                              activeColor: Colors.orange,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  isChecked = newValue ?? false;
                                });
                              },
                            ),
                        //   ],
                        // ),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        // margin: const EdgeInsets.fromLTRB(5.0, 335.0, 0, 0),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                                children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'I allow handover to send me masseges \n on WhatsApp'),
                            ])),
                      ),
                    ],
                  ),
                  Container(
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
                ],
              ))),
    );
  }
}
