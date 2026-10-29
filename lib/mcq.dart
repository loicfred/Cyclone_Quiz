import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'results.dart';

class SectionScreen extends StatefulWidget {
  final int sectionIndex;
  final int previousSectionScore;

  const SectionScreen({required this.previousSectionScore, required this.sectionIndex, super.key});

  @override
  State<SectionScreen> createState() => SectionScreenState();
}

class SectionScreenState extends State<SectionScreen> {
  int questionIndex = 0;
  int currentSectionScore = 0;
  late Section sectionInfo = sectionsList[widget.sectionIndex];

  void continueQuiz() {
    if (questionIndex < sectionInfo.questions.length - 1) {
      setState(() {
        questionIndex++;
      });
    } else {
      final int latestScore = widget.previousSectionScore + currentSectionScore;
      if (widget.sectionIndex < sectionsList.length - 1) {
        Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => SectionScreen(previousSectionScore: latestScore, sectionIndex: widget.sectionIndex+1)), (route) => false);
      } else {
        Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => ResultsScreen(totalScore: latestScore)), (route) => false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(text: "Section ${widget.sectionIndex+1} • ${sectionInfo.type}", color: Colors.blue[800],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LinearProgressIndicator(value: (questionIndex + 1) / sectionInfo.questions.length),
          const SizedBox(height: 8),
          Text('Question ${questionIndex + 1} of ${sectionInfo.questions.length}', style: TextStyle(color: Colors.grey[600])),
          const SizedBox(height: 16),
          QuestionPanel(key: ValueKey(questionIndex), section: this, question: sectionInfo.questions[questionIndex])
        ],
      ),
    );
  }
}

class QuestionPanel extends StatefulWidget {
  final SectionScreenState section;
  final Question question;

  const QuestionPanel({required this.section, required this.question, super.key});

  @override
  State<QuestionPanel> createState() => _QuestionPanelState();
}

class _QuestionPanelState extends State<QuestionPanel> {
  late bool isAnswered = false;
  late int selectedOption = -1;

  void pickAnswer(int i) {
    if (isAnswered) return;
    setState(() {
      selectedOption = i;
      isAnswered = true;
      if (i == widget.question.correct) widget.section.currentSectionScore++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.question.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),

          for (int i = 0; i < widget.question.options.length; i++)
            Card(
              color: isAnswered ? (i == widget.question.correct ? Colors.green[100] : i == selectedOption ? Colors.red[100] : null) : null,
              child: ListTile(
                leading: Text(String.fromCharCode(65 + i), style: const TextStyle(fontWeight: FontWeight.bold)),
                title: Text(widget.question.options[i]),
                onTap: () => pickAnswer(i),
                trailing: isAnswered && i == widget.question.correct ? const Icon(Icons.check_circle, color: Colors.green)
                    : isAnswered && i == selectedOption ? const Icon(Icons.cancel, color: Colors.red) : null,
              ),
            ),

          const SizedBox(height: 20),
          if (isAnswered)
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: widget.section.continueQuiz,
                    child: Text(widget.question == widget.section.sectionInfo.questions.last ? 'Next Section' : 'Next Question')
                )
            )
        ]
    );
  }
}