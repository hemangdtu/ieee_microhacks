import 'package:flutter/material.dart';

void main() {
  runApp(ConvertorApp());
}

class ConvertorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text('Conversion App'),
            centerTitle: true,
            backgroundColor: Colors.red),
        backgroundColor: Colors.blue,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: GridView.count(
              crossAxisCount: 2,
              children: [MenuCard()],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card();
  }
}
