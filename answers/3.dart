class MyWords {
  late List<String> _list;

  factory MyWords.name(_list) {
    return _list;
  }

  @override
  String toString() {
    return 'MyWords{_list: $_list}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyWords &&
          runtimeType == other.runtimeType &&
          _list == other._list;

  @override
  int get hashCode => _list.hashCode;

  List<String> get list => _list;
}