import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
//share_plus: ^4.0.7

class shareBtn extends StatefulWidget{
const shareBtn({Key? key}) : super(key: key);
  @override
  _shareBtn createState() => _shareBtn();
}
class _shareBtn extends State<shareBtn> {



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
                        Icons.share_outlined, color: Colors.black,
                      ),
            title: Text('Share the App'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () async{
              final urlPreview = 'https://play.google.com/store/apps/details?id=no.mobitroll.kahoot.android&hl=en&gl=US';
             await Share.share('Available Now\n\n$urlPreview');
            },
          ),
        ),
        ]),
       ),


  );
}
