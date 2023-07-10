import 'package:untitled/linked_list.dart';

void main() {
  LinkedList list = LinkedList();
  list.append("I");
  list.append("S");
  list.append("L");
  list.append("A");
  list.append("M");
  for (final element in list) {
    print(element);
  }
}
