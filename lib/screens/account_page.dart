import 'package:doctor_app/screens/account_dummy_screen.dart';
import 'package:doctor_app/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(        backgroundColor: Colors.transparent,
    //     elevation: 0,
    //     title: const Text("Profile", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
    //   ),
    //   body: Column(
    //     children:[
    //       SizedBox(
    //       height: 115,
    //       width: 115,
    //       child: Stack(
    //         fit: StackFit.expand,
    //         children: const [
    //           CircleAvatar(backgroundImage: AssetImage("assets/images/1.png"),
    //           ),
    //         ],
    //
    //       )
    //     ) ,
    //       const SizedBox(height: 146,width: 146,
    //         child: Center(child: Text("mein code  nhi krunga ")),)
    //   ],
    //   ),
    // );
    //
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                  width: 150,
                  height: 150,
                  child: Stack(
                    fit: StackFit.expand,
                    children:  [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/user.jpg"),
                      ),
                      Positioned(
                        right: -3,
                        bottom: 0,
                          child:
                          Container(
                            width:50,
                            height: 50,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                              ),
                              child: InkWell(
                                onTap: (){
                                  print("clicked");
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountDummyScreen(index:7)));
                                },
                                  child: const Icon(Icons.camera_enhance_outlined)),
                            ),

                          )

                    ],
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(top: 15,bottom: 15,left: 12, right: 12),
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(19)),
                // color: Colors.blueAccent
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountDummyScreen(index: 0)));
                },
                child: Row(
                  children: [
                    const Icon(Icons.person_outline,size: 30,),
                    const SizedBox(width: 15,),
                    const Text("My Account"),
                    Expanded(child: Container()),
                    const Icon(Icons.arrow_forward_ios_outlined,size: 20,)

                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.only(top: 15,bottom: 15,left: 12, right: 12),
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(19)),
                // color: Colors.blueAccent
              ),
              child: InkWell(
                onTap: (){
                  print("clicked my age");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountDummyScreen(index: 1)));
                },
                child: Row(
                  children: [
                    const Icon(Icons.edit_calendar_outlined,size: 30,),
                    const SizedBox(width: 15,),
                    const Text("Age"),
                    Expanded(child: Container()),
                    const Icon(Icons.arrow_forward_ios_outlined,size: 20,)

                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.only(top: 15,bottom: 15,left: 12, right: 12),
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(19)),
                // color: Colors.blueAccent
              ),
              child: InkWell(
                onTap: (){
                  print("clicked gender");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountDummyScreen(index: 2)));
                },
                child: Row(
                  children: [
                    const Icon(Icons.transgender_outlined,size: 30,),
                    const SizedBox(width: 15,),
                    const Text("Gender"),
                    Expanded(child: Container()),
                    const Icon(Icons.arrow_forward_ios_outlined,size: 20,)

                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.only(top: 15,bottom: 15,left: 12, right: 12),
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(19)),
                // color: Colors.blueAccent
              ),
              child: InkWell(
                onTap: (){
                  print("clicked my height");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountDummyScreen(index: 3)));
                },
                child: Row(
                  children: [
                    const Icon(Icons.person_outline,size: 30,),
                    const SizedBox(width: 15,),
                    const Text("Height"),
                    Expanded(child: Container()),
                    const Icon(Icons.arrow_forward_ios_outlined,size: 20,)

                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.only(top: 15,bottom: 15,left: 12, right: 12),
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(19)),
                // color: Colors.blueAccent
              ),
              child: InkWell(
                onTap: (){
                  print("clicked my weight");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountDummyScreen(index: 4)));
                },
                child: Row(
                  children: [
                    const Icon(Icons.person_outline,size: 30,),
                    const SizedBox(width: 15,),
                    const Text("Weight"),
                    Expanded(child: Container()),
                    const Icon(Icons.arrow_forward_ios_outlined,size: 20,)

                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.only(top: 15,bottom: 15,left: 12, right: 12),
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(19)),
                // color: Colors.blueAccent
              ),
              child: InkWell(
                onTap: (){
                  print("clicked my dob");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountDummyScreen(index: 5)));
                },
                child: Row(
                  children: [
                    const Icon(Icons.person_outline,size: 30,),
                    const SizedBox(width: 15,),
                    const Text("Date of Birth"),
                    Expanded(child: Container()),
                    const Icon(Icons.arrow_forward_ios_outlined,size: 20,)

                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.only(top: 15,bottom: 15,left: 12, right: 12),
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(19)),
                // color: Colors.blueAccent
              ),
              child: InkWell(
                onTap: (){
                  print("clicked my phone");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountDummyScreen(index: 6)));
                },
                child: Row(
                  children: [
                    const Icon(Icons.person_outline,size: 30,),
                    const SizedBox(width: 15,),
                    const Text("Phone No."),
                    Expanded(child: Container()),
                    const Icon(Icons.arrow_forward_ios_outlined,size: 20,)

                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.only(top: 15,bottom: 15,left: 12, right: 12),
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(19)),
                // color: Colors.blueAccent
              ),
              child: InkWell(
                onTap: (){
                  print("clicked switch account");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountDummyScreen(index: 7)));
                },
                child: Row(
                  children: [
                    const Icon(Icons.person_outline,size: 30,),
                    const SizedBox(width: 15,),
                    const Text("My Switch Account"),
                    Expanded(child: Container()),
                    const Icon(Icons.arrow_forward_ios_outlined,size: 20,)

                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.only(top: 15,bottom: 15,left: 12, right: 12),
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(19)),
                // color: Colors.blueAccent
              ),
              child: InkWell(
                onTap: (){
                  print("clicked Log out");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInScreen()));
                },
                child: Row(
                  children: [
                    const Icon(Icons.person_outline,size: 30,),
                    const SizedBox(width: 15,),
                    const Text("Log Out"),
                    Expanded(child: Container()),
                    const Icon(Icons.arrow_forward_ios_outlined,size: 20,)

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
