import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{
  const SecondPage({super.key});
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
              'Nhập thu chi',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
          )
        ),
      ),
    );
  }
}