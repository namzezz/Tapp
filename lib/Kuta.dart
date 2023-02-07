
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/widgets.dart';

class DestPage extends StatefulWidget {
  const DestPage({Key? key}) : super(key: key);

  @override
  State<DestPage> createState() => _DestPageState();

}



class _DestPageState extends State<DestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

    child:  Stack(
        children: <Widget>[
          Image.asset(
            'assets/Rectangle 85.png',
            alignment: Alignment.center,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      // Your back button action
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(12, 40, 5, 0),
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 0.72 * MediaQuery.of(context).size.width,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      // Your heart icon action
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(12, 40, 5, 0),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),


                  ),
                ],
              ),


            ],
          ),

Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, Color.fromRGBO(0, 0, 0, 0.90)],

    ),
  ),
        child:   Padding(

            padding: EdgeInsets.fromLTRB(15, 45, 20, 20),

            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(

                  padding: EdgeInsets.fromLTRB(3, 20, 3, 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Text(
                            'Kuta Beach',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 0.40*MediaQuery.of(context).size.width,),

                          SvgPicture.asset(
                            'assets/location.svg',
                            alignment: Alignment.centerRight,
                          ),

                          SizedBox(width: 8),

                          Text(
                            'Goa, India',
                            style: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),


                        ],
                      ),







                      SizedBox(height: 0.030*MediaQuery.of(context).size.height),
                      Text(
                        'One of the most happening beaches in Goa, Baga Beach is where you will find water sports, '

                            'fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered '

                            'by Calangute and Anjuna Beaches.',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0.040*MediaQuery.of(context).size.height),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star, size: 16, color: Colors.yellow),
                      Icon(Icons.star, size: 16, color: Colors.yellow),
                      Icon(Icons.star, size: 16, color: Colors.yellow),
                      Icon(Icons.star, size: 16, color: Colors.yellow),
                      Icon(Icons.star, size: 16, color: Colors.white),
                      Text(
                        ' 4.8',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0.050*MediaQuery.of(context).size.height),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Text(
                      '15,000/person',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 0.45*MediaQuery.of(context).size.width,
                    ),





                    ElevatedButton(
                      onPressed: () {},

                      child: Text('Book Now',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      //color: const Color(0x00fcd240),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 252, 194, 64)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),


              ],
            ),
          ),
          ),
        ],
      ),
      ),
    );
  }
}
/* Padding(
              padding: EdgeInsets.fromLTRB(15, 45, 20, 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                 SizedBox(height: 20),
                  ElevatedButton(
                   onPressed: () {},
                    child: Text('Button'),

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
*/
