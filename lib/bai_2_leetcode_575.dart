// https://leetcode.com/problems/distribute-candies/
void main() {
  List<int> candyType = [1, 1, 2, 3];
  print(distributeCandies(candyType));
}

int distributeCandies(List<int> candyType) {
  //sắp xếp lại các loại kẹo
  candyType.sort();
  //tạo biến để ghi nhớ kẹo với giá trị ban đầu là viên kẹo đầu tiên trong list candyType
  int candy = candyType.first;
  //tạo biến đếm các loại kẹo có thể ăn
  int count = 1;
  //check từng kẹo đã ghi nhớ với từng viên trong list
  for(int i = 1; i < candyType.length; i++){
    //nếu kẹo khác loại thì thay viên kẹo đang dùng bằng viên kẹo khác
    //và tăng biến đếm lên
    if(candy != candyType[i]){
      candy = candyType[i];
      count++;
    }
  }
  return count <= candyType.length/2 ? count: candyType.length~/2;
}
