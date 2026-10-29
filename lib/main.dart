import 'package:flutter/material.dart';
import 'title.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TitleScreen()
    )
  );
}

class MyScaffold extends StatelessWidget {
  final String text;
  final Color? color;
  final Widget body;
  const MyScaffold({required this.text, required this.color, required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text(text, style: TextStyle(color: Colors.white))), backgroundColor: color),
        backgroundColor: Colors.white,
        body: Center(child: Padding(padding: const EdgeInsets.all(20), child: body))
    );
  }
}


class Section {
  final String type;
  final List<Question> questions;
  Section({required this.type, required this.questions,});
}

class Question {
  final String name;
  final List<String> options;
  final int correct;
  Question({required this.name, required this.options, required this.correct,});
}

final List<Section> sectionsList = [
  Section(
    type: "About Cyclone",
    questions: [
      Question(
        name: "What is a tropical cyclone?",
        options: [
          'A cold air mass moving from the poles.',
          'A rotating storm system with low pressure at its centre, forming over warm tropical oceans.',
          'A type of lightning storm common in mountainous regions.',
          'A seasonal rainfall pattern caused by monsoon winds.',
        ],
        correct: 1,
      ),
      Question(
        name: "What sustained wind speed classifies a storm as a cyclone in the Indian Ocean?",
        options: [
          'Above 40 km/h',
          'Above 63 km/h',
          'Above 100 km/h',
          'Above 120 km/h'
        ],
        correct: 1,
      ),
      Question(
        name: "Which organisation issues official cyclone warnings for Mauritius?",
        options: [
          'The Ministry of Environment.',
          'The National Disaster Risk Reduction and Management Centre.',
          'Mauritius Meteorological Services (MMS).',
          'The Red Cross Society of Mauritius.',
        ],
        correct: 2,
      ),
      Question(
        name: "What does a Cyclone Class 4 warning indicate in Mauritius?",
        options: [
          'A cyclone is expected within 72 hours.',
          'Wind gusts between 120–150 km/h are expected.',
          'Very destructive gusts exceeding 200 km/h are imminent.',
          'Only coastal areas are at risk.',
        ],
        correct: 2,
      ),
      Question(
        name: "During which months is Mauritius most at risk of a tropical cyclone?",
        options: [
          'March to September',
          'June to October',
          'November to May',
          'January to June'
        ],
        correct: 2,
      ),
    ],
  ),
  Section(
    type: "What To Do",
    questions: [
      Question(
        name: 'What is the FIRST thing you should do when a Class 2 warning is issued?',
        options: [
          'Continue normal activities but keep an eye on updates.',
          'Evacuate immediately to a cyclone shelter.',
          'Call your neighbours to warn them.',
          'Secure your home, stock up on supplies, and listen to official broadcasts.',
        ],
        correct: 3,
      ),
      Question(
        name: 'What should you do with electrical appliances during a cyclone to stay safe?',
        options: [
          'Leave them on so you can stay informed.',
          'Unplug them to prevent damage from power surges.',
          'Move them outside to avoid indoor damage.',
          'Cover them with wet cloths to protect them.'
        ],
        correct: 1,
      ),
      Question(
        name: 'Where is the safest place to shelter inside your house during a cyclone?',
        options: [
          'Near large windows to monitor the storm.',
          'On the top floor for better visibility.',
          'In an interior room away from windows and doors.',
          'In the garage to protect your vehicle.',
        ],
        correct: 2,
      ),
      Question(
        name: 'What emergency supplies should you prepare BEFORE a cyclone?',
        options: [
          'Only bottled water.',
          'Water, non-perishable food, torch, batteries, first-aid kit, and medicines.',
          'A portable generator and fuel only.',
          'Candles and matches only.',
        ],
        correct: 1,
      ),
      Question(
        name: 'What should you do if you live near a river when a Class 3 warning is issued?',
        options: [
          'Move to higher ground or an official cyclone shelter immediately.',
          'Stay at home and watch the river level.',
          'Park your car on the riverbank to stop flooding.',
          'Wait until Class 4 before evacuating.',
        ],
        correct: 0,
      ),
    ],
  ),
  Section(
    type: "What NOT To Do",
    questions: [
      Question(
        name: 'Which is a DANGEROUS mistake during the eye of a cyclone?',
        options: [
          'Staying indoors and resting.',
          'Going outside because it seems calm.',
          'Listening to MBC Radio for updates.',
          'Drinking bottled water from your emergency supplies.',
        ],
        correct: 1,
      ),
      Question(
        name: 'Why should you NOT use candles as your only light source during a cyclone?',
        options: [
          'Candles do not produce enough light.',
          'Candles are too expensive.',
          'Candles attract insects.',
          'Strong winds can knock candles over and start fires, and gas leaks are common after storms.',
        ],
        correct: 3,
      ),
      Question(
        name: 'What should you NOT do with tap water immediately after a cyclone?',
        options: [
          'Use it for watering plants.',
          'Drink it without boiling or treating it first, as pipes may be contaminated.',
          'Use it to wash dishes.',
          'Use it to clean mud from your floors.',
        ],
        correct: 1,
      ),
      Question(
        name: 'Which activity is most dangerous during a cyclone warning?',
        options: [
          'Driving or going outside to "experience" the storm.',
          'Reading a book indoors.',
          'Charging your phone before the power cuts.',
          'Filling your bathtub with clean water as backup.',
        ],
        correct: 0,
      ),
      Question(
        name: 'After a cyclone, what should you NOT do when returning home?',
        options: [
          'Check for structural damage before entering.',
          'Switch on electrical appliances immediately without checking for water damage or exposed wires.',
          'Clear debris carefully from your surroundings.',
          'Report damage to local authorities.',
        ],
        correct: 1,
      ),
    ],
  ),
];
final int totalQuestions = sectionsList.fold(0, (sum, section) => sum + section.questions.length);