enum Suitability {
  undefined(title: 'Undefined'),
  personalBusinessCard(title: 'Personal Business Card');

  const Suitability({required this.title})
      : assert(title.length > 0, 'A title should be defined.');

  final String title;

  @override
  String toString() => title;
}
