abstract class Queue<E> {
  bool enqueue(E element);
  E? dequeue();
  bool get isEmpty;
  E? get peek;
}

class QueueList<E> implements Queue<E> {
  final _list = <E>[];

  @override
  String toString() => _list.toString();

  @override
  bool enqueue(E element) {
    _list.add(element);
    return true;
  }

  @override
  E? dequeue() => (isEmpty) ? null : _list.removeAt(0);

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  E? get peek => (isEmpty) ? null : _list.first;
}
//
// class QueueLinkedList<E> implements Queue<E> {
//   final _list = DoublyLinkedList<E>();
//   @override
//   bool enqueue(E element) => throw UnimplementedError();
//   @override
//   E? dequeue() => throw UnimplementedError();
//   @override
//   bool get isEmpty => throw UnimplementedError();
//   @override
//   E? get peek => throw UnimplementedError();
// }
