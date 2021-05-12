import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                        "https://cdn2.iconfinder.com/data/icons/social-productivity-line-art-1/128/feedback-512.png",
                        height: 40.0,
                        color: Colors.blue,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Code Send to +91-98011212312',
                              style: GoogleFonts.lato(fontSize: 14.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Edit Number',
                              style: GoogleFonts.lato(fontSize: 17.0,
                              color: Colors.black),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.8,
                        height: 50,
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.blue)),
                        child: TextField(
                          textAlign: TextAlign.start,
                          style: GoogleFonts.lato(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                          keyboardType: TextInputType.number,
                          onChanged: (mobile) => {},
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter 6 digit code',
                              hintStyle: GoogleFonts.lato(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: InkWell(
                        onTap: ()=>{

                        },
                        child: Text(
                          'RESEND CODE',
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Colors.blue),
                        ),
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
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Text(
                          'SUBMIT',
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

// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => Page2(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       return child;
//     },
//   );
// }
}
