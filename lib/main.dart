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
        // Получение локально изображения из папки assets, так же не забудь
        // добавить эту папку в pubspec.yaml, если этого ещё не сделано
        child: Image.asset('assets/pic-space.jpg'),
        //Получение изображения по url
        //child: Image.network('https://images.unsplash.com/photo-1667827576128-374c6ab46ee2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.black87,
        child: Text('click me'),
      ),
    );
  }
}

