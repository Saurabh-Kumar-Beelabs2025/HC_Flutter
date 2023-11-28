import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutternew/ui_screens/full_address_btnsit.dart';
import 'package:get/get.dart';

class Searchaddress extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
   final TextEditingController textController =
       TextEditingController(text: 'Search');
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
                      child: Text("Search address",
                        style: TextStyle(color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),),
                    ),
                  ),


                ]



            ),
            
            Container(
              color: CupertinoColors.white,
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: CupertinoSearchTextField(
                  padding: const EdgeInsets.fromLTRB(10, 19.0, 100, 19.0),
                  controller: textController,
                ),
              ),
            ),

            Row(

             children: [

               Align(

                   alignment: Alignment.topLeft,
                   child: Padding(
                     padding: EdgeInsets.fromLTRB(19.0,16.0,0,0),

                     child: SvgPicture.asset('assets/image/location_icon.svg'),

                   )
               ),

               InkWell(onTap: () {
                 Navigator.pushReplacement(
                   context, MaterialPageRoute(builder: (context) => FullAddressBtnSit()),);
               },

              child:   Container(
                 alignment: Alignment.topLeft,
                 child: Padding(
                   padding: EdgeInsets.fromLTRB(16.0,16.0,0,10.0),
                   child: Text("Get current location with GPS",
                     style: TextStyle(color: Color(0xFF686868),
                         fontSize: 16,
                         fontWeight: FontWeight.w500),),
                 ),
               ),
               ),


             ],

            ),

            Divider(
              color: Color(0xFFF3F3F3),
              thickness: 12,
            ),

                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount:4,
                      itemBuilder: (context,index){
                        return
                        Column(
                          children: [

                            const Align(

                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(16.0,22.0,0,0),
                                child: Text("Ghailia",
                                  style: TextStyle(color: Color(0xFF262626),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),),
                              ),
                            ),

                            const Align(

                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(16.0,4.0,0,15.0),
                                child: Text("Uttar Pradesh, India",
                                  style: TextStyle(color: Color(0xFF686868),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),),
                              ),
                            ),

                            Divider(
                              color: Color(0xFFEEEEEE),
                              thickness: 1,
                            ),

                          ],
                        );

                      })


          ],


        ),

    ),

    );

    }
}

