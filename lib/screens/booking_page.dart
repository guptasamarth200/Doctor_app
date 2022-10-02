import 'package:doctor_app/widgets/booking_slot.dart';
import 'package:flutter/material.dart';
class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: <Widget>[
            Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              child: AppBar(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                flexibleSpace: Image(image: AssetImage("assets/images/user.jpg"),fit: BoxFit.fill,),
              ),
            ),
            BookingSlots(),
          ],
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     elevation: 0,
    //     backgroundColor: Colors.transparent,
    //     title: const Text("Booking Appointment"),
    //   ),
    //
    //   body: SingleChildScrollView(
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         const SizedBox(height: 15,width: 15,),
    //         Container(
    //           width: double.infinity,
    //           padding: const EdgeInsets.all(20),
    //           height: 160,
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //               image: const DecorationImage(
    //                 image: NetworkImage("https://st4.depositphotos.com/2895903/39411/v/950/depositphotos_394113578-stock-illustration-hospital-reception-vector-illustration-cartoon.jpg?forcejpeg=true"),
    //                 fit: BoxFit.cover,)
    //           ),
    //         ),
    //         // SizedBox(height: 15,),
    //             const Text("Book your Slot", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
    //         const SizedBox(height:10),
    //
    //       ],
    //     ),
    //   ),
    // );
  }
}
