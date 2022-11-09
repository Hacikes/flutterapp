import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('Alpha'),
      backgroundColor: Colors.black87,
    ),
    body: const Center(
      child: Text(
        'hello',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.grey,
          fontFamily: 'PoppinsExtraBold',
          ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      backgroundColor: Colors.black87,
      child: const Text('click'),
    ),
  ),
));

