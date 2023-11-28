import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../color_file/color.dart';
import 'login.dart';

class Languagescreen extends StatelessWidget {
  const Languagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(


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
                      padding: EdgeInsets.fromLTRB(16.0,19.0,0,0),
                      child: Text("Language",
                        style: TextStyle(color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),),
                    ),
                  ),




                ]

            ),


            const Align(

              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0,40.0,0,0),
                child: Text("Select Language",
                  style: TextStyle(color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),),
              ),
            ),

            Container(
              alignment: Alignment.topLeft ,
              margin: const EdgeInsets.fromLTRB(16.0,16.0,16,0),
              padding: const EdgeInsets.all(17.0,),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(color: Colors.blueAccent)
              ),

              child: Text('English',
                style: TextStyle(color: Customcolor.orangecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,

                ),
              ),

            ),

            Container(
              alignment: Alignment.topLeft ,
              margin: const EdgeInsets.fromLTRB(16.0,12.0,16,0),
              padding: const EdgeInsets.all(17.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(color: Colors.blueAccent)
              ),
              child: Text('Hindi',
                style: TextStyle(color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),),
            ),

          Container(
            alignment: Alignment.topLeft ,

            margin: const EdgeInsets.fromLTRB(16.0,16.0,16,0),
            padding: const EdgeInsets.all(17.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
                border: Border.all(color: Colors.blueAccent)
            ),
            child: Text('Marathi',
              style: TextStyle(color: Colors.black,

                  fontSize: 20,
                  fontWeight: FontWeight.w500),),

          ),


            Spacer(),
            InkWell(onTap: () {

              Navigator.pushReplacement(
                context,MaterialPageRoute(builder: (context) => Login ()),);

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

        )
    );
  }
}




