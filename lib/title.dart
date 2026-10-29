import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'mcq.dart';
import 'topic.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(text: "Mauritius Cyclone Survival Guide", color: Colors.blue[800],
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.cyclone, size: 80, color: Colors.blue),
              const SizedBox(height: 24),
              const Text('Mauritius Cyclone\nSurvival Guide', textAlign: TextAlign.center, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Text('Test your knowledge on cyclones,\nwhat to do, and what to avoid.', textAlign: TextAlign.center, style: TextStyle(fontSize: 15, color: Colors.grey[600])),
              const SizedBox(height: 16),
              Text('$totalQuestions Questions  •  ${sectionsList.length} Sections', style: TextStyle(color: Colors.grey[600])),
              const SizedBox(height: 40),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => SectionScreen(previousSectionScore: 0, sectionIndex: 0)), (route) => false);
                  },
                  style: ElevatedButton.styleFrom(minimumSize: const Size(250, 50)),
                  child: const Text('Start Quiz', style: TextStyle(fontSize: 16))
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => TopicScreen()), (route) => false);
                  },
                  style: ElevatedButton.styleFrom(minimumSize: const Size(250, 50)),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.school, size: 20), SizedBox(width: 8), Text('Learn Topic', style: TextStyle(fontSize: 16))],
                  )
              )
            ]
        )
    );
  }
}