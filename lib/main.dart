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
               // Задаём кнопки
               child: (ElevatedButton(
                 onPressed: () {
                   print('Хорош');
                 },
                 child: const Text('button1'),
                 )
               ),
             ),
             Container(
               // Задаём кнопки
               child: (OutlinedButton(
                 onPressed: () {
                   print('Мегахорош');
                 },
                 child: const Text('button2'),
               )
               ),
             ),
             Container(
               // Задаём кнопки
               child: (TextButton(
                 onPressed: () {
                   print('Отсановись');
                 },
                 child: const Text('button3'),
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

