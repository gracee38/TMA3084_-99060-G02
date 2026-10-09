import 'dart:io';

void main() {
  const double smallPrice = 5.0;
  const double mediumPrice = 7.0;
  const double largePrice = 10.0;

  print('=== PIZZA ORDER CALCULATOR ===');
  print('Small Pizza: \$${smallPrice.toStringAsFixed(2)}');
  print('Medium Pizza: \$${mediumPrice.toStringAsFixed(2)}');
  print('Large Pizza: \$${largePrice.toStringAsFixed(2)}');

  while (true) {
    print('\nEnter pizza size (small, medium, large)');
    print('Type "exit" to finish ordering.');
    stdout.write('Pizza size: ');

    String size = stdin.readLineSync()?.trim().toLowerCase() ?? '';

    if (size == 'exit') {
      print('Thank you for ordering!');
      break;
    }

    stdout.write('Quantity: ');
    String input = stdin.readLineSync()?.trim() ?? '';
    int? quantity = int.tryParse(input);

    if (quantity == null || quantity <= 0) {
      print('Invalid quantity. Please enter a positive number.');
      continue;
    }

    double price;

    switch (size) {
      case 'small':
        price = smallPrice;
        break;
      case 'medium':
        price = mediumPrice;
        break;
      case 'large':
        price = largePrice;
        break;
      default:
        print('Invalid pizza size. Please try again.');
        continue;
    }

    double total = price * quantity;

    print('Pizza size: ${size.toUpperCase()}');
    print('Quantity: $quantity');
    print('Total payment: \$${total.toStringAsFixed(2)} USD');
  }
}
