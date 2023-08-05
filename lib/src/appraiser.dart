import 'package:domain_aim/src/suitability.dart';

import 'grade.dart';
import 'suitabilities/personal_business_card/endings_grade.dart'
    as personal_business_car;
import 'simple_types.dart';

class Appraiser {
  final Suitability suitability;
  final EndingsGrade data;

  const Appraiser(this.suitability, this.data)
      : assert(suitability != Suitability.undefined,
            'The suitability should be defined.'),
        assert(data.length > 0, 'The list of grades should be not empty.');

  factory Appraiser.personalBusinessCard() => Appraiser(
        Suitability.personalBusinessCard,
        personal_business_car.endingsGrade,
      );

  EndingsGrade get fit => filter([Grade.YES, Grade.Yes, Grade.yes]);

  EndingsGrade get unfit => filter([Grade.NO, Grade.No, Grade.no]);

  EndingsGrade get unrated => filter([Grade.unrated]);

  EndingsGrade get rated => filter([
        Grade.YES,
        Grade.Yes,
        Grade.yes,
        Grade.NO,
        Grade.No,
        Grade.no,
      ]);

  /// TLDs with defined grades.
  /// If [sort] is `true` then grouped by grades and sorted by decrease
  /// grades & abc TLD.
  EndingsGrade filter(
    List<Grade> grades, {
    bool sort = true,
  }) {
    final r = <String, Grade>{
      for (final entry in data.entries)
        if (grades.contains(entry.value)) entry.key: data[entry.key]!
    };

    return sort
        ? Map.fromEntries(r.entries.toList()..sort(compareEntryEndingsGrades))
        : r;
  }

  Grade? appraiseTld(String tld) => data[tld];

  Grade? appraiseDomain(String domain) {
    final splitted = domain.split('.');
    for (var i = 0; i < splitted.length; ++i) {
      final s = splitted.sublist(i).join('.');
      final r = appraiseTld(s);
      if (r != null) {
        return r;
      }
    }

    return null;
  }

  @override
  String toString() => '${suitability.name} $data';
}
