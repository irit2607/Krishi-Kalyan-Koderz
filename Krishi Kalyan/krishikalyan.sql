-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2020 at 12:52 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krishikalyan`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` text NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `subject`, `msg`, `date`) VALUES
(8, 'Sanskriti Kushik', 'sanskritikushik23@gmail.com', 'Welcome ', 'Welcome to our portal!', '2020-10-03 13:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

CREATE TABLE `scheme` (
  `sno` int(12) NOT NULL,
  `name` text NOT NULL,
  `des` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `age` int(3) NOT NULL,
  `landsize` text NOT NULL,
  `cropins` tinyint(1) NOT NULL,
  `soilhealth` tinyint(1) NOT NULL,
  `types` text NOT NULL,
  `rw` tinyint(1) NOT NULL,
  `kcc` tinyint(1) NOT NULL,
  `fc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scheme`
--

INSERT INTO `scheme` (`sno`, `name`, `des`, `slug`, `age`, `landsize`, `cropins`, `soilhealth`, `types`, `rw`, `kcc`, `fc`) VALUES
(1, 'Pradhan Mantri Krishi Sinchai Yojana (PMKSY)', 'Har Khet ko Pani \"Prime Minister Krishi Sinchayee Yojana\"\r\n\r\nGovernment of India is committed to accord high priority to water conservation and its management. To this effect Pradhan Mantri Krishi Sinchayee Yojana (PMKSY) has been formulated with the vision of extending the coverage of irrigation \'Har Khet ko pani\' and improving water use efficiency \'More crop per drop\' in a focused manner with end to end solution on source creation, distribution, management, field application and extension activities.', 'first-scheme', 0, 'not required', 0, 0, 'organic', 1, 0, '0'),
(2, 'Paramparagat Krishi Vikas Yojana (PKVY)', 'The Paramparagat Krishi Vikas Yojana (PKVY), an initiative to promote organic farming in the country, was launched by the NDA government in 2015.\r\n\r\nAccording to the scheme, farmers will be encouraged to form groups or clusters and take to organic farming methods over large areas in the country.\r\n\r\nThe aim is to form 10,000 clusters over the next three years and bring about five lakh acres of agricultural area under organic farming. The government also intends to cover the certification costs and promote organic farming through the use of traditional resources.\r\n\r\nTo avail the scheme, each cluster or group must have 50 farmers willing to take up organic farming under the PKVY and possess a total area of at least 50 acres. Each farmer enrolling in the scheme will be provided INR 20,000 per acre by the government spread over three years time.', 'second-scheme', 0, '0', 0, 0, 'organic', 0, 0, '0'),
(3, 'Pradhan Mantri Fasal Bima Yojana (PMFBY)', 'Pradhan Mantri Fasal Bima Yojana (PMFBY) is the government sponsored crop insurance scheme that integrates multiple stakeholders on a single platform.\r\n\r\nObjectives\r\n\r\n1. To provide insurance coverage and financial support to the farmers in the event of failure of any of the notified crop as a result of natural calamities, pests & diseases.\r\n\r\n2. To stabilise the income of farmers to ensure their continuance in farming.\r\n\r\n3. To encourage farmers to adopt innovative and modern agricultural practices.\r\n\r\n4. To ensure flow of credit to the agriculture sector.', 'third-scheme', 0, '0', 1, 0, '0', 0, 0, '1'),
(4, 'PM Kisan Maan Dhan Yojana', 'Registration for the PM Kisan Maan Dhan Yojana begins said Shri Narendra Singh Tomar, Union Minister for Agriculture & Farmers Welfare, while addressing a Press Conference in Krishi Bhawan, New Delhi today. Appealing farmers across the country to join the old age pension Scheme, the Minister said that the scheme has been envisioned with an aim to improve the life of small and marginal farmers of the country. The Minister said that the operational guidelines have been shared with the States and Agriculture Secretary Shri. Sanjay Agarwal conducted a Video Conference with States in this regard to ensure proper information dissemination and speedy implementation of the Scheme.\r\n\r\nElucidating the salient features of Scheme, Shri. Tomar said that the scheme is voluntary and contributory for farmers in the entry age group of 18 to 40 years and a monthly pension of Rs. 3000/- will be provided to them on attaining the age of 60 years. The farmers will have to make a monthly contribution of Rs.55 to Rs.200, depending on their age of entry, in the Pension Fund till they reach the retirement date i.e. the age of 60 years. The Central Government will also make an equal contribution of the same amount in the pension fund. The spouse is also eligible to get a separate pension of Rs.3000/- upon making separate contributions to the Fund. The Life Insurance Corporation of India (LIC) shall be the Pension Fund Manager and responsible for Pension pay out.\r\n\r\nThe Minister stated that, in case of death of the farmer before retirement date, the spouse may continue in the scheme by paying the remaining contributions till the remaining age of the deceased farmer. If the spouse does not wish to continue, the total contribution made by the farmer along with interest will be paid to the spouse. If there is no spouse, then total contribution along with interest will be paid to the nominee. If the farmer dies after the retirement date, the spouse will receive 50% of the pension as Family Pension. After the death of both the farmer and the spouse, the accumulated corpus shall be credited back to the Pension Fund. The beneficiaries may opt voluntarily to exit the Scheme after a minimum period of 5 years of regular contributions. On exit, their entire contribution shall be returned by LIC with an interest equivalent to prevailing saving bank rates.', 'fourth-scheme', 18, '0', 0, 0, '0', 0, 0, '0'),
(5, 'Dairy Entrepreneurship Development Scheme (DEDS)', 'DEDS is a central government subsidy to promote dairy farms. The objectives of the scheme are as follows:\r\n\r\nTo promote setting up of modern dairy farms for production of clean milk\r\nTo encourage heifer calf rearing thereby conserve good breeding stock\r\nTo bring structural changes in the unorganized sector so that initial processing of milk can be taken up at the village level itself.\r\nTo bring about upgradation of quality and traditional technology to handle milk on a commercial scale\r\nTo generate self employment and provide infrastructure mainly for unorganized sector.\r\nWho is Eligible for DEDS Subsidy?\r\n\r\nFarmers,  individual entrepreneurs, NGOs, companies , groups of unorgainsed and organized sector etc. Groups of organized sector include self help groups, dairy cooperative societies, milk unions , milk federations etc.\r\nAn individual will be eligible to avail assistance for all the components under the scheme but only once for each component\r\nMore than one member of a family can be assisted under the scheme provided they set up separate units with separate infrastructure at different locations. The distance between the boundaries of two such farms should be at least 500m.', 'fifth-scheme', 0, '0', 0, 0, 'dairy', 0, 0, '0'),
(6, 'Pradhan Mantri Kisan Samman Nidhi (PM-KISAN)', 'Union Minister of Agriculture and Farmers’ Welfare Shri Radha Mohan Singh has written to the Chief Ministers of all States for their support in the effective & speedy implementation of “Pradhan Mantri Kisan Samman Nidhi (PM-KISAN)” so that the entitled benefits are expeditiously transferred to the farmers.\r\n\r\nIn his letter to the Chief Ministers, the Union Agriculture Minister writes that under the scheme, selection of eligible small farmer families has to be undertaken by the State Governments and the necessary details such as bank accounts etc., are to be provided on the online portal so that the first installment of the benefits can be transferred to the eligible families.\r\n\r\nFor the implementation of the scheme, the States shall prepare database of eligible beneficiary landholder farmer families in the villages capturing the Name, Age, Gender, Category (SC/ST) , Aadhaar Number (in case Aadhaar Number has not been issued then Aadhaar Enrollment Number together with any other prescribed documents for purposes of the identification such as Driving Licence, Voters’ ID Card, NREGA Job Card, or any other identification documents issued by Central/State/UT Governments or their authorities, etc.), Bank Account Number, IFSC Code. Though mobile number is not mandatory but it is advised that when available it may be captured so that the information related to sanction/transfer of benefit can be communicated. States/UTs shall ensure that there is no duplication of the payment transferred to eligible families. Speedy reconciliation in case of wrong/incomplete bank details of the beneficiary should be ensured.', 'sixth-scheme', 0, '2', 0, 0, '0', 0, 0, '0'),
(7, 'Rupay Kisan Credit Card (RuPay KCC) Scheme', 'Rupay Kisan Credit Card:\r\nTo meet the production credit requirements of the farmers in a timely and hassle-free manner, the Kisan Credit Card (KCC) has emerged as an innovative credit delivery mechanism. According to the revised guidelines for KCC, the KCC should be a smart card cum debit card which could be used in the ATMs/Hand held Swipe Machines etc.\r\n\r\nThe National Payments Corporation of India (NPCI) has launched RuPay which is a new card payment scheme. This scheme has been conceived to fulfill RBI’s vision to offer a domestic, open-loop, multilateral system which will allow all Indian banks and financial institutions in India to participate in electronic payments.\r\n\r\nRuPay has come out with its RuPay KCC offering which leverages the benefits of both KCC and RuPay.\r\n\r\nAdvantages of RuPay KCC:\r\nRuPay is well equipped to handle both the single message and dual messaging systems.\r\n\r\nUnlike Visa and MasterCard networks, RuPay does not charge an entry fee.\r\n\r\nIt offers complete web based architecture, so member banks will not have to develop a separate file based interface. RuPay is a PIN based product so it provides enhanced security.\r\n\r\nAdministration costs & quarterly charges are very low when compared to current international schemes. RuPay provides advanced features such as processing of adjustment file to enable Tip and Surcharge processing on the SMS platform too.\r\n\r\nUsed at the nearest ATM/PoS for withdrawing cash. It removes the necessity of going to PACS or a bank branch to operate the account.\r\n\r\nUnlike normal KCC which serves only as an identity card and facilitate recording of transactions on an ongoing basis, RuPay KCC is actually a smart card that can be.\r\n', 'seventh-scheme', 0, '0', 0, 0, 'organic', 0, 1, '0'),
(8, 'National Bank for Agriculture and Rural Development (NABARD) Scheme', 'NABARD Scheme is also responsible for the development of the cottage industries, rural and village projects, Small Scale Industries (SSIs), etc. Let’s further discuss features and schemes offered by NABARD authority.\r\nFeatures:\r\nProviding support by refinancing or funding\r\nBuilding infrastructure in rural areas\r\nPreparing credit plans at district level\r\nGuiding banking sector in achieving their credit targets\r\nSupervising Regional Rural Banks (RRBs) and Cooperative Banks\r\nDesigning new projects for rural development\r\nImplementing Government’s development schemes\r\nTraining handicraft artisans\r\n', 'eighth-scheme', 0, '0', 0, 0, 'fish', 0, 0, '0'),
(9, 'Solar Water Pump Scheme for Farmers of Maharashtra', 'Solar water pumps scheme for farmers in Maharashtra is launched by state government of Maharashtra. Under the state government scheme, beneficiaries are supposed to get solar pumps at a highly subsidized rate and farmers have to pay just 5 per cent of the pump’s total cost.\r\n\r\nThe Maharashtra government ambitious scheme of installing five lakh solar agricultural pumps across the state for farmers. The government has given a contract for at least 10,000 solar pumps to install in the pilot phase. One solar pumps cost between Rs 3 and Rs 5 lakh depending on the horse power. The scheme is applicable for all districts in Maharashtra state. To get benefits from this scheme, a farmer has to have a landholding smaller than five acres. The farmers have deposited money with the state government for installation of these pumps. The State government also relaxing the norms from 5 acres to 10 acres to get more application for installation of solar water pumps. The government has aims to provide solar water pump on subsidy basis for agriculture in Maharashtra state.\r\n\r\nBenefits of Solar Water Pumps Scheme for Farmers in Maharashtra:\r\n- Subsidy to install solar water pumps\r\n- Saving energy and bills\r\n- No impact of power cuts and load shading\r\n\r\nEligibility for Solar Water Pumps Scheme:\r\n- All farmers who have less than 5 acres land are eligible for Solar water pumps scheme for farmers in Maharashtra', 'ninth-scheme', 0, '5', 0, 0, '0', 0, 0, '0'),
(10, 'Soil Health Card Scheme', 'Objectives\r\nTo improve soil quality and profitability of farmers.\r\nEmployment generation for rural youth.\r\nTo update information on soil analysis.\r\nTo provide soil testing facilities to farmers at their doorstep.\r\nAbout Soil Health Card\r\nThe cropped area was divided into grids of 10 ha for rainfed and 2.5 ha for irrigated and taken only one soil sample from each grid and test results will be distributed to all the farmers whose area was falling under the grid.\r\nSoil samples are processed through standard procedures and analyzed for various parameters namely pH, electrical conductivity (EC), Organic Carbon (OC), available N, P, K, S and micronutrients (Zn, Cu, Fe, Mn & B).\r\nThe State Government will collect samples through the staff of their Department of Agriculture or through the staff of an outsourced agency. The State Government may also involve the students of local Agriculture/Science Colleges.\r\nSoil Samples are collected generally two times in a year, after harvesting of Rabi and Kharif Crop respectively or when there is no standing crop in the field.', 'tenth-scheme', 0, '0', 0, 1, '0', 0, 0, '0'),
(11, 'KUSUM scheme: solar power scheme', 'With an aim to promote use of solar power among farmers, the government is all set to launch Rs 1.4 crore KUSUM scheme next month. “The KUSUM (Kisan Urja Suraksha Evam Utthaan Mahaabhiyan) will be implemented in July. Under this scheme farmers would be provided with solar water pumps,” said R K Singh, minister of power and new & renewable energy. While showcasing achievements of the government in the last four years, minister said that crore families targeted under the SAUBHAGYA scheme would get electricity connections by December, ahead of the March 2019 deadline.\r\n\r\nKisan Urja Suraksha evam Utthaan Mahabhiyan (KUSUM)’ provides for:\r\n1) Installation of grid-connected solar power plants each of capacity up to 2 MW in the rural areas;\r\n2) Installation of standalone off-grid solar water pumps to fulfill irrigation needs of farmers not onnected to grid;\r\n3) Solarisation of existing grid-connected agriculture pumps to make farmers independent of grid supply and also enable them to sell surplus solar power generated to DISCOM and get extra income; and\r\n4) Solarisation of tube-wells and lift irrigation projects of Government sector.\r\n\r\nGovernment’s plan\r\nThe government has planned to provide 27.5 lakh solar pumps (17.50 lakh standalone + 10 Lakh Grid-connected) under the scheme. It will help farmers install total 10 GW of Solar Power Plants of intermediate capacity of 0.5 to 2 MW each. It also envisages 50,000 Grid-connected tube-wells/lift irrigation and drinking water projects. Singh also gave assurance about bringing the hydro power policy and expressed hope to roll out the Rs 16,000 crore plan for beleaguered hydro power capacities in the country.\r\n', 'eleventh-scheme', 18, '0', 0, 0, '0', 0, 0, '0'),
(12, 'New  Umbrella  Scheme  “Pradhan  Mantri Annadata  Aay  SanraksHan  Abhiyan”  (PM-AASHA)', 'Giving  a  major  boost  to  the  pro-farmer initiatives of the Government and in keeping with its commitment  and  dedication for  the Annadata,  the Union  Cabinet  chaired  by  Prime  Minister  Shri Narendra  Modi  has  approved  a  new  Umbrella Scheme “Pradhan Mantri Annadata Aay SanraksHan Abhiyan\'  (PM-AASHA).  The  Scheme  is  aimed  at ensuring remunerative prices to the farmers for their produce as announced in the Union Budget for 2018.', 'twelveth-scheme', 0, '0', 0, 0, '0', 0, 0, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `scheme`
--
ALTER TABLE `scheme`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `scheme`
--
ALTER TABLE `scheme`
  MODIFY `sno` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
