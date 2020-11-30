import 'package:appCrescevendas/widgets/cards/raffle/raffle_card_painter.dart';
import 'package:flutter/material.dart';

class RaffleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 500,
      child: CustomPaint(
        painter: RaffleCardPainter(),
        child: Column(),
      ),
    );
  }
}

// class RaffleCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 400,
//       width: 500,
//       child: Container(
//           // height: 400,
//           // width: double.infinity,
//           child: Column(
//         children: [
//           Expanded(
//             flex: 20,
//             // fit: FlexFit.tight,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(8.0),
//                     topRight: Radius.circular(8.0),
//                     bottomLeft: Radius.circular(2.0),
//                     bottomRight: Radius.circular(2.0)),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black,
//                     blurRadius: 6.0,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: SeparatorCard(),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(2.0),
//                     topRight: Radius.circular(2.0),
//                     bottomLeft: Radius.circular(8.0),
//                     bottomRight: Radius.circular(8.0)),
//                 boxShadow: [
//                   new BoxShadow(
//                     color: Colors.black,
//                     blurRadius: 6.0,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }
