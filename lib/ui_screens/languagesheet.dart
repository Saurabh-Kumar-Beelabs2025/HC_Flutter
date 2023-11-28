
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../color_file/color.dart';
import 'linkaccount.dart';
import 'mobileverify.dart';
import 'onbording.dart';

class languagesheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body:
        SafeArea(child:Center(

            child: Column(

              children: [

                MaterialButton(

                  onPressed: (){

                    displayBottomSheet(context);
                  },


                  height: 50,
                  minWidth: 200,
                  color: Colors.black,

                  child: Text('bottomsheet',
                    style: TextStyle(
                        color:Colors.white),
                  ),


                ),


                ElevatedButton(
                  onPressed: () {

                    Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder: (context) => linkaccount(),
                        ));
                  }, child: null,
                )


              ],
            )






        ) ,)



    );
  }

  Future displayBottomSheet(BuildContext context){

    return showModalBottomSheet(context: context,
    backgroundColor: Colors.white,
   // barrierColor: Colors.black87.withOpacity(0.5),
    shape:
    RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
        builder: (context) => Container(

         // width: 800,
          height: 2000,
       child: Column(

         children: [


           const Align(

             alignment: Alignment.topLeft,
             child: Padding(
               padding: EdgeInsets.fromLTRB(16.0,30.0,0,0),
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
             margin: const EdgeInsets.fromLTRB(16.0,16.0,16,0),
             padding: const EdgeInsets.all(17.0,),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(11),
                 border: Border.all(color: Colors.blueAccent)
             ),

             child: Text('Hindi',
               style: TextStyle(color: Colors.black,
                 fontSize: 20,
                 fontWeight: FontWeight.w500,

               ),
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

             child: Text('Marathi',
               style: TextStyle(color: Colors.black,
                 fontSize: 20,
                 fontWeight: FontWeight.w500,

               ),
             ),

           ),




         ],



       )



    ),
    );
  }

}







