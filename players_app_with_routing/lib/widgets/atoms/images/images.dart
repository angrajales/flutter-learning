import 'package:flutter/cupertino.dart';

class RoundedImage extends StatelessWidget {
  final String imagePath;
  final double radius;
  final double width;
  final double height;
  RoundedImage({
    @required this.imagePath,
    this.radius   = 20.0,
    this.width    = double.infinity,
    this.height   = double.infinity
  });
  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.network(
        this.imagePath,
        width:  this.width,
        height: this.height,
        fit: BoxFit.fill,
      ),
    );
  }
}