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
      body: Row(
        // Выравнивание по x. spaceEvenly - выравнивает и оставляет отступы между виджетами
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // Выравнивание по y. end - устанавливает в конце
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const Text('Делаем несколько виджетов'),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            // Изменяет цвет текста у кнопки. ЕЕЕ БОЙ
            child: const Text('click me', style: TextStyle(color: Colors.white),),
            ),
          Container(
            color: Colors.green,
            //margin: EdgeInsets.fromLTRB(5, 100, 10, 50),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
            child: Text('Contatinet'),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.black87,
        child: const Text('click me'),
      ),
    );
  }
}

