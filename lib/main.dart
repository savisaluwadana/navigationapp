import 'package:flutter/material.dart';
import 'package:navigationapp/pages/first.dart';
import 'package:navigationapp/pages/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const MyHomePage(title: "Flutter Demo Home Page"),
        "/first": (context) => const FirstPage(),
        "/second": (context) => const SecondPage(),
      },
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/first");
              },
              child: const Text("First Page"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/second");
              },
              child: const Text("Second Page"),
            ),
          ],
        ),
      ),
    );
  }
}
