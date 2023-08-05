import 'grade.dart';

typedef EndingsGrade = Map<String, Grade>;

int compareEntryEndingsGrades(
  MapEntry<String, Grade> a,
  MapEntry<String, Grade> b,
) {
  final n = a.value.compareTo(b.value);
  if (n != 0) {
    return n;
  }

  return a.key.compareTo(b.key);
}
