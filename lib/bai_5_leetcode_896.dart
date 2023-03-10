// https://leetcode.com/problems/monotonic-array/
void main() {
  List<int> nums = [1,1,1,1];
  print(isMonotonic(nums));
}

bool isMonotonic(List<int> nums) {
//tạo 2 biến tăng và giảm
bool increase = false;
bool reduce = false;

  for (int i = 0; i < nums.length - 1; i++) {
    //check nếu có phần tử thứ i > i+1 thì increase = true và ngược lại
    if (nums.elementAt(i) < nums.elementAt(i + 1)) {
      increase = true;
    }else if(nums.elementAt(i) == nums.elementAt(i + 1)){
      continue;
    }else{
      reduce = true;
    }
  }
  //trả về true chỉ khi chuỗi chỉ tăng hoặc chỉ giảm => increase ngược với reduce
  //trường hợp list chỉ toàn là phần tử x thì increase và reduce đều = giá trị ban đầu
  return increase == !reduce || (increase == false && reduce == false);
}
