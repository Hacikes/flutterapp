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
      body: Center(
        // Кнопки по другому не задаются
        // В Child принимаются параметры: Row и Column
         child: Column(
           children: [
             // Можно задать Expended за место Container, чтобы кнопки было по всей ширене
             Container(
               // Задаём кнопку
               child: (ElevatedButton.icon(
                 onPressed: () {},
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blueAccent,
                 ),
                 //Добавление иконки
                 icon: const Icon(
                   Icons.mail
                 ),
                 // Добавление Label
                 label: const Text('mail me'),
                 )
               ),
             ),
             Container(
               // Задаём кнопку в виде иконки
               child: (IconButton(
                 onPressed: () {},
                 //Добавление иконки
                 icon: const Icon(
                     Icons.mail
                 ),
               )
               ),
             ),
           ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.black87,
        child: const Text('click me'),
      ),
    );
  }
}

