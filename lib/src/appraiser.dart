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

  /// TLDs with defined grades.
  EndingsGrade filter(List<Grade> grades) => <String, Grade>{
        for (final entry in data.entries)
          if (grades.contains(entry.value)) entry.key: data[entry.key]!
      };

  Grade appraiseTld(String tld) => data[tld] ?? Grade.undefined;

  @override
  String toString() => '${suitability.name} $data';
}
