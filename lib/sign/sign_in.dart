import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khata_book/otp/otp.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://thumbs.dreamstime.com/b/safe-secure-product-vector-stamp-isolated-white-background-186852667.jpg",
                  height: 60.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Trusted by 2 Core+ businesses across india',
                    style: GoogleFonts.lato(fontSize: 15.0),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.blue)),
                  child: CountryCodePicker(
                    onChanged: print,
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'IN',
                    favorite: ['+91', 'IN'],
                    // optional. Shows only country name and flag
                    showCountryOnly: false,
                    showFlag: true,
                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    textStyle: GoogleFonts.lato(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                    ),
                    // optional. aligns the flag and the Text left
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 300,
                  height: 60,
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.blue)),
                  child: TextField(
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lato(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                    keyboardType: TextInputType.number,
                    onChanged: (mobile) => {},
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mobile Number',
                        hintStyle: GoogleFonts.lato(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54)),
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 1,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      'GET PIN',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  )),
            )
          ],
        ),
      ),
    ));
  }

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => OTPScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
}
