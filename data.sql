-- Data for table social_medias
TRUNCATE social_medias CASCADE;
INSERT INTO social_medias (id, name) VALUES
  (1, 'Facebook'),
  (2, 'Twitter'),
  (3, 'Instagram'),
  (4, 'Tumblr');

-- Data for table social_media_messages
TRUNCATE social_media_messages CASCADE;
INSERT INTO social_media_messages (id, message, published_by, published_datetime, social_media, geo) VALUES
  (1, 'The wall of my house is cracked!!', 'somchai123', TIMESTAMP '2019-12-12 18:23:15', 1, ST_GeomFromText('POINT(99.35334664941854 20.00599665692158)')),
  (2, 'Roof is collapsed!!! My dog is in the house! HELP!!!', 'tawatchai', TIMESTAMP '2019-12-12 18:33:21', 2, ST_GeomFromText('POINT(99.34756749424889 20.004682759949375)')),
  (3, 'Black out!!! No electric!!!!!', 'ghargsd', TIMESTAMP '2019-12-12 17:30:00', 2, ST_GeomFromText('POINT(99.3321650449825 20.02690601936971)')),
  (4, 'Please fix the electricity before it gets dark', 'pleaseplease', TIMESTAMP '2019-12-12 17:32:23', 2, ST_GeomFromText('POINT(99.35207776470907 20.021744931753915)'));

INSERT INTO social_media_messages (id, message, published_by, published_datetime, social_media, geo) VALUES
  (101, 'Earthquake !! I see people trapped in the house!!', '@cnnJournalist', TIMESTAMP '2019-10-05 12:20:05', 2, ST_GeomFromText('POINT(102.4263821 17.2144061)')),
  (102, 'Earthquake !! We are many people taking shelter in school here we need drinking water!!', 'Apinya WeeraanduBisista', TIMESTAMP '2019-10-05 12:22:05', 1, ST_GeomFromText('POINT(99.8585839 19.9511766)')),
  (103, 'This bridge is collapsed by the flood, vehicles cannot pass it', 'Paithoon', TIMESTAMP '2019-11-10 16:35:05', 1, ST_GeomFromText('POINT(102.543 13.543)')),
  (104, 'Tsunami just took away this house', 'John', TIMESTAMP '2019-09-02 12:20:05', 3, ST_GeomFromText('POINT(100 8)'));
  
INSERT INTO social_media_messages (id, message, published_by, published_datetime, social_media, geo) VALUES
  (201, 'Flood !! The village is inundated!!', 'sagar111', TIMESTAMP '2019-11-15 13:20:05', 2, ST_GeomFromText('POINT(102.4386558884521 17.208728495144474)')),
  (202, 'The earth is crumbling !! crisis situation here!!', 'Deepak Sahil', TIMESTAMP '2012-12-15 07:22:05', 4, ST_GeomFromText('POINT(99.8585739 19.9611766)')),
  (203, 'I am trapped in my house. The earth is crumbling', 'Samurai', TIMESTAMP '2019-11-10 16:35:05', 1, ST_GeomFromText('POINT(102.643 13.773)')),
  (204, 'Earthquake is killing me', 'Ponpisit', TIMESTAMP '2019-10-12 12:30:15', 2, ST_GeomFromText('POINT(100.212 9.217)'));

