import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function() onTap; 
  const Button(this.text, this.onTap,{super.key});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo[900],
        foregroundColor: Colors.white,
        padding:const EdgeInsets.all(20),
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      ),
      child: Text(text));
  }
}