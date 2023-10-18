import 'package:flutter/material.dart';
import 'chats.dart';
import 'updates.dart';
import 'message.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 18, 140, 105),
        title: Text("WhatsApp",style: TextStyle(fontSize: 22),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined),iconSize: 26,),
          IconButton(onPressed: (){
            TextField();
          }, icon: Icon(Icons.search),iconSize: 26,),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),iconSize: 26,)
        ],
      ),
      body:Column(
        children: [
          Container(
            color: Color.fromARGB(255, 18, 140, 105),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.groups_3),color: Colors.white,iconSize: 25,),
                TextButton(onPressed: (){}, child: Text("Chats",style: TextStyle(color: Colors.white,fontSize: 18),)),
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>updates()));
                }, child: Text("Updates",style: TextStyle(color: Colors.white,fontSize: 18),)),
                TextButton(onPressed: (){}, child: Text("Calls",style: TextStyle(color: Colors.white,fontSize: 18),)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) => Card(
                  child: ListTile(
            trailing: Text("10:$index"),
            leading: CircleAvatar(
              backgroundColor: Colors.lightBlue,
            ),
            title: Text("name  $index"),
                  ),
                ),),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 18, 140, 105),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>message()));
        },
        child: Icon(Icons.message),
        ),
    );
  }
}