import 'dart:io';

import 'package:bankaccount/bankaccount.dart' as bankaccount;
import 'package:bankaccount/bankaccount.dart';

void main() {
  Bankaccount account1 = Bankaccount(12345, 'rahul');
  Bankaccount account2 = Bankaccount(801906, 'devan');
  namee(account1, account2);
}

namee(Bankaccount account1, Bankaccount account2) {
  print('select user name');
  print('1:rahul\n2:devan');

  String name = stdin.readLineSync()!;

  if (account1.ownername == name) {
    print(account1.balance);

    check(account1);
  } else if (account2.ownername == name) {
    print(account2.balance);
    check(account2);
  } else {
    print("-------------------------------------------------");
    print('you enterd wrong user');
    namee(account1, account2);
  }
  
}

check(Bankaccount useraccount) {
  print(
      'select:\n1.deposit\n2.withdrawal\n3.balance\n4.continue\n5.cancel\n6.another account');
  int selected = int.parse(stdin.readLineSync()!);
  switch (selected) {
    case 1:
      {
        print('enter amount');
        double amount = double.parse(stdin.readLineSync()!);
        useraccount.deposit(amount);
        print(useraccount.balance);
        check(useraccount);
      }
    case 2:
      {
        print('enter amount');
        double amount = double.parse(stdin.readLineSync()!);
        useraccount.withdraw(amount);
        print(useraccount.balance);
        check(useraccount);
      }
    case 3:
      {
        print(useraccount.balance);
      }
    case 4:
      {
        check(useraccount);
      }
    case 5:
      {
        break;
      }
    case 6:
      {
        namee(useraccount,useraccount);
      }
  }
}



  
  // print('select:\n' 'deposit\n' 'withdrawal\n' 'cancel');
  // String name2 = stdin.readLineSync()!;

//   if (select == name2) {
//     double number = double.parse(stdin.readLineSync()!);
//     account1.deposit(number);
//     print('after deposit');
//     print('account1:-balance:${account1.balance}');
    
//   }

//   if (select == name2) {
//     double number = double.parse(stdin.readLineSync()!);
//     account2.withdraw(number);
//     print('after withdraw');
//     print('account2:-balance:${account1.balance}');
//     account2.withdraw(number);
//   }
// }


































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
