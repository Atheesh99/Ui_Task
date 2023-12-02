// ignore_for_file: prefer_const_constructors

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
      show: true,
      bottomTitles: AxisTitles(
          sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 22,
        getTitlesWidget: (value, meta) {
          switch (value.toInt()) {
            case 2:
              return Text('Sun');
            case 4:
              return Text('Mon');
            case 6:
              return Text('tue');
            case 8:
              return Text('wed');
            case 10:
              return Text('thu');
            case 12:
              return Text('fri');
          }
          return Text('');
        },
      )),
      leftTitles: AxisTitles(
          sideTitles: SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          switch (value.toInt()) {
            case 1:
              return Text('0');
            case 3:
              return Text('2');
            case 5:
              return Text('5');
            case 8:
              return Text('10');
          }

          return Text('');
        },
      )),
      topTitles: AxisTitles(sideTitles: SideTitles()),
      rightTitles: AxisTitles(sideTitles: SideTitles()));
}
