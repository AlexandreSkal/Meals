import 'package:flutter/material.dart';
import 'package:galaxies/models/category.dart';
import 'package:galaxies/utils/app_routes.dart';
import '../utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {

    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Objeto para tornar ocontainer clicavel
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(8),
        child:
            Text(category.title, style: Theme.of(context).textTheme.headline6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              category.color!.withOpacity(0.6),
              category.color!,
            ],
          ),
          // image: DecorationImage(
          //     image: AssetImage(category.image!), fit: BoxFit.fill),
        ),
      ),
    );
  }
}

        //Caso queira usar image incluir no BoxDecoration
        // image: DecorationImage(
        //     image: AssetImage(category.image!),      
        //     fit: BoxFit.fill),
