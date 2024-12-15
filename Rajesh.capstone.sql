--Name : RAJESH M
--Batch: 11
--Final analysis report with the results.

--1)Salmon, Atlantic/Coho/Sockeye /Chinook,
--  Rainbow Trout,Scallops, 
--  about 6 large or 14 small. are the top 3 
--  Highest calories foods.
SELECT FOOD_AND_SERVING,CALORIES FROM my_project 
ORDER BY CALORIES DESC;

--2)Seafood, Serving Size (84 g/3 oz),Vegetables, 
--  Serving Size (gram weight/ ounce weight),
--  Fruits Serving Size (gram weight/ounce weight) 
--  are unique food_types.
SELECT FOOD_TYPE,count(distinct FOOD_TYPE)
FROM my_project GROUP BY FOOD_TYPE; 

--3)Average sodium content per serving are a)Seafood, 
--  Serving Size (84 g/3 oz) = 124.52
-- b)Vegetables, Serving Size (gram weight/ ounce weight) = 28.25
-- c)Fruits Serving Size (gram weight/ounce weight) = 3,75.
SELECT FOOD_TYPE,AVG(SODIUM) as avg_sodium 
FROM my_project GROUP BY FOOD_TYPE;

--4) Catfish,Oysters, about 12 medium,Rainbow Trout,
--   Salmon, Atlantic/Coho/Sockeye /Chinook,
--   Salmon, Chum/Pink,Swordfish,Tilapia 
--   are have more than 20% of the daily recommended 
--   value for saturated fat
SELECT FOOD_AND_SERVING,PROTEIN,
saturated_fat2,(saturated_fat2/20) * 100 
AS saturated_fat_percentage
FROM my_project
WHERE (saturated_fat2/20) * 100 > 20;

--5) Broccoli,Asparagus,Cauliflower,Carrot,
--   Cucumber,Green (SnapBeans,Green Cabbage,
--   Bell Pepper,Green Onion,
--   Celery, 2 medium stalks are top 10 food items with 
--   the highest protein content.
SELECT FOOD_AND_SERVING,PROTEIN  FROM my_project 
WHERE ROWNUM <= 10 ORDER BY PROTEIN DESC ;

--6) Potato, 1 medium (148 g/5.3 oz),
--   Kiwifruit, 2 medium (148 g/5.3 oz),
--   Banana, 1 medium (126 g/4.5 oz) are top 3 
-- highest potassium foods/more than 10g of total carbohydrates
select FOOD_AND_SERVING,max(POTASSIUM) 
as highest_potassium
from my_project
where TOTAL_CARBO_HYDRATE > '10' 
group by FOOD_AND_SERVING order by highest_potassium desc;

--7) Total_num_of_cal = 4425, 
--   Percentage_sugar_calories = 6.80.
SELECT sum(CALORIES) as total_num_of_cal, 
(SUM(sugars) / SUM(calories)) * 100 
AS percentage_sugar_calories
FROM my_project;

--8) Pear, 1 medium (166 g/5.9 oz) is is 
--   having more than 5g of dietary fibre.
SELECT FOOD_AND_SERVING,DIETARY_FIBER
FROM my_project
WHERE DIETARY_FIBER > '5' ORDER BY DIETARY_FIBER ;

--9) Avocado,Catfish,Oysters,Rainbow Trout,
--   Salmon,Swordfish 
--   are having more than 30% of the total calories.
SELECT FOOD_AND_SERVING
FROM my_project
WHERE (CALORIES FROM_FAT/calories)*100 >'30';

--10) 1.28 is a daily recommended vitamin A for all food items.
--    Based on general dietary guidelines i took 900IU
SELECT AVG((vitamin_a /900) * 100) AS vitamin_A_percentage
FROM my_project;

--11) Seafood is having highest_calcium which is 3.7.
SELECT FOOD_TYPE, avg(CALCIUM) as highest_calcium
FROM my_project group by FOOD_TYPE 
ORDER BY highest_calcium desc ;

--12) Blue Crab,Lobster,Scallops,Oysters,Shrimp are top 5 
--    highest average sodium content per serving
SELECT FOOD_AND_SERVING, AVG(Sodium) 
AS Avg_sodium FROM my_project
GROUP BY FOOD_AND_SERVING ORDER BY Avg_sodium DESC;

--13) Vegetables having 20 of Total_num_of_fooditems,
--    Fruits having 20 of Total_num_of_fooditems,
--    Seafood having 21 of Total_num_of_fooditems
SELECT count(FOOD_AND_SERVING) 
AS Total_num_of_fooditems,FOOD_TYPE
FROM my_project
GROUP BY FOOD_TYPE ORDER BY count(FOOD_AND_SERVING);

--14) Asparagus is having highest Proteinratio
SELECT FOOD_AND_SERVING, CALORIES,(CALORIES/ PROTEIN)
AS Proteinratio
FROM my_project WHERE PROTEIN > 0 and
ROWNUM <= 1 ORDER BY Proteinratio DESC;

--15)Asparagus having highest Carbohydratesratio.
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





















