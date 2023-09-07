import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clipper extends StatelessWidget {
  const Clipper ({super.key});

  @override
  Widget build(BuildContext context) {
    return  ClipPath(
      clipper:Tringle() ,
      child: Container(
        decoration: const BoxDecoration(color: Colors.grey),
        width: 50,
        height: 10,
      ),

    );
  }
}


class Tringle extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(size.width/2,0 );          //1
    path.lineTo(size.width, size.height);  //2
    path.lineTo(0, size.height);           //3
    path.lineTo(size.width/2,0 );          //4


    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}
