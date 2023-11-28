
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutternew/ui_screens/yourname.dart';
import 'package:pinput/pinput.dart';

import '../color_file/color.dart';

class emailverify extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 55,
        height: 55,
        textStyle: const TextStyle(
          fontSize: 22,
          color: Colors.black,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFF7F8FA),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xFFEAEBEE)),
        )
    );

    return Scaffold(


        body: SafeArea(

          child: Column(
            children: [

              Row(


              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[


                Align(

                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(19.0, 25.0, 0, 0),

                      child: SvgPicture.asset('assets/image/backbtn.svg'),

                    )
                ),


                const Align(

                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 23.0, 0, 0),
                    child: Text("Email Verification",
                      style: TextStyle(color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),),
                  ),
                ),


              ]

          ),

              Align(

                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(19.0, 20.0, 0, 0),
                  child: Text("A 6 digit code has been sent to",
                    style: TextStyle(color: Color(0xFF4B4B4B),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),),
                ),
              ),

              Row(

                children: [

                  Align(

                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(19.0, 2.0, 0, 0),
                      child: Text("saurabh03@gmail.com",
                        style: TextStyle(color: Color(0xFF4B4B4B),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),),
                    ),
                  ),

                  Align(

                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(9.0, 2.0, 0, 0),

                        child: SvgPicture.asset('assets/image/editicon.svg'),

                      )
                  ),

                ],
              ),

              SizedBox(height: 16),
              Align(

                  child: Container(
                    child: Pinput(
                      length: 6,
                      defaultPinTheme: defaultPinTheme,

                    ),

                    //   onCompleted: (pin) => debugPrint(pin),
                  )

              ),


              Align(


                alignment: Alignment.topLeft,


                child: Padding(
                    padding: EdgeInsets.fromLTRB(19.0, 20.0, 0, 0),
                    child:
                    RichText(

                        text: TextSpan(

                            children: <TextSpan>[
                              TextSpan(text: 'Didn’t receive OTP yet? Re-send in ',
                                  style: TextStyle(color: Color(0xFF4B4B4B),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),

                              TextSpan(text: '00:28 ',
                                  style: TextStyle(color: Colors.red,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),

                            ]
                        ))


                ),

              ),


              Spacer(),
              InkWell(onTap: () {

                Navigator.pushReplacement(
                  context,MaterialPageRoute(builder: (context) => yourname ()),);

              },
                child:   Container(
                  alignment: Alignment.bottomCenter ,
                  margin: const EdgeInsets.fromLTRB(16.0, 0, 16, 20.0),
                  padding: const EdgeInsets.all(17.0),
                  decoration: BoxDecoration(
                    color: Customcolor.orangecolor,
                    borderRadius: BorderRadius.circular(13),
                  ),

                  child: Text('Next',
                    style: TextStyle(color: Colors.white,

                        fontSize: 20,
                        fontWeight: FontWeight.w500),),

                ),
              )



            ],


          ),

        ),

    );
  }
}