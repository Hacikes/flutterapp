import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  // Используем экземпляр виджета Home
  home: Home(),
));


// Благодаря такой компановке можно переиспользовать этот виджет где угодно
// и + к этому не надо каждый раз тыкать Hot Reload
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alpha'),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Icon(
          Icons.airport_shuttle,
          color: Colors.lightGreen,
          size: 50.0,
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.black87,
        child: Text('click me'),
      ),
    );
  }
}

