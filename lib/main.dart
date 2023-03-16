import 'package:extension_demo/User.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extension Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Extension Demo Home Page'),
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
  List<User> user = [
    User('Shivam', 'Male'),
    User('Narendra', 'Male'),
    User('Vartika', 'Female'),
    User('Other', 'Other')
  ];

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
            Text('${user[0].name} ----> ${user[0].gender.genderInitial()}'),
            Text('${user[1].name} ----> ${user[1].gender.genderInitial()}'),
            Text('${user[2].name} ----> ${user[2].gender.genderInitial()}'),
            Text('${user[3].name} ----> ${user[3].gender.genderInitial()}'),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

extension gender on String {
  String genderInitial() {
    if (this == 'Male') {
      return 'M';
    } else if (this == 'Female') {
      return 'F';
    } else {
      return 'O';
    }
  }
}
