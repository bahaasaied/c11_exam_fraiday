import 'package:flutter/material.dart';



class Buttons extends StatelessWidget {
  String label ;

   Buttons({required this.label,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){}, child: Text(label),),
    );
  }
}
