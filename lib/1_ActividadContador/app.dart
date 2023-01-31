import 'package:flutter/material.dart';

void main() {
  runApp(const Contador ());
}

class Contador extends StatelessWidget {
  const Contador({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', 
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Hola Mundo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

   void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

   void zero() {
    setState(() {
      _counter = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: _fab(), 
    );
  }

  Widget _fab(){
    return  Row(
      children: [
        SizedBox(width: 35.0,),
        FloatingActionButton(
        onPressed: zero,
        tooltip: 'zero',
        child: const Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox(width: 5.0,),),
         FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: const Icon(Icons.remove),
        ),
        SizedBox(width: 75.0,),
         FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}