int findlargest(List<int> A){
  for(int i = 0 ; i < A.length ; i++){
if(A[i] > A[0]){
  A[0] = A[i];
}
}return A[0];}

void main (){
  List<int> num = [120,450,7,89,23];
  int largest = findlargest(num);
  print(largest);
}