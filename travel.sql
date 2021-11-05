SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `travel_news` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `travel_news`;

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `category` VALUES
(1, 'Da Lat'),
(2, 'Ha Noi'),
(3, 'Da Nang'),
(4, 'Sa Pa');

CREATE TABLE `comment` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `comment` text NOT NULL,
  `news_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `comment` VALUES
(1, 'Linh', 'Very Beautyful', 1),
(2, 'Hue', 'Hello Viet Nam!', 2),
(3, 'Quynh', 'Sound interesting huh?', 1),
(4, 'Sang', 'Why do you like that?', 3),
(6, 'ChiHan', 'Amazing!', 7),
(7, 'Maria', 'WOW', 27),
(8, 'Lan', 'Good Job', 19),
(9, 'Xuyen Pham', 'Not bad!', 5),
(11, 'Ngoc', 'Hahaha', 18),
(12, 'sang', 'hello\r\n', 18),
(13, 'sang', 'bad', 18);

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `short_intro` text NOT NULL,
  `content` text NOT NULL,
  `created_date` date NOT NULL,
  `pic` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `cat_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `news` VALUES
(1, 'Lam Vien Square ', 'Lam Vien Square Dalat is also known by tourists with another name that is Dalat Square. ', 'This is one of the most interesting and fascinating places to visit in Dalat that you cannot ignore. It is one of the top 10 tourist attractions in Da Lat. This place is a gathering place for all Dalat people and tourists on the weekends. In this Square, there are many fun activities. As well as having a lot of street vendors, selling a variety of delicious snacks. This can be said to be unique site in this foggy city.\r\nDalat Square was built in 2009 with a total investment of 681 billion VND. It was not until 2016 that this massive work was completed. The total area of Lam Vien square is 72 thousand square meters. \r\nThis square is designed and built into 4 different large and small building blocks. That is the theater building, the square and the park, the commercial and service areas. Tourists can enjoy shopping and playing.\r\nThe most popular point of the square that visitors love is the two massive buildings above the square. It was a giant wild flower and a giant artichoke bud. These two buildings are designed and built with colorful glass panels that look very special.\r\n-	Ticket price: Free\r\n-	Active hours: 7h – 22h\r\n', '2021-04-17', '1', ' Will Lavin', 1),
(2, 'Xuan Huong Lake', '\"I think I’m one of the luckiest people that ever went here\"', 'Xuan Huong Lake is a famous tourist attraction in Dalat. Situated in the center of Dalat city, it is an artificial lake with approximately 5 km2 circumference, and 25 ha wide. Xuan Huong Lake has long been famous for immerse pine forests, green lawns, and wonderful flower gardens. It is also a favorite rendezvous for tourists who love walking or using stagecoach to visit Dalat city.\r\nThe crescent-moon-shaped lake covered an area of nearly 43ha, stretching around 7 km through numerous tourist attractions in Dalat City as Dalat Flower Park, Yersin Park, Cu Hill.  The surface of the lake is as smooth as crystal mirror reflecting the romantic scenery of Dalat city with pine forest. In addition, spruce-shaded roads much create dreamy beauty for the lake. Tourists could comfortably lean their back on these spruces releasing hooks, contemplate breathtaking scenery on the lake with the swan boat ride, or set their foot on graceful Thuy Ta Pavilion with its unique architecture to enjoy the Dalat flavors.\r\n-	Ticket price: Free\r\n-	Active hours: everytime\r\n', '2021-04-17', '2', 'Paul Bradshaw', 1),
(3, 'Da Lat flower garden', 'The Da Lat Flower Gardens house an extensive collection of native and exotic flowers, and for this reason, Da Lat is dubbed “the city of flowers” in Vietnam. Founded in 1966, the gardens feature more than 300 different kinds of flowers, many of which blossom all year round.\r\n', 'Visitors can explore a variety of different gardens, including a giant cactus garden, fields of orchids, and rose, mimosa, and hydrangea displays. There are also finely-trimmed topiary displays found throughout the park. The park entrance greets visitors with an arc-shaped flower arrangement featuring hundreds of impressive flowerpots.\r\nOne special point is that a lake is located in the middle of Da Lat Flower Gardens, where children can paddle around in swan boats and The best times to visit Da Lat Flower Gardens are during winter and spring.\r\n-	Ticket price: 50.000/adults, 25.000/a children \r\n-	Opening Hours: Daily 07:30 – 16:00\r\n', '2021-04-18', '3', 'Jasmine Smith', 1),
(4, 'Thanh Binh Beach', 'Thanh Binh Beach is one of the beautiful, peaceful beaches attracting tourists when coming to Da Nang.', '- Location: Thanh Binh Ward, Hai Chau District, Da Nang\r\n- Introduce:\r\nThanh Binh Beach is one of the beautiful, peaceful beaches attracting tourists when coming to Da Nang.\r\n\r\nVisiting this place, you will not only admire the unique beautiful scenes but also this is an opportunity for you to enjoy the hours of fun and relaxation after a hard-working day.\r\nThanh Binh Beach has a length of about 1 km, stretching along the road of Nguyen Tat Thanh, in the inner city, right at the end of Ong Ich Khiem Street, Thanh Binh Ward, Hai Chau District, Da Nang.\r\n\r\nThis beach is considered as one of the safe beaches, convenient for playing and bathing for people and tourists, because the sea here is quite windy, light waves, especially without water areas. dangerous whirlpool like some other beaches.\r\n\r\nAs a part of Danang Bay, Thanh Binh beach has a convenient location, with romantic and romantic beauty, so tourists come here quite a lot, which is followed by the development of tourist services. rich and diverse.\r\n\r\nHere you can easily come across interesting fun activities such as windsurfing, canoeing, yachting … Besides the development, Danang hotels also focus quite a lot here to serve customers. travel when needing accommodation and relaxation.\r\n\r\n', '2021-03-03', '17', 'Vikki Blake', 3),
(5, 'Truc Lam Monastery ', 'Located adjacent Tuyen Lam Lake, Truc Lam Monastery is the popular tourist attraction to tourists when going to dreaming Dalat city.', 'Located adjacent Tuyen Lam Lake, Truc Lam Monastery is the popular tourist attraction to tourists when going to dreaming Dalat city. It is located on Phung Hoang (Phoenix) Mountain, 4 km from Dalat, established by Thich Thanh Tu Monk in the 90s and it was opened on February 8th, 1994.The area is 24.5 hectares and it is divided into 3 zones for visitors. Tourists will definitely experience serene moments of mind in place of pure nothingness one arriving the great monastery.\r\nAlong with Truc Lam Yen Tu in Quang Ninh province, Truc Lam Tay Thien Phuc in Vinh Phuc province, Truc Lam Monastery Dalat is one of the three largest Zen monasteries in Vietnam. With its beautiful location, Truc Lam Monastery is not only the largest monastery in Lam Dong province but also one of the most fascinating tourist attractions in Dalat attracting both domestic and foreign tourists.\r\n-	Ticker : free\r\n-	Opening Hours: Daily 05:00 – 21:00\r\n', '2021-04-16', '4', 'Ella Kemp', 1),
(6, 'Indochina Riverside Mall', 'Indochina Riverside Mall is located in the heart of Da Nang with truly remarkable views of the Han River between both the Han River Bridge and Dragon Bridge. With three floors of premier outlets Indochina Riverside Mall introduces premium brands for shopping, café, games and a unique dining experience along the banks of the Han River.', '- Address: 74 Bach Dang Street, Hai Chau District, Da Nang City\r\n- Open time: 09h00 – 21h30 Everyday\r\n- Visit duration: 1 hour\r\n- Introduce:\r\nIndochina Riverside Mall is located in the heart of Da Nang with truly remarkable views of the Han River between both the Han River Bridge and Dragon Bridge. With three floors of premier outlets Indochina Riverside Mall introduces premium brands for shopping, café, games and a unique dining experience along the banks of the Han River.\r\n\r\nAt Indochina Riverside Mall, there are many interesting entertainment and dining places in Danang, suitable for dynamic young people and Da Nang tourists. , enjoying entertainment in Da Nang.\r\n', '2021-03-26', '11', 'Mimi Swift', 3),
(7, 'Han River bridge', 'Han River bridge is a bridge in Da Nang, Vietnam. Danang lies on the west side of the Han River and the beaches are to the east.', '- Location: 122 C?u Sông Hàn, An H?i B?c, S?n Trà, ?à N?ng\r\n- Introduce:\r\nHàn River bridge is a bridge in Da Nang, Vietnam. Danang lies on the west side of the Hàn River and the beaches are to the east. The Song Han Bridge helps tourists to travel from their hotels to the area\'s beaches. It has a length of about 488m and a width of about 13m\r\n\r\nComing to Da Nang, tourist always concerns about what time Han River Bridge swings because this is the very first and only bridge that can swing in the middle of the river. The answer is that In the middle of the night (11 pm - 12 pm), traffic is stopped from crossing the Song Han Bridge and it swings on its axis to allow shipping traffic to pass along the river. The Song Han Bridge in Danang is a cable-stayed bridge that is lit up brightly at night. The area around the bridge is the location of Da Nang\'s cultural center.\r\n\r\nIn recent years, Han River Bridge swinging has turned into a rare ‘specialty’ of Da Nang, although it is no longer needed for trading port, but they still make it swing to satisfy the curiosity of the tourists.\r\n', '2021-04-02', '12', ' Natasha Wynarczyk', 3),
(8, 'Cham Museum', 'It is the only museum of its kind in the world dedicated to the Champa era and was founded during the colonial French rule in 1915.', '- Address: S? 02 ?. 2 Tháng 9, Bình Hiên, H?i Châu, ?à N?ng\r\n\r\n- Introduce:\r\nIt is the only museum of its kind in the world dedicated to the Champa era and was founded during the colonial French rule in 1915. Other sites rich in Cham history include Tra Kieu, Dong Duong, Thap Man and My Son which were all famous Champa areas and are well worth a visit as part of a wider study into this fascinating period. There is an onsite shop selling imitation pieces and there are also English-language guidebooks for sale.\r\n\r\nWith their roots dating back as far as 192 AD, Vietnam\'s indigenous Cham people lived an Indian way of life in both culture and language. The Cham Museum in Danang is dedicated to this period and the Champa existence which began predominantly in the coastal areas of Vietnam. Housing the largest exhibition of Cham sculpture in the world, the museum displays almost 300 terracotta and stone works of art ranging from the 7th to the 15th centuries.\r\n\r\nMany of the exhibits are considered masterpieces of their field showcased according to the region in which they were found with a total of ten separate interior exhibition rooms. All of the sculptures on display fall into one of the following sections – icon, pedestal, pediment, or fragment, with the area in which they were found determining where they are exhibited.\r\n\r\n-	Open time: 08:00 – 11:30; 14:00 – 16:30\r\n-	Visit duration: 01h00\r\n-	Price: ~2 USD\r\n', '2021-04-14', '13', 'Mc Murphy', 3),
(9, 'My Khe Beach', 'Considered to be Vietnam\'s most picturesque beach, the white sandy 20-mile stretch of My Khe Beach was named by the American troops who visited during the Vietnam War for R&R. It offers excellent surfing from September just off the shores of Danang. There are also a number of high-end resorts within the vicinity should you be in need of pampering with most offering a rich choice of treatments at their spas and a range of dining options.', '\r\n- Location: Nguyen Van Thoai, Da Nang\r\n- Introduce:\r\nConsidered to be Vietnam\'s most picturesque beach, the white sandy 20-mile stretch of My Khe Beach was named by the American troops who visited during the Vietnam War for R&R. It offers excellent surfing from September just off the shores of Danang. There are also a number of high-end resorts within the vicinity should you be in need of pampering with most offering a rich choice of treatments at their spas and a range of dining options.\r\n\r\nSunbathing and surfing aside, there are a host of historical sites situated close by including the port of Hoi An which is only 10 minutes away by bus and offers wonderfully preserved merchant houses and small alleyways to explore. Hoi An is also a superb place to get anything you desire tailor-made usually within 12 hours, and while you wait it’s definitely recommended that you try some local delights including very fresh shrimp pancakes.\r\n\r\n', '2021-03-15', '14', 'Penelope Green', 3),
(10, 'Hoan Kiem Lake', 'Hoan Kiem Lake in Hanoi attracts tourists and locals looking to get away from the noise and frenetic pace of the city. Peaceful and quiet, the lake surrounds Ngoc Son Temple, a pagoda sitting in the centre on a small island.\r\n', 'Hoan Kiem Lake in Hanoi attracts tourists and locals looking to get away from the noise and frenetic pace of the city. Peaceful and quiet, the lake surrounds Ngoc Son Temple, a pagoda sitting in the centre on a small island.\r\n\r\nThe temple attracts many visitors and was built in commemoration of the 13th century military leader Tran Hung Dao who was renowned for his bravery in the battle against the Yuan Dynasty.\r\n\r\nHomage is also paid to scholar Van Xuong and Confucian master Nguyen Van Sieu. The island on which the temple is built is known as Jade Island and is accessible by the iconic Huc Bridge or Rising Sun Bridge which is a charming scarlet-painted wooden bridge of classical Vietnamese design. The pagoda is also guarded by two towering posts decorated with Chinese writing. The lake and temple are probably the most famous places in Hanoi city in which to rest and enjoy the view and are a great place to sit back and watch the locals.', '2021-04-22', '7', ' Frédéric Ponsard ', 2),
(11, 'Love Lock Bridge Da Nang is one of the wonderful places and an ideal attractions for couples in love', 'Love lock bridge Da Nang is one of the wonderful places and an ideal attractions for couples in love. A good place for a walk and sightseeing at night, especially for couples, this is the great chance to visit the wharf and put love padlocks on the romantic bridge.', '- Location: 481 ?. Tr?n H?ng ??o, An H?i Trung, S?n Trà, ?à N?ng\r\n- Introduce:\r\nLove lock bridge Da Nang is one of the wonderful places and an ideal attractions for couples in love. A good place for a walk and sightseeing at night, especially for couples, this is the great chance to visit the wharf and put love padlocks on the romantic bridge.\r\nThe love lock wharf stands on Han river and between the beautiful bridges of Da Nang. The wharf features the arc shape with the length of 68 meters and the width of 6 meters. Its construction is inspired from famous padlock bridges in the world such as: Pond des Arts in France, Hohenzollern in Germany, Milvio in Ilaty.\r\nLove padlocks carved names, initials and messages of love which are locked on the bridge as a witness of a deep love. There are a lot of couples who come to Love lock bridge Da Nang to show their love and make the undying padlocks.\r\n', '2021-02-19', '15', 'Harriet Hall', 3),
(12, 'Ham Lon Mountain', 'Ham Lon Mountain Fire Road is a 10.1 kilometer lightly trafficked point-to-point trail located near Soc Son, Hanoi, Vietnam that features a great forest setting and is rated as moderate. The trail is primarily used for hiking, walking, and mountain biking. Dogs are also able to use this trail.', 'Ham Lon Mountain Fire Road is a 10.1 kilometer lightly trafficked point-to-point trail located near Soc Son, Hanoi, Vietnam that features a great forest setting and is rated as moderate. The trail is primarily used for hiking, walking, and mountain biking. Dogs are also able to use this trail.', '2021-04-16', '8', 'Daniel Bellamy  ', 2),
(13, 'Tram Mountain is a wonderful place with amazing limestone blocks', 'Tram Mountain is a wonderful place with amazing limestone blocks. It is a place where you can enjoy the beautiful natural scenery. As well as experience the exciting climbing activity with your friends. Therefore, Tram Mountain is considered one of the best sightseeing places in Hanoi for people who like nature.', 'Tram Mountain is a wonderful place with amazing limestone blocks. It is a place where you can enjoy the beautiful natural scenery. As well as experience the exciting climbing activity with your friends. Therefore, Tram Mountain is considered one of the best sightseeing places in Hanoi for people who like nature.\r\nNui Tram is located in the prosperous delta, in Long Chau hamlet, Phung Chau commune, Chuong My district. This place is more than 20 km from the center of the capital. This is the best sightseeing places in Hanoi for a trekking day or a picnic at weekend. Tram Mountain is also recognized as a historical monument.\r\n\r\nDepends on your preference, you can go to Tram Mountain by car or by motorbike. To reach Tram Mountain, you drive along the direction Hoa Binh on Highway 6, to Chuc Son Town (Chuong My District). Then you will see the right turn sign to Tram Pagoda. Following the trail to the foot of the mountain. You can stop here and start climbing.\r\n\r\nAnother way is take the bus from Hanoi. You can take bus numbered 37, 57, 72, or 80. You will get off at the head of Chuc Son town, then turn to Ninh village. You can walk or catch a motorbike about 2 km to reach Tram Mountain.', '2021-04-23', '29', 'Judith Prescott ', 2),
(16, 'A Wonderful destination in Sa Pa', 'Craftmanship is an ancient tradition in Japan and Tsubame and Sanjo in Niigata prefecture are two cities well known for metalwork.', 'Craftmanship is an ancient tradition in Japan and Tsubame and Sanjo in Niigata prefecture are two cities well known for metalwork.\r\n\r\nTsuiki copperware is typical of this area. Tsuiki means “shaping metal by hand hammering”. Every piece is handmade, following ancient traditional skills and techniques handed down from generation to generation.\r\n\r\nThe history of metalworking in this area began 800 years ago when people found iron sand in the bed of the Igarashi river, which flows through the middle of Sanjo. People started using the sand to produce metal.\r\n\r\nA unique feature of Japanese knives is the special blend of carbon steel forged with boracic acid, which give the blades the hardness they are world famous for.\r\n\r\nIn both Tsubame and Sanjo you can visit the factory workshops to admire the wonderful skills of the artisans.\r\n\r\nAnd if you want to try it yourself, you can also make your own knife.\r\n\r\nHaruo Hasegawa is the director of Sanjo’s blacksmith training hall, which was set up 15 years ago.\r\n\r\n“Every year about 5,000 people come to learn how to work with metal. In the past few years many people have also come from overseas to try this experience,” he told Go! Japan.\r\n\r\nTomoo Matsumura, head of the Tojiro knife workshop, says it takes at least two days to make a knife.\r\n\r\n“This is the Japanese traditional way of forging. We make knives using the same techniques inherited from sword makers in ancient times.”\r\n\r\nAnd the craft continues to evolve - thanks to the blending of traditional methods and modern technology.\r\n\r\nShare this article', '2021-03-12', '26', ' Marta Brambilla  ', 4),
(17, 'Po Nagar Cham temple', 'Po Nagar Cham temple complex was built between 8th and 11th centuries by the Cham people who once ruled the central plain of Vietnam. The Cham people, who were Hindu in origin, had their own Sanskrit-based script. They are renowned for their skills in sculpture and architecture and left behind a legacy of artifacts and temple settlements not only in Vietnam, but also Cambodia and Thailand.', 'Po Nagar Cham temple complex was built between 8th and 11th centuries by the Cham people who once ruled the central plain of Vietnam. The Cham people, who were Hindu in origin, had their own Sanskrit-based script. They are renowned for their skills in sculpture and architecture and left behind a legacy of artifacts and temple settlements not only in Vietnam, but also Cambodia and Thailand.\r\nThe towers of Po Nagar Cham are square red brick structure with protruding support frames and tapering roofs. There were once ten buildings, each dedicated to a different deity, but now only four remain. The tallest building, at 25 metres, the Po Nagar Kalan, is the most impressive. Here, Po Nagar was worshipped and, according to historical stone inscriptions, animal sacrifices were made in her honour.\r\n\r\nTo the centre of the complex, stands a tower of Cri Cambhu, goddess of fertility. The other two temples are the shrines of the Hindu gods Shiva and Ganesh respectively.\r\nPo Nagar Cham Towers are situated on the high ground of Mount Cu Lau on the bank of River Cai, a few kilometres north from the city centre.', '2021-04-01', '16', 'Jullie Hope', 4),
(18, 'Binh Ba Island', 'Binh Ba beach is still wild, attractive, just wading away a few dozen meters. At here visitor have chance to see the beautiful coral at the foot. Especially on the beach are the limestone formless shapes, designs, colors very lively.', 'In the past, Binh Ba was a military island, restricting people from entering the island. Now, the rules have been removed. But foreigners are still banned. Because of the military’s management quite well. Binh Ba is still a relatively untouched island, nature still retains the rustic features, not destroyed by humans.\r\n\r\nRecently, with the number of visitors to Binh Ba more and more, infrastructure has not developed to keep up with the number of visitors, making the island environment is overloaded.\r\n With an area of 94.78 ha, accounting for 16.3% of the total area of the commune. There are many pristine beaches, such as Bo De, Old House, Cay Me, Hon Co, Bai Chay… Located in the middle of the mountains and the sea, people are hard to reach.\r\n\r\nIn addition, Binh Ba beach is still wild, attractive, just wading away a few dozen meters. At here visitor have chance to see the beautiful coral at the foot. Especially on the beach are the limestone formless shapes, designs, colors very lively.\r\nAround 1786 more and more residents, catching the sea development, propaganda that in the early years of the eighteenth century, a fleet of fishermen Quang Ngai, Phu Yen storm drifted into the sea, the sea still, the calm waves, while off the storm is still intense, called the island of Ba Binh (island of waves – later changed to Binh Ba Island).\r\n\r\nThe local people then discovered Hon Ty Island about 3 nautical miles west of Binh Ba, people scattered on this island and named Hon Tu Island (now Binh Hung Island).', '2021-04-25', '3', 'Marta Young', 4),
(19, 'Ham Rong Mountani', 'Ham Rong boasts its unique features that you cannot find anywhere else. Located right behind the Sapa Church, the mountain has a shape like a dragon holding its head up towards the sky.', 'Ham Rong boasts its unique features that you cannot find anywhere else. Located right behind the Sapa Church, the mountain has a shape like a dragon holding its head up towards the sky. It has the name Ham Rong (Dragon Head) because of this special shape. Many people find its legend much more interesting and romantic. Legend has it that, once upon a time, the place was a home of a dragon couple. They love each other so passionately that they were always together. One time, they were suddenly struck by a great flood when they were playing. All things were sunk under the water. Though the male dragon luckily escaped thanks to his strength, the female was so exhausted. She fell into the water, raising her head towards her partner who were flying to heaven. Over time, her body turned into the majestic Hoang Lien Son range while her head turned into the Ham Rong mountain.\r\n\r\nNow the mountain is home to many different types of flora. On the way to the top of Ham Rong mountain, you can discover up to 6000 orchid vegetation. There are also a lot of wild and unique flowers grown alongside the paths like cherry blossom, hydrangea, geraniums, Lily of the Nile,… Besides, you also have a chance to taste many kinds of Sapa fruits like peach, plum, and pear. Ham Rong mountain looks like a heaven on the earth surrounded by the drifting clouds and echo sound from Mong boys’ bamboo flute.', '2021-04-02', '18', 'May Spears', 4),
(20, 'Silver Waterfall', 'It is a beautiful destination...', 'Not only intrigued by the fresh cool atmosphere with mountains endlessly stretching, Sapa is also impressive with majestic and magic beauty of the waterfalls that the Creator favorably bestows for the region. Silver Waterfall has long been famous as one of the wonderful tourist attractions in Sapa. The waterfall falls down from the height of more than 100m. Standing at the foot of Silver Waterfall Sapa, looking at the vast heaven and earth and the majestic mountains from afar, tourists seem to feel themselves so small before the wonders of the nature.', '2021-04-17', '20', 'Monica Pinna', 4),
(21, 'Flying on water - James O\'Hagan tries out the latest addition to the surfing family', 'It looks like a surfboard, it moves like a surfboard, but it\'s not a surfboard.', 'It\'s an electric hydrofoil or E-foil.\r\n\r\nI visited Dubai Marine to have a go at E-foiling myself and find out what makes the activity so thrilling.\r\n\r\nThe man putting me through my paces was Daniel van Dooren, the manager of Ibiza Foils and co-founder of Surf House Dubai.\r\nEuronews\r\nDaniel van Dooren explaining how an E-foil worksEuronews\r\n\r\n\"The thing that makes it different is this hydrofoil wing on the bottom,\" explained Daniel. \"It\'s got an aeroplane design, which basically lifts you out of the water and gives you that sensation like you’re flying.\"\r\n\r\nThe E-foils are powered by an electric propeller and controlled remotely via Bluetooth.\r\n\r\nThey can reach speeds of up to 45km an hour.\r\nEuronews\r\nJames O\'Hagan attempting to stay uprightEuronews\r\n\r\nFind out how I got on with my first experience on an E-foil by watching the video above this article. Here\'s a clue: I won\'t be giving up my day job anytime soon.', '2021-04-22', '21', 'Jim O.Hagan', 4),
(23, 'Long Bien Bridge ', 'The Long Bien Bridge was constructed from 1989 to 1902 during French’s occupation of the country. Though the bridge was designed by French, it was built directly by Vietnamese workers with materials from many provinces in Viet Nam. was constructed from 1989 to 1902 during French’s occupation of the country. Though the bridge was designed by French, it was built directly by Vietnamese workers with materials from many provinces in Viet Nam.', 'The Long Bien Bridge was constructed from 1989 to 1902 during French’s occupation of the country. Though the bridge was designed by French, it was built directly by Vietnamese workers with materials from many provinces in Viet Nam.\r\n\r\nMore than 100 years with decades of war, Long Bien Bridge was bombed many times by air attacks by American army in 1967, 1972; and many spans of the bridge were destroyed. The left spans still remaining today remind us of an unforgettable past. The bridge is not only a traffic construction, a nice architecture, but also a living historical relic.\r\n\r\nIt is the only bridge in Hanoi where all the riders have to go in the left hand side. Many people said that Long Bien Bridge is the best place to look at the sunrise or the sunset and taking nice photos. Many brides and grooms choose Long Bien Bridge as nice background in their wedding albums.\r\n\r\nIf you have a chance to visit Hanoi, do not forget to take a walk on Long Bien Bridge for sightseeing, feeling the daily life of Hanoians, and enjoying peaceful moments at the present but not forgetting memorable past.\r\n', '2021-04-01', '10', 'Naomi Britt', 2),
(24, 'Tuyen Lam Lake', 'The Lake and its campus have fresh air, a tranquil atmosphere and a diversified natural landscape.\r\n', 'The Lake and its campus have fresh air, a tranquil atmosphere and a diversified natural landscape. Tuyen Lam lake will become a big tourist attraction with unique types of tourism such as sightseeing, camping, health caring, trekking, mountain climbing, fishing, visiting the revolutionary base and other activities for sport and recreation, especially eco-tourism.\r\nComing to Tuyen Lam lake, tourist can visit Truc Lam zen monastery, then buy ticket to go sightseeing around the lake, see some tourist sites such as: Fairy Rock tourist site, Nam Qua tourist site…etc, taste some specialties of Dalat, drink Can wine, ride Horse or Elephant.\r\n-	Ticket price: free\r\n-	Active hours: everytime\r\n', '2021-04-19', '5', 'Rania Aniftos', 1),
(25, 'The Temple of Literature', 'The Temple of Literature was constructed in 1070, first to honor Confucius and In 1076, King Ly Nhan Tong built Quoc Tu Giam as the first university of Vietnam·\r\n', 'The Temple of Literature was constructed in 1070, first to honor Confucius and In 1076, King Ly Nhan Tong built Quoc Tu Giam as the first university of Vietnam·\r\n\r\nNowadays the temple of literature is the place to celebrate the doctorates and high rank scholars of Vietnam·\r\n\r\nThe temple is divided into five court yard, each with its own significance and history·\r\n\r\nThere are a total of 82 tombstones, with names and origins of 1307 doctors, corresponding to 82 examination courses from 1442 to 1779. If you visit the temple at the beginning of the year or in May when many important examinations take place, you will catch sights of numerous students who come and rub the tortoise head. Such an act is believed to bring them luck to pass the test.\r\n\r\nIf you are keen on architecture, Temple of literature has one of the most typical architecture style for centuries in Vietnam, composed of wood and tiles. Along the pass way is hundred-year-old trees that have witnessed ups and downs of history·', '2021-04-19', '57', 'Jame Blunt', 2),
(26, 'Ho Chi Minh Mausoleum', 'Ho Chi Minh Mausoleum is an important historical attraction of Hanoi', 'Ho Chi Minh Mausoleum is an important historical attraction of Hanoi, known for honoring the national hero: President Ho Chi Minh. The building is where visitors can express their admiration and gratitude towards the great father of Vietnamese who has led the country to independence and reunification.\r\n\r\nThe materials that constitute the building, from exterior granite to interior wood, were contributed by people from all over the country. Even the garden that surrounded the Mausoleum has a collection of plants and bonsais donated from all regions in Vietnam.', '2021-04-21', '56', 'Billie Eilish', 2),
(27, 'LangBiang Mountain', 'LangBiang Mountain is the highest mountain of Dalat. ', 'It is located in Lac Duong district which is 12km from Dalat in the North. With its height of 2,169m above the sea level, langbiang mountain has not only been an attractive tourist site bit also kept legend about a passionate love.\r\nThe mountain retains 2 peaks, which are also known as Ong Mountain and Ba Mountain. On beautiful sunny days, from Xuan Huong Lake tourists can contemplate two mountains standing side by side as cherishing each other. To reach to the top, jeep is by far the most convenient means of transportation as it allows you to experience a challenging time passing through the forest on a narrow path generally higher and higher. Also, you can choose to have a walk to the peak. However, it might take you a long time, around 3-4 hours, before you can watch a glamorous landscape and sightseeing on Lang Biang peak. Once standing on the top of Lang Biang Mountain, tourists can see the Golden Stream and Silver Stream, or observe fanciful Dalat, which looks like a lush green valley with two pieces of silver silk (the Golden and Silver Stream).\r\nFrom the top of Lang Biang, tourists can comfortably explore the villages at the foot of the mountain, discover the life of the locals here by going down along the trail and small springs to enter these villages. On top of the mountain, the K’lang and Biang couple stand together seemly to prove the existence of eternal faithful love. Tourists setting foot on here will love the legendary mountain more.\r\n', '2021-04-23', '6', 'Michael Kiwanuka', 1),
(28, 'Hanoi Opera House\r\n', 'Constructed at the turn of the 20th century, this beautiful colonial building is the largest theater in Vietnam. After nearly 100 years of operation, the Opera House was carefully refurbished in 1997 and equipped with state-of-the-art facilities. Today the venue attracts renowned performers, productions and musicians. ', 'Standing in the heart of Hanoi, the opera house was located in a beautiful intersection downtown, where five main city roads lead to. The building was completed in 1911 after 10 years of construction, by two French architects, Broyer and V. Harley, resembling the Opéra Garnier de Paris.\r\n\r\nThe building is 34 meters above the ground and carried out in a total area of 2600 square meters with the 87-meter length and 30-meter width. Its design is strongly influenced by the French architecture style from 19th century. The front facade impresses passerby with French neo-classical design shuttered windows, wrought iron balconies and tiled friezes. The interior design of Hanoi Opera overwhelms visitors with T-shape white marble staircase centered with red carpet, crystal chandeliers, large wall mirrors, Corinthian columns and colorful dome by colorful murals and reliefs.\r\n\r\nThe auditorium is 24 x 24 meters with three seat floors that include 589 velvet seats. Second and third floor are dedicated for private box seats. The building also has one meeting room called \'Mirror Room\', 18 make-up rooms, two rooms for voice training, and a library in the back.', '2021-04-16', '27', 'Rule Noughtman', 2);

