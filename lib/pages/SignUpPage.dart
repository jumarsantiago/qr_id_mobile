import 'package:flutter/material.dart';
import 'package:qr_id_mobile/CustomView/inputCustomBox.dart';

import 'LogInPage.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Scaffold(


        body: SingleChildScrollView(

          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(

                    alignment: Alignment.center,
                    child: Center(

                      child: Container(
                        margin: EdgeInsets.only(top: 100, bottom: 15),
                        child: Text('Sign Up',
                        style: TextStyle(

                          fontFamily: 'Cardo',
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  inputCustomBox(inputHint: 'First Name',),
                  inputCustomBox(inputHint: 'Middle Name',),
                  inputCustomBox(inputHint: 'Last Name/Surname',),
                  inputCustomBox(inputHint: 'Email',),
                  inputCustomBox(inputHint: 'Phone Number',),
                  inputCustomBox(inputHint: 'Password',),
                  inputCustomBox(inputHint: 'Confirm Password'),

                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Accept the ',
                          style: TextStyle(
                            fontFamily: 'Product Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8f9db5).withOpacity(0.45),
                          ),
                        ),
                        TextSpan(
                          text: 'Terms and Conditions',

                          style: TextStyle(
                            fontFamily: 'Product Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff90b7ff),

                          ),
                        )
                      ],
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.all(10),
                    width: 200,
                    height: 40.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                      onPressed: () {},
                      padding: EdgeInsets.all(10.0),
                      color: Color.fromRGBO(0, 160, 227, 1),
                      textColor: Colors.white,
                      child: Text("Sign Up",
                          style: TextStyle(fontSize: 15)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 200,
                    height: 40.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context)=> LogInPage()
                        ));
                      },
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white,
                      textColor: Color.fromRGBO(0, 160, 227, 1),
                      child: Text("Cancel",
                          style: TextStyle(fontSize: 15)),
                    ),
                  ),



                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            fontFamily: 'Product Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8f9db5).withOpacity(0.45),
                          ),
                        ),
                        TextSpan(
                          text: 'Sign In',

                          style: TextStyle(

                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff90b7ff),

                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}