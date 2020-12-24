import 'package:flutter/material.dart';

class ConversionClass extends StatefulWidget {
  final String appBarTitle;

  const ConversionClass({Key key, this.appBarTitle}) : super(key: key);
  @override
  _ConversionClassState createState() => _ConversionClassState();
}

class _ConversionClassState extends State<ConversionClass> {
  TextEditingController _iptText = TextEditingController();
  double res = 0;
  int _value = 1;
  int _value2 = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.pop(context)),
              title: Text(widget.appBarTitle ?? "Conversion App"),
              centerTitle: true,
              backgroundColor: Colors.red,
            ),
            backgroundColor: Colors.blue,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: DropdownButton(
                            value: _value2,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "First Item",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Second Item",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Third Item",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Fourth Item",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                value: 4,
                              )
                            ],
                            onChanged: (value2) {
                              setState(() {
                                _value2 = value2;
                              });
                            }),
                      ),
                      Text(
                        "to",
                        style: TextStyle(fontSize: 25.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: DropdownButton(
                            value: _value,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "First Item",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Second Item",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Third Item",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Fourth Item",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                value: 4,
                              )
                            ],
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            }),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 10.0),
                    child: TextField(
                      controller: _iptText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        filled: true,
                        //focusColor: Colors.red,
                        fillColor: Colors.black12,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            //bottomRight: Radius.circular(30.0),
                            //topLeft: Radius.circular(30.0),
                          ),
                        ),
                        labelText: "Input Value",
                        focusedBorder: InputBorder.none,
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  RaisedButton(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Get Results",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Result: $res",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
