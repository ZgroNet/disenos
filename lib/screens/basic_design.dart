import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Image(image: AssetImage('assets/lake.jpg'), width: 600, height: 240, fit: BoxFit.cover)
      ),
    );
  }
}