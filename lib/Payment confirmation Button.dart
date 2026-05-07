import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Issue {
  String title;
  String description;
  String status;

  Issue({
    required this.title,
    required this.description,
    required this.status,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilterPage(),
    );
  }
}

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List<Issue> issues = [
    Issue(
      title: "Payment confirmation Button",
      description:
      "When user clicks confirm, page stays loading and payment not processed",
      status: "loading",
    ),
    Issue(
      title: "Login Error",
      description: "User cannot login with valid credentials",
      status: "failed",
    ),
    Issue(
      title: "Checkout Success",
      description: "Payment processed successfully",
      status: "success",
    ),
  ];

  List<Issue> filteredIssues = [];

  @override
  void initState() {
    super.initState();
    filteredIssues = issues;
  }

  void filterIssues(String query) {
    setState(() {
      filteredIssues = issues.where((issue) {
        final text = query.toLowerCase();

        return issue.title.toLowerCase().contains(text) ||
            issue.description.toLowerCase().contains(text) ||
            issue.status.toLowerCase().contains(text);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Issue Filter")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              onChanged: filterIssues,
              decoration: InputDecoration(
                labelText: "Search...",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredIssues.length,
              itemBuilder: (context, index) {
                final issue = filteredIssues[index];

                return Card(
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(issue.title),
                    subtitle: Text(issue.description),
                    trailing: Text(issue.status),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}