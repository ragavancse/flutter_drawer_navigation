import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: Text("johndoe@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  AssetImage('assets/pexels-chloekalaartist-1043474.jpg'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.all_inbox),
            title: Text('All inboxes'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Primery'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.fluorescent_outlined),
            title: Text('Promotion'),
            onTap: () {},
          ),
          ListTile(
                        leading: Icon(Icons.face),

            title: Text('Social'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Starred'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Snoozed'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Important'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Send'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Scheduled'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Outbox'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Drafts'),
            onTap: () {},
          ),
          ListTile(
            title: Text('All mail'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Spam'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Trash'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Calendar'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Contacts'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Help & feedback'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
