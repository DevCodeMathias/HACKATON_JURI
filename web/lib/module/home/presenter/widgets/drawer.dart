import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_juridico/core/style/colors.dart';
import 'package:website_juridico/core/style/text_style.dart';

class DrawerGlobal extends StatelessWidget {
  const DrawerGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 44,
                      height: 44,
                      child: Image.asset('assets/profile.png')
                      ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Laura",
                          style: GoogleFonts.poppins(
                              textStyle: styleModifier.smallBlack),
                        ),
                        Text("Analista Senior", style: GoogleFonts.poppins(),)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.dashboard,
              color: AppColors.primary,
            ),
            title: const Text('Dashboard'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: AppColors.primary,
            ),
            title: const Text('Deslogar'),
            onTap: () {
              Modular.to.navigate("/");
            },
          ),
        ],
      ),
    );
  }
}
