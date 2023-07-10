class LinkedList<E> extends Iterable<E> {
  Node<E>? head;
  Node<E>? tail;

  @override
  bool get isEmpty => head == null;

  @override
  bool get isNotEmpty => !isEmpty;

  @override
  Iterator<E> get iterator => _LinkedListIterator(this);

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  // add element at the beginning of the list
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  // add element at the end of the list
  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  // find a node at given index
  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  //insert element at given index
  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
    } else {
      node.next = Node(value: value, next: node.next);
    }
    return node;
  }

  //remove the first  element from the list
  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  // remove the last element
  E? removeLast() {
    if (head == tail) return pop();
    var current = head;
    while (current!.next != tail) {
      current = current.next;
    }
    final value = tail?.value;
    tail = current;
    tail?.next = null;
    return value;
  }

  // remove element at given index
  E? removeAfter(Node<E> node) {
    final value = node.next?.value;
    if (node.next == tail) {
      tail = node;
    }
    node.next = node.next?.next;
    return value;
  }
}

class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class _LinkedListIterator<E> implements Iterator<E> {
  _LinkedListIterator(LinkedList<E> list) : _list = list;
  final LinkedList<E> _list;

  Node<E>? _currentNode;
  @override
  E get current => _currentNode!.value;

  bool _firstPass = true;

  @override
  bool moveNext() {
    if (_list.isEmpty) return false;
    if (_firstPass) {
      _currentNode = _list.head;
      _firstPass = false;
    } else {
      _currentNode = _currentNode?.next;
    }
    return _currentNode != null;
  }
}
