import 'vo_bank.dart';

class BankAccount {
  final Bank bank;
  int balance;
  final String? accounTypeName;

  BankAccount(
    this.bank,
    this.balance, {
    this.accounTypeName,
  });
}
