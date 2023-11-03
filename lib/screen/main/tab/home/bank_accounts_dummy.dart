import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(bankShinhan, 3000000, accounTypeName: '신한 주거래 우대통장(저축예금)');
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 30000000, accounTypeName: '저축예금');
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 300000000, accounTypeName: '저축예금');
final bankAccountToss =
    BankAccount(bankTtoss, 500000000);
final bankAccountKaKao =
    BankAccount(bankKaKao, 70000000000, accounTypeName: '입출금통장');

// main(){
//   print(bankAccounts[0].accounTypeName);
//
//   for(final item in bankAccounts){
//     print(item.accounTypeName);
//   }
//
//   final shinhanBank = bankMap['shinhan1'];
//   print(shinhanBank == bankAccountShinhan1);
//
//   for(final entry in bankMap.entries) {
//     print(entry.key + ':' + (entry.value.accounTypeName ?? entry.value.bank.name));
//   }
//
//   print(bankSet.contains(bankAccountShinhan1));
// }

//List
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKaKao,
];

//Map
final bankMap = {
  "shinhan1" : bankAccountShinhan1,
  'shinhan2' : bankAccountShinhan2,
};

//Set
final bankSet = {
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKaKao,
};