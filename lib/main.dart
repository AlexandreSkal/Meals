import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import './screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import './utils/app_routes.dart';
import './screens/meal_detail_screen.dart';
import './screens/tabs_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Viajar?',
theme: ThemeData(
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(235, 240, 243, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                fontSize: 15,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
            ), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(secondary: Colors.red),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
    );
  }
}
