import 'package:flutter/material.dart';
import '../../API/Fetching.dart';

class CardApi extends StatelessWidget {
  CardApi({super.key});

  var companyCode = "";
  var companyName = "";

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3.0,
      color: Colors.orangeAccent,
      child: Container(
        padding: EdgeInsets.all(8),
        width: 380,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                      child: Icon(Icons.numbers_rounded, color: Colors.grey)),
                  TextSpan(
                    text: "  Código de la empresa: $companyCode",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 4)),
            Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(Icons.other_houses, color: Colors.grey),
                  ),
                  TextSpan(
                    text: "  Nombre de la empresa: $companyName",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
