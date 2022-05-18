import 'package:first_app/screens/final_quiz.dart';
import 'package:flutter/material.dart';

class Quiz_Details extends StatelessWidget {
  
 final List _questions = [
    "It is a financial plan that helps you to track money, make informed spending decisions and plan for your financial goal",
    "It is the outflow of money or assets to other individual or company as a payment for an item or service",
    "This type of expense cannot easily be changed and are usually paid on a regular basis, such as weekly, monthly, quarterly or from year to year.",
    "It is a is a legal entity that allows a person (the grantor, donor, or settlor) to transfer assets to another person or organization (the trustee)",
    "This type of expense expenses represent those daily spending decisions like eating at restaurants, buying clothes, drinking Starbucks, and playing a round of golf with your buddies.",
    "In business, these are resources that can be used to create income",
    "In personal finance, this occurs when liabilities are greater than the value of  assets",
    "Higher Risk means higher returns in the long run",
    "The shares are the most volatile in all asset classes",
    "Cash is considered to be the most liquid of all the assets",
    "When it comes to liquidity, real estate is considered to have a high liquidity",
    "Credit is a means of buying now and paying it later with interest",
    "It protects you from financial loss in the event of a disaster or other hardship",
    "This type of insurance benefits the beneficiary, usually a family member, when the insured passes away.",
    "The amount of money you need to pay to be covered under an insurance policy.",
    "The person you assign to receive the benefits of your insurance policy if you pass away.",
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        //extendBodyBehindAppBar: false;
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "RESULT",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: 'Poppins-ExtraBold',
              fontWeight: FontWeight.w800, 
            ),
          ),
           leading: Icon(Icons.arrow_back_rounded, color: Colors.black,),
          actions: <Widget>[
            Image.asset("images/logo.png", width: 50,),
            SizedBox(width: 15,),
          ],
         backgroundColor: Colors.transparent,
          elevation: 0,
        ),

  
        body: ListView.builder(
            itemCount: _questions.length,
          
        itemBuilder: (BuildContext context, int index) { 
            return quiz_deets(
              child: _questions[index],
            );
         },
        ),
    );
  }
