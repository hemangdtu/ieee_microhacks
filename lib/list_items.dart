List<List<String>> items = [
  ["Grams", "Kilograms"],
  ["Millimeters", "Centimeters", "Meters", "Kilometers"]
];

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

List<ListItem> dropdownItems = [
  ListItem(1, "First Value"),
  ListItem(2, "Second Item"),
  ListItem(3, "Third Item"),
  ListItem(4, "Fourth Item")
];
List<ListItem> dropdownItems2 = [
  ListItem(1, "1"),
  ListItem(2, "2"),
  ListItem(3, "3"),
  ListItem(4, "4"),
  ListItem(5, "5"),
];
