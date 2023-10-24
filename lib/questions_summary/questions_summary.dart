import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((e) {
            return Row(
              children: [
                Text(((e['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: summaryData.map((e) => SummaryItem(itemData: e)).toList(),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}