INSERT INTO USERS (USER_ID, USERNAME, PASSWORD) VALUES (1, 'user', 'user');

INSERT INTO SHOP (SHOP_ID, SHOP_NAME) VALUES (1, 'ABCD');
INSERT INTO SHOP (SHOP_ID, SHOP_NAME) VALUES (2, 'EFGH');

INSERT INTO BIKE (BIKE_ID, BIKE_NAME, BIKE_DESC, SHOP_ID) VALUES (1, 'Tiger Street Pro Cycles','Handlebar with bar, aggressive style
Adjust your posture, change your posture, rest your hands, spin comfortably.
Light aluminium, comes with foam, soft and comfortable to wear
Size 25.4 : Width 560 mm.
Size 31.8 : Width 560 mm.', 1);
INSERT INTO BIKE (BIKE_ID, BIKE_NAME, BIKE_DESC, SHOP_ID) VALUES (2, 'Tiger Street Pro Cycles','Handlebar with bar, aggressive style
Adjust your posture, change your posture, rest your hands, spin comfortably.
Light aluminium, comes with foam, soft and comfortable to wear
Size 25.4 : Width 560 mm.
Size 31.8 : Width 560 mm.', 1);
INSERT INTO BIKE (BIKE_ID, BIKE_NAME, BIKE_DESC, SHOP_ID) VALUES (3, 'Tiger Street Pro Cycles','Handlebar with bar, aggressive style
Adjust your posture, change your posture, rest your hands, spin comfortably.
Light aluminium, comes with foam, soft and comfortable to wear
Size 25.4 : Width 560 mm.
Size 31.8 : Width 560 mm.', 1);

INSERT INTO BOOKING (BOOKING_ID, DATE_DAY, DATE_MONTH, DATE_YEAR, BIKE_ID, USER_ID) VALUES (1, '01','January', '2022', 1, 1);
