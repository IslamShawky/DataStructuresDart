import '../stack.dart';

//challenge 1
void reverse(List list) {
  Stack stack = Stack.of(list);
  Stack reversedStack = Stack.of([]);
  while (stack.isNotEmpty) {
    reversedStack.push(stack.pop());
  }
  print(reversedStack);
}

//challenge 2
bool checkParentheses(String text) {
  final open = '('.codeUnitAt(0);
  final close = ')'.codeUnitAt(0);
  print("(".codeUnitAt(0));
  Stack stack = Stack.of([]);
  for (int codeUnit in text.codeUnits) {
    if (codeUnit == open) {
      stack.push(codeUnit);
    } else if (codeUnit == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }
  return stack.isEmpty;
}
