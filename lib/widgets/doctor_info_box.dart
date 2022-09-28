// import 'package:doctor_app/theme/colors.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class DoctorInfoBox extends StatelessWidget {
  DoctorInfoBox({ Key? key,
                        required this.value,
    required this.info,
    this.icon = Icons.info ,
    this.color = primary,}) :super(key: key);
  IconData icon;
  Color color;
  String value;
  String info;

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: MediaQuery.of(context).size.width*0.37,
        // height: MediaQuery.of(context).size.height*0.20,
        width: 130,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.blueAccent.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(2, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 40,),
            SizedBox(height: 7,),
            Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(height: 7,),
            Text(info, style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),)
          ],
        ),
      );
  }
}