import 'dart:io';

void main() {
  int price = 0;
  int quantity = 0;
  int total = 0;
  String? size;

  print("========================================================");
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  // while loop keep asking until the size is valid
  while (price == 0) {
    print("Please enter your pizza size (small, medium, or large): ");
    size = stdin.readLineSync();

    switch (size) {
      case "small":
        price = 5;
        break;
      case "medium":
        price = 7;
        break;
      case "large":
        price = 10;
        break;
      default:
        print("Invalid pizza size. Please try again.");
    }
  }

  // while loop keep asking until the quantity is valid
  while (quantity <= 0) {
    print("How many pizzas do you want of $size?");
    quantity = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    if (quantity <= 0) {
      print("Invalid quantity. Please try again.");
    }
  }

  total = price * quantity;
  print("Your Total Payment is: \$$total");
}