import 'dart:io';

List A = [];
List even = [];
List odd = [];

void main(){
  for(;;){
    stdout.write("Enter a number (0 to stop):");
    int b = int.parse(stdin.readLineSync()!);
    if(b==0){
      break;
    }
    A.add(b);
    if(b%2==0){
      even.add(b);
    }else{
      odd.add(b);
    }
  }
  for(int j = 1; j < A.length ; j++){
    if(A[j] > A[0]){
      A[0] = A[j];
    }
  }
  print("The Main List : $A");
  print("Even Numbers : $even");
  print("Odd Numbers : $odd");
  print("Gratest Number : ${A[0]}");
}