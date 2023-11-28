import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutternew/ui_screens/searchaddress.dart';

import '../color_file/color.dart';

class yourname extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

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
                        padding: EdgeInsets.fromLTRB(19.0,25.0,0,0),

                        child: SvgPicture.asset('assets/image/backbtn.svg'),

                      )
                  ),

                  const Align(

                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16.0,25.0,0,0),
                      child: Text("Your Name",
                        style: TextStyle(color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),),
                    ),
                  ),


                ]


            ),

              Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              child: TextField(
                style: TextStyle(color: Color(0xFF90A2AF),
                fontSize: 16,
                fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  fillColor: Color(0xFFF7F8FA),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),

                  hintText: ' First Name',

                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical:1),
              child: TextField(
                style: TextStyle(color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  fillColor: Color(0xFFF7F8FA),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),

                  hintText: ' Last Name',

                ),
              ),
            ),



            Spacer(),
            InkWell(onTap: () {

              Navigator.pushReplacement(
                context,MaterialPageRoute(builder: (context) => Searchaddress ()),);

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