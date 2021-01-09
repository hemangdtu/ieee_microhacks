import 'package:flutter/material.dart';
import 'package:ieee_microhacks/list_items.dart';

class ConversionClass extends StatefulWidget {
  final String appBarTitle;

  const ConversionClass({Key key, this.appBarTitle}) : super(key: key);
  @override
  _ConversionClassState createState() => _ConversionClassState();
}

class _ConversionClassState extends State<ConversionClass> {
  TextEditingController _iptText = TextEditingController();
  double res = 0;

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems2;
  ListItem _selectedItem2;

  void initState() {
    super.initState();
    if (widget.appBarTitle == "Length") {
      _dropdownMenuItems = buildDropDownMenuItems(lengthDropdownItems1);
      _dropdownMenuItems2 = buildDropDownMenuItems(lengthDropdownItems2);
    } else if (widget.appBarTitle == "Mass") {
      _dropdownMenuItems = buildDropDownMenuItems(massDropdownItems1);
      _dropdownMenuItems2 = buildDropDownMenuItems(massDropdownItems2);
    }
    _selectedItem = _dropdownMenuItems[0].value;
    _selectedItem2 = _dropdownMenuItems2[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(
            listItem.name,
            style: TextStyle(fontSize: 20.0),
          ),
          value: listItem,
        ),
      );
    }
    return items;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems2(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.cyan,
                                border: Border.all()),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<ListItem>(
                                  value: _selectedItem2,
                                  items: _dropdownMenuItems2,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedItem2 = value;
                                    });
                                  }),
                            ),
                          ),
                        ),
                        Text(
                          "to",
                          style: TextStyle(fontSize: 25.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.cyan,
                                border: Border.all()),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<ListItem>(
                                  value: _selectedItem,
                                  items: _dropdownMenuItems,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedItem = value;
                                    });
                                  }),
                            ),
                          ),
                        )
                      ],
                    ),
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
