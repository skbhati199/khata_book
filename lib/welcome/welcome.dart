import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khata_book/sign/sign_in.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Khatabook.svg/1280px-Khatabook.svg.png",
                          height: 40,
                        ),
                        InkWell(
                          onTap: () => {

                          },
                          child: Row(
                            children: [
                              Text(
                                'English',
                                style: GoogleFonts.lato(fontSize: 16.0, color: Colors.blue[900]),
                              ),
                              Icon(Icons.arrow_drop_down_outlined, color: Colors.blue[900],)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                    "https://www.adgully.com/img/800/202003/dhoni-khatabook-for-pr.png.jpg"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Manage you business: Send reminders and receive \npayments',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://thumbs.dreamstime.com/b/safe-secure-product-vector-stamp-isolated-white-background-186852667.jpg",
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Trusted by 2 Core+ businesses across india'),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      color: Colors.blue[900],
                      onPressed: () {
                        Navigator.of(context).push(_createRoute());
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        child: Text(
                          'START USING KHATABOOK',
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ));
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SignInScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}
