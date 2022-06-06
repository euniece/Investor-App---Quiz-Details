import 'package:flutter/material.dart';

class category_box extends StatelessWidget{
   const category_box ({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) => Scaffold(
        
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Personal Finance",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: 'Poppins-Bold',
              fontWeight: FontWeight.w700, 
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            iconSize: 35,
            color: Colors.black,
            onPressed: () => {
              Navigator.pop(context),
            },
          ),
           backgroundColor: Colors.transparent,
          elevation: 0,
        ),
         
        body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                         Text(
                              "Overall Stats",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins Semi Bold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  letterSpacing: 1.0,
                                ),
                                maxLines: 1,
                            ),   
                
                //Correct
                // tama na din colors ng mga container
               Container(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
              const SizedBox(height: 12),
                Container(
                   height: 91,
                   width: 310,
                   decoration: BoxDecoration(
                     color: Color.fromRGBO(5, 195, 107, 38),//38%
                     borderRadius: BorderRadius.circular(16),
                   ),
            child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                          Text(
                              "Correct: 40",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins Semi Bold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  letterSpacing: 4.0, //pede tanggalin kung ayaw ng may spacing per letter.
                                ),
                                maxLines: 1,
                            ),    
                        ]),
                        ), 
                       ),
            const SizedBox(height: 12),
            //Wrong
            Container(
                   height: 91,
                   width: 310,
                   decoration: BoxDecoration(
                     color: Color.fromRGBO(243, 83, 86, 60),//38%
                     borderRadius: BorderRadius.circular(16),
                   ),
            child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                          Text(
                              "Wrong: 40",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins Semi Bold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  letterSpacing: 4.0, //pede tanggalin kung ayaw ng may spacing per letter.
                                ),
                                maxLines: 1,
                            ),    
                        ]),
                        ), 
                       ),
            const SizedBox(height: 12),
            //Skipped
                Container(
                   height: 91,
                   width: 310,
                   decoration: BoxDecoration(
                     color: Color.fromRGBO(240, 243, 60, 50),//38%
                     borderRadius: BorderRadius.circular(16),
                   ),
            child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                          Text(
                              "Skipped: 40",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins Semi Bold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  letterSpacing: 4.0, //pede tanggalin kung ayaw ng may spacing per letter.
                                ),
                                maxLines: 1,
                            ),    
                        ]),
                        ), 
                       ),
 
                      ]),
                     ),
                    ]),
                    ),
                  ),
               );
              
      }

