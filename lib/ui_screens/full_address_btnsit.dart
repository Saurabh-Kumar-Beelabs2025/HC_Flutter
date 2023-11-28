import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutternew/ui_screens/signup_screen.dart';
import 'package:get/get.dart';

class FullAddressBtnSit extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: SingleChildScrollView(

          child: MaterialButton(

            onPressed: (){

              displayBottomSheet(context);
            },
            height: 50,
            minWidth: 200,
            color: Colors.black,

            child: Text('bottomsheet 2',
              style: TextStyle(
                  color:Colors.white),
            ),


          ),
        )

    );

    }

  Future displayBottomSheet(BuildContext context){

    return showModalBottomSheet(context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    // barrierColor: Colors.black87.withOpacity(0.5),
    shape:
    RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
    builder: (context) =>
    SingleChildScrollView(child:   Container(

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
                  child: Text("Full Address",
                    style: TextStyle(color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),),
                ),
              ),


            ]
        ),


          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
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
              style: TextStyle(color: Color(0xFF90A2AF),
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

          Row(

            children: [

              Expanded(
                child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 0, 0),

                child:  Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF90A2AF),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16.0,16.0,0.0,16.0),
                          child: Text("State",
                            style: TextStyle(color: Color(0xFF4B4B4B),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),),
                        ),

                        Align(

                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(70.0,16.0,16.0,16.0),

                              child: SvgPicture.asset('assets/image/dropdown2.svg'),

                            )
                        ),
                      ],

                  ),
              ),
              ),
              ),


              Expanded(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 16.0, 16.0, 0),

                    child:  Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF90A2AF),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.0,16.0,0.0,16.0),
                      child: Text("city",
                        style: TextStyle(color: Color(0xFF4B4B4B),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),),
                    ),

                    Align(

                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(70.0,16.0,16.0,16.0),

                          child: SvgPicture.asset('assets/image/dropdown2.svg'),

                        )
                    ),
                  ],

                ),
              )
              ),
              ),


            ],
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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

                hintText: ' Pincode',

              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
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

                hintText: ' Flat/ House no / Floor / Building ',

              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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

                hintText: ' Area/ Sector / Locality',

              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
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

                hintText: ' Nearby Landmark (optional)',

              ),
            ),
          ),

          const Align(

            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.0,20.0,0,0),
              child: Text("Save Address as",
                style: TextStyle(color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),),
            ),
          ),


          Row(

            children: [

              Expanded(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 16.0, 16.0, 0),

                    child:  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFF0EB),
                          border: Border.all(
                            color: Color(0xFFFFD2C1),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),

                      child:   Padding(
                        padding: EdgeInsets.fromLTRB(0,18.0,16.0,18.0),
                        child: Text("Home",
                          style: TextStyle(color: Color(0xFFFA713F),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),),


                      ),
                    )
                ),
              ),


              Expanded(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 16.0, 16.0, 0),

                    child:  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF90A2AF),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),

                      child:   Padding(
                        padding: EdgeInsets.fromLTRB(0,18.0,16.0,18.0),
                        child: Text("Work",
                          style: TextStyle(color: Color(0xFF4B4B4B),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),),


                      ),
                    )
                ),
              ),


              Expanded(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 16.0, 16.0, 0),

                    child:  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF90A2AF),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),

                       child:   Padding(
                            padding: EdgeInsets.fromLTRB(0,18.0,16.0,18.0),
                            child: Text("Others",
                              style: TextStyle(color: Color(0xFF4B4B4B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),),


                      ),
                    )
                ),
              ),

            ],
          ),

      Row(

        children: [


          Expanded(
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 16.0, 16.0,16.0),

                child:  Container(

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF90A2AF),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),

                  child:  Padding(
                    padding: EdgeInsets.fromLTRB(0,18.0,.0,18.0),
                    child: Text("Skip",
                      style: TextStyle(color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),

                    ),

                  ),
                )
            ),
          ),


        Expanded(
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 16.0, 16.0,16.0),

         child:
         InkWell(onTap: () {
           Navigator.pushReplacement(
             context, MaterialPageRoute(builder: (context) => SignUp()),);
         },
               child:   Container(

                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                     color: Color(0xFFFA713F),
                     border: Border.all(
                       color: Color(0xFF90A2AF),
                     ),
                     borderRadius: BorderRadius.all(Radius.circular(10))
                 ),

                 child:  Padding(
                   padding: EdgeInsets.fromLTRB(0,18.0,.0,18.0),
                   child: Text("Save Address",
                     style: TextStyle(color: Colors.white,
                         fontSize: 16,
                         fontWeight: FontWeight.w400),

                   ),

                 ),
               ),
             )
              ,


              ),
            ),


        ],
      ),

        ],

      ),

    ),),

    );

    }
  }
