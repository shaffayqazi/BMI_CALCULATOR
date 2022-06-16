import 'package:bmical/HomePage.dart';
import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          DataTable(
            showCheckboxColumn: true,
            columnSpacing: 20,
            horizontalMargin: 20,

            columns: const [
              DataColumn(
                label: Text(
                  "BMI",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              DataColumn(
                label: Text(
                  "Nutritional Status",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    Text(
                      "Below 18.5",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  DataCell(
                    Text(
                      "                 UnderWeight",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    Text(
                      "18.5-24.9",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  DataCell(
                    Text(
                      "                 Normal Weight",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    Text(
                      "25.0-29.9",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  DataCell(Text(
                    "                 Pre-Obesity",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    Text(
                      "30.0-34.9",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  DataCell(
                    Text(
                      "                 Obesity Class 1",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    Text(
                      "35.0-39.9",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  DataCell(
                    Text(
                      "                 Obesity Class 2",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    Text("Above 40"),
                  ),
                  DataCell(
                    Text("                 Obesity Class 3"),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              child: const Text("Back",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
              ),
        ],
      ),
    );
  }
}
