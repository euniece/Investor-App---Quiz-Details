import 'package:flutter/material.dart';

class terms_use extends StatefulWidget{

  @override
  _terms_use createState() => _terms_use();
}
class _terms_use extends State<terms_use> {
   
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
            leading: Icon(Icons.text_snippet_outlined, color: Colors.black),
            title: Text('Terms of Use'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () { 
               showAlert(context);
            },
           ),
         ),
       ]),
     ),

  );

  void showAlert(BuildContext context) {
      showDialog(
         context: context,
         barrierDismissible: true,
         
              builder: (BuildContext context) => AlertDialog(
              actions: [
               Container(
                 alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(child:  TextButton(
                child: Text('Close'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                   backgroundColor: Color.fromRGBO(5, 195, 107, 50),
                  shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                ),  onPressed: () {
                    Navigator.pop(context);
                },),
                ),
              )],
               backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(32.0), 
                   side: BorderSide(color: Color.fromRGBO(5, 195, 107, 50),
                   ),),
                    title: Text("Terms of Use",
                     style: TextStyle(fontSize: 20.0, fontFamily: 'Poppins Bold', fontWeight: FontWeight.w700),
                    ),
                    content: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text:("Our Culture and Values"),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'Poppins Bold',
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                            ),
                          ),
                          TextSpan(
                            text: '\n\nOur values are a fundamental part of our culture and the way we work. By knowing what we stand for we are able to pull together to be the absolute best team we can be and build the best solutions for our clients.',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Poppins Semi-Bold',
                              fontWeight: FontWeight.w600,
                              height: 1.2,
                            ),
                          ),
                          TextSpan(
                            text: '\n\nYour Story / History',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'Poppins Bold',
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                            ),
                          ),
                          TextSpan(
                            text: '\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Molestie at elementum eu facilisis. Gravida neque convallis a cras semper auctor. Justo laoreet sit amet cursus. Commodo sed egestas egestas fringilla phasellus. Fames ac turpis egestas integer eget. Eleifend donec pretium vulputate sapien nec.',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Poppins Semi-Bold',
                              fontWeight: FontWeight.w600,
                              height: 1.2,
                            ),
                          ),
                          TextSpan(
                            text: '\n\nServices and Benefits',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'Poppins Bold',
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                            ),
                          ),
                           TextSpan(
                            text: '\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Molestie at elementum eu facilisis. Gravida neque convallis a cras semper auctor. Justo laoreet sit amet cursus. Commodo sed egestas egestas fringilla phasellus. Fames ac turpis egestas integer eget. Eleifend donec pretium vulputate sapien nec.',
                            style: const TextStyle(
                              color: Colors.black,
                               fontSize: 15.0,
                              fontFamily: 'Poppins Semi-Bold',
                              fontWeight: FontWeight.w600,
                              height: 1.2,
                            ),
                          ),
                          TextSpan(
                            text: '\n\nContact Us',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'Poppins Bold',
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                            ),
                          ),
                          TextSpan(
                            text: '\n\nDo not hesitate to contact us if you have any inquiries and questions',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Poppins Semi-Bold',
                              fontWeight: FontWeight.w600,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),

                  scrollable: true,
                
                  
              ));
             }
}