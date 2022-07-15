
import 'package:flutter/material.dart';

import 'app_controller.dart';



class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState(){
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  int counter = 0;
  bool isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Home Page'),
        actions: [
          CustomSwhitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador:$counter'),
            Container(height: 10,),
            CustomSwhitch(),
            Container(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState((){
            counter++;
          });

      },),
    );

  }

}

class CustomSwhitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(value:AppController.instance.isDarkTheme, onChanged: (value){
      AppController.instance.changTheme();
    },);
  }
}

