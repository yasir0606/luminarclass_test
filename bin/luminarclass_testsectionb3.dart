import 'dart:io';

void main (){
  for(;;){
  stdout.write("""
Choose an option:
1. Create Account
2. Deposit Menoy
3. Withdraw Money
4. View Account Details
Enter your choice (1 - 4): """);
int choice = int.parse(stdin.readLineSync()!);

if(choice == 1){
  createaccount();
}
else if (choice == 2){
  deposit();
}
else if (choice == 3){
  withdraw();
}
else if (choice == 4){
  details();
}
else {
  print("Invalid option , try again");
}
stdout.write("Do you want to continue ? (yes/no)");
String A = stdin.readLineSync()!;
if(A == "no".toLowerCase()){
  print("Thank you for using Banking Managemnet System. Goodbye");
  break;
}
  }

}


String inputstring( String text){
  stdout.write(text);
  String name = stdin.readLineSync()!;
  return name;
}

int inputnumber( String text){
  stdout.write(text);
  int num = int.parse(stdin.readLineSync()!);
  return num;
}

List<Map> account = [];

void createaccount(){
  String name = inputstring("Enter Account Holder name :");
  int deposit = inputnumber("Enter intial Deposit Amount :");
  Map A = {"name" : name , "Amount" : deposit};
  account.add(A);
}

void deposit(){
  if(account.isEmpty){
    print("First create a Account :");
    createaccount();
  }else{
  String name = inputstring("Enter your Name :");
  bool inlist = false;

  for(int i = 0; i < account.length ; i++){
    if(account[i]["name"] == name){
      inlist = true;

      int deposit = inputnumber("Enter deposit Amount :");
      account[i]["Amount"] += deposit;
      print("Deposit seccussful. New Balace: ${account[i]["Amount"]}");
    }
  }if(inlist == false){
    print("Account Name does not Exit , please try again");
    deposit();
  }
}}


void withdraw(){
  if(account.isEmpty){
    print("First create a Account :");
    createaccount();
  }else{
  String name = inputstring("Enter your Name :");
  bool inlist = false;

  for(int i = 0; i < account.length ; i++){
    if(account[i]["name"] == name){
      inlist = true;

      int deposit = inputnumber("Enter Withdrawal Amount :");
      account[i]["Amount"] -= deposit;
      print("Withdrawal seccussful. New Balace: ${account[i]["Amount"]}");
    }
  }if(inlist == false){
    print("Account Name does not Exit , please try again");
    withdraw();
}}}


void details(){
  print("---Account Details---");
  for(int i = 0; i < account.length; i++){
    print("""
Name: ${account[i]["name"]}
Balance: ${account[i]["Amount"]}""");
  }
}