import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Color(0xff274c77),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius : 80.0,
            backgroundImage: AssetImage("images/my.jpg"),
          ),
          Text("Ibrahim Dosoqi",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            fontFamily: "Pacifico",
          ),),
          Text("iOS & Android Developer",style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            letterSpacing: 2.5
          ),),
          SizedBox(height: 19.0,
          width: 160.0,
          child: Divider(color: Colors.white,),),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            child: Padding(padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(Icons.phone,color: Color.fromARGB(255, 38, 104, 180),),
                SizedBox(width: 40.0,),
                Text("+010 2691 6321", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff274c77)
                ),)
              ],
            ),),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            child: Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Row(
              children: [
                Icon(Icons.email,color: Color.fromARGB(255, 38, 104, 180),),
                SizedBox(width: 20.0,),
                Text("ibrahimdosoki095@gmail.com", style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff274c77)
                ),)
              ],
            ),),
          ),
        ],
      ),
      ),
    );
  }
}


