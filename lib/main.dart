import 'package:flutter/material.dart';

void main(){
  //WidgetsApp //MaterialApp
  
  runApp(MaterialApp(
    home: HomePage(), 
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    
  ));
} 

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var myText = "Change My Name";
  TextEditingController _nameController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/testImage.jpg",
                    ),
                    SizedBox(
                      height : 20,
                    ),
                    Text(myText,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height : 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: "Enter some text",
                          labelText: "Name",
                          border: OutlineInputBorder()
                        ),),
                    )
                    ]
              ),

            ),
          ),
        )
        ),
        drawer: Drawer(
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
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
      
    );
  }  
}