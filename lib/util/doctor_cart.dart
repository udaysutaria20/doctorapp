import 'package:flutter/material.dart';

class DoctorCart extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorPrfession;
  DoctorCart({
    required this.doctorImagePath ,
    required this.rating ,
    required this.doctorName ,
    required this.doctorPrfession
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 25),
      child: Container(
        height: 20,
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            ///Picture  of doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                 doctorImagePath,
                  height: 80,
                  ),
            ),
            SizedBox(
              height: 10,
            ),

            ///rating
            Row(
              children: const [
                Icon(Icons.star,color:Colors.yellow,),
                Icon(Icons.star,color:Colors.yellow,),
                Icon(Icons.star,color:Colors.yellow,),
                Icon(Icons.star,color:Colors.yellow,),
                Icon(Icons.star,color:Colors.grey,),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            /// doctor title
            Text(doctorName,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(
              height: 8,
            ),
             Text(doctorPrfession +'7 year',style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
