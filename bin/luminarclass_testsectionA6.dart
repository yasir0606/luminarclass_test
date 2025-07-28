import 'dart:io';

void main(){
  int A = 0;
  int B = 1;
  for(int i = 1; i <= 4; i++){
    for(int j = 1; j <= 4; j++){
      if(j <= A){
      stdout.write("  ");
    }else{
      stdout.write("${B++} ");
    }
    }
    A = A+1;
    print("");
  }
}