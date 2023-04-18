import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:health_app/pages/doctorslist.dart';

import 'doctorslist.dart';

class homepage extends StatelessWidget
{
  var obj=new doctorslist();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20.0,right: 20,left: 20),
        child: GNav(
            color: Colors.white,
            activeColor: Colors.blue,
            backgroundColor: Color(0xFF242a2e),
            curve: Curves.decelerate,

            tabs: [

          GButton(text: "Home",
          icon: Icons.home,),
              GButton(icon: Icons.calendar_month,
              text: "Appointments",),
              GButton(
                text: "Settings",
                icon: Icons.settings,
              ),

        ]),
      ),
      appBar: AppBar(
        title: Text("HealthShimi",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.list,color: Colors.black,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add_alert,color: Colors.black,),
          ),
        ],
      ),
        body: Container(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Container(
                width: 600,
                height: 200,
               // color: Colors.black,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 200,
                          height: 150,
                          //color: Colors.black,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),

                              child: Image.asset('assets/images/banner.png',fit: BoxFit.fill,))),
                    ),
                  ],
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 60,
                    width: 80,
                    child: ElevatedButton(onPressed: (){}, child:FaIcon(FontAwesomeIcons.userDoctor,color: Colors.black,),style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.elliptical(50,50)),

                      )
                    ),),
                  ),
                  SizedBox(
                    height: 60,
                    width: 80,
                    child: ElevatedButton(onPressed: (){}, child: FaIcon(FontAwesomeIcons.heart,color: Colors.black,),style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.elliptical(50,50)),

                        )
                    ),),
                  ),
                  SizedBox(
                    height: 60,
                    width: 80,
                    child: ElevatedButton(onPressed: (){}, child: FaIcon(FontAwesomeIcons.location,color: Colors.black,),style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.elliptical(50,50)),

                        )
                    ),),
                  ),
                  SizedBox(
                    height: 60,
                    width: 80,
                    child: ElevatedButton(onPressed: (){},
                      child: FaIcon(FontAwesomeIcons.hospitalUser,color: Colors.black,),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.elliptical(50,50)),

                        )
                    ),),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Top Doctor",style: TextStyle(fontSize: 30),),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(

                    itemCount: obj.docs_list.length,
                    itemBuilder: (context,index)=>

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                     decoration:BoxDecoration(
                       borderRadius: BorderRadius.circular(11),
                       image: DecorationImage(
                         fit: BoxFit.fitWidth,
                         alignment: Alignment.center,

                         image: AssetImage(obj.docs_list[index].Image),
                       )
                     ) ,
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 140,
                                  height: 30,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFe9e9e9),
                                  ),
                                  child: Center(child: Text("Professional Doctor"))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 70,
                                  height: 30,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFe9e9e9),
                                  ),
                                  child:


                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      //Doctor Rating
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(obj.docs_list[index].rating),
                                      ),
                                      //Doctor Stars
                                      Icon(Icons.star,color: Color(0xFF0feb020),),
                                    ],
                                  )),
                            ),


                          ],
                        ),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  //Doctor name
                                  child: Text(obj.docs_list[index].name,style: TextStyle(fontSize: 25),),
                                ),
                                //button
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                      height: 40,
                                      width: 100,
                                      child: ElevatedButton(onPressed: (){}, child: Text("Book Now"),

                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF0167ff),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(21),

                                        )
                                      ),
                                      )
                                  ),
                                )
                              ],
                            ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            //Doctor Speciality
                            Text(obj.docs_list[index].speciality,
                            style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                          ],
                        )



                      ],
                    ),





                  ),
                )

                ),
              )

            ],
          ),
        ),
    );
  }
}

