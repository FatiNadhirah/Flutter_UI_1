import 'package:flutter/material.dart';

class Question_CRUD extends StatefulWidget {
  //const Question_CRUD({Key? key}) : super(key: key);

  @override
  _Question_CRUDState createState() => _Question_CRUDState();
}

class _Question_CRUDState extends State<Question_CRUD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Question Management',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,
            size: 30.0,
            color: Colors.white,),
        ),
      ),
      body: Column(

      ),
    );
  }
}
