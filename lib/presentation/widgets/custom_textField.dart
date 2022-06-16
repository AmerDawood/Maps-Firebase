import 'package:flutter/material.dart';
class CodeTextField extends StatelessWidget {


  final TextEditingController firstCodeEditingController;
  final FocusNode firstFocusNote;
  final void Function(String value) onChange;

  CodeTextField({
    required this.onChange,
    required this.firstCodeEditingController,
    required this.firstFocusNote,
  });





  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
       borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: firstCodeEditingController,
        focusNode: firstFocusNote,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        onChanged: onChange,
        maxLength: 1,
        
        decoration: InputDecoration(
                counterText: '',
          enabledBorder: OutlineInputBorder(
          
            borderRadius: BorderRadius.circular(10),
          
            borderSide: BorderSide(
            
              color: Colors.white,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          
        ),
      ),
    );
  }
}