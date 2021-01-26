import 'package:flutter/material.dart';

class inputCustomBox extends StatefulWidget {

  String inputHint;
  inputCustomBox({this.inputHint});
  @override
  _inputCustomBoxState createState() => _inputCustomBoxState();
}

class _inputCustomBoxState extends State<inputCustomBox> {
  @override
  Widget build(BuildContext context) {
    bool isSubmitted = false;
    return Column(
      children: [
      Padding(padding: const EdgeInsets.fromLTRB(90, 5, 90, 10),
        child: TextFormField(
          obscureText: widget.inputHint == 'Password' && widget.inputHint == 'Confirm Password' ? true:false,

          onChanged: (value){
            setState(() {
              isSubmitted = true;
            });
          },

          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold),
    decoration: InputDecoration(

    hintText: widget.inputHint,
    hintStyle: TextStyle(
    fontSize: 18,
    color: Colors.grey,
    fontWeight: FontWeight.w600),

    contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
    focusColor: Color(0xff0962ff),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Color(0xff0962ff)),
            ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Colors.grey[350],
        ),
      ),
          ),
        ),

      ),
    ],
    );
  }
}
