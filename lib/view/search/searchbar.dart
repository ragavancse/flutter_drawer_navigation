import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({Key? key, required this.onQueryChanged})
      : super(key: key);
  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
  final ValueChanged<String> onQueryChanged;
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: TextField(
        onChanged: widget.onQueryChanged,
        decoration: InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
