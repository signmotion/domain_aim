// ignore_for_file: constant_identifier_names

/// When sorting: the best ones are the first ones.
enum Grade implements Comparable<Grade> {
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
  int compareTo(Grade other) => -number.compareTo(other.number);

  @override
  String toString() => name;
}
