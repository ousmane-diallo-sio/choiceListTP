class Choice {
  final String text;
  bool isSelected;

  Choice(this.text, this.isSelected);

  static List<Choice> generate(List<String> strings) {
    return List.generate(
      strings.length,
      (index) => Choice(strings.elementAt(index), false),
    );
  }
}
