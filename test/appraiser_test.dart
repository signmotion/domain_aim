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
      expect(appraiser.appraiseTld(''), Grade.undefined);
      expect(appraiser.appraiseTld('    '), Grade.undefined);
    });

    test('undefined TLD', () {
      expect(appraiser.appraiseTld('someundefinedtld'), Grade.undefined);
      expect(appraiser.appraiseTld('z'), Grade.undefined);
      expect(appraiser.appraiseTld('@'), Grade.undefined);
    });

    test('composite TLD', () {
      expect(appraiser.appraiseTld('co.uk'), Grade.No);
      expect(appraiser.appraiseTld('com.mx'), Grade.yes);
    });
  });

  group('filter', () {
    test('filtered TLDs by grades', () {
      final r = appraiser.filter([Grade.YES, Grade.Yes, Grade.yes]);
      expect(r.length, 94);

      // TODO Group by grades and sort by grade & TLD.
    });
  });
}
