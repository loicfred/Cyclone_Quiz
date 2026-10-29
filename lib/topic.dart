import 'package:flutter/material.dart';
import 'title.dart';


class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Learn about Cyclones", style: TextStyle(color: Colors.white))), backgroundColor: Colors.blue[800]),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  children: [
                    const TextSpan(text: 'What is a Cyclone?\n', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),
                    const TextSpan(
                      text: 'A cyclone is a large-scale air mass that rotates around a strong center of low atmospheric pressure.'
                          'It is characterized by powerful winds rotating inward and upward, accompanied by heavy rainfall, storm surges, and potentially devastating effects on coastal and inland areas.'
                          'Cyclones are called different names in different regions: hurricanes in the Atlantic and Eastern Pacific, typhoons in the Western Pacific,'
                          'and cyclones in the Indian Ocean and South Pacific.\n\n',
                    ),
                    const TextSpan(text: 'Key Characteristics\n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    const TextSpan(
                      text: 'In severe cyclones, wind speeds can exceed 250 km/h (155 mph), and the storms can bring 200-400mm of rainfall within just a few hours.'
                          'Storm surges may raise sea levels by 3-6 meters or more, while the storm itself can span anywhere from 100 to 2000 km in diameter.'
                          'These powerful systems typically form over warm ocean waters with temperatures above 26.5°C.',
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  children: [
                    const TextSpan(text: 'What Should Be Done (DO\'s)\n', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),
                    const TextSpan(text: 'Before a Cyclone\n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    const TextSpan(
                      text: 'Listen to weather updates regularly through radio, TV, or mobile alerts, and prepare an emergency kit with food, water, medicines, '
                          'a flashlight, batteries, and first aid supplies. Secure your home by boarding up windows, reinforcing doors, and clearing gutters, '
                          'and make sure you know the route to the nearest cyclone shelter. Charge all your electronic devices, keep power banks ready, '
                          'and store important documents in waterproof containers. Stock up on at least 3-7 days of food and drinking water, and trim trees '
                          'while securing any outdoor furniture or loose objects.\n\n',
                    ),
                    const TextSpan(text: 'During a Cyclone\n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    const TextSpan(
                      text: 'Stay indoors in the safest room available, away from windows and doors, and keep monitoring weather updates continuously. '
                          'If evacuation is ordered, leave immediately for the designated shelters, and once there, '
                          'stay in a small interior room or closet on the ground floor. Use flashlights rather than candles to avoid fire hazards, '
                          'keep emergency numbers handy with your phone charged, and follow all instructions given by shelter authorities.\n\n',
                    ),
                    const TextSpan(text: 'After a Cyclone\n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    const TextSpan(
                      text: 'Wait for the official all-clear before leaving your shelter, then check for injuries and provide first aid if needed. '
                          'Inspect your home carefully for structural damage before entering, and avoid floodwater, as it may be contaminated or electrically charged. '
                          'Document any damage with photographs for insurance purposes, and look out for your neighbors, especially elderly or disabled persons.',
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  children: [
                    const TextSpan(text: 'What Should NOT Be Done (DON\'ts)\n', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),
                    const TextSpan(text: 'Before a Cyclone\n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    const TextSpan(
                      text: 'Don\'t ignore cyclone warnings or evacuation orders, and don\'t delay your preparations until the last minute. '
                          'Don\'t leave loose objects outside that could become dangerous projectiles, and don\'t forget to inform your family members about the emergency plan.\n\n',
                    ),
                    const TextSpan(text: 'During a Cyclone\n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    const TextSpan(
                      text: 'Don\'t go outside during the storm, even if it seems calm, since this could just be the eye of the cyclone. '
                          'Don\'t use electrical appliances or touch wet electrical equipment, and don\'t call emergency services unless it\'s absolutely necessary. '
                          'Don\'t stand near windows or glass doors, don\'t use candles due to fire risk, and don\'t attempt to drive or walk through floodwater.\n\n',
                    ),
                    const TextSpan(text: 'After a Cyclone\n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    const TextSpan(
                      text: 'Don\'t return home until authorities declare it safe to do so, and don\'t touch fallen power lines or damaged electrical wiring. '
                          'Don\'t drink tap water until it\'s confirmed safe by authorities, and don\'t enter damaged buildings without a proper inspection. '
                          'Finally, don\'t spread rumors or unverified information.',
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 16, height: 2, color: Colors.black),
                  children: [
                    const TextSpan(text: 'Why These Measures Matter\n', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),
                    const TextSpan(
                      text: 'Staying informed is critical because cyclones can change intensity and direction rapidly. '
                          'Regular updates help you make timely decisions about evacuation and safety measures, and '
                          'early warning systems have reduced cyclone-related deaths by over 90% in many regions. '
                          'Preparation in advance is equally vital - when a cyclone approaches, shops close, supplies run out, and roads become unsafe. '
                          'Preparing 48-72 hours in advance ensures you have essential supplies and can make rational decisions without panic. '
                          'When authorities order evacuations, it\'s based on scientific data about storm surge, wind speeds, and flood risks, '
                          'and areas in the predicted path face life-threatening conditions. No property is worth risking your life - structures can be rebuilt, but lives cannot.\n\n',
                    ),
                    const TextSpan(
                      text: 'During the storm, staying indoors is essential because cyclonic winds can exceed 200 km/h, turning even small objects into deadly projectiles. '
                          'Flying debris, collapsing structures, and storm surge are the primary causes of cyclone fatalities, and the strongest buildings provide the best protection. '
                          'Floodwater presents multiple dangers - it can hide hazards like broken glass, sharp objects, and open manholes, and often contains sewage, chemicals, and disease-causing bacteria. '
                          'Just 15 cm of moving water can knock you down, and 60 cm can sweep away vehicles, while downed power lines can electrify the water. '
                          'One of the most deceptive dangers is the eye of the cyclone, which creates a temporary calm with clear skies, but it\'s surrounded by the most intense winds and rain. '
                          'This calm typically lasts 20-40 minutes before the back wall of the eye arrives with renewed fury, often from the opposite direction, catching people off-guard.\n\n',
                    ),
                    const TextSpan(
                      text: 'After the storm passes, waiting for the official all-clear is crucial because hidden dangers persist even after the visible storm has ended. '
                          'Weakened structures may collapse without warning, flooding may continue or even worsen, power lines remain live and dangerous, and contaminated '
                          'water spreads disease throughout affected areas. Authorities conduct thorough inspections of infrastructure, buildings, utilities, and environmental '
                          'hazards to ensure areas are genuinely safe before allowing residents to return. Rushing back prematurely exposes you to risks that may not be immediately '
                          'visible but are just as deadly as the storm itself.\n\n',
                    ),
                    const TextSpan(text: 'Conclusion\n', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),
                    const TextSpan(
                      text: 'Cyclones are natural disasters that demand respect and preparation. '
                          'Understanding their nature and following safety guidelines can mean the difference between life and death. Remember: prepare early, stay informed, '
                          'follow official instructions, and prioritize safety over property. Your awareness and preparedness protect not just you, but your entire community.\n',
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
            ),

            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const TitleScreen()), (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text('Back', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

}