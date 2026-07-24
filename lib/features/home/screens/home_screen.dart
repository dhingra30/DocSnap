import 'package:flutter/material.dart';

import '../../../../models/document.dart';
import '../../../../services/document_service.dart';
import '../../documents/screens/document_viewer_screen.dart';
import '../widgets/greeting_section.dart';
import '../widgets/hero_card.dart';
import '../widgets/stats_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DocumentService _documentService = DocumentService();

  Future<void> _scanDocument() async {
    try {
      final Document? document = await _documentService.scanDocument();

      if (document == null) {
        if (!mounted) return;

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Scan cancelled."),
          ),
        );

        return;
      }

      if (!mounted) return;

      setState(() {});

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Successfully scanned ${document.pageCount} page(s).",
          ),
        ),
      );
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: FutureBuilder<List<Document>>(
        future: _documentService.getDocuments(),
        builder: (context, snapshot) {
          final documents = snapshot.data ?? [];

          return ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const SizedBox(height: 10),

              const GreetingSection(),

              const SizedBox(height: 30),

              HeroCard(
                onScanPressed: _scanDocument,
              ),

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

              const SizedBox(height: 12),

              if (snapshot.connectionState == ConnectionState.waiting)
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: CircularProgressIndicator(),
                  ),
                )
              else if (documents.isEmpty)
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.description_outlined),
                    title: const Text("No documents yet"),
                    subtitle: const Text(
                      "Scan your first document to see it here.",
                    ),
                  ),
                )
              else
                ...documents.map(
                  (document) => Card(
                    child: ListTile(
                      leading: const Icon(Icons.description),
                      title: Text(document.title),
                      subtitle: Text(
                        "${document.pageCount} page(s)",
                      ),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DocumentViewerScreen(
                              document: document,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}