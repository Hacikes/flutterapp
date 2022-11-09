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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("hello"),
              Text("World")
            ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.green,
              child: Text('one'),
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.yellow,
                child: Text('two'),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.blue,
            child: Text('three'),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.black87,
        child: const Text('click'),
      ),
    );
  }
}

