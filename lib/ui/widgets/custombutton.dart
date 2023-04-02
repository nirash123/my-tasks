import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function()? onTap;

  const CustomButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(offset: Offset(0, 1), color: Colors.black)
        ], borderRadius: BorderRadius.circular(22), color: Colors.white),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 100,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90),
                      topLeft: Radius.circular(90),
                      bottomRight: Radius.circular(200))),
              child: Text(label, style: const TextStyle(color: Colors.white)),
            ),
            const Icon(
              Icons.book,
              size: 25.0,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
