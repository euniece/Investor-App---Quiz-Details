
import 'package:flutter/material.dart';

class bugReport extends StatefulWidget{

  @override
  _bugReport createState() => _bugReport();
}
class _bugReport extends State<bugReport> {
  late TextEditingController controller;

  String bugReport = ' ';

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
             final report = await openDialog();
             if (report == null || report.isEmpty) return;
             setState(() => this.bugReport = report);
              },
          ),
        ),
             ]),

        ),

  );

Future<String?> openDialog() => showDialog<String> (
    context: context,
    builder: (context) => AlertDialog (
      
        title: Text('What Happened?'),
        content: TextField(
          maxLines: 18,
          autofocus: true,
          decoration: InputDecoration(hintText: 'Briefly explain what happened and what we need to do to reproduce the problem.',
          border: OutlineInputBorder(),
          ), 
          controller: controller,
          onSubmitted: (_) => submit(),
        ),
        actions: [
          Container(
                padding: EdgeInsets.all(10),
                 alignment: FractionalOffset.topRight,
                  child: GestureDetector(     
          child: TextButton.icon(
            label: Text('Send'),
             icon: Icon(Icons.send_outlined),
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(5, 195, 107, 50),),
             foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
             onPressed: () { submit; },
          ),
       ),
      ),
    ],
  ),
);

void submit() {
  Navigator.of(context).pop(controller.text);
  controller.clear();
}


}