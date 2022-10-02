import 'package:flutter/material.dart';
class notificationbadge extends StatelessWidget {
  final int totalnotification;
  const notificationbadge({Key? key,required this.totalnotification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle
      ),
      child: Center(
        child: Padding(
          padding:const EdgeInsets.all(8),
          child: Text('$totalnotification',
          style: const TextStyle(color: Colors.white,
          fontSize: 20)),

        ),
      ),

    );
  }
}
