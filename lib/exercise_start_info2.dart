import 'package:flutter/material.dart';
import 'Demonstration_exercise.dart';

class ExerciseStartInfo2Page extends StatefulWidget {
  @override
  _ExerciseStartInfo2PageState createState() => _ExerciseStartInfo2PageState();
}

class _ExerciseStartInfo2PageState extends State<ExerciseStartInfo2Page> {
  @override
  void initState() {
    super.initState();
    // 5초 후에 DemonstrationExercisePage로 이동
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DemonstrationExercisePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              '오늘의 운동을\n안내합니다',
              style: TextStyle(
                fontSize: 100,
                fontFamily: "PaperlogyBold",
                color: Color(0xFF265A5A),
              ),
            ),
            SizedBox(height: screenHeight * 0.06),
            _buildInfoBox(context, '운동 시간', '1시간', screenWidth, screenHeight),
            SizedBox(height: screenHeight * 0.02),
            _buildInfoBox(context, '운동 부위', '상체', screenWidth, screenHeight),
            SizedBox(height: screenHeight * 0.02),
            _buildInfoBox(context, '운동 갯수', '4가지', screenWidth, screenHeight),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoBox(BuildContext context, String title, String content,
      double screenWidth, double screenHeight) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center, // Column 내용도 중앙 정렬
      children: [
        Center(  // 텍스트를 중앙에 배치
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "PaperlogyBold",
              fontSize: screenWidth * 0.1,
              fontWeight: FontWeight.bold,
              color: Color(0xFF265A5A),
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.01),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.028),
          decoration: BoxDecoration(
            color: Color(0xFFE0E8E8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "PaperlogySemiBold",
              fontSize: screenWidth * 0.07,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
