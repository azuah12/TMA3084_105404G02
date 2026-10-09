import 'dart:io';

int smallPrice = 5;
int mediumPrice = 7;
int largePrice = 10;

void main() {
  int grandTotal = 0;
  String again = 'Y';

  while (again == 'Y') {
    print('==================================');
    print('S = Small  : \$$smallPrice USD');
    print('M = Medium : \$$mediumPrice USD');
    print('L = Large  : \$$largePrice USD');
    print('==================================');

    String size = '';
    while (size != 'S' && size != 'M' && size != 'L') {
      print('Enter pizza size (S/M/L): ');
      size = stdin.readLineSync()!;
      if (size != 'S' && size != 'M' && size != 'L') {
        print('Invalid size. Please enter S, M or L.');
      }
    }

    int quantity = 0;
    while (quantity <= 0) {
      print('Enter quantity: ');
      quantity = int.parse(stdin.readLineSync()!);
      if (quantity <= 0) {
        print('Invalid quantity. Please enter a number above 0.');
      }
    }

    print('==================================');

    int total = 0;
    switch (size) {
      case 'S':
        total = smallPrice * quantity;
        print('$quantity Small pizza(s) x \$$smallPrice USD');
        print('Total payment: \$$total USD');
        break;
      case 'M':
        total = mediumPrice * quantity;
        print('$quantity Medium pizza(s) x \$$mediumPrice USD');
        print('Total payment: \$$total USD');
        break;
      case 'L':
        total = largePrice * quantity;
        print('$quantity Large pizza(s) x \$$largePrice USD');
        print('Total payment: \$$total USD');
        break;
      default:
        print('Invalid size.');
    }

    grandTotal = grandTotal + total;
    print('==================================');

    print('Order another pizza? (Y/N): ');
    again = stdin.readLineSync()!;
  }

  print('Grand total of all orders: \$$grandTotal USD');
  print('Thank you for ordering!');
}