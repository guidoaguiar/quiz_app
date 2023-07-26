import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/question_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['chosen_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          questionIndex: itemData['question_index'] as int,
          isCorrectAnswer: isCorrectAnswer,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.roboto(
                  color: Color.fromARGB(255, 228, 198, 245),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                itemData['chosen_answer'] as String,
                style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 235, 1, 235),
                ),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 134, 70, 238),
                ),
              ),
              SizedBox(height: 10)
            ],
          ),
        ),
      ],
    );
  }
}
