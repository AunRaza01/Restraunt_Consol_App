import 'dart:io';

import 'menu.dart';

class RiceItems extends Menu {
  int fullChickenBirayaniPrice = 500;
  int halfChickenBiryaniPrice = 250;
  int fullBeefBirayaniPrice = 600;
  int halfBeefBiryaniPrice = 300;

  int? items;
  

  void showRiceMenu() {
    
      displayRiceMenu();
      List<String> orderedItems = takeOrder();
      int totalAmount = calculateTotalAmount(orderedItems);
      displayTotalAmount(totalAmount);
    
  }

  // Function to display the fast food menu
  void displayRiceMenu() {
    print("Here is the list of rice items:");
    List<String> riceItems = [
    ": FullChickenBirayani RS : 500",
    ": halfChickenBiryani RS : 250",
    ": FullBeefBirayani RS : 600",
    ": halfBeefBiryani RS : 300"
  ];
    riceItems.forEach((element) {
      print(element);
    });
  }

  // Function to take the order from the user
  List<String> takeOrder() {
    List<String> riceFoodItem = [];
    String? exit;
    int i = 1;
    print("Press * if you're done with your order");

    while (true) {
      print("Item number $i:");
      exit = stdin.readLineSync()?.toLowerCase(); // Convert to lowercase

      if (exit == "*") {
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
    if (orderedItems.contains("full chicken biryani")) {
      totalAmount += fullChickenBirayaniPrice;
    }
    if (orderedItems.contains("half Chicken biryani")) {
      totalAmount += halfChickenBiryaniPrice;
    }
    if (orderedItems.contains("full beef biryani")) {
      totalAmount += fullBeefBirayaniPrice;
    }
    if (orderedItems.contains("half beef biryani")) {
      totalAmount += halfBeefBiryaniPrice;
    }

    return totalAmount;
  }

  // Function to display the total amount
  void displayTotalAmount(int totalAmount) {
    print("Your total amount is: Rs. $totalAmount");
  }
}
