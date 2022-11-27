INSERT INTO USERS (USER_ID, USERNAME, PASSWORD) VALUES (1, 'user', 'user');

INSERT INTO SHOP (SHOP_ID, SHOP_NAME) VALUES (1, 'PMG Bike Shop');
INSERT INTO SHOP (SHOP_ID, SHOP_NAME) VALUES (2, 'Northern Bike Shop');
INSERT INTO SHOP (SHOP_ID, SHOP_NAME) VALUES (3, 'Center Bike');
INSERT INTO SHOP (SHOP_ID, SHOP_NAME) VALUES (4, 'Namlad Bicycle Shop');
INSERT INTO SHOP (SHOP_ID, SHOP_NAME) VALUES (5, 'Keng Cycles');
INSERT INTO SHOP (SHOP_ID, SHOP_NAME) VALUES (6, 'Story Wheel Bike Cafe');

INSERT INTO BIKE (BIKE_ID, BIKE_NAME, BIKE_DESC, SHOP_ID) VALUES (1, 'Tiger Street Pro Cycles','Handlebar with bar, aggressive style
Adjust your posture, change your posture, rest your hands, spin comfortably.
Light aluminium, comes with foam, soft and comfortable to ride', 1);
INSERT INTO BIKE (BIKE_ID, BIKE_NAME, BIKE_DESC, SHOP_ID) VALUES (2, 'Hiland Mountain Bike','Hiland H200 will be the best friend for new riders. 
Aluminum rims and magnesium wheels are light in weight. 
The spcial spoke design help you break the wind resistance and handle pavement, gravel and dirt with ease.', 1);
INSERT INTO BIKE (BIKE_ID, BIKE_NAME, BIKE_DESC, SHOP_ID) VALUES (3, 'Hiland 700C Hybrid Bike','Hybrid bikes serve many purposes.
They are great for fitness, commuting, adventure, leisure, and more. 
And each one is designed for a comfortable and fun riding experience.', 1);

INSERT INTO BIKE (BIKE_ID, BIKE_NAME, BIKE_DESC, SHOP_ID) VALUES (4, 'Mountain Bike','Mountain bikes feature premium carbon steel frames. 
Great for paved areas, including road trips and community riding, 
the bike is also a great option for your daily commute.', 2);

INSERT INTO BIKE (BIKE_ID, BIKE_NAME, BIKE_DESC, SHOP_ID) VALUES (6, 'Eurobike Mountain Bike','This hardtail full suspension mountain bike is more capability and versatility, 
it can reduce the bumps caused by the rugged road during riding.', 3);

INSERT INTO BIKE (BIKE_ID, BIKE_NAME, BIKE_DESC, SHOP_ID) VALUES (7, 'Schwinn Bonafide Mountain Bike','The Schwinn Bonafide Mountain Bike features an aluminum mountain frame 
and a powerful Schwinn suspension fork that soaks up bumps and thumps 
to provide you with a fun, durable riding experience.', 4);

INSERT INTO BIKE (BIKE_ID, BIKE_NAME, BIKE_DESC, SHOP_ID) VALUES (8, 'TESGO Electric Bike','Upgraded 500W High Speed Brushless motor easily assists you to travel the top speed at 23 MPH, 
it will get you there swiftly. Adapt to various terrains, taking you to enjoy the outdoor fun.', 5);

INSERT INTO BIKE (BIKE_ID, BIKE_NAME, BIKE_DESC, SHOP_ID) VALUES (9, 'SAMEBIKE Electric Bike','High speed brushless 350 Watt motor,
provides strong driving force and climbing hills ability. 
gives you the pure enjoyment of speed and power.
Feel free to ride uphill, downhill with full speed hands down.', 6);

INSERT INTO BOOKING (BOOKING_ID, DATE_DAY, DATE_MONTH, DATE_YEAR, BIKE_ID, USER_ID) VALUES (1, '01','January', '2022', 1, 1);