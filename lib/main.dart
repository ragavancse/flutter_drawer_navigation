import 'package:demo/view/sidebar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedItem = 'All inboxes'; // Default selected item

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        drawer: SideBar(onItemSelected: _onItemSelected),
        body: _buildBody());
  }

  void _onItemSelected(String item) {
    // Update the selected item
    setState(() {
      _selectedItem = item;
    });
    // Close the drawer
    Navigator.pop(context);
  }

  Widget _buildBody() {
    switch (_selectedItem) {
      case 'All inboxes':
        return Center(child: Text('All inboxes'));
      case 'Primery':
        return Center(child: Text('Primery'));
      case 'Promotion':
        return Center(child: Text('Promotion'));
      case 'Social':
        return Center(child: Text('Social'));
      case 'Starred':
        return Center(child: Text('Starred'));
      case 'Snoozed':
        return Center(child: Text('Snoozed'));
      case 'Important':
        return Center(child: Text('Important'));
      case 'Send':
        return Center(child: Text('Send'));
      case 'Scheduled':
        return Center(child: Text('Scheduled'));
      case 'Outbox':
        return Center(child: Text('Outbox'));
      case 'Drafts':
        return Center(child: Text('Drafts'));
      case 'All mail':
        return Center(child: Text('All mail'));
      case 'Spam':
        return Center(child: Text('Spam'));
      case 'Trash':
        return Center(child: Text('Trash'));
      case 'Calendar':
        return Center(child: Text('Calendar'));
      case 'Contacts':
        return Center(child: Text('Contacts'));
      case 'Settings':
        return Center(child: Text('Settings'));
      case 'Help & feedback':
        return Center(child: Text('Help & feedback'));

      default:
        return Center(child: Text('No content'));
    }
  }
}
