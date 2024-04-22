import 'package:demo/view/home/sidebar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedItem = 'All inboxes'; // Default selected item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      drawer: SideBar(onItemSelected: _onItemSelected),
      body: _buildBody(),
    );
  }

  void _onItemSelected(String item) {
    setState(() {
      _selectedItem = item;
    });
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
