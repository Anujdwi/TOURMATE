import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourmate/providers/theme_provider.dart';
import 'package:tourmate/screens/home_screen.dart';
import 'package:tourmate/utils/theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'TourMate',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.themeMode,
      home: const HomeScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/search': (context) => const SearchScreen(),
        '/itinerary': (context) => const ItineraryScreen(),
        '/map': (context) => const MapScreen(),
        '/saved': (context) => const SavedTripsScreen(),
      },
    );
  }
}