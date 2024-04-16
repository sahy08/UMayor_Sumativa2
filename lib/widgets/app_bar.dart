import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key,});

    @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Row(
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Color.fromARGB(255, 100, 100, 100),
                fontSize: 12.0,
              ),
              children: <TextSpan>[
                TextSpan(text: 'Consultas '),
                TextSpan(text: 'Online  ', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const Row(
            children: [
              Icon(Icons.phone),
              Text('600 328 1000', style: TextStyle(color: Color.fromARGB(255, 100, 100, 100), fontSize: 12.0),),
            ],
          ),
          const Spacer(),
          const Text(
            'Campus USA',
            style: TextStyle(
              color: Color.fromARGB(255, 100, 100, 100),
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          const SizedBox(width: 10.0),
          const Text(
            'Sede Temuco',
            style: TextStyle(
              color: Color.fromARGB(255, 100, 100, 100),
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 248, 219, 94),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}