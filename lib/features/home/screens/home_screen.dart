import 'package:flutter/material.dart';

import '../widgets/greeting_section.dart';
import '../widgets/hero_card.dart';
import '../widgets/stats_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 10),

          const GreetingSection(),

          const SizedBox(height: 30),

          const HeroCard(),

          const SizedBox(height: 24),

          const StatsGrid(),

          const SizedBox(height: 35),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Documents",
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("See All"),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo.shade100,
                child: const Icon(Icons.picture_as_pdf),
              ),
              title: const Text("No documents yet"),
              subtitle: const Text(
                "Your scanned documents will appear here.",
              ),
            ),
          ),

          const SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green.shade100,
                child: const Icon(Icons.search),
              ),
              title: const Text("AI Search"),
              subtitle: const Text("Coming soon"),
              trailing: const Icon(Icons.lock_outline),
            ),
          ),

          const SizedBox(height: 15),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange.shade100,
                child: const Icon(Icons.summarize),
              ),
              title: const Text("AI Summary"),
              subtitle: const Text("Coming soon"),
              trailing: const Icon(Icons.lock_outline),
            ),
          ),

          const SizedBox(height: 80),
        ],
      ),
    );
  }
}