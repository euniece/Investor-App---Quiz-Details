import 'package:rating_dialog/rating_dialog.dart';
import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
//launch_review: ^3.0.1
//rating_dialog: ^2.0.4
class ratings extends StatefulWidget{
const ratings({Key? key}) : super(key: key);
  @override
  _ratings createState() => _ratings();
}
class _ratings extends State<ratings> {

 final _dialog = RatingDialog(
      initialRating: 1.0,
      // your app's name?
      title: Text(
        'Investor Quiz App',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      
      message: Text(
        'Tap a star to set your rating.',
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 15),
      ),
    image: Image.asset("images/logo.png", width: 50,),
      submitButtonText: 'Submit',
      commentHint: 'Set your custom comment hint',
      onCancelled: () => print('cancelled'),
      onSubmitted: (response) {
        print('rating: ${response.rating}, comment: ${response.comment}');
      
      //
      if (response.rating < 3.0) {
        print('response.rating: ${response.rating}');
      } else {
        LaunchReview.launch(
              androidAppId: "com.kiloo.subwaysurf",
        );
      }
    },
  );

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
            leading: Icon(Icons.grade_rounded,  color: Colors.yellow),
            title: Text('Rate our App'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {showDialog(
                        context: context,
                        barrierDismissible: true, 
                        builder: (context) => _dialog,
                      );
                   },
           ),
         ),
        ]),
       ),
  );
  
}