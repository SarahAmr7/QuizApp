class QuizQuestion {
  final String question;
  final List<String> answers;
  // final int answerIndex;

  const QuizQuestion(
    this.question,
    this.answers,
  );

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
