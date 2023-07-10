class Stack<E> {
  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);
  final List<E> _storage;

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  int length() => _storage.length;

  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => _storage.isNotEmpty;

  @override
  toString() => _storage.reversed.join('\n');
}
