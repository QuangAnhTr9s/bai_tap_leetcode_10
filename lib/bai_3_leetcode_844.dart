void main() {
  String s = "ab##", t = "c#d#";
  print(backspaceCompare(s, t));
}

bool backspaceCompare(String s, String t) {
//s và t sau khi đã xử lý backspace
  s = handleBackspace(s);
  t = handleBackspace(t);
  return s == t;
}

String handleBackspace(String a) {
  //tạo list kết quả
  List<String> result = [];
  for (int i = 0; i < a.length; i++) {
    //check từng chữ, là '#' thì xóa chữ trước
    if (a[i] == '#') {
      //hàm removeLast không thể xóa phần tử nếu trong list chỉ có 1 phần tử
      //nên ta phải check chiều dài của list trước
      if (result.length > 1) {
        result.removeLast();
      } else {
        result.clear();
      }
    }else{
      result.add(a[i]);
    }
  }
  return result.join('');
}