-- Data for table disasters
TRUNCATE disasters CASCADE;
INSERT INTO disasters (id, severity, active, incident_datetime, type, geo) VALUES
  (1, 3, TRUE, TIMESTAMP '2019-12-12 16:02:38', 'earthquake',
    ST_GeomFromText('POLYGON((99.34179938596503 19.991386987794268,99.34935248655097 20.00816314032623,99.3617121056916 20.0057436132844,99.37338507932441 19.990741715459485,99.37166846555488 19.98122364147655,99.34694922727363 19.9771903858429,99.3371645287873 19.98315956751491,99.34179938596503 19.991386987794268))')),
  (2, 5, TRUE, TIMESTAMP '2019-12-14 04:23:10', 'tsunami',
    ST_GeomFromText('POLYGON((98.23267235348521 7.903323077499917,98.1521631676942 8.892346592723344,98.31335320065318 9.011724104566584,98.48827614376842 9.022574657846834,98.47643150875865 8.696917835832956,98.43797936032115 7.755710072774676,98.23267235348521 7.755710072774676,98.23267235348521 7.903323077499917))')),
  (3, 3, TRUE, TIMESTAMP '2019-12-16 01:32:38', 'inundation',
    ST_GeomFromText('POLYGON((103.15507598019735 16.92980683158297,103.2731790075411 17.019122341816423,103.44072051144735 16.9192963331173,103.54509062863485 16.916668616842063,103.4929055700411 16.819417389595106,103.63298125363485 16.827304487504758,103.64396758175985 16.751048807286047,103.5917825231661 16.695810092946562,103.5478372106661 16.71422477534455,103.51762480832235 16.643186938250167,103.4544534216036 16.564225121504304,103.3500833044161 16.585284777676716,103.19352812863485 16.564225121504304,103.21000762082235 16.66160668836929,103.36381621457235 16.651081333752582,103.40776152707235 16.70896361877166,103.38578887082235 16.793124693595402,103.3500833044161 16.86936346100235,103.2566995153536 16.887761319787593,103.15507598019735 16.92980683158297))'));;

-- Data for table earthquakes
TRUNCATE earthquakes CASCADE;
INSERT INTO earthquakes (id, magnitude, depth, epicenter) VALUES
  (1, 4.6, 4000, ST_GeomFromText('POINT(99.349365234375 19.973348786110602)'));

-- Data for table volcanic_eruptions
TRUNCATE volcanic_eruptions CASCADE;

-- Data for table tsunamis
TRUNCATE tsunamis CASCADE;
INSERT INTO tsunamis (id, max_wave_height, coast_line) VALUES
  (2, 5.2,
    ST_GeomFromText('LINESTRING(98.29311486658025 7.901894707557416,98.28693505700994 7.8855713670057686,98.27800866540838 7.8855713670057686,98.26496240075994 7.8916926952670945,98.2629024642365 7.8855713670057686,98.26496240075994 7.879449948162856,98.27251550134588 7.879449948162856,98.27320214685369 7.872648265516414,98.28006860193182 7.862445532231456,98.28556176599432 7.862445532231456,98.29105493005682 7.849521709935449,98.29448815759588 7.832516068382787,98.290368284549 7.825033366043346,98.29860803064275 7.822992605728061,98.29860803064275 7.814149195658619,98.29792138513494 7.8046253137914166,98.29448815759588 7.795101214932831,98.28693505700994 7.7889784654877054,98.290368284549 7.784216265150532,98.28830834802557 7.777413027956324,98.29517480310369 7.774011367978302,98.30478784021307 7.7767326981670095,98.30616113122869 7.767888310545359,98.30410119470525 7.759724095125904,98.312340940799 7.7570026547496775)'));

-- Data for table inundations
TRUNCATE inundations CASCADE;
INSERT INTO inundations (id, max_depth) VALUES
  (3, 5);

-- Data for table storms
TRUNCATE storms CASCADE;

-- Data for table users
TRUNCATE users CASCADE;
INSERT INTO users (id, full_name, phone, type) VALUES
  (1, 'Somchai', '73852014', 'citizen'),
  (2, 'Chiang Rai Rescue Team', '3522', 'organisation'),
  (3, 'Emergency Call', '1669', 'call_center'),
  (4, 'Local Electric Distrubution Center', '12234123', 'organisation'),
  (5, 'Aroi', '2143543', 'citizen'),
  (6, 'Pa Tong Rescue Team', '123512', 'organisation'),
  (7, 'National Rescue Organisation', '23456464', 'organisation');

-- Data for table citizens
TRUNCATE citizens CASCADE;
INSERT INTO citizens (id, citizen_id) VALUES
  (1, '6849285013859'),
  (5, '3245643564324');

