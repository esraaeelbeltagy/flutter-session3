import 'package:flutter/material.dart';


class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          size: 25,
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 15), child: Icon(Icons.light)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                //alignment: AlignmentDirectional.center,
                //clipBehavior: Clip,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/pic2.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(120 / 2),
                    ),
                  ),
                  Positioned(
                    right: 3,
                    bottom: 0,
                    child: Container(
                      height: 27,
                      width: 27,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(27 / 2),
                      ),
                      child: const Icon(
                        Icons.edit_outlined,
                        size: 18,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Nicolas Adams',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'NicolasAdams@gmail.com',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
               color: Colors.amber,
                 borderRadius: BorderRadius.circular(30),
              child: InkWell(
                child: Container(
                  height: 45,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Upgrade to PRO',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                height: 55,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(55 / 2)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.person_2_outlined,
                      size: 27,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        'Privacy',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 23,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                height: 55,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(55 / 2)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.update_rounded,
                      size: 27,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        ' Purchase History',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 23,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                height: 55,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(55 / 2)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.help_outline_rounded,
                      size: 27,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        'Help & Support',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 23,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                height: 55,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(55 / 2)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.settings,
                      size: 27,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        'Settings',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 23,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          
            InkWell(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                height: 55,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(55 / 2)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.person_add,
                      size: 27,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        'Invite a Friend',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 23,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                height: 55,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(55 / 2)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.logout_rounded,
                      size: 27,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        'Log Out',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
