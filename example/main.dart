import 'package:domain_aim/domain_aim.dart';

void main() {
  final appraiser = Appraiser.personalBusinessCard();
  const tld = 'com';
  print('Suitability for ${appraiser.suitability}, '
      'TLD `$tld`: ${appraiser.appraiseTld(tld)}');

  final yesFilter = appraiser.filter([Grade.YES, Grade.Yes, Grade.yes]);
  print('Suitability for ${appraiser.suitability}: $yesFilter');
  print(yesFilter);
}
