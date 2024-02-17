class Bankaccount {
  int? accountnumber;
  String? ownername;
  double _balance = 0;
  Bankaccount(this.accountnumber, this.ownername);

  double get balance => _balance;
  deposit(double amount) {
    _balance += amount;
    print('$amount:successfuly deposited');
  }

  

  withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print('$amount:withdraw successfuly');
    }
  }
}
