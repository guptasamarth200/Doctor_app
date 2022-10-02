import 'package:badges/badges.dart';
import 'package:doctor_app/screens/notification_screen.dart';
// import 'package:doctor_app/data/json.dart';
import 'package:doctor_app/widgets/category_box.dart';
import 'package:doctor_app/widgets/popular_doctor.dart';
import 'package:doctor_app/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../data/json.dart';
import '../utils/colors.dart';
import 'account_dummy_screen.dart';
import 'booking_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: appBgColor,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: Badge(
              position: BadgePosition.topEnd(top: 7, end: -4),
              badgeContent: const Text('1', style: TextStyle(color: Colors.white),),
            child: InkWell(onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>const notification_page()));
            },
                  child: const Icon(Icons.notifications_sharp, color: primary,)),
            ),
          )
        ],
      ),
      body: getBody(),
    );
  }

  getBody(){
    return
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.filter_list_rounded, color: primary, size: 35,),
                const Text("Hi Samarth ,", style: TextStyle(fontSize: 23, color: primary, fontWeight: FontWeight.w500),),
                const SizedBox(height: 5,),
                const Text("Let's Find Your Perfect Doctor", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                const SizedBox(height: 15,),
                const CustomTextBox(),
                const SizedBox(height: 25,),
                const Text("Categories", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                const SizedBox(height:10),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 5),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryBox(title: "Heart", icon: Icons.monitor_heart_outlined, color: Colors.red, ),
                      CategoryBox(title: "Medical", icon: Icons.local_hospital, color: Colors.blue, ),
                      CategoryBox(title: "Child care", icon: Icons.baby_changing_station, color: Colors.purple, ),
                      CategoryBox(title: "Healing", icon: Icons.healing_outlined, color: Colors.green, ),
                    ],
                  ),
                ),
                const SizedBox(height:20,),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height*0.19,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage("https://st4.depositphotos.com/2895903/39411/v/950/depositphotos_394113578-stock-illustration-hospital-reception-vector-illustration-cartoon.jpg?forcejpeg=true"),
                      fit: BoxFit.cover,)
                  ),
                  // child: Stack(
                  //   children: [
                  //     SingleChildScrollView(
                  //       physics: const BouncingScrollPhysics(),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         children: [
                  //           SizedBox(
                  //
                  //           )
                  //         ],
                  //       ),
                  //     )
                  //   ],
                  // ),
                ),
                const SizedBox(height: 45,),
                Container(child: const Text("Recommended Doctors", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 5),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PopularDoctor(doctor: doctors[0],),
                      PopularDoctor(doctor: doctors[1],),
                      PopularDoctor(doctor: doctors[5],),
                      PopularDoctor(doctor: doctors[3],),
                      PopularDoctor(doctor: doctors[6],),
                      PopularDoctor(doctor: doctors[7],),
                      PopularDoctor(doctor: doctors[9],),


                    ],
                  ),
                ),
                const SizedBox(height: 45,),
              ]
          ),
        ),
      );
  }
}
