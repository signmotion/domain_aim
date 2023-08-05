// ignore_for_file: constant_identifier_names

enum Grade implements Comparable<int> {
  undefined(number: 0),

  no(number: 1),
  No(number: 2),
  NO(number: 3),

  yes(number: 4),
  Yes(number: 5),
  YES(number: 6);

  const Grade({required this.number});

  final int number;

  @override
  int compareTo(int other) => number.compareTo(other);

  @override
  String toString() => name;
}