-- Data for table target_sites
TRUNCATE target_sites CASCADE;
INSERT INTO target_sites (id, status, priority, last_updated, created_by, assigned_to, geo) VALUES
  (1, 'waiting', 2, TIMESTAMP '2019-12-12 18:24:00', 1, 2,
    ST_GeomFromText('GEOMETRYCOLLECTION(POLYGON((99.35329468161888 20.006039502967614,99.35343549759216 20.006039502967614,99.35343549759216 20.005949400239643,99.35329468161888 20.005949400239643,99.35329468161888 20.006039502967614)))')),
  (2, 'in_progress', 3, TIMESTAMP '2019-12-12 18:30:00', 3, 2, ST_GeomFromText('GEOMETRYCOLLECTION(
    POLYGON((99.34742625958052 20.004517649022016,99.34742491847601 20.004460940469045,99.34734042889204 20.00445968027874,99.34734847551908 20.004547893575253,99.34741553074446 20.00457309736517,99.34742625958052 20.004517649022016)),
    POLYGON((99.34748660928335 20.004731881148853,99.34763144857016 20.004692815312186,99.34753891235914 20.004420614374492,99.34749331480589 20.00444077742306,99.34753891235914 20.004583178880015,99.34744503504362 20.004614683609724,99.34748660928335 20.004731881148853)),
    POLYGON((99.34733640557852 20.004784809041155,99.34735920435514 20.004768426600204,99.34736456877317 20.00474322284156,99.34735518104162 20.00472810058444,99.34734042889204 20.00471423851414,99.3473162890109 20.00471423851414,99.34730421907034 20.004729360772593,99.34730019575682 20.004747003405605,99.34730556017485 20.00476590622452,99.3473162890109 20.004781028478014,99.34732701784696 20.004787329416526,99.34733640557852 20.004784809041155))
  )')),
  (3, 'waiting', 3, TIMESTAMP '2019-12-12 19:00:00', 4, 4,
    ST_GeomFromText('GEOMETRYCOLLECTION(POLYGON((99.30229596539266 20.03690514438413,99.40941266461141 20.03690514438413,99.40941266461141 19.967543290287697,99.30229596539266 19.967543290287697,99.30229596539266 20.03690514438413)))')),
  (4, 'pending', 1, TIMESTAMP '2019-12-12 17:35:21', 5, 2,
    ST_GeomFromText('GEOMETRYCOLLECTION(POLYGON((99.35585431500203 20.01142224831279,99.36237744732625 20.01142224831279,99.36237744732625 20.005938047203717,99.35585431500203 20.005938047203717,99.35585431500203 20.01142224831279)))')),
  (5, 'waiting', 2, TIMESTAMP '2019-12-14 06:00:00', 3, 6,
    ST_GeomFromText('GEOMETRYCOLLECTION(POLYGON((98.28864814612973 7.908263114335121,98.31233741614926 7.908263114335121,98.31233741614926 7.879357204386421,98.28864814612973 7.879357204386421,98.28864814612973 7.908263114335121)))')),
  (6, 'pending', 3, TIMESTAMP '2019-12-16 08:24:21', 7, 7,
    ST_GeomFromText('GEOMETRYCOLLECTION(
      POINT(103.4269876012911 16.753678822920108),
      POINT(103.4489602575411 16.799698209204394),
      POLYGON((103.41874785519735 16.71290949979957,103.43934722043173 16.69975624582873,103.4214944372286 16.682655661350694,103.39540190793173 16.70107161200442,103.41874785519735 16.71290949979957))
    )')),
  (7, 'in_progress', 3, TIMESTAMP '2019-12-14 06:53:21', 3, 6,
    ST_GeomFromText('GEOMETRYCOLLECTION(LINESTRING(98.34025075079819 8.92714962394911,98.24137379767319 8.796887546088891,98.24137379767319 8.612271279010505,98.28531911017319 8.481899532875408))'));

-- Data for table messages_sites
TRUNCATE messages_sites CASCADE;
INSERT INTO messages_sites (message, target_site) VALUES
  (1, 1),
  (2, 2),
  (3, 1),
  (4, 1);

-- Data for table site_disasters
TRUNCATE site_disasters CASCADE;
INSERT INTO site_disasters (target_site, disaster) VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (4, 1),
  (5, 2),
  (7, 2);

-- End
