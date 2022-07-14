import 'package:flutter/material.dart';
import 'package:to_do_app_ui/assets.dart';
import 'package:to_do_app_ui/new_task_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4E4E4),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFE4E4E4),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              menuIcn,
              width: 60,
              height: 60,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const NewTaskPage(
                text: 'All',
                text2: '23 Tasks',
                icn: Icons.abc,
              ),
            ),
          );
        },
        backgroundColor: Colors.blue[500],
        child: const Icon(Icons.add),
      ),
      body: const MainBody(),
    );
  }
}

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  final Widget height20 = const SizedBox(height: 20);
  final Widget height40 = const SizedBox(height: 40);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          height20,
          Container(
            padding: const EdgeInsets.only(left: 30),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lists',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          height40,
          ColumnssRow(
            text1: 'All',
            text2: '23 Tasks',
            text11: 'Work',
            text22: '14 Tasks',
            boldText: "All",
            regularText: '23 Tasks',
            icn: clipboard,
            icncolor: const Color(0xFF0084F0),
            boldText2: "Work",
            regularText2: '14 Tasks',
            icn2: suitcase,
            icncolor2: Colors.orange,
            icn3: Icons.paste,
            icn4: Icons.work_outline,
          ),
          height40,
          ColumnssRow(
            text1: 'Music',
            text2: '6 Tasks',
            text11: 'Travel',
            text22: '2 Tasks',
            boldText: "Music",
            regularText: '6 Tasks',
            icn: headphone,
            icncolor: Colors.redAccent,
            boldText2: "Travel",
            regularText2: '2 Tasks',
            icn2: aeroplane,
            icncolor2: Colors.green,
            icn3: Icons.music_note_outlined,
            icn4: Icons.travel_explore,
          ),
          height40,
          ColumnssRow(
            text1: 'Study',
            text2: '5 Tasks',
            text11: 'Home',
            text22: '16 Tasks',
            boldText: "Study",
            regularText: '5 Tasks',
            icn: clipboard,
            icncolor: Colors.purple,
            boldText2: "Home",
            regularText2: '16 Tasks',
            icn2: suitcase,
            icncolor2: Colors.brown,
            icn3: Icons.book_outlined,
            icn4: Icons.home,
          ),
          height40,
          ColumnssRow(
            text1: 'paint',
            text2: '3 Tasks',
            text11: 'Shopping',
            text22: '25 Tasks',
            boldText: "Paint",
            regularText: '3 Tasks',
            icn: headphone,
            icncolor: const Color(0xFF9521F3),
            boldText2: "Shopping",
            regularText2: '25 Tasks',
            icn2: aeroplane,
            icncolor2: Colors.cyan,
            icn3: Icons.portrait,
            icn4: Icons.shopping_cart_outlined,
          ),
          height40,
        ],
      ),
    );
  }
}

class ColumnssRow extends StatelessWidget {
  const ColumnssRow({
    Key? key,
    required this.icn,
    required this.boldText,
    required this.regularText,
    required this.icncolor,
    required this.icn2,
    required this.boldText2,
    required this.regularText2,
    required this.icncolor2,
    required this.text1,
    required this.text2,
    required this.text11,
    required this.text22,
    required this.icn3,
    required this.icn4,
  }) : super(key: key);
  final String icn;
  final String boldText;
  final String regularText;
  final Color? icncolor;
  final String icn2;
  final String boldText2;
  final String regularText2;
  final Color? icncolor2;
  final String text1;
  final String text2;
  final String text11;
  final String text22;
  final IconData icn3;
  final IconData icn4;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SomeColumnss(
          boldText: boldText,
          regularText: regularText,
          icn: icn,
          icncolor: icncolor,
          text: text1,
          text2: text2,
          icn2: icn3,
        ),
        SomeColumnss(
          boldText: boldText2,
          regularText: regularText2,
          icn: icn2,
          icncolor: icncolor2,
          text: text11,
          text2: text22,
          icn2: icn4,
        ),
      ],
    );
  }
}

class SomeColumnss extends StatelessWidget {
  const SomeColumnss({
    Key? key,
    required this.icn,
    required this.boldText,
    required this.regularText,
    required this.icncolor,
    required this.text,
    required this.text2,
    required this.icn2,
  }) : super(key: key);

  final String icn;
  final String boldText;
  final String regularText;
  final Color? icncolor;

  final String text;
  final String text2;

  final IconData icn2;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_function_declarations_over_variables
    void Function() onTap = () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => NewTaskPage(
            text: text,
            text2: text2,
            icn: icn2,
          ),
        ),
      );
    };

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.width / 2 - 50,
        width: MediaQuery.of(context).size.width / 2 - 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  icn,
                  width: 60,
                  height: 50,
                  color: icncolor,
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              left: 40,
              child: Text(
                boldText,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 40,
              child: Text(
                regularText,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
