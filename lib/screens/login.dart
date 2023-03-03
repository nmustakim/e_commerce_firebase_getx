// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import '../constants/constants.dart';
// import '../widgets/bottom_row.dart';
// import '../widgets/reusable_part.dart';
// import 'registration.dart';
//
// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);
//
//   @override
//   State<Login> createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   FirebaseAuth? firebaseAuth;
//   TextEditingController? emailController;
//   TextEditingController? passwordController;
//   @override
//   void initState() {
//     emailController = TextEditingController();
//     passwordController = TextEditingController();
//     firebaseAuth = FirebaseAuth.instance;
//     super.initState();
//   }
//   signIn()async{
//     try {
//       final credential = await FirebaseAuth.instance
//           .signInWithEmailAndPassword(
//           email: emailController!.text,
//           password: passwordController!.text);
//       var authCredential = credential.user;
//       if(authCredential!.uid.isNotEmpty){
//         // Navigator.push(context, MaterialPageRoute(builder: (context)=>const null()));
//       }
//
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: const Text("User not found"),
//           action: SnackBarAction(label: 'Cancel', onPressed: (){
//             Navigator.pop(context);
//           }),),
//         );
//
//       }
//       else if (e.code == 'wrong-password') {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: const Text("Wrong password!"),
//           action: SnackBarAction(label: 'Cancel', onPressed: (){
//             Navigator.pop(context);
//           }),),
//         );
//
//       }
//     }
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ReusableBodyPart(
//          topMargin: 120,
//         childWidget: Padding(
//           padding:   defaultPadding3,
//           child: Column(
//
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//
//               Text("Sign In", style:   titleTextStyle1),
//               const SizedBox(height: 8,),
//               Text("Welcome back to explore the pure & fresh groceries of ShopEasy", style:   bodyTextStyle2),
//               const SizedBox(
//                 height: 12,
//               ),
//
//               SizedBox(height: 50,
//                   child: TextField(
//                       controller: emailController,
//                       decoration: InputDecoration(
//
//                           filled: true,
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(12)
//                           ))
//                   )),
//               const SizedBox(height: 8,),
//
//
//               SizedBox(height: 50,
//                   child: TextField(
//                       obscureText: true,
//                       controller: passwordController,
//                       decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(12)
//                           ))
//                   )),
//               const SizedBox(
//                 height: 20,
//               ),
//         Row(
//           children: [
//             Expanded(
//               child: ElevatedButton(style:ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: Colors.red),onPressed: ()=>null,child: Text('gfvu'),
//               ),
//             ),
//           ],
//         ),
//
//          TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));}, child: Text("Forgot password?",style:   bodyTextStyle1.copyWith(color: Colors.red),)),
//               // Padding(
//               //   padding: const EdgeInsets.only(top: 25),
//               //   child: BottomRow(
//               //       navigatingScreen: const Login(),
//               //       bottomText: "Don't have account?",
//               //       buttonName: "Sign Up"),
//               // ),
//             ],
//           ),
//         ));
//   }
// }
