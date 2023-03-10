// https://leetcode.com/problems/count-of-matches-in-tournament/description/
void main(){
  int n = 14;
  print(numberOfMatches(n));
}
int numberOfMatches(int n) {
  //tổng số trận đấu
  int sum = 0;
  while(n>1){
    if(n%2 == 0){
      //nếu số trận là chẵn
      //số đội vào tiếp sẽ là n/2
      //tổng số trận cộng thêm n
      n = n~/2;
      sum += n;
    }else{
      //nếu số trận là lẽ
      //số đội vào tiếp sẽ là phần nguyên của n/2 +1
      //tổng số trận cộng thêm phần nguyên của n/2
      //7 đội: 4 đội vào tiếp và có thêm 3 trận đấu
      sum += n~/2;
      n = n~/2 +1;
    }
  }
  return sum;
}