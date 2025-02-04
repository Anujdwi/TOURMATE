import 'package:flutter/material.dart';
import 'package:tourmate/widgets/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomSearchBar(),
      ),
      body: ListView.builder(
        itemCount: 15, // Replace with actual search results
        itemBuilder: (context, index) => ListTile(
          title: Text('Destination ${index + 1}'),
          subtitle: const Text('City, Country'),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () => Navigator.pushNamed(context, '/itinerary'),
        ),
      ),
    );
  }
}