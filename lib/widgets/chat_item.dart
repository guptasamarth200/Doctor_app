import 'package:flutter/material.dart';
import 'avatar_image.dart';

class ChatItem extends StatelessWidget {
  const ChatItem(this.chatData, { Key? key, this.onTap}) : super(key: key);
  final chatData;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            const SizedBox(height: 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AvatarImage(
                  chatData['image'], 
                  radius: 10,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: 
                  Container(
                    height: 60,
                    child:
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Text(chatData['name'],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle
                                        (fontSize: 16,
                                          fontWeight: FontWeight.w700))

                                )
                              ),
                              const SizedBox(width: 5),
                              Container(
                                child: const Icon
                                  (Icons.remove_red_eye_outlined,
                                  size: 10,
                                  color: Colors.grey,
                                )
                              ),
                              const SizedBox(width: 3),
                              Container(
                                child: Text(chatData['date'], maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 11, color: Colors.black54))
                              )
                            ],
                          ),
                          const SizedBox(height: 3,),
                          Row(
                            children: <Widget>[
                              Container(
                                child: Text(chatData['skill'], maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13, color: Colors.grey))
                              ),
                            ],
                          ),
                          const SizedBox(height: 6,),
                          Row(
                            children: <Widget>[
                              Expanded(child: Text(chatData['last_text'], maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13))),
                            ],
                          ),
                        ],
                      )
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}