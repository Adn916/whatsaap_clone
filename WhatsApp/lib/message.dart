import 'package:flutter/material.dart';

class message extends StatefulWidget {
  const message({super.key});

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 140, 105),
        title: Text("Select contact"),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person_2),
                  ),
                  Text("New group")
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person_2),
                  ),
                  Text("New contact")
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person_2),
                  ),
                  Text("New community")
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}