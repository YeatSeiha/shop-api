import 'dart:io';

void main({double conversionRate = 4100.0}) {
  List<Map<String, dynamic>> products = [];

  while (true) {
    stdout.write('Enter Product Name: ');
    String? name = stdin.readLineSync();
    if (name == null || name.isEmpty) break;

    stdout.write('Enter Product Qty: ');
    int qty = int.parse(stdin.readLineSync() ?? '0');

    stdout.write('Enter Product Price: ');
    double price = double.parse(stdin.readLineSync() ?? '0');

    stdout.write('Enter Product Discount(%): ');
    double discount = double.parse(stdin.readLineSync() ?? '0');

    products.add({
      'name': name,
      'qty': qty,
      'price': price,
      'discount': discount,
    });

    stdout.write('Do you want to add another product? (Y/N): ');
    String? continueInput = stdin.readLineSync();
    if (continueInput == null || continueInput.toUpperCase() != 'Y') {
      break;
    }
  }

  double total = 0;
  print('ID    Name       QTY   Price   Discount(%)   Sub Total');
  for (int i = 0; i < products.length; i++) {
    Map<String, dynamic> product = products[i];
    double subTotal = calculateDiscount(product['price'], product['qty'], product['discount']);
    total += subTotal;
    print('${i + 1}    ${product['name'].padRight(10)} '
        '${product['qty'].toString().padRight(5)} '
        '${product['price'].toStringAsFixed(2).padRight(7)} '
        '${product['discount'].toStringAsFixed(2).padRight(12)} '
        '${subTotal.toStringAsFixed(2)} \$');
  }

  print('Total Grand (\$)   = ${total.toStringAsFixed(2)} \$');

  double totalRiel = convertToRiel(total, conversionRate);
  print('Total Grand (Riel) = ${totalRiel.toStringAsFixed(0)} Riel');
}

double calculateDiscount(double price, int qty, double discount) {
  return price * qty * (1 - discount / 100);
}

double convertToRiel(double amount, double conversionRate) {
  return amount * conversionRate;
}