import 'package:flutter/material.dart';

class Car extends StatelessWidget {
  const Car({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 200,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.arrow_back_ios,
                size: 23,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Back',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Available Cars for ride',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 33,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 19,
                ),
                Text(
                  '18 cars found',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff008955), width: 2),
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffe0f5ec),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 10, left: 10, bottom: 10),
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'BMW Carbio',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 23,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Automatic | 3 seats | Octane ',
                                            style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 16,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.location_pin,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '800 m (5 min away)',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Expanded(
                                    flex: 1,
                                    child: Image.asset('assets/images/car.png'),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: const Color(0xff008955),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Book later',
                                        style: TextStyle(
                                            color: Color(0xff008955),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff008955),
                                      border: Border.all(
                                        color: const Color(0xff008955),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Book later',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 30,
                      );
                    },
                    itemCount: 10)
              ],
            ),
          ),
        ));
  }
}
