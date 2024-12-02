// Null Safety
int? couldReturnNullButDesent() => -3;

void main() {
  int? couldBeNullButIsnt = 1;
  List<int?> listThatCouldHoldNulls = [2, null, 4];
  List<int?> nullsList;

  int a = couldBeNullButIsnt;
  //int b = listThatCouldHoldNulls.first; int b는 ?가 없으므로 오류
  int b = listThatCouldHoldNulls.first!;
  // int c = couldReturnNullButDesent().abs(); null 일 수 있으므로 abs()에서 오류
  int c = couldReturnNullButDesent()!.abs(); // null 이 아님을 직접 표시

  print('a is $a.');
  print('b is $b.');
  print('b is $c.');
}