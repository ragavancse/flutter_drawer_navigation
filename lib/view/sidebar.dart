import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  final Function(String) onItemSelected;

  const SideBar({super.key, required this.onItemSelected});

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
          _buildListTile(context, 'All inboxes', Icons.all_inbox),
          _buildListTile(context, 'Primery', Icons.inbox),
          _buildListTile(
              context, 'Promotion', Icons.account_balance_wallet_outlined),
          _buildListTile(context, 'Social', Icons.face),
          _buildListTile(context, 'Starred', Icons.star_border),
          _buildListTile(context, 'Snoozed', Icons.snooze),
          _buildListTile(context, 'Important', Icons.import_contacts_outlined),
          _buildListTile(context, 'Send', Icons.send),
          _buildListTile(context, 'Scheduled', Icons.schedule),
          _buildListTile(context, 'Outbox', Icons.outbox),
          _buildListTile(context, 'Drafts', Icons.drafts),
          _buildListTile(context, 'All mail', Icons.mail_outline),
          _buildListTile(context, 'Spam', Icons.mark_email_unread_outlined),
          _buildListTile(context, 'Trash', Icons.restore_from_trash_rounded),
          _buildListTile(context, 'Calendar', Icons.calendar_month_outlined),
          _buildListTile(context, 'Contacts', Icons.contact_page_outlined),
          _buildListTile(context, 'Settings', Icons.settings),
          _buildListTile(context, 'Help & feedback', Icons.help_outline),
        ],
      ),
    );
  }

  Widget _buildListTile(BuildContext context, String title, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () => onItemSelected(title),
    );
  }
}
