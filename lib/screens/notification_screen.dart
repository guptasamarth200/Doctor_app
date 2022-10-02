import 'package:doctor_app/screens/notification_badge.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class notification_page extends StatefulWidget {
  const notification_page({Key? key}) : super(key: key);

  @override
  State<notification_page> createState() => _notification_pageState();
}

class _notification_pageState extends State<notification_page> {
  late final FirebaseMessaging messaging;
  late int _totalnotifcationcounter;
  notifiacation? _notificationInfo;
  //register notification
  void registernotification() async{
    await Firebase.initializeApp();
    messaging =FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      alert:  true,
      badge: true,
      provisional: false,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized){
      print("user permission granted ");
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        notifiacation notification =  notifiacation(
          title: message.notification!.title,
          body: message.notification!.body,
          datatitle: message.data ["tittle"],
          databody: message.data['body'],
        );
        setState(() {
          _totalnotifcationcounter++;
          _notificationInfo = notification;
        });
        // if (notification!= null)
        // {
        //
        //   showShownotification(context)
        // }

      });
    }
       
  }
  @override
  void initState() {
    registernotification();
    _totalnotifcationcounter = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notification"),elevation: 0,backgroundColor: Colors.transparent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('Notification',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize:20
            ),
            ),
            const SizedBox(height: 12),
            notificationbadge(totalnotification: _totalnotifcationcounter),
            const SizedBox(height:30),
            _notificationInfo != null
                ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "TITLE:${_notificationInfo!.datatitle??_notificationInfo!.title}",
                      style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    const SizedBox(height: 9,),
                    Text("BODY:${_notificationInfo!.datatitle??_notificationInfo!.title}",
          style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
        ]): Container()
                  ],
                )
        ),
      );
  }

}











class notifiacation{
  notifiacation({this.title,this.body,this.databody,this.datatitle});
  String? title;
  String? body;
  String? datatitle;
  String? databody;


}