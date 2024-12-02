// 비동기 처리
void main() {
  checkVersion();
  print('end process');
}

Future checkVersion() async {
  var version = await lookUpVersion();
  print(version);
}

int lookUpVersion() {
  return 12;
}