// https://leetcode.com/problems/reverse-string-ii/description/
void main() {
  String s = "abcdefg";
  int k = 1;
  print(reverseStr(s, k));
}

String reverseStr(String s, int k) {
  //tạo một list từ s
  List<String> listS = s.split('');
  //tạo list để chứa k phần tử và list chứa k+1 đến 2k
  List<String> listK = [];
  List<String> listK2 = []; 
  //tạo list kết quả
  List<String> result = [];
  //duyệt chuỗi s 
  for (int i = 0; i < s.length; i = i+2*k) {
    //cắt k phần tử đầu rồi đảo ngược
    if(i+k < listS.length){
      listK = listS.sublist(i, i+k);
      //cắt k phần tử tiếp theo
      if(i+2*k < listS.length){
        listK2 = listS.sublist(i+k, i+2*k);
      }else{
        //trường hợp số phần tử còn lại < k, không bỏ đủ k phần tử vào listK2
        listK2 = listS.sublist(i+k);
      }
    }else{
      //trường hợp số phần tử còn lại < k, không bỏ đủ k phần tử vào listK
      listK = listS.sublist(i);
    }
    listK = listK.reversed.toList();
    //ghép 2 list lại
    result = result + listK + listK2;
    listK.clear();
    listK2.clear();
  }
  return result.join();
}