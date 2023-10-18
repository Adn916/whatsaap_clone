import 'package:flutter/material.dart';

class chats extends StatefulWidget {
  const chats({super.key});

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {

  static const String id='chatscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 140, 105),
        title: Center(child: Text("Chats")),
        actions: [
          Icon(Icons.chat)
        ],
      ),
      body:ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => Card(
        child: ListTile(
          trailing: Icon(Icons.abc),
          leading: CircleAvatar(
            backgroundColor: Colors.lightBlue,
          ),
          title: Text("name  $index"),
        ),
      ),),
    );
  }
}