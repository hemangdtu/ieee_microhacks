import 'package:flutter/material.dart';
import 'package:ieee_microhacks/conversion.dart';

void main() => runApp(ConvertorApp());

class ConvertorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("Option 1"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Option 1"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Option 1"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Option 1"),
                onTap: () {},
              )
            ],
          ),
        ),
        appBar: AppBar(
            title: Text('Conversion App'),
            centerTitle: true,
            backgroundColor: Colors.red),
        backgroundColor: Colors.blue,
        body: Padding(
          padding: EdgeInsets.only(top: 0, bottom: 0, left: 10.0, right: 10.0),
          child: Container(
            child: GridView.count(
              // GridView.builder()
              crossAxisCount: 2,
              children: [
                MenuCard(
                  title: "Length",
                  color: Colors.amber,
                  icon: Icons.accessibility_new,
                ),
                MenuCard(
                  title: "Mass",
                  color: Colors.amber,
                  icon: Icons.alarm,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  MenuCard({this.title, this.icon, this.color});

  final String title;
  final IconData icon;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.red,
      child: InkWell(
        splashColor: Colors.orange,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ConversionClass(
                      appBarTitle: title,
                    )),
          );
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // Row(), Stack()
            children: [
              Icon(
                icon,
                size: 75,
                color: Colors.white,
              ),
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      elevation: 12.0,
      margin: EdgeInsets.all(10.0),
      color: Colors.green,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
      ),
    );
  }
}
