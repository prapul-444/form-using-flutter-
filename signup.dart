import 'package:flutter/material.dart';
import 'HomePage.dart';
class signup extends StatefulWidget {
  
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  String name,email,clg,phone;
    
  GlobalKey<FormState> _key=new GlobalKey();
  bool _av=false;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('signup'),
      ),
      body:  Form(
                key: _key,
       
          child: Card(
            color: Colors.green,
          
           shape:RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(20.0),
           ),
           child: Column(
             children: <Widget>[
               Padding(padding: EdgeInsets.all(10.0),),
               ListTile(
                 leading:Icon(Icons.person),
                 title: TextFormField(
                   validator:(input){
                     if(input.isEmpty){
                       return 'enter the name';
                     }
                   },
                   decoration: InputDecoration(
                     labelText: 'Name'
                   ),
                   onSaved:(input)=>name=input,
                 )
               ),
               ListTile(
                 leading:Icon(Icons.email),
                 title: TextFormField(
                   validator:(input){
                     if(input.isEmpty){
                       return 'enter the EMAIL';
                     }
                   },
                   decoration: InputDecoration(
                     labelText: 'email',

                   ),
                   onSaved: (input)=>email=input,
                 )
               ),
               ListTile(
                 leading:Icon(Icons.phone),
                 title: TextFormField(
                   validator:(input){
                     if(input.isEmpty){
                       return 'enter the phone number';
                     }
                   },
                   decoration: InputDecoration(
                     labelText: 'phone',

                   ),
                   onSaved: (input)=>phone=input,
                 )
               ),
               ListTile(
                 leading:Icon(Icons.school),
                 title: TextFormField(
                   validator:(input){
                     if(input.isEmpty){
                       return 'enter the college';
                     }
                   },
                   decoration: InputDecoration(
                     labelText: 'college',

                   ),
                   onSaved: (input)=>clg=input,
                 )
               ),
               Padding(
                 padding: EdgeInsets.all(5.0)
               ),
               ButtonTheme(
                 height: 40.0,
                 minWidth: 200.0,
                 child: RaisedButton(
                   onPressed:_tosend,
                   child: Text('save'),
                 ),
               )
             ],

           )
          ),
        ),
      
    );
  }
  _tosend(){
 if(_key.currentState.validate()){
                       _key.currentState.save();
                       Navigator.push(context, MaterialPageRoute(
                         builder: (context)=>HomePage(
                          name:name,
                          email:email,
                          clg:clg,
                          phone:phone,
                         ),

                       ));
                       print(name);
                       print("ganehs");
                     }
                   
  }
}