import 'package:flutter/material.dart';

import '../../../../assets/images.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 82),
              child: WeatherApp(),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 340,
          height: 350.56,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFF99B8CC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
          ),
          child: Stack(
            children: [
              const Positioned(
                left: 81,
                top: 164.70,
                child: SizedBox(
                  width: 160,
                  height: 18.41,
                  child: Text(
                    'Tashkent, Uzbekistan',
                    style: TextStyle(
                      color: Color(0xFFE4F1F9),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 125,
                top: 135.64,
                child: SizedBox(
                  width: 72,
                  height: 25.19,
                  child: Text(
                    'Snowy',
                    style: TextStyle(
                      color: Color(0xFFE4F1F9),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 231.55,
                child: Container(
                  width: 289,
                  height: 69.76,
                  child: const Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 289,
                          height: 19.62,
                          child: Text(
                            'Wind speed:                                                  11.2 km/h',
                            style: TextStyle(
                              color: Color(0xFFE4F1F9),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 25.19,
                        child: SizedBox(
                          width: 285,
                          height: 19.38,
                          child: Text(
                            'Humidity:                                                       71%',
                            style: TextStyle(
                              color: Color(0xFFE4F1F9),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 50.38,
                        child: SizedBox(
                          width: 285,
                          height: 19.38,
                          child: Text(
                            'Cloud:                                                             25%',
                            style: TextStyle(
                              color: Color(0xFFE4F1F9),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 85,
                top: 15.50,
                child: SizedBox(
                  width: 151,
                  height: 36.82,
                  child: Text(
                    '22 Jan 2024',
                    style: TextStyle(
                      color: Color(0xFFE4F1F9),
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 81,
                top: 64,
                child: Container(
                  width: 158,
                  height: 60,
                  child: const Stack(
                    children: [
                      Positioned(
                        left: 101,
                        top: 0,
                        child: SizedBox(
                          width: 55,
                          height: 60,
                          child: Text(
                            '-8',
                            style: TextStyle(
                              color: Color(0xFFE4F1F9),
                              fontSize: 40,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
