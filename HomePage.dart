import 'package:flutter/material.dart';
import 'signup.dart';

class HomePage extends StatelessWidget {
   String name,email,clg,phone;
   String mode="light";
   bool m=true;
 HomePage(
   {
     Key key,
     @required
     this.name,
     this.email,
     this.clg,
     this.phone

   }
 ) :super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: Text('sign up info'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
             UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            child: Text(name[0]),
            backgroundColor: Colors.brown,

          ),
        ),
       ListTile(
         leading: Icon(Icons.email),
         title: Text(email),
        
       ),
        ListTile(
         leading: Icon(Icons.school),
         title: Text(clg),
        
       ),
        ListTile(
         leading: Icon(Icons.phone),
         title: Text(phone),
        
       ),
        ListTile(
         leading: Icon(Icons.email),
         title: Text(email),
      onTap: ()=>Navigator.of(context).pop(),
      trailing: Icon(Icons.close),
        
       ),
        ListTile(
        
         title: Text(mode),
      onTap: ()=>Navigator.of(context).pop(),
      onLongPress: dar,
        
       ),
          ],
        ),
        
      ),
    );
  } 
}