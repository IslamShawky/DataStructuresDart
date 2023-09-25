// void main() {
//   final queue = QueueList<String>();
//   queue.enqueue('Ray');
//   queue.enqueue('Brian');
//   queue.enqueue('Eric');
//   print(queue);
//   queue.dequeue();
//   print(queue);
//   queue.peek;
//   print(queue);
// }

String reverseString(String s) {
  // String result = "";
  // for (int i = s.split("").length - 1; i >= 0; i--) {
  //   result += s.split("")[i];
  // }
  // return result;
  return s.split("").reversed.join();
}

int findLargest(List<int> list) {
  int ret = 0;
  for (var element in list) {
    ret = element > ret ? element : ret;
  }
  return ret;
}

List<int> sortListAscending(List<int> list) {
  // if (list.length > 1) {
  //   for (var n in list) {
  //     for (int i = 0; i < list.length - 1; i++) {
  //       if (list[i] < list[i + 1]) {
  //         list[i] += list[i + 1];
  //         list[i + 1] = list[i] - list[i + 1];
  //         list[i] = list[i] - list[i + 1];
  //       }
  //     }
  //   }
  // }
  // return list;
  list.sort();
  return list;
}

int iteration = 0;
int fibonacci(int index) {
  iteration++;
  // [0,1,1,2,3,5,8,13,21,34,55]
  // USING RECURSION
  if (index == 0 || index == 1) {
    return index;
  } else {
    return fibonacci(index - 1) + fibonacci(index - 2);
  }
  //USING DYNAMIC PROGRAMMING
  // if (index == 0 || index == 1) {
  //   return index;
  // } else {
  //   int n1 = 0;
  //   int n2 = 1;
  //   int output = 0;
  //   for (int i = 1; i < index; i++) {
  //     output = n1 + n2;
  //     n1 = n2;
  //     n2 = output;
  //   }
  //   return output;
  // }
}

double getAverage(List<int> list) {
  return list.reduce((value, element) => value + element) / list.length;
}

String evenOrOdd(int number) {
  return number % 2 == 0 ? "Even" : "Odd";
}

class Letter {
  String letter;
  int count = 0;
  Letter(this.letter, this.count);
}

List<Letter> countLetters(String text) {
  Set<String> letters = text.split("").toSet();
  letters.remove(" ");
  List<Letter> list = [];
  for (var l in letters) {
    list.add(Letter(l, text.split("").where((element) => element == l).length));
  }
  return list;
}

int getThirdLargestNumber(List<int> list) {
  list.sort(
    (a, b) => b.compareTo(a),
  );
  print(list);
  return list[2];
}

void main() {
  // print("Reversed String : ${reverseString("islam")}");
  // print("Largest Int : ${findLargest([5, 45, 14, 82, 69, 40])}");
  // print("Sorted list : ${sortListAscending(
  //   [5, 45, 14, 82, 69, 40, 100, 45, 184, 157, 9, 611, 4000],
  // )}");
  // print("Fibonacci(10) : ${fibonacci(10)}");
  // print("Average : ${getAverage([1, 2, 3, 4, 5, 6, 7, 8, 9])}");
  // print("Number is ${evenOrOdd(100)}");
  // List list = countLetters("islam shawky");
  // print(list.toString());
  // print(getThirdLargestNumber([5, 7, 8, 4, 2, 1, 3, 9, 6]));
}
