void main(){
  List<int> s = [1,3,2,1,2,3,4];
 String string = '123';
 string = string.substring(0,2);
  print(string);
  List s1 = s.sublist(0,3);
  List s2 = s.sublist(4,5);
  print(s1);
  print(s2);
}