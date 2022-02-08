import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
  );
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change Me";

  @override
  void initState() {
    
    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Stateful Widget"),
    ),

     body: Center(
       child: Text(myText,style: TextStyle(fontSize: 50,
       fontWeight: FontWeight.bold
       ),
       )
       ),
      
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.change_circle),
         onPressed: (){
           myText = Random().nextInt(20).toString();
           setState(() {
             
           });
         },
       ),
    );
  }
}