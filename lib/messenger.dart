import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  const Messenger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leadingWidth: 60,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/pic2.jpg'),
        ),
        title: const Text(
          'Chats',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            maxRadius: 30,
            child: const Icon(
              Icons.camera_alt,
              size: 25,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            maxRadius: 30,
            child: const Icon(
              Icons.edit,
              size: 25,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        //physics: AlwaysScrollableScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 55,
                width: 355,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      iconColor: Colors.grey,
                      labelText: 'search',
                      hintText: 'search',
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 22),
                      focusedBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 120,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 25,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 15,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Stack(
                          //alignment: AlignmentDirectional.center,
                          //clipBehavior: Clip,
                          children: [
                            Container(
                              height: 75,
                              width: 75,
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
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(27 / 2),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Ali',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 25,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    //minLeadingWidth: 50,
                      leading: Stack(
                        //alignment: AlignmentDirectional.center,
                        //clipBehavior: Clip,
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/pic2.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Positioned(
                            right: 3,
                            bottom: 0,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(27 / 2),
                              ),
                            ),
                          )
                        ],
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Kareem Ahmed',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                           SizedBox(height: 10,),
                            Text(
                            'welcome to flutter',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      trailing:const  Text(
                            '11:37 PM',
                            style:  TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ), 
                      ));
                },
              )
            ]),
      ),
    );
  }
}
