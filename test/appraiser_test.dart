import 'package:domain_aim/domain_aim.dart';
import 'package:test/test.dart';

void main() {
  final appraiser = Appraiser.personalBusinessCard();

  group('appraiseTld', () {
    test('correct TLD', () {
      expect(appraiser.appraiseTld('academy'), Grade.no);
      expect(appraiser.appraiseTld('cloud'), Grade.No);
      expect(appraiser.appraiseTld('app'), Grade.NO);

      expect(appraiser.appraiseTld('actor'), Grade.yes);
      expect(appraiser.appraiseTld('bio'), Grade.Yes);
      expect(appraiser.appraiseTld('biz'), Grade.YES);
    });

    test('empty TLD', () {
      expect(appraiser.appraiseTld(''), Grade.unrated);
      expect(appraiser.appraiseTld('    '), Grade.unrated);
    });

    test('undefined TLD', () {
      expect(appraiser.appraiseTld('someundefinedtld'), Grade.unrated);
      expect(appraiser.appraiseTld('z'), Grade.unrated);
      expect(appraiser.appraiseTld('@'), Grade.unrated);
    });

    test('composite TLD', () {
      expect(appraiser.appraiseTld('co.uk'), Grade.No);
      expect(appraiser.appraiseTld('com.mx'), Grade.yes);
    });

    test('domain name with TLD', () {
      expect(appraiser.appraiseTld('antonina.art'), Grade.unrated);
      expect(appraiser.appraiseTld('radmila.bio.com'), Grade.unrated);
      expect(appraiser.appraiseTld('vadym.kyiv.biz'), Grade.unrated);
    });
  });

  group('filter', () {
    test('filtered TLDs by grades', () {
      final r = appraiser.filter([Grade.YES, Grade.Yes, Grade.yes]);
      expect(r.length, 94);

      // check: grouped by grades and sorted by decrease grade & increase TLD
      final sorted =
          Map.fromEntries(r.entries.toList()..sort(compareEntryEndingsGrades));
      expect(sorted, equals(r));
    });

    test('all fit, unfit, unrated and rated TLDs', () {
      expect(appraiser.fit.length, 94);
      expect(appraiser.unfit.length, 270);
      expect(appraiser.unrated.length, 0);
      expect(appraiser.rated.length, 364);

      expect(
        appraiser.fit.length + appraiser.unfit.length,
        appraiser.rated.length,
      );
      expect(
        appraiser.fit.length +
            appraiser.unfit.length +
            appraiser.unrated.length,
        appraiser.data.length,
      );
      expect(
        appraiser.unrated.length + appraiser.rated.length,
        appraiser.data.length,
      );
    });
  });
}
