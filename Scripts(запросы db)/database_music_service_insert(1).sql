-- Заполнение исполнителей
INSERT INTO performers 
VALUES (1,'BONES');

INSERT INTO performers 
VALUES (2,'Brennan Savage');

INSERT INTO performers 
VALUES (3,'LongMan_V'); 

INSERT INTO performers
VALUES (4,'Lil Sleep');

-- Заполнение жанров
INSERT INTO genres 
VALUES (1,'рэп')

INSERT INTO genres 
VALUES (2,'хип-хоп')

INSERT INTO genres 
VALUES (3,'альтернатива')

INSERT INTO genres 
VALUES (4,'электроника')

-- Заполнение альбомов
INSERT INTO albums 
VALUES (1,'Rotten','2014-12-02')

INSERT INTO albums 
VALUES (2,'Badlands','2017-10-06')

INSERT INTO albums 
VALUES (3,'Tokyo Drift','2021-07-13')

INSERT INTO albums 
VALUES (4,'Sleepless','2022-01-17')

-- Заполнение треков
INSERT INTO tracks 
VALUES (1,'HDMI', '00:02:19', 1)

INSERT INTO tracks 
VALUES (2,'KirkFogg', '00:01:28', 1)

INSERT INTO tracks 
VALUES (3,'Badlands', '00:01:46', 2)

INSERT INTO tracks 
VALUES (4,'Scars', '00:01:38', 2)

INSERT INTO tracks 
VALUES (5,'Tokyo Drift (Remix)', '00:03:26', 3)

INSERT INTO tracks 
VALUES (6,'Getaway', '00:01:56', 4)

INSERT INTO tracks 
VALUES (7,'M.I.A', '00:02:14', 4)

-- Заполнение сборников
INSERT INTO collections 
VALUES (1,'Sad','2016-01-07')

INSERT INTO collections 
VALUES (2,'The likes','2016-05-10')

INSERT INTO collections 
VALUES (3,'Every day','2016-06-01')

INSERT INTO collections 
VALUES (4,'Relax','2016-06-08')

-- Заполнение связи между альбомом и исполнителем
INSERT INTO albumsperformers 
VALUES (1,1)

INSERT INTO albumsperformers 
VALUES (2,2)

INSERT INTO albumsperformers 
VALUES (3,3)

INSERT INTO albumsperformers 
VALUES (4,4)

-- Заполнение связи между жанром и исполнителем
INSERT INTO genresperformers 
VALUES (1,1)

INSERT INTO genresperformers 
VALUES (2,1)

INSERT INTO genresperformers 
VALUES (3,2)

INSERT INTO genresperformers 
VALUES (4,3)

INSERT INTO genresperformers 
VALUES (1,4)

INSERT INTO genresperformers 
VALUES (2,4)

-- Заполнение связи между треком и сборником
INSERT INTO trackscollections 
VALUES (1,1)

INSERT INTO trackscollections 
VALUES (1,3)

INSERT INTO trackscollections 
VALUES (1,4)

INSERT INTO trackscollections 
VALUES (2,2)

INSERT INTO trackscollections 
VALUES (2,5)

INSERT INTO trackscollections 
VALUES (2,7)

INSERT INTO trackscollections 
VALUES (3,6)

INSERT INTO trackscollections 
VALUES (4,2)

INSERT INTO trackscollections 
VALUES (4,3)

INSERT INTO trackscollections 
VALUES (4,6)


