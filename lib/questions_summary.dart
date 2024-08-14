import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            Color bgColor;
            if ((data['user_answer'] as String) ==
                (data['correct_answer'] as String)) {
              bgColor = const Color.fromARGB(255, 110, 247, 235);
            } else {
              bgColor = const Color.fromARGB(255, 212, 104, 234);
            }

            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: bgColor,
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data['user_answer'] as String,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 195, 98, 192)),
                    ),
                    Text(data['correct_answer'] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 91, 195, 224))),
                  ],
                ),
              ),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
