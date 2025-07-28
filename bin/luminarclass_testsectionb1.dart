import 'dart:io';

void main(){
  int k = 1;
  int f = 10;
  for(int i = 1 ; i < 10; i++){
    for(int j = 1 ; j <= 5 ; j++){
      if(k >= j && k <= 5){
        stdout.write("* ");
      }else if(f > j && f <= 5){
         stdout.write("* ");
      }
    }k++;
    f--;
    print("");
  }
}