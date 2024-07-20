import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {

  String label;
  String img;
  Color cardColor;


   TextCard({required this.label,required this.img,required this.cardColor,super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 36,
          width: 130,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(img),
              SizedBox(width: 10,),
              Text(
                label,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
