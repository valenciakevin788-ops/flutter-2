import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(1.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://i.pinimg.com/originals/0a/4c/25/0a4c2597fcec1129c69b067fe9d65bf9.jpg?nii=t',
            ),
          ),
        ),
        title: const Text('Chats'),
        centerTitle: false,
      ),

      //body: Container(),
    );
  }
}
