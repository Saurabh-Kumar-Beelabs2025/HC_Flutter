import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../color_file/color.dart';
import 'mobileverify.dart';

class linkaccount extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Center(

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



      ),


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

        //  width: 800,
        //  height: 1000,
          child: Column(

            children: [


              const Align(

                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16.0,15.0,0,0),
                  child: Text("Link Account",
                    style: TextStyle(color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),),
                ),
              ),

              Align(

                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16.0,10.0,0,14.0),
                  child: Text("We have detected multiple accounts linked to your\n phone number. For security reasons, please verify\n the account below to continue",
                    style: TextStyle(color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),),
                ),
              ),


              Divider(

                color: Colors.black12,
                thickness: 2,
              ),

              Container(
                  padding: EdgeInsetsDirectional.all(15.0),
                  child:

                  Column(children: [


                    SizedBox(height: 1,),
                    Row(

                      children: [

                        Image.asset('assets/image/googlelogo.png'),

                        SizedBox(width: 15,),

                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("Saurabh Rajput",
                              style: TextStyle(color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),),


                            Text("Saurabh3@gmail.com",
                              style: TextStyle(color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),),



                          ],

                        ),



                      ],
                    ),
                    SizedBox(height: 15,),

                    Row(

                      children: [

                        SvgPicture.asset('assets/image/emaillogo.svg'),

                        SizedBox(width: 15,),


                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("Saurabh Singh",
                              style: TextStyle(color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),),


                            Text("Singh03@gmail.com",
                              style: TextStyle(color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),),


                          ],

                        ),


                      ],
                    )
                  ],)


              ),



              InkWell(onTap: () {

                Navigator.pushReplacement(
                  context,MaterialPageRoute(builder: (context) => mobileverify ()),);

              },
                child:   Container(
                  alignment: Alignment.topCenter ,
                  margin: const EdgeInsets.fromLTRB(16.0,10.0,16.0,10.0),
                  padding: const EdgeInsets.all(14.0),
                  decoration: BoxDecoration(
                    color: Customcolor.orangecolor,
                    borderRadius: BorderRadius.circular(13),
                  ),

                  child: Text('Create new account',
                    style: TextStyle(color: Colors.white,

                        fontSize: 20,
                        fontWeight: FontWeight.w600),),

                ),
              )




            ],

          )


      ) ,),

    );

  }

}