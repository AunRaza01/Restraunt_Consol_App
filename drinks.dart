import 'dart:io';

import 'menu.dart';

class SoftDrinks extends Menu {
  int cokePrice = 100;
  int pepsiPrice = 100;
  int dewPrice = 70;
  int stingPrice = 110;

  int? items;


  void showDrinksMenu() {
    
      displayDrinksMenu();
      List<String> orderedItems = takeOrder();
      int totalAmount = calculateTotalAmount(orderedItems);
      displayTotalAmount(totalAmount);
    
  }

  // Function to display the fast food menu
  void displayDrinksMenu() {
    print("Here is the list of rice items:");
      List<String> drinkItems = [
    ": coke RS : 100",
    ": pepsi RS : 100",
    ": dew RS : 70",
    ": sting RS : 110"
  ];
    drinkItems.forEach((element) {
      print(element);
    });
  }

  // Function to take the order from the user
  List<String> takeOrder() {
    List<String> riceFoodItem = [];
    String? exit;
    int i = 1;
    print("type done if you're done with your order");

    while (true) {
      print("Item number $i:");
      exit = stdin.readLineSync()?.toLowerCase(); // Convert to lowercase

      if (exit == "*done") {
        break; // Exit the loop if the user types '*'
      } else if (exit != null && exit.isNotEmpty) {
        riceFoodItem.add(exit);
        i++;
      } else {
        print("Invalid input. Please enter a valid item or * to finish.");
      }
    }

    print("You ordered: $riceFoodItem");
    return riceFoodItem;
  }

  // Function to calculate the total amount based on the ordered items
  int calculateTotalAmount(List<String> orderedItems) {
    int totalAmount = 0;

    // Check each item and add its respective price if it exists in the order list
    if (orderedItems.contains("coke")) {
      totalAmount += cokePrice;
    }
    if (orderedItems.contains("dew")) {
      totalAmount += dewPrice;
    }
    if (orderedItems.contains("pepsi")) {
      totalAmount += pepsiPrice;
    }
    if (orderedItems.contains("sting")) {
      totalAmount += stingPrice;
    }

    return totalAmount;
  }

  // Function to display the total amount
  void displayTotalAmount(totalAmount) {
    print("Your total amount is: Rs. $totalAmount");
  }
}
