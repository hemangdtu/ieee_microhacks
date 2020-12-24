List<List<String>> items = [
  ["Grams", "Kilograms"],
  ["Millimeters", "Centimeters", "Meters", "Kilometers"]
];

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

List<ListItem> lengthDropdownItems1 = [
  ListItem(1, "Length1A"),
  ListItem(2, "Length1B"),
  ListItem(3, "Length1C"),
  ListItem(4, "Length1D")
];
List<ListItem> lengthDropdownItems2 = [
  ListItem(1, "Length2A"),
  ListItem(2, "Length2B"),
  ListItem(3, "Length2C"),
  ListItem(4, "Length2D"),
  ListItem(5, "Length2E"),
];
List<ListItem> massDropdownItems1 = [
  ListItem(1, "Mass1A"),
  ListItem(2, "Mass1B"),
  ListItem(3, "Mass1C"),
  ListItem(4, "Mass1D")
];
List<ListItem> massDropdownItems2 = [
  ListItem(1, "Mass2A"),
  ListItem(2, "Mass2B"),
  ListItem(3, "Mass2C"),
  ListItem(4, "Mass2D"),
  ListItem(5, "Mass2E"),
];
