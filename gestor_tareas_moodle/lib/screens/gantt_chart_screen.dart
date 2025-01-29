import 'package:flutter/material.dart';

class GanttChartScreen extends StatefulWidget {
  const GanttChartScreen({super.key});

  @override
  State<GanttChartScreen> createState() => _GanttChartScreenState();
}

class _GanttChartScreenState extends State<GanttChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Diagrama Gantt"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}