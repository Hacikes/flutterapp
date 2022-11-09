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
        title: const Text('Alpha'),
        backgroundColor: Colors.black87,
      ),
      // В теле свойство Container. с этим свойством мы можем изменять
      // вид того, что находится в контейнере
      body: Container(
        // Размер контейнера. EdgeInsets и та функция которая нужна
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        // Отступ соответсвенно
        margin: EdgeInsets.all(30.0),
        color: Colors.grey[400],
        child: Text('hello'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.black87,
        child: const Text('click me'),
      ),
    );
  }
}

