import 'package:flutter/material.dart';
import 'home.dart';

class logo extends StatefulWidget {
  const logo({super.key});

  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {

  @override
  void initState() {
    gotoHome();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 300,
                ),
                child: Image(image: NetworkImage('https://i.pinimg.com/564x/79/2e/4f/792e4f1cdc72743e50352f93b920949e.jpg'),width: 100,))),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: 70
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("from"),
                      Image(image: NetworkImage('https://images.hindustantimes.com/tech/img/2021/10/28/960x540/FACEBOOK-CONNECT-5_1635447947639_1635447999621.JPG'),width: 70,)
                  ],
                )
              ),
            )
          ],
        )
      ),
    );

    dispose(){     
      super.dispose();
    }
  }
  Future <void> gotoHome()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home()));
  }
}