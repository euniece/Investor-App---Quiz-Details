import 'package:flutter/material.dart';

class Settingsample extends StatelessWidget {
const Settingsample({Key? key}) : super(key: key);
 Widget general(
       String title, BuildContext context) {
    return Card(
          shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(4), 
                   side: BorderSide(color: Color.fromRGBO(5, 195, 107, 50),
                   width: 0),),
          elevation: 2,
          child: ListTile(

          //  leading:Icon(
               //   Icons.volume_up_outlined,
                 // color: Colors.black,
                //),
            title: Text(title, 
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: 'Poppins-Medium',
              fontWeight: FontWeight.w500, 
            ), ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {},
          ),
      );
  }

//kulang toggle switch
 Widget sounds(
       String title, BuildContext context ) {
    return Card(
          shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(4), 
                   side: BorderSide(color: Color.fromRGBO(5, 195, 107, 50),
                   width: 0),),
          elevation: 2,
          child: ListTile(
            
          //  leading:Icon(
               //   Icons.volume_up_outlined,
                 // color: Colors.black,
                //),
            title: Text(title, 
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: 'Poppins-Medium',
              fontWeight: FontWeight.w500, 
            ), ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {},
            
          ),
      );
  }




      @override
  Widget build(BuildContext context) {
    
        return Scaffold(
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
            SizedBox(width: 15,),
          ],
          
           backgroundColor: Colors.transparent,
          elevation: 0,
        ),

    body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
          //GENERAL  
            SizedBox(
              height: 10,
            ),
           Text(
                  "GENERAL",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),  
            sounds('Sounds',context),
            
          //ACCOUNT  
            SizedBox(
                  height: 12,
                ),
                Text(
                  "ACCOUNT",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              general('Avatar', context),
              general('Name', context),
              general('Email',context),
              general('Linked Account',context),

          //FEEDBACK
            SizedBox(
              height: 12,
            ),
            Text(
                  "FEEDBACK",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              general('Rate our App', context),
              general('Report a problem', context),

        //LEGAL
             SizedBox(
              height: 12,
            ),
            Text(
                  "LEGAL",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              general('Privacy Policy', context),
              general('About Us', context),  
              general('Terms of Use', context),  
          ],
        ),
      ),
    );
  }
}

  