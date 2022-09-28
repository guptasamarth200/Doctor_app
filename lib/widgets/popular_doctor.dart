import 'package:flutter/material.dart';
import 'avatar_image.dart';

class PopularDoctor extends StatelessWidget {
  PopularDoctor({ Key? key, required this.doctor}) : super(key: key);
  var doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width*0.65,
        // width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            AvatarImage(doctor["image"]),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(doctor["name"], maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                const SizedBox(height: 3,),
                Text(doctor["skill"], style: const TextStyle(fontSize: 12, color: Colors.grey),),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 14,),
                    const SizedBox(width: 2,),
                    Text("${doctor["review"]} Review", style: const TextStyle(fontSize: 12),)
                  ],
                )
              ],
            )
        ],
        )
      );
  }
}