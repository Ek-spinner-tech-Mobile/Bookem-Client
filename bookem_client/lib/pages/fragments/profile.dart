import 'package:flutter/material.dart';

import '../../ui/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFF8F6),
      child: ListView(
        children: [
          const Center(
            child: Text('Appointments',
                style: TextStyle(
                    color: Color(0xff0B3D48),
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(

              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://googleflutter.com/sample_image.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Jhon Doe',
                  style: TextStyle(
                      color: Color(0xff0B3D48),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'JhonDoe@gmail.com',
                  style: TextStyle(
                      color: Color(0xffBBBBBB),
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32.0 ,0,32,0),
            child: Container(height: 1,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                profileSummery("Services Brought" , "134"),
                profileSummery("Appointments" , "2"),
                profileSummery("Service Today" , "1"),
              ],
            ),
          ),
           Card(
             margin: const EdgeInsets.all(0.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32.0),
                  topLeft: Radius.circular(32.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  profileMenuOption("Settings" , "assets/images/settings.png"),
                  profileMenuOption("Account" , "assets/images/pp.png"),
                  profileMenuOption("Payment Method" , "assets/images/Wallet.png" , showBorder: true),
                  profileMenuOption("Information" , "assets/images/Vector.png"),
                  profileMenuOption("Logout" , "assets/images/Vector-1.png"),
                  const SizedBox(height: 100)
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
