import 'package:flutter/material.dart';

class TextClass extends StatelessWidget {
  const TextClass({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Homepage());
  }}


  class Homepage extends StatelessWidget {
    const Homepage({ Key? key }) : super(key: key);
  
    final text =
      """This is flutter widgets class. In this class you'll learn how to use different Fluter widgets.
At the end of the class you will build a to-do app than includes Firebase Authentication""";

    @override
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("This is the appbar"),
        // leading:
        //     IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: const [Icon(Icons.person), Icon(Icons.chat)],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Column(
            children: const [
              Icon(Icons.person),
              Icon(
                Icons.chat,
                size: 30,
                color: Colors.pink,
              ),
              Text("This is appbar bottom widget")
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.red,
              background: Paint(),
              letterSpacing: 5.0,
              wordSpacing: 15.0),
          textAlign: TextAlign.right,
        )),
      ),
      drawer: _drawer(context),
    );
    }
  

  Widget _drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
           "studentName",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
              )),
              _drawerListTile("Account", Icons.manage_accounts, context),
              _drawerListTile("Settings", Icons.settings, context),
              _drawerListTile("More", Icons.more, context),
              _drawerListTile("Logout", Icons.logout, context),

        ],
      ),
    );
  }

  Widget _drawerListTile(String textData, IconData iconData, BuildContext context){
    return ListTile(
      title: Text(textData, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      leading: Icon(iconData,size: 30),
      onTap: ()=> Navigator.of(context).pop(),
    );
  }
}
