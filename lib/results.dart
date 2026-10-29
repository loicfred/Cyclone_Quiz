import 'package:flutter/material.dart';
import 'main.dart';
import 'title.dart';

class ResultsScreen extends StatelessWidget {
  final int totalScore;
  const ResultsScreen({required this.totalScore, super.key});

  double get average {return totalScore / totalQuestions;}

  String get calculateGrade {
    switch (average) {
      case >= 0.9: return 'A+';
      case >= 0.8: return 'A';
      case >= 0.7: return 'B';
      case >= 0.6: return 'C';
      case >= 0.5: return 'D';
      default: return 'F';
    }
  }

  String get congratulationMessage {
    switch (average) {
      case >= 0.8: return 'Excellent! You are well prepared for a cyclone.';
      case >= 0.6: return 'Good effort! Review the missed questions to be fully prepared.';
      default: return 'Keep studying! Cyclone safety knowledge can save lives.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(text: "Results", color: Colors.yellow[800],
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.emoji_events, size: 72, color: Colors.amber),
              const SizedBox(height: 24),
              const Text('Quiz Complete!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              SizedBox(width: 120, height: 120, child: CircularProgressIndicator(value: totalScore / totalQuestions,
                  strokeWidth: 8, color: average >= 0.8 ? Colors.green : average >= 0.5 ? Colors.orange : Colors.red, backgroundColor: Colors.grey[300])
              ),
              Text('$totalScore / $totalQuestions',
                  style: TextStyle(fontSize: 52, fontWeight: FontWeight.bold, color: average >= 0.8 ? Colors.green : average >= 0.5 ? Colors.orange : Colors.red)
              ),
              const SizedBox(height: 16),
              Text('Grade: $calculateGrade', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Text(congratulationMessage, textAlign: TextAlign.center, style: const TextStyle(fontSize: 15, color: Colors.grey)),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const TitleScreen()), (route) => false);
                },
                icon: const Icon(Icons.replay),
                label: const Text('Try Again'),
                style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50),),
              )
            ]
        )
    );
  }
}

