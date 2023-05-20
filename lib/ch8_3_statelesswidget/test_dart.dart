import 'package:flutter/material.dart';
import 'package:flutter_lab/ch2/test.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  bool enable = false;
  String stateText = "disabled";

  void changeCheck(){
    if(enable){
      stateText = "disable";
      enable = false;
    }else{
      stateText = "enable";
      enable = true;
    }
  }

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless Test'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: changeCheck,
                icon: (enable ? Icon(Icons.check_box, size: 20) : Icon(Icons.check_box_outline_blank, size: 20,)),
                color: Colors.red,
              ),
              Container(
                
              )
            ],
          ),
        ),
      ),
    )
  }
}