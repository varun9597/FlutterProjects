import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Varun P"),
                accountEmail: Text("panditpautrav@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80"
                  ),
                ),
                
              ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Varun"),
                  subtitle: Text("Developer"),
                  trailing: Icon(Icons.edit),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Varun P"),
                  subtitle: Text("Content Writer"),
                  trailing: Icon(Icons.eject),
                )
            ],
          ),
        );
  }
}