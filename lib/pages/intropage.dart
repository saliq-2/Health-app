import 'package:flutter/material.dart';
import 'package:health_app/pages/homepage.dart';

class intropage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Stack(
        children:[
          Container(
        //  width: double.infinity,
          height:double.infinity ,
          child: Image.asset("assets/images/backgroundh1.png",fit: BoxFit.fill,),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5,),
            child: Container(
              //  width: double.infinity,
              height:600 ,
              width: 600,

              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                //color: Colors.blue,
              ) ,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30,),topLeft: Radius.circular(30),bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                  child: Image.asset("assets/images/doctor.jpg",fit:BoxFit.fitHeight,)),
            ),

          ),
          Positioned(
              bottom: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Consult the health of\n you and your Family",
                      style: TextStyle(color: Colors.white,fontSize: 35,

                      fontWeight: FontWeight.bold,),),
                  ),
                  SizedBox(height: 30,),
                  Text("  HealthShimi is the baest for you and for your family",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),






                ],

              )

          ),
          Positioned(
              bottom: 40,
              width: 300,
              height: 60,
              left: 60,

              child: ElevatedButton(onPressed: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homepage()));




              }, child: Text("Get Started",style: TextStyle(fontSize: 20),),
                style:ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ) ,))     ,
      ],
      ),


    );
  }
}