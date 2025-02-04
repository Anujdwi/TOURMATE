import 'package:flutter/material.dart';
import 'package:tourmate/widgets/itinerary_item.dart';

class ItineraryScreen extends StatelessWidget {
  const ItineraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Itinerary')),
      body: ListView.builder(
        itemCount: 7, // 7 days itinerary
        itemBuilder: (context, index) => ItineraryItem(
          day: index + 1,
          activities: const ['Activity 1', 'Activity 2', 'Activity 3'],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/map'),
        child: const Icon(Icons.map),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Save Trip'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Share Trip'),
        ),
      ],
    );
  }
}