Future<void> solve(){
  return Future.microtask((){
    var ages = [21, 23, 78, 23, 12, 11, 14, 15, 23, 15, 21, 29, 20];
    ages.sort((a, b) => a.compareTo(b));
    print("${ages.first} ${ages.last} ${(ages.reduce((a, b) => a + b) / ages.length).floor()}");
  });
}
void main() => solve().then((_){});