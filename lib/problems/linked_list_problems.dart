import '../linked_list.dart';

//challenge 1
//My solution
void myPrintListInReverse(LinkedList list) {
  LinkedList reversedList = LinkedList();
  for (var element in list) {
    reversedList.push(element);
  }
  for (var element in reversedList) {
    print(element);
  }
}

//Book solution
void printListInReverse(LinkedList list) {
  printNodesRecursively(list.head);
}

void printNodesRecursively<T>(Node<T>? node) {
  if (node == null) return;
  printNodesRecursively(node.next);
  print(node.value);
}

////////////////////////////////////////////////////////////////
//challenge 2
//My solution
void myGetMiddle(LinkedList list) {
  if (list.isNotEmpty) {
    print(list.nodeAt((list.length / 2).floor())!.value);
  }
}

//Book solution
Node<E>? getMiddle<E>(LinkedList<E> list) {
  var slow = list.head;
  var fast = list.head;
  while (fast?.next != null) {
    fast = fast?.next?.next;
    slow = slow?.next;
  }
  return slow;
}

////////////////////////////////////////////////////////////////
//challenge 3

//Book solution
extension ReversibleLinkedList<E> on LinkedList<E> {
  void reverse() {
    tail = head;
    var previous = head;
    var current = head?.next;
    previous?.next = null;
    while (current != null) {
      final next = current.next;
      current.next = previous;
      previous = current;
      current = next;
    }
    head = previous;
  }
}

////////////////////////////////////////////////////////////////
//challenge 4
//My solution
extension MyRemovableLinkedList<E> on LinkedList<E> {
  void myRemoveAll(E value) {
    var previous = head;
    var current = previous?.next;
    while (current != null) {
      if (head?.value == value) {
        head = head?.next;
      }
      if (current.value == value) {
        previous!.next = current.next;
      } else {
        previous = current;
      }
      current = current.next;
    }
  }
}

//Book solution
extension RemovableLinkedList<E> on LinkedList {
  void removeAll(E value) {
    while (head != null && head!.value == value) {
      head = head!.next;
    }
    var previous = head;
    var current = head?.next;
    while (current != null) {
      if (current.value == value) {
        previous?.next = current.next;
        current = previous?.next;
        continue;
      }
      previous = current;
      current = current.next;
    }
  }
}
