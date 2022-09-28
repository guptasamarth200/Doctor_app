// import 'package:doctor_app/screens/home.dart';
// import 'package:doctor_app/screens/signin_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // var user;
//     return Scaffold(
//       body: Center(
//       child: ElevatedButton(
//         child: const Text("A dev for your health"),
//         onPressed: () {
//           FirebaseAuth.instance.signOut().then((value) {
//             print("Signed Out");
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const SignInScreen()));
//                 // MaterialPageRoute(builder: (context) => Home()));
//           });
//         },
//       ),
//     ),
//     );
//   }
// }
// //       backgroundColor: appBgColor,
// //       appBar: AppBar(
// //         elevation: 0,
// //         backgroundColor: Colors.transparent,
// //         actions: [
// //           Container(
// //             padding: EdgeInsets.only(right: 10),
// //             child: Badge(
// //               position: BadgePosition.topEnd(top: 7, end: -4),
// //               badgeContent: Text('1', style: TextStyle(color: Colors.white),),
// //               child: Icon(Icons.notifications_sharp, color: secondary,),
// //             ),
// //           )
// //         ],
// //       ),
// //       body: getBody(),
// //     );
// //   }
// //   getBody(){
// //     return
// //       SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.only(left: 10, right: 10),
// //           child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Container(child: Text("Hi,", style: TextStyle(fontSize: 23, color: primary, fontWeight: FontWeight.w500),),),
// //                 SizedBox(height: 5,),
// //                 Container(child: Text("Let's Find Your Doctor", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)),
// //                 SizedBox(height: 15,),
// //                 CustomTextBox(),
// //                 SizedBox(height: 25,),
// //                 Container(child: Text("Categories", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
// //                 SizedBox(height:10),
// //                 SingleChildScrollView(
// //                   padding: EdgeInsets.only(bottom: 5),
// //                   scrollDirection: Axis.horizontal,
// //                   child: Row(
// //                     children: [
// //                       CategoryBox(title: "Heart", icon: Icons.monitor_heart, color: Colors.red, ),
// //                       CategoryBox(title: "Medical", icon: Icons.medical_services_sharp, color: Colors.blue, ),
// //                       CategoryBox(title: "Dental", icon: Icons.details_rounded, color: Colors.purple, ),
// //                       CategoryBox(title: "Healing", icon: Icons.healing_outlined, color: Colors.green, ),
// //                     ],
// //                   ),
// //                 ),
// //                 SizedBox(height: 20,),
// //                 Container(
// //                   width: double.infinity,
// //                   padding: EdgeInsets.all(20),
// //                   height: 160,
// //                   decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(30),
// //                       image: DecorationImage(
// //                         image: NetworkImage("https://media.istockphoto.com/vectors/electronic-health-record-concept-vector-id1299616187?k=20&m=1299616187&s=612x612&w=0&h=gmUf6TXc8w6NynKB_4p2TzL5PVIztg9UK6TOoY5ckMM="),
// //                         fit: BoxFit.cover,)
// //                   ),
// //                 ),
// //                 SizedBox(height: 25,),
// //                 Container(child: Text("Popular Doctors", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
// //                 SizedBox(height: 10),
// //                 SingleChildScrollView(
// //                   padding: EdgeInsets.only(bottom: 5),
// //                   scrollDirection: Axis.horizontal,
// //                   child: Row(
// //                     children: [
// //                       PopularDoctor(doctor: doctors[0],),
// //                       PopularDoctor(doctor: doctors[1],),
// //                       PopularDoctor(doctor: doctors[2],),
// //                     ],
// //                   ),
// //                 ),
// //                 SizedBox(height: 20,),
// //               ]
// //           ),
// //         ),
// //       );
// //   }
// // }
//
//
//
