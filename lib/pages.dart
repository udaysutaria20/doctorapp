
import 'package:doctorapp/util/category_cart.dart';
import 'package:doctorapp/util/doctor_cart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
            children: [
              //Appbar
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Row (
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween ,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Hello',style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Devopler's Community",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xff784abc),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.person,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xff784abc),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    children: [
                      //Adding animator in this container
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          color:Colors.pink[100],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('How do you feel Now ?',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),),
                            const SizedBox(
                              height: 08,
                            ),
                            const Text('Please fill your Medical card now ',style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),),
                            const SizedBox(
                              height: 08,
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: const Center(child:
                                Text('Get Started',style: TextStyle(
                                  color: Colors.black,
                                ),
                                ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xff784abc),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.saved_search,color: Colors.white,),
                        border: InputBorder.none,
                        hintText: 'How can we help you ?',hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
             const SizedBox(
               height: 22,
             ),
             Container(
               height: 55,
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 children: [
                     CategoryCart(
                       iconsImagePath: 'assets/icons/heart.png',
                       categoryName: 'Heart' ,
                     ),
                   CategoryCart(
                     iconsImagePath: 'assets/icons/doctor(2).png',
                     categoryName: 'Surgeon',
                   ),
                   CategoryCart(
                     iconsImagePath: 'assets/icons/doctor(1).png',
                     categoryName: 'Pharmacist' ,
                   ),
                   CategoryCart(
                     iconsImagePath: 'assets/icons/doctor.png',
                     categoryName: 'Mbbs' ,
                   ),
                   CategoryCart(
                     iconsImagePath: 'assets/icons/medical-team.png',
                     categoryName: 'Specialist Surgon' ,
                   ),
                   CategoryCart(
                     iconsImagePath: 'assets/icons/doctor(1).png',
                     categoryName: 'Dental' ,
                   ),
                   CategoryCart(
                     iconsImagePath: 'assets/icons/heart.png',
                     categoryName: 'Heart Specialist' ,
                   ),
                 ],
               ),
             ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Doctor List',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    Text('Sell All',style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DoctorCart(
                      doctorImagePath: 'assets/doctor_image/5.jpg',
                        doctorName: 'Dr.A.K. Virani',
                        doctorPrfession:'Therapist' ,
                        rating: '',
                      ),
                      DoctorCart(
                        doctorImagePath: 'assets/doctor_image/4.jpg',
                        doctorName: 'Dr.U.D.SUTARIA',
                        doctorPrfession:'MBBS' ,
                        rating: '',
                      ),
                      DoctorCart(
                        doctorImagePath: 'assets/doctor_image/3.jpg',
                        doctorName: 'Dr.BEENA SAVANI',
                        doctorPrfession:'DENTALIST' ,
                        rating: '',
                      ),
                      DoctorCart(
                        doctorImagePath: 'assets/doctor_image/2.jpg',
                        doctorName: 'Dr.ANJALI MEHTA',
                        doctorPrfession:'AYURVEDIC SPECIALIST' ,
                        rating: '',
                      ),
                      DoctorCart(
                        doctorImagePath: 'assets/doctor_image/1.jpg',
                        doctorName: 'Dr.NISHI PUROHIT',
                        doctorPrfession:'GYANIC SPECIALIST' ,
                        rating: '',
                      ),
                      DoctorCart(
                        doctorImagePath: 'assets/doctor_image/5.jpg',
                        doctorName: 'Dr.D.H.JOSHI',
                        doctorPrfession:'ENT SPECIALIST' ,
                        rating: '',
                      ),
                    ],

                  ),
              ),
            ],

        ),
      ),
    ),

    );
  }
}
