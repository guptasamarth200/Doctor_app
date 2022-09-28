import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../data/json.dart';
import '../utils/colors.dart';
import '../widgets/avatar_image.dart';
import '../widgets/chat_item.dart';
import '../widgets/textbox.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Chat Room", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.more_vert_outlined,
              color: Colors.black,
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
                const CustomTextBox(),
                const SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(chatsData.length, (index) => 
                     Padding(
                       padding: const EdgeInsets.only(right: 10),
                       child: Badge(
                          badgeColor: Colors.green,
                          borderSide: const BorderSide(color: Colors.white),
                          position: BadgePosition.topEnd(top: -3, end: 0),
                          badgeContent: const Text(''),
                          child: AvatarImage(chatsData[index]["image"].toString())
                        ),
                     ) 
                    )
                  ),
                ),
                const SizedBox(height: 20,),
                getChatList()
              ]
          )
        )
      );
  }

  getChatList(){
    return 
      Column(
        children: List.generate(
          chatsData.length,
         (index) => ChatItem(chatsData[index])
        )
      );
  }
}