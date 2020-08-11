import 'package:flutter/material.dart';

void main(){
  //WidgetsApp //MaterialApp
  
  runApp(MaterialApp(
    home: HomePage(), 
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    
  ));
} 

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
          padding: const EdgeInsets.all(8),
          //color: Colors.red,
          width: 100,
          height: 100,
          color: Colors.red,
          //clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          ),
          Container(
          padding: const EdgeInsets.all(8),
          //color: Colors.red,
          width: 100,
          height: 100,
          color: Colors.yellow,
          //clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          
          
          ),
          Container(
          padding: const EdgeInsets.all(8),
          //color: Colors.red,
          width: 100,
          height: 100,
          color: Colors.green,
          //clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          
          
          ),
          ],
        ),
      ),
    );
  }  
}