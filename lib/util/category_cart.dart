import 'package:flutter/material.dart';

class CategoryCart extends StatelessWidget {

  final iconsImagePath;
  final String categoryName;
  CategoryCart({
    required this.iconsImagePath ,
    required this.categoryName,
  });




  //const CategoryCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: const EdgeInsets.only(left :28.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(
              iconsImagePath,
              height: 60,
            ),
            SizedBox(width: 10,),
            Text(categoryName),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
