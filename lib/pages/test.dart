// import 'package:flutter/material.dart';
// class TestFile extends StatefulWidget {
//   const TestFile({super.key});

//   @override
//   State<TestFile> createState() => _TestFileState();
// }

// class _TestFileState extends State<TestFile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(children: [
//         SliverList(
//             delegate: SliverChildListDelegate([
//           FutureBuilder(
//             future: DoctorController().getDoctors(),
//             builder: (context, AsyncSnapshot<List<Doctor>> snapshot) {
//               if (snapshot.hasData) {
//                 return Column(
//                   children: snapshot.data!
//                       .map((doctor) => DoctorCard(
//                             doctor: doctor,
//                           ))
//                       .toList(),
//                 );
//               } else {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//             },
//           )
//         ]))
//       ],),
//     );
//   }
// }