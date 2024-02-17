import 'dart:io';

import 'package:bankaccount/bankaccount.dart' as bankaccount;
import 'package:bankaccount/bankaccount.dart';

void main() {
  Bankaccount account1 = Bankaccount(12345, 'rahul');
  Bankaccount account2 = Bankaccount(801906, 'devan');
  print('select user name');
  print('1:rahul\n2:deva');
  String name = stdin.readLineSync()!;
  if (account1.ownername == name) {
    print(account1.balance);
  } else {
    print('initial balance:${account2.balance}');
  }
  String select = "deposit";  "withdraw";  "cancel";
  print('select:\n' 'deposit\n' 'withdrawal\n' 'cancel');
  String name2 = stdin.readLineSync()!;

  if (select == name2) {
    double number = double.parse(stdin.readLineSync()!);
    account1.deposit(number);
    print('after deposit');
    print('account1:-balance:${account1.balance}');
    
  }

  if (select == name2) {
    double number = double.parse(stdin.readLineSync()!);
    account2.withdraw(number);
    print('after withdraw');
    print('account2:-balance:${account1.balance}');
    account2.withdraw(number);
  }
}

//   print('initial balance');
//   print('account1:${account1.balance}');
//   print('account2:${account2.balance}');
//   account1.deposit(1000);
//   account2.deposit(2000);
//   print('after deposit');
//   print('account1:-balance:${account1.balance}');
//   print('account2:-balance${account2.balance}');
//   account1.withdraw(200);
//   account2.withdraw(200);
//   print('after withdraw');
//   print('account1:-balance:${account1.balance}');
//   print('account2:-balance${account2.balance}');
// }
