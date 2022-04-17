import 'package:flutter/material.dart';

import '../../ui/widgets.dart';

class MyAppointmentList extends StatelessWidget {
  const MyAppointmentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children:  [
           const Text('Appointments' , style: TextStyle(color: Color(0xff0B3D48) , fontSize: 18),),
            appointmentItem() ,
            appointmentItem() ,
            appointmentItem() ,
            appointmentItem() ,
            appointmentItem() ,
            appointmentItem() ,
            appointmentItem() ,
            appointmentItem() ,


          ],
        ),
      ),
    );
  }
}
