import 'dart:io';
import 'biryani.dart';
import 'drinks.dart';
import 'menu.dart';

class FastFoodMenu extends Menu {
  int zingerBurgerPrice = 250;
  int beefBurgerPrice = 300;
  int shawarmaPrice = 150;
  int frenchFriesPrice = 100;
  int? items;

  void welcome() {
    super.welcome();
    if (items == 1) {
      displayFastFoodMenu();
      List<String> orderedItems = takeOrder();
      int totalAmount = calculateTotalAmount(orderedItems);
      displayTotalAmount(totalAmount);
    } else if (items == 2) {
      RiceItems riceItems = RiceItems();
      riceItems.showRiceMenu();
    } else if (items == 3) {
      SoftDrinks drinksItems = SoftDrinks();
      drinksItems.showDrinksMenu();
    } else {
      print("Entered Invalid Number, Try Valid Numbers");
    }
  }

  // Function to display the fast food menu
  void displayFastFoodMenu() {
    print("Here is the list of Fast Food items:");
    List<String> fastFood = [
      ": Zinger Burger RS  : 250",
      ": Beef Burger RS : 300",
      ": Shawarma RS : 150",
      ": French Fries RS : 100"
    ];
    fastFood.forEach((element) {
      print(element);
    });
  }

  // Function to take the order from the user
  List<String> takeOrder() {
    List<String> fastFoodItem = [];
    String? exit;
    int i = 1;
    print("Press * if you're done with your order");

    while (true) {
      print("Item number $i:");
      exit = stdin.readLineSync()?.toLowerCase();

      if (exit == "*") {
        break; // Exit the loop if the user types '*'
      } else if (exit != null && exit.isNotEmpty) {
        fastFoodItem.add(exit);
        i++;
      } else {
        print("Invalid input. Please enter a valid item or * to finish.");
      }
    }

    print("You ordered: $fastFoodItem");
    return fastFoodItem;
  }

  // Function to calculate the total amount based on the ordered items
  int calculateTotalAmount(List<String> orderedItems) {
    int totalAmount = 0;

    if (orderedItems.contains("zinger burger")) {
      totalAmount += zingerBurgerPrice;
    }
    if (orderedItems.contains("french fries")) {
      totalAmount += frenchFriesPrice;
    }
    if (orderedItems.contains("beef burger")) {
      totalAmount += beefBurgerPrice;
    }
    if (orderedItems.contains("shawarma")) {
      totalAmount += shawarmaPrice;
    }

    return totalAmount;
  }

  // Function to display the total amount
  void displayTotalAmount(int totalAmount) {
    print("Your total amount is: Rs. $totalAmount");
  }
}

