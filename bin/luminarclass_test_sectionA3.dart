void main(){
  num sum=0;
  num average=0;
  List B=[5,15,25,35,45];
  for(int i=0;i<B.length;i++){
    sum=sum+B[i];
  }
  average=sum/B.length;
  print("$average");
}