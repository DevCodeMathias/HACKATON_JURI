import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:website_juridico/module/home/presenter/widgets/drawer.dart';
import 'package:website_juridico/module/home/presenter/widgets/render_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class DataItem {
  final String devedor;
  final String gender;
  final String cpf;
  final String divida;
  final String cidade;
  final String portfolio;
  final String age;
  final String percent;
  final double percentData;

  DataItem(
      {required this.devedor,
      required this.gender,
      required this.cpf,
      required this.divida,
      required this.cidade,
      required this.portfolio,
      required this.age,
      required this.percent,
      required this.percentData});

  factory DataItem.fromJson(Map<String, dynamic> json) {
    return DataItem(
        devedor: json['devedor'],
        gender: json['gender'],
        cpf: json['cpf'],
        divida: json['divida'],
        cidade: json['cidade'],
        portfolio: json['portfolio'],
        age: json['age'],
        percent: json['percent'],
        percentData: json['percentData']);
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedRow;
  final percent = 80;

  late List<DataItem> dataItems = [];

  @override
  void initState() {
    super.initState();
    loadItemsFromJson();
  }

  Future<void> loadItemsFromJson() async {
    try {
      final jsonString = await rootBundle.loadString(
          'assets/data_items.json'); 
      final List<dynamic> dataItemsList = json.decode(jsonString);

      setState(() {
        dataItems = dataItemsList.map((item) {
          return DataItem.fromJson(item);
        }).toList();
      });
    } catch (e) {
      print('Error loading JSON data: $e');
    }
  }

  Widget renderInfo(int? selectedRow) {
    if (selectedRow != null &&
        selectedRow >= 0 &&
        selectedRow < (dataItems.length)) {
      final item = dataItems[selectedRow];
      return RenderInfo(
        UF: item.cidade,
        age: item.age,
        gender: item.gender,
        percent: item.percent,
        percentData: item.percentData,
      );
    } else {
      return SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        elevation: 0,
      ),
      drawer: DrawerGlobal(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Analise Preditiva",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    DataTable(
                      columns: <DataColumn>[
                        DataColumn(
                          label: Text('Devedor'),
                        ),
                        DataColumn(
                          label: Text('CPF'),
                        ),
                        DataColumn(
                          label: Text('Divida'),
                        ),
                        DataColumn(
                          label: Text('Cidade'),
                        ),
                        DataColumn(
                          label: Text('Portfolio'),
                        ),
                      ],
                      rows: dataItems.asMap().entries.map((entry) {
                        final index = entry.key;
                        final item = entry.value;

                        return DataRow(
                          onSelectChanged: (isSelected) {
                            if (isSelected != null && isSelected) {
                              setState(() {
                                selectedRow = index;
                              });
                            }
                          },
                          color: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              return selectedRow == index
                                  ? Colors.blue.withOpacity(0.1)
                                  : Colors.transparent;
                            },
                          ),
                          cells: <DataCell>[
                            DataCell(Text(item.devedor)),
                            DataCell(Text(item.cpf)),
                            DataCell(Text(item.divida)),
                            DataCell(Text(item.cidade)),
                            DataCell(Text(item.portfolio)),
                          ],
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 340,
                        height: 80,
                        child: Image.asset('assets/rool.png'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 443,
                  height: 744,
                  color: Colors.white,
                  child: renderInfo(selectedRow),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
