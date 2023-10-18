import 'package:flutter/material.dart';

class updates extends StatefulWidget {
  const updates({super.key});

  @override
  State<updates> createState() => _updatesState();
}

class _updatesState extends State<updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 140, 105),
        title: Center(child: Text("Updates")),
        actions: [
          Icon(Icons.update)
        ],
      ),
      body: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => CircleAvatar(),),
      ),
    );
  }
}