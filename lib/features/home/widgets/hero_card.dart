import 'package:flutter/material.dart';

class HeroCard extends StatelessWidget {
  final VoidCallback onScanPressed;

  const HeroCard({
    super.key,
    required this.onScanPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF5B7FFF),
            Color(0xFF6A5AE0),
          ],
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.auto_awesome,
            color: Colors.white,
            size: 40,
          ),
          const SizedBox(height: 20),
          const Text(
            "AI Document Scanner",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Scan, organize and search your documents in seconds.",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: onScanPressed,
            icon: const Icon(Icons.document_scanner),
            label: const Text("Start Scanning"),
          ),
        ],
      ),
    );
  }
}