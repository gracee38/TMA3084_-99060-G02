import 'dart:io';

void main() { const double smallPrice = 5.0; const double mediumPrice = 7.0; const double largePrice = 10.0;

print('=== PIZZA ORDER CALCULATOR ==='); print('Small Pizza: $${smallPrice.toStringAsFixed(2)}'); print('Medium Pizza: $${mediumPrice.toStringAsFixed(2)}'); print('Large Pizza: $${largePrice.toStringAsFixed(2)}');

bool ordering = true;

while (ordering) { print('\nEnter pizza size (small, medium, large)'); print('Type "exit" to finish ordering.'); stdout.write('Pizza size: ');

String size = stdin.readLineSync()?.trim().toLowerCase() ?? '';

if (size == 'exit') { ordering = false; print('Thank you for ordering!'); continue; }

stdout.write('Quantity: '); String input = stdin.readLineSync()?.trim() ?? ''; int? quantity = int.tryParse(input);

if (quantity == null || quantity <= 0) { print('Invalid quantity. Please enter a positive number.'); continue; }

double total = 0;

switch (size) { case 'small': total = smallPrice * quantity; break; case 'medium': total = mediumPrice * quantity; break; case 'large': total = largePrice * quantity; break; default: print('Invalid pizza size. Please try again.'); continue; }

print('Pizza size: ${size.toUpperCase()}'); print('Quantity: 
𝑞
𝑢
𝑎
𝑛
𝑡
𝑖
𝑡
𝑦
′
)
;
𝑝
𝑟
𝑖
𝑛
𝑡
(
′
𝑇
𝑜
𝑡
𝑎
𝑙
𝑝
𝑎
𝑦
𝑚
𝑒
𝑛
𝑡
:
$
{total.toStringAsFixed(2)} USD'); } }
