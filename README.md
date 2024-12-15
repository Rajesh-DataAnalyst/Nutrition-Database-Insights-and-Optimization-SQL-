  Nutritional Analysis of Food Items

  
 Project Overview:-
This project focuses on analyzing the nutritional content of various food items using SQL. The dataset contains data on food items, their nutritional values, and other relevant metrics.

The analysis aims to uncover insights such as the highest-calorie foods, unique food types, sodium content averages, and much more.

 Objectives:-
1. Identify the top three highest-calorie food items.
2. Explore unique food types in the dataset.
3. Calculate the average sodium content per serving for each food type.
4. Highlight food items exceeding 20% of daily saturated fat values.
5. Identify the top protein-rich and potassium-rich foods.
6. Analyze the overall caloric contribution of sugar and dietary fiber across food items.
7. Evaluate calcium and vitamin A contributions across food types.

 Key Findings:-
- Top High-Calorie Foods: Salmon, Rainbow Trout, and Scallops.
- Unique Food Types: Seafood, Vegetables, and Fruits.
- Highest Sodium Content: Seafood (124.52 mg on average).
- Top Protein-Rich Foods: Broccoli, Asparagus, and Cauliflower.
- Vitamin A Contribution: Average of 1.28% of daily recommended intake.
- Highest Calcium Content: Seafood, with an average of 3.7 mg.

 SQL Queries and Analysis-
The analysis was conducted using SQL queries on the `my_project` dataset. Key queries include:
- Sorting food items by calorie count.
- Calculating averages for sodium, calcium, and other nutrients.
- Grouping by food type for insights into nutritional categories.

You can find the full SQL scripts in the `analysis` folder.

 Sample Query:
```sql
SELECT FOOD_AND_SERVING, CALORIES 
FROM my_project 
ORDER BY CALORIES DESC;