CREATE TABLE `tag` (
  `id` int(10) NOT NULL,
  `content` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tag` VALUES
(1, 'Beach'),
(2, 'Mountain'),
(3, 'Flower'),
(4, 'Great '),
(5, 'Da Lat'),
(6, 'Destination'),
(7, 'Healthy'),
(8, 'Natural'),
(9, 'Tips'),
(10, 'Beauty '),
(11, 'Pagoda'),
(12, 'Well'),
(13, 'Da Nang'),
(14, 'Square'),
(15, 'Green'),
(16, 'Garden'),
(17, 'Landscape'),
(18, 'Food'),
(19, 'Visiter'),
(20, 'Abroad');

CREATE TABLE `tagnews` (
  `id` int(10) NOT NULL,
  `tag_id` int(10) NOT NULL,
  `news_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tagnews` VALUES
(1, 8, 23),
(2, 1, 4),
(3, 10, 26),
(4, 2, 19),
(5, 6, 26),
(6, 4, 26),
(7, 9, 7),
(8, 7, 24),
(9, 7, 8),
(10, 10, 27),
(11, 3, 18),
(12, 14, 1),
(13, 17, 17),
(14, 12, 23),
(15, 8, 2),
(16, 11, 5),
(17, 2, 19),
(18, 4, 23),
(19, 8, 23),
(20, 19, 20),
(21, 10, 28),
(22, 10, 28),
(23, 8, 5),
(24, 19, 8),
(25, 1, 20),
(26, 17, 12),
(27, 12, 10),
(28, 15, 21);


ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_ibfk_1` (`news_id`);

ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_ibfk_1` (`cat_id`);

ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tagnews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagnews_ibfk_1` (`tag_id`),
  ADD KEY `tagnews_ibfk_2` (`news_id`);


ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

ALTER TABLE `tag`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE `tagnews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;


ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`);

ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`);

ALTER TABLE `tagnews`
  ADD CONSTRAINT `tagnews_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`),
  ADD CONSTRAINT `tagnews_ibfk_2` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
