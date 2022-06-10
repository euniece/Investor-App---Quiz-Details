
import 'package:flutter/material.dart';

class Setting extends StatefulWidget{

  @override
  _Setting createState() => _Setting();
}
class _Setting extends State<Setting> {
  late TextEditingController controller;

  String name = ' ';

  @override
  void initState() {
   super.initState();

   controller = TextEditingController();
  }

  @override
  void dispose() {
   controller.dispose();

   super.dispose();
  }

@override
  Widget build(BuildContext context) => Scaffold(
      
        appBar: AppBar(
         
          title: const Text(
            "SETTINGS",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: 'Poppins-ExtraBold',
              fontWeight: FontWeight.w800, 
            ),
          ),
          actions: <Widget>[
            Image.asset("images/logo.png", width: 50,),
            SizedBox(width: 15),
          ],
          
           backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
            padding: const EdgeInsets.all(8.0),
            margin:const EdgeInsets.all(8.0) ,
            child: ListView(
             children: <Widget>[
               Text('ACCOUNT',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontFamily: 'Poppins-Medium',
              fontWeight: FontWeight.w500, 
            ),
           ),
            Card(
           shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(4), 
                   side: BorderSide(color: Color.fromRGBO(5, 195, 107, 50),
                   width: 0),),
          elevation: 2,
          child: ListTile(
            leading: Icon(
                        Icons.account_circle, color: Colors.black,
                      ),
            title: Text('Name'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () async{
             final name = await openDialog();
             if (name == null || name.isEmpty) return;
             setState(() => this.name = name);
              },
          ),
        ),
             ]),

        ),

  );

Future<String?> openDialog() => showDialog<String> (
    context: context,
    builder: (context) => AlertDialog (
        title: Text('Your Name'),
        content: TextField(
          autofocus: true,
          decoration: InputDecoration(hintText: 'Enter Your Name'),
          controller: controller,
          onSubmitted: (_) => submit(),
        ),
        actions: [
          TextButton(child: Text('OK'),
          onPressed: submit, 
          )
        ],
    ),
);

void submit() {
  Navigator.of(context).pop(controller.text);
  controller.clear();
}


}