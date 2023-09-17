import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:website_juridico/core/style/text_style.dart';

class RenderInfo extends StatefulWidget {
  final String UF;
  final String age;
  final String gender;
  final String percent;
  final double percentData;

  const RenderInfo(
      {super.key,
      required this.UF,
      required this.age,
      required this.gender,
      required this.percent,
      required this.percentData});

  @override
  State<RenderInfo> createState() => _RenderInfoState();
}

class _RenderInfoState extends State<RenderInfo> {
  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Container(
      width: 443,
      height: 744,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: SizedBox(
                height: 200,
                width: 229,
                child: Image.asset('assets/avatar.png')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 65,
                  ),
                  Text("UF",
                      style: GoogleFonts.poppins(
                          textStyle: styleModifier.smallSemiPlusBlack)),
                  Text("SP")
                ],
              ),
              Column(
                children: [
                  Text("Idade",
                      style: GoogleFonts.poppins(
                          textStyle: styleModifier.smallSemiPlusBlack)),
                  Text("${widget.age}")
                ],
              ),
              Column(
                children: [
                  Text("Genero",
                      style: GoogleFonts.poppins(
                          textStyle: styleModifier.smallSemiPlusBlack)),
                  Text("${widget.gender}")
                ],
              ),
            ],
          ),
          Text("Risco",
              style:
                  GoogleFonts.poppins(textStyle: styleModifier.smallPlusBlack)),
          CircularPercentIndicator(
            radius: 120,
            animation: true,
            animationDuration: 1200,
            lineWidth: 25.0,
            percent: widget.percentData,
            center: SizedBox(
              width: 100,
              child: Text(
                "${widget.percent} %",
                style:
                    GoogleFonts.poppins(textStyle: styleModifier.mediumBlack),
              ),
            ),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.yellow,
            progressColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
