CREATE DATABASE projects;
CREATE TABLE food_ingredients (
   food_id INT PRIMARY KEY,
   decription VARCHAR(50),
   energy_kcal INT(4),
   protein_g DECIMAL(4, 2),
   saturated_fats_g DECIMAL(5, 3),
   Fat_g DECIMAL(4, 2),
   carb_g DECIMAL(4, 2),
   sugar_g DECIMAL(4, 2)
);
DROP TABLE food_ingredients;

INSERT INTO food_ingredients VALUES(1001, 'butter with salt', 717, 0.85, 51.368, 81.11, 0.06, 0.06);
INSERT INTO food_ingredients VALUES(1002, 'butter whipped with salt', 718, 0.49, 45.39, 78.3, 2.87, 0.06);
INSERT INTO food_ingredients VALUES(1003, 'butter oil anhydrous', 876, 0.28, 61.924, 99.48, 0, 0);
INSERT INTO food_ingredients VALUES(1004, 'cheese blue', 353, 21.4, 18.669, 28.74, 2.34, 0.5);
INSERT INTO food_ingredients VALUES(1005, 'cheese brick', 371, 23.24, 18.764, 29.68, 2.79, 0.51);
INSERT INTO food_ingredients VALUES(1006, 'cheese brie', 334, 20.75, 17.41, 27.68, 0.45, 0.45);
INSERT INTO food_ingredients VALUES(1007, 'cheese camembert', 300, 19.8, 15.259, 24.26, 0.46, 0.46);
INSERT INTO food_ingredients VALUES(1008, 'cheese caraway', 376, 25.18, 18.584, 29.2, 3.06, 0);
INSERT INTO food_ingredients VALUES(1009, 'cheese cheddar', 404, 22.87, 18.867, 33.31, 3.09, 0.48);
INSERT INTO food_ingredients VALUES(1010, 'cheese cheshire', 387, 23.37, 19.475, 30.6, 4.78, 0);
INSERT INTO food_ingredients VALUES(1011, 'cheese colby', 394, 23.76, 20.218, 32.11, 2.57, 0.52);
INSERT INTO food_ingredients VALUES(1012, 'cheese cottage crmd lrg or sml curd', 98, 11.12, 1.718, 4.3, 3.38, 2.67);
INSERT INTO food_ingredients VALUES(1013, 'cheese cottage crmd wfruit', 97, 10.69, 2.311, 3.85, 4.61, 2.38);
INSERT INTO food_ingredients VALUES(1014, 'cheese cottage nonfat uncrmd dry lrg or sml curd', 72, 10.34, 0.169, 0.29, 6.66, 1.85);
INSERT INTO food_ingredients VALUES(1015, 'cheese cottage lowfat 2 milkfat', 81, 10.45, 1.235, 2.27, 4.76, 4);
INSERT INTO food_ingredients VALUES(1016, 'cheese cottage lowfat 1 milkfat', 72, 12.39, 0.645, 1.02, 2.72, 2.72);
INSERT INTO food_ingredients VALUES(1017, 'cheese cream', 350, 6.15, 20.213, 34.44, 5.52, 3.76);
INSERT INTO food_ingredients VALUES(1018, 'cheese edam', 357, 24.99, 17.572, 27.8, 1.43, 1.43);
INSERT INTO food_ingredients VALUES(1019, 'cheese feta', 264, 14.21, 14.946, 21.28, 4.09, 4.09);
INSERT INTO food_ingredients VALUES(1020, 'cheese fontina', 389, 25.6, 19.196, 31.14, 1.55,1.55);
INSERT INTO food_ingredients VALUES(1025, 'cheese monterey', 373, 24.48, 19.066, 30.28, 0.68, 0.5, 0);
INSERT INTO food_ingredients VALUES(1022, 'cheese gouda', 356, 24.94, 17.614, 27.44, 2.22, 2.22, 0);
INSERT INTO food_ingredients VALUES(1031, 'cheese neufchatel', 253, 9.15, 12.79, 22.78, 3.59, 3.19, 0);
INSERT INTO food_ingredients VALUES(1032, 'cheese parmesan grated', 420, 28.42, 15.371, 27.84, 13.91, 0.07, 0);
INSERT INTO food_ingredients VALUES(1033, 'cheese parmesan hard', 392, 35.75, 16.41, 25.83, 3.22, 0.8, 0);
INSERT INTO food_ingredients VALUES(1043, 'cheese past process pimento', 375, 22.13, 19.663, 31.2, 1.73, 0.62, 0.1);

UPDATE food_ingredients
SET energy_kcal = 270
WHERE food_id = 1020;

ALTER TABLE food_ingredients ADD fiber_g DECIMAL(3, 1);

UPDATE food_ingredients
SET fiber_g = 0
WHERE food_id != 1013;

UPDATE food_ingredients 
SET fiber_g = 0.2
WHERE food_id = 1013;

DELETE FROM food_ingredients
WHERE food_id = 1025;

DELETE FROM food_ingredients
WHERE energy_kcal < 75 AND saturated_fats_g < 1;