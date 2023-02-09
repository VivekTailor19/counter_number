//stful = setState live update
//stless = no live update
import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Counter Application",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            child: Icon(Icons.add_circle_outline,size: 35),
            onTap: () {
              // ontap pachhi () == press mate  {} == condition mate
              setState(() {
                //Live updates = setState
                i++; //
              });
            },
          ),
          GestureDetector(
            child: Icon(Icons.remove_circle_outline,size: 35),
            onTap: (){
              setState(() {
                i--;
              });
            },
          ),
          GestureDetector(
            child: Icon(Icons.two_k_outlined,size: 35),
            onTap: (){
              setState(() {
                i*=2;
              });
            },
          ),
          GestureDetector(
            child: Icon(Icons.four_k_outlined,size: 35),
            onTap: (){
              setState(() {
                i*=4;
              });
            },
          ),
          GestureDetector(
            child: Icon(Icons.home,size: 35),
            onTap: (){
              setState(() {
                i=1;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 150,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown, width: 10),
              color: Colors.red,
              borderRadius: BorderRadius.circular(25)),
          alignment:Alignment.center,
          child: Text("$i",style: TextStyle(color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic),),
        ),
      ),
    );
  }
}
