import 'dart:io';

class Menu {
  int? items;

  void welcome() {
    print("Welcome to Star Cafe");
    print("Press 1 for Fast Food");
    print("Press 2 for Biryani");
    print("Press 3 for Soft Drinks");
   

    items = int.parse(stdin.readLineSync()!);
  }
}
