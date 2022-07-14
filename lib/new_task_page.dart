import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTaskPage extends StatelessWidget {
  const NewTaskPage({
    Key? key,
    required this.text,
    required this.text2,
    required this.icn,
  }) : super(key: key);

  final String text;
  final String text2;
  final IconData icn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2186D8),
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.menu),
          )
        ],
      ),
      body: TaskPageBody(
        text: text,
        text2: text2,
        icn: icn,
      ),
    );
  }
}

class TaskPageBody extends StatefulWidget {
  const TaskPageBody({
    Key? key,
    required this.text,
    required this.text2,
    required this.icn,
  }) : super(key: key);

  final String? text;
  final String? text2;
  final IconData icn;

  @override
  // ignore: no_logic_in_create_state
  State<TaskPageBody> createState() => _TaskPageBodyState(
        text: text!,
        text2: text2!,
        icn: icn,
      );
}

class _TaskPageBodyState extends State<TaskPageBody> {
  final String text;
  final String text2;
  final IconData icn;

  _TaskPageBodyState({
    required this.text,
    required this.text2,
    required this.icn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFF2186D8),
      child: Column(
        children: [
          SizedBox(
            height: 230,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  left: 60,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      icn,
                      color: const Color(0xFF2186D8),
                      size: 40,
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 70,
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 170,
                  left: 70,
                  child: Text(
                    text2,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height - 310,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: const [
                HeadingText(
                  text: 'Late',
                ),
                CheckBoxx(
                  boldText: 'Call Max',
                  regularText: '20:15 April 29',
                  regularTextClr: Colors.red,
                ),
                SizedBox(height: 20),
                HeadingText(text: 'Today'),
                SizedBox(height: 10),
                CheckBoxx(
                  boldText: 'Practice Piano',
                  regularText: '16:00',
                  boldTextclr: Colors.black,
                  regularTextClr: Colors.grey,
                ),
                SizedBox(height: 15),
                CheckBoxx(
                  boldText: 'Learn Spanish',
                  regularText: '17:00',
                ),
                SizedBox(height: 10),
                HeadingText(text: 'Done'),
                SizedBox(height: 10),
                CheckBoxx(
                  boldText: 'Finalize Presentation',
                  regularText: '9:00  11:00',
                  boldTextclr: Colors.blue,
                  regularTextClr: Colors.grey,
                ),
                SizedBox(height: 15),
                CheckBoxx(
                  boldText: 'Develop A New Mobile App',
                  regularText: '12:00',
                  boldTextclr: Colors.blue,
                  regularTextClr: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  const HeadingText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 25, bottom: 18),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}

class CheckBoxx extends StatefulWidget {
  const CheckBoxx({
    Key? key,
    required this.boldText,
    required this.regularText,
    this.regularTextClr = Colors.grey,
    this.boldTextclr = Colors.black,
  }) : super(key: key);

  final String boldText;
  final String regularText;
  final Color regularTextClr;
  final Color boldTextclr;

  @override
  // ignore: no_logic_in_create_state
  State<CheckBoxx> createState() => _CheckBoxxState(
        boldText: boldText,
        regularText: regularText,
        regularTextClr: regularTextClr,
        boldTextclr: boldTextclr,
      );
}

class _CheckBoxxState extends State<CheckBoxx> {
  bool valuess = false;
  final String boldText;
  final String regularText;
  final Color regularTextClr;
  final Color boldTextclr;

  _CheckBoxxState({
    required this.boldText,
    required this.regularText,
    this.regularTextClr = Colors.grey,
    this.boldTextclr = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: valuess,
      onChanged: (bool? newValue) {
        setState(() {
          valuess = newValue!;
        });
      },
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              boldText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: boldTextclr,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              regularText,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: regularTextClr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
