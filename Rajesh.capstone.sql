
--Final analysis report with the results.

--1) Retrieve the food items with the highest calorie content per serving.

-- result:- Salmon, Atlantic/Coho/Sockeye /Chinook,Rainbow Trout,Scallops, about 6 large or 14 small. are the top 3 Highest calories foods.
SELECT FOOD_AND_SERVING,CALORIES FROM my_project 
ORDER BY CALORIES DESC;


--2) Find the total number of unique food types in the dataset.

-- result:- Seafood, Serving Size (84 g/3 oz),Vegetables, Serving Size (gram weight/Êounce weight),Fruits ServingÊSize (gramÊweight/ounceÊweight)  are unique food_types.
SELECT FOOD_TYPE,count(distinct FOOD_TYPE)
FROM my_project GROUP BY FOOD_TYPE; 


--3) Calculate the average sodium content per serving for all food items.

-- result:- Average sodium content per serving are a)Seafood, Serving Size (84 g/3 oz) = 124.52
-- b)Vegetables, Serving Size (gram weight/Êounce weight) = 28.25
-- c)Fruits ServingÊSize (gramÊweight/ounceÊweight) = 3,75.
SELECT FOOD_TYPE,AVG(SODIUM) as avg_sodium 
FROM my_project GROUP BY FOOD_TYPE;


--4) List the food items that have more than 20% of the daily recommended value for saturated fat. 

-- result:- Catfish,Oysters, about 12 medium,Rainbow Trout, Salmon, Atlantic/Coho/Sockeye /Chinook, Salmon,ÊChum/Pink,Swordfish,Tilapia 
--   are have more than 20% of the daily recommended 
--   value for saturated fat
SELECT FOOD_AND_SERVING,PROTEIN,
saturated_fat2,(saturated_fat2/20) * 100 
AS saturated_fat_percentage
FROM my_project
WHERE (saturated_fat2/20) * 100 > 20;


--5) Retrieve the top 10 food items with the highest protein content.

-- result:- Broccoli,Asparagus,Cauliflower,Carrot,Cucumber,Green (SnapBeans,GreenÊCabbage,Bell Pepper,Green Onion,
--   Celery, 2 medium stalks are top 10 food items with 
--   the highest protein content.
SELECT FOOD_AND_SERVING,PROTEIN  FROM my_project 
WHERE ROWNUM <= 10 ORDER BY PROTEIN DESC ;


--6) Find the food items with the highest potassium content per serving among those with more than 10g of total carbohydrates.

-- result:- Potato, 1 medium (148 g/5.3 oz),Kiwifruit, 2 medium (148 g/5.3 oz),Banana, 1 medium (126 g/4.5 oz) are top 3 
-- highest potassium foods/more than 10g of total carbohydrates
select FOOD_AND_SERVING,max(POTASSIUM) 
as highest_potassium
from my_project
where TOTAL_CARBO_HYDRATE > '10' 
group by FOOD_AND_SERVING order by highest_potassium desc;


--7) Calculate the total number of calories in the dataset and the percentage of calories contributed by sugars. 

-- result:- Total_num_of_cal = 4425, Percentage_sugar_calories = 6.80.
SELECT sum(CALORIES) as total_num_of_cal, 
(SUM(sugars) / SUM(calories)) * 100 
AS percentage_sugar_calories
FROM my_project;


--8) List the food items with more than 5g of dietary fibre and order them by their fibre content. 

 -- result:- Pear, 1 medium (166 g/5.9 oz) is is having more than 5g of dietary fibre.
SELECT FOOD_AND_SERVING,DIETARY_FIBER
FROM my_project
WHERE DIETARY_FIBER > '5' ORDER BY DIETARY_FIBER ;


--9) Retrieve the food items where the calories from fat are more than 30% of the total calories.

-- result:- Avocado,Catfish,Oysters,Rainbow Trout, Salmon, Swordfish are having more than 30% of the total calories.
SELECT FOOD_AND_SERVING
FROM my_project
WHERE (CALORIESÊFROM_FAT/calories)*100 >'30';


--10)  Calculate the average percentage of daily recommended vitamin A for all food items.

-- result:- 1.28 is a daily recommended vitamin A for all food items.Based on general dietary guidelines i took 900IU
SELECT AVG((vitamin_a /900) * 100) AS vitamin_A_percentage
FROM my_project;


--11) . Find the food items with the highest calcium content per serving among those classified as a certain food type. 

-- result:- Seafood is having highest_calcium which is 3.7.
SELECT FOOD_TYPE, avg(CALCIUM) as highest_calcium
FROM my_project group by FOOD_TYPE 
ORDER BY highest_calcium desc ;


--12)  List the top 5 food types with the highest average sodium content per serving. 


-- result:- Blue Crab,Lobster,Scallops,Oysters,Shrimp are top 5 highest average sodium content per serving
SELECT FOOD_AND_SERVING, AVG(Sodium) 
AS Avg_sodium FROM my_project
GROUP BY FOOD_AND_SERVING ORDER BY Avg_sodium DESC;

--13)  Calculate the total number of food items in each food type and order them by the count.

-- result:- Vegetables having 20 of Total_num_of_fooditems,
--    Fruits having 20 of Total_num_of_fooditems,
--    Seafood having 21 of Total_num_of_fooditems
SELECT count(FOOD_AND_SERVING) 
AS Total_num_of_fooditems,FOOD_TYPE
FROM my_project
GROUP BY FOOD_TYPE ORDER BY count(FOOD_AND_SERVING);


--14)  Retrieve the food items where the ratio of calories to protein is the highest.

-- result:- Asparagus is having highest Proteinratio
SELECT FOOD_AND_SERVING, CALORIES,(CALORIES/ PROTEIN)
AS Proteinratio
FROM my_project WHERE PROTEIN > 0 and
ROWNUM <= 1 ORDER BY Proteinratio DESC;

--15) Find the food items with the lowest ratio of calories to total carbohydrates among those with less than 10g of sugar.

-- result:- Asparagus having highest Carbohydratesratio.
SELECT FOOD_AND_SERVING,(CALORIES/TOTAL_CARBO_HYDRATE) 
AS Carbohydratesratio
FROM my_project 
WHERE SUGARS < 10 AND TOTAL_CARBO_HYDRATE > 0 and
ROWNUM <= 1 ORDER BY Carbohydratesratio desc;


--Conclusion:-
--Top High-Calorie Foods: Salmon seafood.
--vegetables, and fruits 
--are unique foods.
--Seafood has the highest average sodium content (124.52 mg).
--Broccoli, Asparagus,Cauliflower are highest protein foods.
--Pears are noted for having more than 5g of dietary fiber.
--Vitamin A across food items is 1.28%.
--Seafood is highest calcium content (3.7 mg).

















