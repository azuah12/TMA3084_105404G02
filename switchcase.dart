import 'dart:io'; //to import dart:io library[for inputoutput]

int smallPrice = 5;
int mediumPrice = 7;
int largePrice = 10;

void main() {
  print('==================================');
  print('S = Small  : \$$smallPrice USD');
  print('M = Medium : \$$mediumPrice USD');
  print('L = Large  : \$$largePrice USD');
  print('==================================');
  print('==================================');

  print('Enter pizza size (S/M/L): ');
  String size = stdin.readLineSync()!;

  print('Enter quantity: ');
  int quantity = int.parse(stdin.readLineSync()!);

  if (quantity <= 0) {
    print('Invalid quantity. Please run again and enter a whole number above 0.');
    return;
  }

   print('==================================');
   print('==================================');

  // Switch statement: calculate and print the total payment
  int total = 0;
  switch (size) {
    case 'S':
      total = smallPrice * quantity;
      print('$quantity Small pizza(s) x \$$smallPrice USD');
      print('Total payment: \$$total USD');
      print('==================================');
      break;
    case 'M':
      total = mediumPrice * quantity;
      print('$quantity Medium pizza(s) x \$$mediumPrice USD');
      print('Total payment: \$$total USD');
      print('==================================');
      break;
    case 'L':
      total = largePrice * quantity;
      print('$quantity Large pizza(s) x \$$largePrice USD');
      print('Total payment: \$$total USD');
      print('==================================');
      break;
    default:
      print('Invalid size. Please enter S, M or L.');
  }
}