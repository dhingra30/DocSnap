import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'core/routes/app_shell.dart';

void main() {
  runApp(const DocSnapApp());
}

class DocSnapApp extends StatelessWidget {
  const DocSnapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DocSnap',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const AppShell(),
    );
  }
}