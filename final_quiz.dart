import 'package:flutter/material.dart';

class quiz_deets extends StatelessWidget {
  
  final String child;
  quiz_deets({required this.child});

  @override
  Widget build(BuildContext context) {
    
          return Padding(
          padding:  EdgeInsets.fromLTRB( 16.0, 8.0, 16.0, 8.0),
             child: Container(
              height:250.0,
               width: 320.0,
               
                child: Center(
                    child: RichText(
                     maxLines: 9,
                    
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Question 2",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontFamily: 'Poppins-Medium',
                              fontWeight: FontWeight.w600,
                              height: 2,
                            ),
                          ),
                          TextSpan(
                            text: "\nIt is a financial plan that helps you to track money, make informed spending decisions and plan for your financial goal",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 2,
                            ),
                          ),
                          TextSpan(
                            text: "\nYour Answer: You didn't select answer",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontFamily: 'Poppins-Medium',
                              fontWeight: FontWeight.w600,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
            ),
          ),
                   decoration: BoxDecoration(
                         color: Color.fromRGBO(5,195, 107, 0.38),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(81, 231, 168, 45),
                              offset: Offset(
                                -3.0,
                                4.0,
                              ),
                              blurRadius: 5.0,
                            ),
                          ],
                        ),
            ),
       
        );
  }
}