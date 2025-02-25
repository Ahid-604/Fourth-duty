
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dual FAB Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  void _FABs() {
    setState(() {
      _counter++;
    });
  }


  void _FAB() {
    setState(() {
      _counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dual FAB Counter'),
      ),
      body: Center(
        child: Text(
          '$_counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _FABs,
            tooltip: 'FABs',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 16), // Add some space between the buttons
          FloatingActionButton(
            onPressed: _FAB,
            tooltip: 'FAB',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
