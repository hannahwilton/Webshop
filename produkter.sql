-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Vært: localhost:8889
-- Genereringstid: 05. 10 2023 kl. 12:02:47
-- Serverversion: 5.7.39
-- PHP-version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `produkter`
--

CREATE TABLE `produkter` (
  `prodId` int(10) UNSIGNED NOT NULL,
  `prodTitel` varchar(100) NOT NULL,
  `prodAuthor` varchar(100) NOT NULL,
  `prodGenre` varchar(100) NOT NULL,
  `prodPublisher` varchar(100) NOT NULL,
  `prodLanguage` varchar(100) NOT NULL,
  `prodPublishDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prodFormat` varchar(100) NOT NULL,
  `prodPages` int(11) NOT NULL,
  `prodPrice` decimal(8,2) NOT NULL,
  `prodDescription` text,
  `prodBillede` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `produkter`
--

INSERT INTO `produkter` (`prodId`, `prodTitel`, `prodAuthor`, `prodGenre`, `prodPublisher`, `prodLanguage`, `prodPublishDate`, `prodFormat`, `prodPages`, `prodPrice`, `prodDescription`, `prodBillede`) VALUES
(2, 'Offer 2117', 'Jussi Adler-Olsen', 'Krimi', 'Politikens Forlag', 'Dansk', '2019-06-14 00:00:00', 'Paperback', 486, '139.95', '<p>I over ti &aring;r har Assad v&aelig;ret et g&aring;defuldt kraftcenter i Afdeling Q, men en k&aelig;dereaktion af voldsomme begivenheder bringer ham p&aring; randen af total nedsmeltning. Kun en h&aring;rdt pr&oslash;vet Rose kan hj&aelig;lpe ham med at afkode de m&oslash;rke d&aelig;moner, som v&aelig;kkes af den spanske journalist Joan Aiguaders d&aelig;kning af en flygtnings tragiske d&oslash;d. Med Assad i centrum begynder tretten dages nervepirrende nedt&aelig;lling mod den ultimative katastrofe midt i Europas hjerte, sk&aring;nselsl&oslash;st dirigeret af den irakiske b&oslash;ddel, Ghaalib. Samtidig rystes Afdeling Q af en central kollegas d&oslash;d og af et desperat fors&oslash;g p&aring; at forhindre en indesluttet, vanvittig drengs kompromisl&oslash;se og morderiske handling. I kampen for at redde menneskeliv og f&aring; l&oslash;st Assads traumatiske dilemma kastes Carl M&oslash;rck og resten af Afdeling Q direkte ind i orkanens &oslash;je, hvor ingen bliver sk&aring;net for at tage drastiske beslutninger og for at handle med alle til r&aring;dighed st&aring;ende midler.</p>', '385559847_1070870200744894_3188714553685053552_n.jpg'),
(3, 'Gobler ældes baglæns', 'Nicklas Brendborg', 'Sundhed/Livsstil', 'Grønningen 1', 'Dansk', '2021-03-04 00:00:00', 'Hardcover', 324, '269.95', '<p>Gopler &aelig;ldes bagl&aelig;ns er Nicklas Brendborgs f&oslash;rste bog, og den formidler p&aring; fineste vis et kompleks videnskabeligt emne p&aring; en let forst&aring;elig og interessant m&aring;de, hvor alle kan v&aelig;re med. Engang var jagten p&aring; et l&aelig;ngere liv domineret af eventyrere, alkymister og kvaksalvere, men nu har videnskaben overtaget stafetten. Det betyder, at vi for f&oslash;rste gang nogensinde st&aring;r p&aring; t&aelig;rsklen til at kunne kn&aelig;kke aldringskoden og besvare det &aelig;ldgamle sp&oslash;rgsm&aring;l: Hvordan f&aring;r jeg et langt og sundt liv? I Gopler &aelig;ldes bagl&aelig;ns fort&aelig;ller Nicklas Brendborg en forrygende og utrolig historie om videnskabens kamp mod aldring og peger p&aring;, hvad man selv kan g&oslash;re for at leve l&aelig;ngere. Rejsen g&aring;r forbi klodens fjerneste egne, mest h&oslash;jteknologiske laboratorier og alt derimellem. Undervejs m&oslash;der vi gopler, der &aelig;ldes bagl&aelig;ns, zombieceller, verdens &aelig;ldste mennesker og l&aelig;rer om forskningens mest spektakul&aelig;re eksperimenter.</p>', '384553824_156443114204637_3958077366194440359_n.jpg'),
(4, 'Terminale', 'Michael Katz Krefeld', 'Krimi', 'Politikens Forlag', 'Dansk', '2023-10-06 00:00:00', 'Paperback', 408, '229.95', '<p>En for&aring;rsdag bliver Ravns bedste venner Eduardo og Belindas lille s&oslash;n bortf&oslash;rt af en psykisk syg kvinde, men heldigvis finder de hurtigt drengen i live, og kvinden bliver anholdt. Ved et tilf&aelig;lde lander sagen p&aring; det advokatkontor, hvor Ravn er blevet hyret som efterforsker, og modvillig f&aring;r han til opgave at assistere i forsvaret af kvinden. Aff&aelig;ren tager dog en uventet drejning, da det under varet&aelig;gtsf&aelig;ngslingen viser sig, at hun har v&aelig;ret udsat for bestialske eksperimenter, der har skadet hendes hjerne, og at hun m&aring;ske faktisk er uskyldig. Langsomt f&aring;r Ravn viklet sig dybere og dybere ind i sagen, der f&oslash;rer ham tilbage til et af psykiatriens m&oslash;rkeste kapitler, men ogs&aring; p&aring; sporet af en skruppell&oslash;s organisation, der ikke skyr nogen midler for at bevare hemmeligheden om deres projekt og ikke mindst om... Terminalen.</p>', '384556229_266354893040956_3166674226587354200_n.jpg'),
(5, 'It ends with us', 'Colleen Hoover', 'Engelsk fiktion', 'Simon & Schuster', 'Engelsk', '2016-08-02 00:00:00', 'Paperback', 320, '164.95', '<p>Sometimes the one who loves you is the one who hurts you the most. Lily hasn\'t always had it easy, but that\'s never stopped her from working hard for the life she wants. She\'s come a long way from the small town in Maine where she grew up - she graduated from college, moved to Boston, and started her own business. So when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily\'s life suddenly seems almost too good to be true. Ryle is assertive, stubborn, maybe even a little arrogant. He\'s also sensitive, brilliant, and has a total soft spot for Lily, but Ryle\'s complete aversion to relationships is disturbing. Even as Lily finds herself becoming the exception to his \"no dating\" rule, she can\'t help but wonder what made him that way in the first place. As questions about her new relationship overwhelm her, so do thoughts of Atlas Corrigan - her first love and a link to the past she left behind. He was her kindred spirit, her protector. When Atlas suddenly reappears, everything Lily has built with Ryle is threatened. With this bold and deeply personal novel, It Ends With Us is a heart-wrenching story and an unforgettable tale of love that comes at the ultimate price.</p>', '384554737_646612237667058_3536686992487787510_n.jpg'),
(6, 'Twisted Love', 'Ana Huang', 'Engelsk fiktion', 'Piaktus Books', 'Engelsk', '2022-05-05 00:00:00', 'Paperback', 368, '129.95', '<p>A crack. A melt. A fire that could end his world as he knew it. Ava Chen is a free spirit trapped by nightmares of a childhood she can\'t remember. But despite her broken past, she\'s never stopped seeing the beauty in the world ... including the heart beneath the icy exterior of a man she shouldn\'t want. Her brother\'s best friend. Her neighbour. Her saviour and her downfall. Theirs is a love that was never supposed to happen - but when it does, it unleashes secrets that could destroy them both ... and everything they hold dear. Twisted Love is a brother\'s best friend/opposites attract romance with a hint of suspense. It\'s book one in the Twisted series but can be read as a standalone.</p>', '384553121_876918854082928_2105337668654659989_n.jpg'),
(7, 'Nej nej og atter nej', 'Nina Lykke', 'Roman', 'Rosinante', 'Dansk', '2019-07-24 00:00:00', 'Paperback', 339, '199.95', '<p>Ingrid og Jan har v&aelig;ret gift i 25 &aring;r og bor sammen med&nbsp; to halvvoksne s&oslash;nner i&nbsp;et forstadskvarter&nbsp;i Oslo. Drengene&nbsp;lever deres eget liv og bidrager ikke med stort. For Ingrid har b&aring;de familielivet og jobbet som l&aelig;rer tabt glansen, mens&nbsp;Jan derimod er blevet forfremmet til afdelingsdirekt&oslash;r i departementet og&nbsp;overmandes af ny energi - og af Hanne, en langt yngre kollega, der begynder at f&oslash;le sig agterudsejlet p&aring; familiefronten. Noget m&aring; ske!</p>', '386870884_3210146635949434_6661288806033877531_n.jpg'),
(8, 'På lige fod', 'Helle Juhl', 'Kultur', 'Gyldendal', 'Dansk', '2014-11-04 00:00:00', 'Hardcover', 224, '299.95', '<p>\"P&aring; lige fod. Kvindernes vej til valgretten 1915\" er&nbsp;Helle Juhls&nbsp;fort&aelig;lling om kvindernes brogede vej til valgretten - med datidens satireh&aelig;fter som rejsef&oslash;rer og med samtidige fotografier, beretninger og udsagn til at supplere fort&aelig;llingen. Undervejs m&oslash;der vi b&aring;de pr&aelig;stefruer og habitkvinder, pacifister og kanonkvinder. Men f&oslash;rst og fremmest en skare modige kvinder fra dengang, oldemor, var ung, og som p&aring; tv&aelig;rs af milj&oslash;er og baggrunde delte et br&aelig;ndende &oslash;nske om at komme p&aring; lige fod med m&aelig;ndene.</p>', '386441684_777737820776469_7121335885289210339_n.jpg'),
(9, 'Lysets våben', 'Ken Follett', 'Skønlitteratur', 'Cicero', 'Dansk', '2023-09-26 00:00:00', 'Hardcover', 720, '299.95', '<p>Traditioner bliver udfordret, den sociale sammenh&aelig;ngskraft eksploderer og Europas krige knuser h&aring;bet om fred. Den industrielle revolution buldrer frem i Kingsbridge og efterlader arbejderne uden arbejde, mens opr&oslash;ret ulmer. Samtidig forbederer Napoleon sig p&aring; at overtage verden &ndash; koste hvad det vil. Verden er i brand, og vores hovedpersoner s&aelig;tter alt ind for at redde Kingsbridges fremtid.</p>', '384556216_687366093055826_5554757399782517516_n.jpg'),
(10, 'Dem der ikke tier', 'Peter Øvig Knudsen', 'Biografi', 'Gyldendal', 'Dansk', '2023-09-29 00:00:00', 'Hardcover', 331, '244.95', '<p>Gennem otte &aring;r har Peter &Oslash;vig Knudsen arbejdet p&aring; disse uhyggelige og modbydelige sager om de organiserede seksuelle overgreb, der blev beg&aring;et p&aring; b&oslash;rnehjem i Danmark s&aelig;rligt gennem 1960&rsquo;erne og 1970&rsquo;erne. I \"Dem, der ikke tier\" giver han endeligt ofrenes m&oslash;rke fort&aelig;lling en stemme. I l&oslash;bet af bogen belyses de tragiske h&aelig;ndelser p&aring; b&oslash;rnehjemmet Godhjem, p&aring; det lutherskmissionske b&oslash;rnehjem Solg&aring;rden i&nbsp;Tarm, hvor pigerne blev misbrugt gennem 15 &aring;r af forstanderen og p&aring; Det Kongelige Opfostringshus i nordsj&aelig;llandske Helleb&aelig;k, hvor drenge i to &aring;rtier blev misbrugt, ofte under bed&oslash;velse, af l&aelig;rere og socialr&aring;dgivere. Selvom mange kendte til disse ugerninger, blev b&oslash;rn og ansattes anmeldelser afvist eller undertrykt.</p>', '386473821_3421413504836149_3492595891638519541_n.jpg'),
(11, 'Krystaller', 'Noell Elise Wakeroots', 'Krop & Sjæl', 'Grønningen 1', 'Dansk', '2022-05-18 00:00:00', 'Hardcover', 100, '239.95', '<p>L&aelig;r om krystallernes historie &ndash; og om deres energi.L&aelig;r at bruge krystaller i din hverdag. De er mystiske, men ogs&aring; konkrete redskaber, du kan bruge til at skabe ro og til at opn&aring; det, du dr&oslash;mmer om.<br><br>Krystaller indeholder tusinder af &aring;rs spirituel visdom. De har n&aelig;sten altid v&aelig;ret en del af vores liv. Vores forf&aelig;dre bar de smukke sten som amuletter, for s&aring;dan kunne de p&aring;virke deres rejse gennem livet og d&oslash;den. Og for dem bet&oslash;d smykket lykke, styrke og beskyttelse. I dag er det anderledes. De skinnende krystaller v&aelig;kker m&aring;ske vores nysgerrighed, men de f&aring;r os ogs&aring; til at stille sp&oslash;rgsm&aring;l: Hvad kan de egentlig? Hvordan bruger man dem, og skal man v&aelig;lge den lille r&oslash;de krystal eller den store hvide?</p>', '384556203_248469024862621_2677611625842666584_n.jpg'),
(12, 'Hobbitten', 'J. R. R. Tolkien', 'Skønlitteratur', 'Gyldendal', 'Dansk', '2019-09-14 00:00:00', 'Paperback', 336, '199.95', '<p>Hobbitten&nbsp;er Tolkiens ud&oslash;delige romanklassiker om hobbitten Bilbo S&aelig;kker,&nbsp;der meget mod sin vilje bliver udpeget af troldmanden Gandalf til at ledsage tretten dv&aelig;rge p&aring; deres generobringstogt af den enorme skat, der nidk&aelig;rt vogtes af dragen Smaug. Og som undervejs tilf&aelig;ldigt render ind i m&oslash;rkev&aelig;senet Gollum og vinder hans m&aelig;rkelige ring fra ham i en dyst om ordspil og g&aring;der.</p>', '386474447_3574297586146180_9200612717245353546_n.jpg'),
(13, 'Af blod og støv', 'Julie M. Day', 'Fantasy', 'Turbine', 'Dansk', '2020-05-25 00:00:00', 'Hardcover', 432, '189.95', '<p>Yara skal indvies i heksenes kreds, men &aring;nderne afviser hende, da noget g&aring;r grueligt galt under ritualet, og hun og hendes s&oslash;stre m&aring; flygte over hals og hoved. Zola st&aring;r til at blive sin stammes overhoved, men hendes landsby bliver brutalt overfaldet af fremmede m&aelig;nd p&aring; jagt efter slaver, de kan s&aelig;lge. Imens lever Philip og Taran en rutinepr&aelig;get tilv&aelig;relse i en mindre landsby, men f&oslash;r de f&aring;r set sig om, vender beslutninger, truffet i hovedstadens hjerte, op og ned p&aring; alting. Kongen af Kalos forhandler sig til en aftale med dv&aelig;rgenes konge og sender sin eneste s&oslash;n og arving til tronen over Salthavet for at blive gift mod sin vilje. Imens finder en fordrukken eksl&oslash;jtnant et nyt form&aring;l med sin eksistens, da han f&aring;r et tilbud fra kongen selv, som han ikke kan sige nej til.</p>', '386885108_1708330086347461_1382764301114808455_n.jpg'),
(14, 'Icebreaker', 'Hannah Grace', 'Skønlitteratur', 'Simon & Schuster', 'Engelsk', '2023-01-19 00:00:00', 'Paperback', 448, '109.95', '<p>Sparks fly when a competitive figure skater and hockey team captain are forced to share a rink. Anastasia Allen has worked her entire life for a shot at Team USA. It looks like everything is going according to plan when she gets a full scholarship to the University of California, Maple Hills and lands a place on their competitive figure skating team. Nothing will stand in her way, not even the captain of the hockey team, Nate Hawkins. Nate\'s focus as team captain is on keeping his team on the ice. Which is tricky when a facilities mishap means they are forced to share a rink with the figure skating team including Anastasia, who clearly can\'t stand him. But when Anastasia\'s skating partner faces an uncertain future, she may have to look to Nate to take her shot. Sparks fly, but Anastasia&nbsp;isn\'t worried because she could never like a hockey player, right?</p>', '386578673_358064146549484_9098129790968071780_n.gif'),
(15, 'Nattergalen', 'Kristin Hannah', 'Skønlitteratur', 'Cicero', 'Dansk', '2017-06-16 00:00:00', 'Paperback', 464, '169.95', '<p>\"Nattergalen\" er historien om Vianne Mauriac, der i den lille franske by Carriveau i &aring;ret 1939 er alene tilbage med sin datter Sophie, efter at hendes mand&nbsp;er taget til fronten. Da tyskerne bes&aelig;tter store dele af landet, m&aring; Vianne v&aelig;lge imellem at oppgive deres lille hus eller have en tysk kaptajn indkvarteret. Og det er blot det f&oslash;rste ud af mange sv&aelig;re valg.<br><br>Viannes lilles&oslash;ster Isabelle er hos deres far i Paris, da tyskerne invaderer byen. Sammen med tusindvis af andre parisere forlader hun byen og drager til fods mod Carriveau. P&aring; vejen oplever hun krigens gru p&aring; n&aelig;rmeste hold og m&oslash;der en ung modstandsmand, som hun forelsker sig hovedl&oslash;st i. Men da han svigter hende, m&aring; hun blive hos Vianne i Carriveau, hvor hun involverer sig i modstandskapen og s&aelig;tter livet p&aring; spil for et frit Frankrig.</p>', '285997553_1084224775778097_3374837017832172327_n.jpg'),
(16, 'Dybet', 'Michael Katz Krefeld', 'Krimi', 'Lindhardt & Ringhof', 'Dansk', '2020-06-17 00:00:00', 'Paperback', 408, '129.95', '<p>Ondskaben kender ingen gr&aelig;nser. Den erfarne privatopdager Ravn f&aring;r sin mest uhyggelige sag til dato, da en klient beder ham finde en gammel skolekammerat, som han ikke har haft kontakt med i 17 &aring;r. En r&aelig;kke bestialske overfald p&aring; kvinder, der ryster K&oslash;benhavn, har givet klienten mistanke om, at hans skolekammerat st&aring;r bag, fordi overfaldene minder om det, som han og kammeraten begik p&aring; en lille pige tilbage i 1993, og som endte fatalt. Af frygt for h&aelig;vnangreb mod drengene har de siden deres frigivelse levet under politiets vidnebeskyttelsesprogram med nye hemmelige identiteter og er derfor umulige at opspore. Da endnu en kvinde bliver overfaldet og denne gang dr&aelig;bt, efterforsker Ravn sagen og indleder jagten p&aring; den anonyme morder. En gerningsmand der kan v&aelig;re hvem som helst, og sl&aring; til hvorn&aring;r det skal v&aelig;re. Og sp&oslash;rgsm&aring;let melder sig hurtigt for Ravn, om han kender sin klients virkelige identitet og hans motiver?&nbsp;Dybet er fjerde selvst&aelig;ndige bog i Michael Katz Krefelds popul&aelig;re serie om privatopdageren Ravn, der bor p&aring; sin b&aring;d i Christianshavns kanal sammen med sin engelske bulldog M&oslash;ffe.</p>', '386889810_625853666375568_8254543379525557405_n.jpg'),
(17, 'Passage', 'Cathrine Laudrup-Dufour', 'Biografi', 'Grønningen 1', 'Dansk', '2023-10-09 00:00:00', 'Hardcover', 356, '299.95', '<p>Cathrine Laudrup-&shy;Dufours Passage er en ekstra&shy;ordin&aelig;r elitesportsfort&aelig;lling om str&aelig;ben efter perfektionen i den fuldkomne symbiose mellem rytter og hest &ndash; og en dybt personlig frig&oslash;relses&shy;fort&aelig;lling om kampen for at finde sin egen m&aring;de at &shy;forvalte sit talent og sin &shy;personlighed p&aring;.I sin selvbiografi giver &shy;Cathrine Laudrup-Dufour l&aelig;seren et ufiltreret og unikt indblik i, hvad det har kostet Danmarks mest vindende dressurrytter at n&aring; sine sportslige m&aring;l og indfri den ultimative dr&oslash;m om at blive en af verdens bedste dressur&shy;ryttere &ndash; og kunne leve af sin passion. Hun bliver tr&aelig;net af to af verdens bedste dressurryttere: prinsesse Nathalie Zu-Sayn Wittgenstein og den legendariske OL-rytter Kyra Kyrklund. I 2021 giftede hun sig med &shy;springrytter Rasmine Laudrup-Dufour og blev en del af Danmarks st&oslash;rste sportsfamilie. I denne bog fort&aelig;ller hun for f&oslash;rste gang om alle sine sejre &ndash; og om bagsiden af medaljen.&nbsp; Som 12-&aring;rig kom Cathrine p&aring; pony-landsholdet &ndash; og har v&aelig;ret i toppen af dansk ridesport siden. Samme &aring;r vandt hun DM. Siden har hun deltaget i to olympiader og vundet et hav af h&aelig;derspriser og utallige medaljer ved DM, EM, Nordisk Mesterskab. I 2022 bragte hun VM-guldet hjem sammen med det danske dressurlandshold for f&oslash;rste gang nogen&shy;sinde. Hendes karriere er fuld af sejre. Men ogs&aring; nederlag, menneskelige omkostninger og personlige tab. &Eacute;n pris for succesen er, at hun har mistet kontakten til en del af sin familie. Cathrine Laudrup-&shy;Dufour er f&oslash;dt i 1992 i Hvals&oslash;. Hun er gift med springrytter Rasmine Laudrup-Dufour. De bor p&aring; en g&aring;rd i Fredensborg, hvorfra de driver deres forretning. Cathrine Laudrup-Dufour er den mest vindende danske dressurrytter nogensinde.&nbsp;</p>', '386887938_290273843760132_8842920201570714431_n.jpg'),
(18, 'Bogen om Badehotellet', 'Jacob Wendt Jensen', 'Biografi', 'Peoples Press', 'Dansk', '2023-10-26 00:00:00', 'Hardcover', 300, '299.95', '<p>I Bogen om Badehotellet g&aring;r Jacob Wendt Jensen bag om tilblivelsen af den popul&aelig;re tv-serie fra id&eacute; til seersucces. Resultatet er blevet en unik og underholdende fort&aelig;lling, sp&aelig;kket med anekdoter, flotte fotos og nyt materiale. Fra forfatternes f&oslash;rste m&oslash;de, casting og l&aelig;sepr&oslash;ver, over kostumer, musik og lyd, til kulisser, mad og blomster. Bogen er baseret p&aring; interviews med mere end 40 personer, der alle har spillet en rolle i eller omkring serien. Badehotellet er en komedie-drama-serie, skabt af Stig Thorsboe og Hanna Lundblad for TV 2. Den havde premiere i 2013og best&aring;r forel&oslash;big af ni s&aelig;soner med i alt 55 episoder. Tiende og sidste s&aelig;son vises i 2024. Serien er blevet en enorm succes med et seertal p&aring; 1,9 mio. Den f&oslash;lger hverdagen hos Andersens Badehotel i Nordjylland, hvor velhavende familier fra K&oslash;benhavn tilbringer deres somre. Serien skildrerhotellets ansatte og g&aelig;ster og deres indbyrdes forhold fra 1928 og frem til1946, mens en ny verdenskrig bliver stadig vanskeligere at holde p&aring; afstand.</p>', '386477907_738071031461677_1720110517967537183_n.jpg'),
(19, 'En dag vil vi grine af det', 'Thomas Korsgaard', 'Skønlitteratur', 'Lindhardt & Ringhof', 'Dansk', '2019-09-20 00:00:00', 'Paperback', 320, '100.00', '<p>Hvad sker der med en familie i underskud, som pludselig kommer til penge? Som endelig f&aring;r det, de har dr&oslash;mt om? Vil alt nu endelig blive godt i hjemmet for enden af den lange grusvej lidt uden for Skive?&nbsp;&nbsp;En dag vil vi grine af det er en sorgmunter roman om at skulle klare sig som ung mand i udkanten af det danske velf&aelig;rdssamfund.Tues mor har f&aring;et en stor erstatning for en arbejdsskade, og nu skal alt blive godt. Men er penge det, der skal til, for at komme fri af den f&oslash;lelse af rod og opl&oslash;sning, der hidtil har pr&aelig;get dagligdagen? Og hvad sker der, n&aring;r Tue ikke l&aelig;ngere er et barn - men en ung voksen, som opdager, at der er en verden uden for hjemmet for enden af grusvejen?Thomas Korsgaard tog l&aelig;sere og anmeldere med storm med sin debutroman Hvis der skulle komme et menneske forbi.&nbsp; Nu forts&aelig;tter den st&aelig;rke fort&aelig;lling om Tue, der vokser op i et hjem, hvor b&oslash;rn overlades til sig selv, hvor voksne ikke rigtig magter at v&aelig;re for&aelig;ldre - og&nbsp;hvor realiteterne sj&aelig;ldent lever op til intentionerne.</p>', 'endagvilvigrineafdet.jpeg'),
(20, 'Fifty Shades - Fanget', 'E. L. James', 'Engelsk erotik', 'Pretty Ink', 'Dansk', '2012-08-31 00:00:00', 'Paperback', 544, '149.95', '<p>Anastasia er litteraturstuderende og ender tilf&aelig;ldigvis med at f&aring; en hurtig tjans ved universitetsbladet. Hun v&aelig;lter bogstavligt talt ind i Christian Greys verden, da hun skal interviewe ham, og det skal vise sig at udvikle sig til en forvirrende, frustrerende og vanvittig forelskelse i en m&oslash;rk, g&aring;de- og magtfuld mand.<br><br>Lidenskab og beg&aelig;r blusser op mellem parterne, men da smukke Christian Grey gerne vil introducere Anastasia til sin m&oslash;rkere erotiske side &ndash; som indeb&aelig;rer en kontrakt om et S/M-forhold &ndash; bliver hun i tvivl. Kan hun lide at lade sig undertrykke af en mand? T&oslash;r hun?</p>', 'fiftyshades.jpeg'),
(21, 'Kunsten at være fucking ligeglad', 'Mark Manson', 'Sundhed/Livsstil', 'Memoris', 'Dansk', '2018-11-02 00:00:00', 'Hardcover', 224, '249.95', '<p>Er du ogs&aring; d&oslash;dtr&aelig;t af selvhj&aelig;lpsb&oslash;ger, der fort&aelig;ller dig, at bare du er glad og positiv, s&aring; skal det nok g&aring; alt sammen? I&nbsp;Kunsten at v&aelig;re fucking ligeglad&nbsp;finder du den stik modsatte tilgang: Livet er fyldt med problemer, og du slipper aldrig for dem. Kunsten er at finde ud af, hvad der er vigtigt for dig. Du er n&oslash;dt til at v&aelig;lge, hvilke problemer du vil have i dit liv, og hvilke du bare vil springe op og falde ned p&aring;.</p>', '386546576_289670057190730_7448271422936821112_n.gif');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `produkter`
--
ALTER TABLE `produkter`
  ADD PRIMARY KEY (`prodId`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `produkter`
--
ALTER TABLE `produkter`
  MODIFY `prodId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;