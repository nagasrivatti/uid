import 'dart:io'; 
void main() { 
stdout.write("How many Fibonacci numbers do you want? ");
 	int a = int.parse(stdin.readLineSync() ?? '0'); 
List b = fibonacciNumbers(a); 
print(b); 
}
 List fibonacciNumbers(int a) { 
List fibList = [1, 1];
 	for (var i = 0; i < a; i++) { 
fibList.add(fibList[i] + fibList[i + 1]);
 }
 return fibList; 
}
o/p
How many Fibonacci numbers do you want? 5
[1, 1, 2, 3, 5, 8, 13]
