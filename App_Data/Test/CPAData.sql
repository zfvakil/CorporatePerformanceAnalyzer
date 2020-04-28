-- Script Date: 4/26/2020 2:11 PM  - ErikEJ.SqlCeScripting version 3.5.2.86
SELECT 1;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE [y_ear] (
  [ID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL
, [Y_EAR] nvarchar(255) NOT NULL COLLATE NOCASE
);
CREATE TABLE [ratioconstruct] (
  [RatioConstructID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL
, [RatioConstruct] nvarchar(50) NOT NULL COLLATE NOCASE
);
CREATE TABLE [knowledgeobject] (
  [KnowledgeObjectID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL
, [KnowledgeObject1] nvarchar(255) NOT NULL COLLATE NOCASE
, [ObjectType] nvarchar(255) NOT NULL COLLATE NOCASE
);
CREATE TABLE [isp] (
  [IsPartOfRelationID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL
, [KnowledgeObjectA] nvarchar(255) NOT NULL COLLATE NOCASE
, [KnowledgeObjectB] nvarchar(255) NOT NULL COLLATE NOCASE
);
CREATE TABLE [isc] (
  [IsCausedByRelationID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL
, [KnowledgeObjectA] nvarchar(255) NOT NULL COLLATE NOCASE
, [KnowledgeObjectB] nvarchar(255) NOT NULL COLLATE NOCASE
);
CREATE TABLE [isa] (
  [IsARelationID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL
, [KnowledgeObjectA] nvarchar(255) NOT NULL COLLATE NOCASE
, [KnowledgeObjectB] nvarchar(255) NOT NULL COLLATE NOCASE
);
CREATE TABLE [incomestatement] (
  [ID] int NOT NULL
, [CompanyYear] int NOT NULL
, [CompanyID] int NOT NULL
, [Company] nvarchar(255) NOT NULL COLLATE NOCASE
, [FinancialConstructs] nvarchar(255) NOT NULL COLLATE NOCASE
, [Numbers] float NOT NULL
, CONSTRAINT [PK_incomestatement_ID] PRIMARY KEY ([ID])
);
CREATE TABLE [company] (
  [ID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL
, [Company] nvarchar(255) NOT NULL COLLATE NOCASE
);
CREATE TABLE [commonword] (
  [ID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL
, [Common] nvarchar(30) NOT NULL COLLATE NOCASE
);
CREATE TABLE [balancesheet] (
  [ID] int NOT NULL
, [CompanyYear] int NOT NULL
, [CompanyID] int NOT NULL
, [Company] nvarchar(255) NOT NULL COLLATE NOCASE
, [FinancialConstructs] nvarchar(255) NOT NULL COLLATE NOCASE
, [Numbers] float NOT NULL
, CONSTRAINT [PK_balancesheet_ID] PRIMARY KEY ([ID])
);
CREATE TABLE [articles] (
  [ArticleID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL
, [Company] nvarchar(255) NOT NULL COLLATE NOCASE
, [TextSource] nvarchar(255) NOT NULL COLLATE NOCASE
, [ArticleURL] nvarchar(255) NOT NULL COLLATE NOCASE
, [ArticleTitle] nvarchar(255) NOT NULL COLLATE NOCASE
, [ArticleText] ntext NOT NULL
);
INSERT INTO [y_ear] ([ID],[Y_EAR]) VALUES (
1,'2015');
INSERT INTO [y_ear] ([ID],[Y_EAR]) VALUES (
2,'2016');
INSERT INTO [y_ear] ([ID],[Y_EAR]) VALUES (
3,'2017');
INSERT INTO [y_ear] ([ID],[Y_EAR]) VALUES (
4,'2018');
INSERT INTO [y_ear] ([ID],[Y_EAR]) VALUES (
5,'2019');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
1,'Gross Sales Revenue');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
2,'Beginning Inventory');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
3,'Total Production Cost');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
4,'Goods Available');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
5,'Ending Inventory');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
6,'Cost of Goods Sold');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
7,'Gross Profit');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
8,'Marketing Cost');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
9,'Profit On Sales');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
10,'Other Costs');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
11,'Other Income');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
12,'Net Profit Before Taxes');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
13,'Income Taxes');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
14,'Profit-Sharing Cost');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
15,'Net Income');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
16,'Dividends Paid');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
17,'Retained Earnings');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
18,'Cash Balance');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
19,'Accounts Receivable');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
20,'Finished Product');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
21,'Raw Material Inventory');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
22,'Savings Account');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
23,'Total Current Assets');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
24,'Plant And Equipment');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
25,'Total Assets');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
26,'Bank Loan Balance');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
27,'Bonds Outstanding');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
28,'Capital Stock Value');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
29,'Accm Retained');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
30,'Total Stockholders');
INSERT INTO [ratioconstruct] ([RatioConstructID],[RatioConstruct]) VALUES (
31,'Total Liabilities');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
1,'Accounting Technique','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
2,'Accounting Techniques','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
3,'Aging Balance','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
4,'Aging Balances','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
5,'Allowance','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
6,'Allowances','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
7,'Amortization','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
8,'Amortize','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
9,'Amortized','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
10,'Amortizing','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
11,'Asset','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
12,'Assets','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
13,'Bad Debt','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
14,'Bad Debts','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
15,'Bank Deposit','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
16,'Bank Deposits','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
17,'Beginning Inventories','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
18,'Beginning Inventory','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
19,'Board of Directors','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
20,'Building','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
21,'Buildings','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
22,'Capital','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
23,'Cash','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
24,'Cash Cow','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
25,'Cash Cows','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
26,'Cash Purchase','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
27,'Cash Purchases','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
28,'Cash Receipt','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
29,'Cash Receipts','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
30,'Cash Sale','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
31,'Cash Sales','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
32,'CEO','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
33,'Checking Account','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
34,'Chief Executive Officer','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
35,'Chief Information Officer','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
36,'CIO','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
37,'Client','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
38,'Clients','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
39,'Coin','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
40,'Coins','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
41,'Company','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
42,'Cost Of Goods Sold','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
43,'Cost Of Inventory','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
44,'Credit','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
45,'Credit Loss','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
46,'Credit Losses','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
47,'Credit Policies','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
48,'Credit Policy','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
49,'Credit Rating','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
50,'Credit Ratings','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
60,'Credit Sale','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
61,'Credit Sales','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
62,'Credited','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
63,'Crediting','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
64,'Creditor','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
65,'Creditors','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
66,'Credits','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
67,'Currencies','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
68,'Currency','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
69,'Current Asset','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
70,'Current Assets','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
71,'Current Liability','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
72,'Current Liabilities','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
73,'Customer','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
74,'Customer Demand','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
75,'Customer Demands','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
76,'Customer Service','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
77,'Customer Services','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
78,'Customers','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
79,'Debt','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
80,'Debts','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
81,'Depreciate','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
82,'Depreciated','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
83,'Depreciates','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
84,'Depreciation','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
85,'Distribute','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
86,'Distributed','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
87,'Distributes','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
88,'Distribution','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
89,'Distribution Center','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
90,'Distribution Centers','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
91,'Doubtful Accounts Expense','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
92,'Ending Inventories','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
93,'Ending Inventory','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
94,'Equipment','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
95,'Equity','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
96,'Evaluation','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
97,'Exchange','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
98,'Exchanges','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
99,'Expense','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
100,'Expenses','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
101,'Factories','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
102,'Factory','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
103,'Financial Document','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
104,'Finished Good','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
105,'Finished Goods','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
106,'Fixed Asset','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
107,'Fixed Assets','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
108,'Fund','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
109,'Funded','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
110,'Funds','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
111,'Goodwill','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
112,'Income','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
113,'Incomes','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
114,'Installment','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
115,'Installment Account','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
116,'Installment Accounts','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
117,'Installments','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
118,'Intangible Asset','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
119,'Intangible Assets','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
120,'Inventoried','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
121,'Inventories','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
122,'Inventory','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
123,'Liabilities','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
124,'Liability','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
125,'Liquidity','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
126,'Liquidity Ratio','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
127,'Liquidity Ratios','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
128,'Loaner','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
129,'Logistic','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
130,'Logistics','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
131,'Long Term Asset','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
132,'Long Term Assets','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
133,'Long Term Liabilities','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
134,'Long Term Liability','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
135,'Long-Term Asset','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
136,'Long-Term Assets','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
137,'Long-Term Liabilities','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
138,'Long-Term Liability','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
139,'Manager','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
140,'Managers','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
141,'Manufacture','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
142,'Manufactured','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
143,'Manufacturer','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
144,'Manufacturers','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
145,'Manufactures','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
146,'Manufacturing','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
147,'Market','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
148,'Market Demand','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
149,'Market Demands','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
150,'Market Forecast','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
151,'Market Forecasts','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
152,'Market Share','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
153,'Market Shares','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
154,'Marketable Securities','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
155,'Marketable Security','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
156,'Marketed','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
157,'Marketing','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
158,'Marketing Department','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
159,'Marketing Departments','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
160,'Marketing Force','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
161,'Marketing Forces','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
162,'Marketing Vice President','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
163,'Marketing Vice Presidents','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
164,'Marketing Vice-President','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
165,'Marketing Vice-Presidents','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
166,'Markets','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
167,'Merchandise','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
168,'Merchandising','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
169,'Merge','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
170,'Merged','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
171,'Merges','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
172,'Merging','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
173,'Money','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
174,'Nontrade Receivable','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
175,'Non-Trade Receivable','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
176,'Nontrade Receivables','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
177,'Non-Trade Receivables','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
178,'Notes Receivable','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
179,'Notes Receivables','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
180,'Outstanding Share','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
181,'Outstanding Shares','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
182,'Payable','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
183,'Payables','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
184,'Plant','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
185,'Plants','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
186,'Prepaid Expense','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
187,'Pre-paid Expense','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
188,'Prepaid Expenses','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
189,'Pre-paid Expenses','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
190,'President','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
191,'Presidents','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
192,'Price','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
193,'Priced','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
194,'Prices','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
195,'Pricing','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
196,'Pricing Strategies','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
197,'Pricing Strategy','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
198,'Produce','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
199,'Produced','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
200,'Produces','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
201,'Producing','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
202,'Product','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
203,'Product Design','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
204,'Product Designs','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
205,'Product Plan','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
206,'Product Plans','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
207,'Production','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
208,'Production Plan','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
209,'Production Plans','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
210,'Production Planning','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
211,'Productions','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
212,'Products','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
213,'Profit','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
214,'Profit Margin','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
215,'Profit Margins','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
216,'Profitability','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
217,'Profited','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
218,'Profiting','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
219,'Profits','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
220,'Proof Of Purchase','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
221,'Property Acquisition','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
222,'Property Acquisitions','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
223,'Purchase','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
224,'Purchased','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
225,'Purchaser','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
226,'Purchasers','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
227,'Purchases','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
228,'Purchasing','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
229,'Quality','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
230,'Raw Materials','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
231,'Raw Material','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
232,'Receivable','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
233,'Receivables','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
234,'Restricted Cash','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
235,'Revenue','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
236,'Revenues','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
237,'Sale','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
238,'Sales','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
239,'Sales Force','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
240,'Sales Forces','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
241,'Sales Price','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
242,'Sales Prices','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
243,'Sales Representative','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
244,'Sales Representatives','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
245,'Salesman','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
246,'Salesmen','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
247,'Salespeople','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
248,'Salesperson','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
249,'Savings Account','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
250,'Savings Accounts','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
251,'Selling','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
252,'Senior Officer','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
253,'Shareholder','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
254,'Shareholder Representative','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
255,'Shareholder Representatives','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
256,'Shareholders','Agent');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
257,'Shareholding','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
258,'Short Term Asset','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
259,'Short Term Assets','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
300,'Short Term Liabilities','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
301,'Short Term Liability','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
302,'Short Term Receivable','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
303,'Short Term Receivables','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
304,'Short-Term Asset','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
305,'Short-Term Assets','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
306,'Short-Term Liabilities','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
307,'Short-Term Liability','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
308,'Short-Term Receivable','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
309,'Short-Term Receivables','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
310,'Sold','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
311,'Tangible Asset','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
312,'Tangible Assets','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
313,'Technological Advancement','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
314,'Technological Advancements','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
315,'Technological Development','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
316,'Technological Developments','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
317,'Trade Receivable','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
318,'Trade Receivables','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
319,'Transaction','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
320,'Transactions','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
321,'Uncollectible Accounts Expense','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
322,'Uncollectible Accounts Expenses','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
323,'Unrestricted Cash','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
324,'Work In Progress','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
325,'Write Off','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
326,'Write Offs','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
327,'Write-Off','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
328,'Write-Offs','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
329,'Demand','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
330,'Service','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
331,'Working Capital','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
332,'Amortization Schedule','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
333,'Marketing Strategy','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
334,'Machine','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
335,'Machines','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
336,'Marketing Strategies','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
337,'Amortization Schedules','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
338,'Demands','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
339,'Services','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
340,'Devaluation','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
341,'Paying Off Debt','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
342,'Spreading Capital Expenses','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
343,'Interest Payments','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
344,'Interest Payment','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
345,'Insufficient Funds','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
346,'New Accounting Period','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
347,'Earnings','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
348,'Deposit','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
349,'Deposits','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
350,'Withdraw','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
351,'Withdraws','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
352,'Forecast','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
353,'Forecasts','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
354,'Goods','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
355,'Good','Resource');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
356,'Pecuniary Obligation','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
357,'Pecuniary Obligations','Event');
INSERT INTO [knowledgeobject] ([KnowledgeObjectID],[KnowledgeObject1],[ObjectType]) VALUES (
358,'Resourcing','Event');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
1,'Accounting Technique','Technological Advancement');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
2,'Accounting Techniques','Technological Advancement');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
3,'Accounts Receivable','Aging Balance');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
4,'Accounts Receivable','Current Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
5,'Accounts Receivable','Receivable');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
6,'Accounts Receivable','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
7,'Accounte Receivables','Aging Balance');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
8,'Accounte Receivables','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
9,'Accounts Receivables','Receivable');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
10,'Accounte Receivables','Current Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
11,'Aging Balance','Financial Document');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
12,'Aging Balances','Financial Document');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
13,'Allowance','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
14,'Allowances','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
15,'Amortization','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
16,'Amortization','Amortization Schedule');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
17,'Amortize','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
18,'Amortized','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
19,'Amortizing','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
20,'Bad Debt','Debt');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
21,'Bad Debts','Debt');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
22,'Bank Deposit','Checking Account');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
23,'Bank Deposit','Transactions');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
24,'Bank Deposit','Savings Account');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
25,'Bank Deposits','Savings Account');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
26,'Bank Deposits','Checking Aocount');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
27,'Bank Deposits','Transactions');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
28,'Beginning Inventories','Sale');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
29,'Beginning Inventories','Inventory');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
30,'Beginning Inventories','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
31,'Beginning Inventory','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
32,'Beginning Inventory','Inventory');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
33,'Board of Directors','Company');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
34,'Building','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
35,'Buildings','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
36,'Capital','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
37,'Cash','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
38,'Cash','Capital');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
39,'Cash','Current Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
40,'Cash Cow','Profit');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
41,'Cash Cow','Marketing Strategy');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
42,'Cash Sales','Sales');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
43,'CE0','Company');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
44,'Coin','Cash');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
45,'Coins','Cash');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
46,'Coin','Money');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
47,'Coins','Money');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
48,'Credit Sale','Sales');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
49,'Credit Sales','Sales');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
50,'Currency','Cash');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
51,'Current Asset','Working Capital');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
52,'Current Assets','Working Capital');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
53,'Current Liability','Working Capital');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
54,'Current Liabilities','Working Capital');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
55,'Depreciation','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
56,'Ending Inventory','Inventory');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
57,'Ending Inventories','Inventory');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
58,'Equipment','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
59,'Equipment','Capital');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
60,'Finished Good','Inventory');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
61,'Finished Goods','Inventory');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
62,'Goodwill','Intangible Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
63,'Intangible Asset','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
64,'Intangible Assets','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
65,'Inventory','Current Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
66,'Machine','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
67,'Machines','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
68,'Marketable Security','Current Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
69,'Marketable Securities','Current Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
70,'Notes Receivable','Receivable');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
71,'Notes Receivables','Receivable');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
72,'Plant','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
73,'Plants','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
74,'Prepaid Expense','Current Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
75,'Prepaid Expenses','Current Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
76,'Pre-paid Expense','Current Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
77,'Pre-paid Expenses','Current Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
78,'Quality','Product');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
79,'Raw Material','Inventory');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
80,'Raw Materials','Inventory');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
81,'Restricted Cash','Cash');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
82,'Sale','Revenue');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
83,'Sales','Revenue');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
84,'Sale','Transaction');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
85,'Sales','Transaction');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
86,'Tangible Asset','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
87,'Tangible Assets','Asset');
INSERT INTO [isp] ([IsPartOfRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
88,'Unrestricted Cash','Cash');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
1,'Aging Balance','Accounts Receivable');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
2,'Aging Balances','Accounts Receivable');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
3,'Allowance','Money');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
4,'Allowances','Money');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
5,'Amortization','Interest Payments');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
6,'Amortization','Paying Off Debt');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
7,'Amortization','Spreading Capital Expenses');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
8,'Amortize','Spreading Capital Expenses');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
9,'Amortize','Interest Payments');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
10,'Amortize','Paying Off Debt');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
11,'Amortized','Paying Off Debt');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
12,'Amortized','Spreading Capital Expenses');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
13,'Amortized','Interest Payments');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
14,'Amortizing','Interest Payments');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
15,'Amortizing','Spreading Capital Expenses');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
16,'Amortizing','Paying Off Debt');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
17,'Asset','Amortization');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
18,'Asset','Investments');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
19,'Asset','Transactions');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
20,'Assets','Transactions');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
21,'Assets','Investments');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
22,'Assets','Amortization');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
23,'Bad Debt','Insufficient Funds');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
24,'Bad Debts','Insufficient Funds');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
25,'Bank Deposit','Cash');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
26,'Bank Deposits','Cash');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
27,'Beginning Inventories','New Accounting Period');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
28,'Beginning Inventory','New Accounting Period');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
29,'Board Of Directors','Shareholders');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
30,'Cash','Accounts Receivables');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
31,'Cash','Earnings');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
32,'Checking Account','Cash');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
33,'Debt','Credit');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
34,'Debt','Liability');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
35,'Debts','Credit');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
36,'Debts','Liability');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
37,'Deposit','Cash');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
38,'Deposits','Cash');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
39,'Equipment','Purchase');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
40,'Forecast','Customer');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
41,'Forecast','Demand');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
42,'Forecasts','Customer');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
43,'Forecasts','Demand');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
44,'Income','Investments');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
45,'Income','Services');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
46,'Income','Goods');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
47,'Incomes','Investments');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
48,'Incomes','Services');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
49,'Incomes','Goods');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
50,'Liabilities','Pecuniary Obligations');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
51,'Liabilities','Debt');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
52,'Liability','Pecuniary Obligations');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
53,'Liability','Debt');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
54,'Pricing','Marketing Strategy');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
55,'Product','Distribution Centers');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
56,'Product','Production');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
57,'Product','Raw Materials');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
58,'Product','Distribution');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
59,'Product','Product Design');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
60,'Product','Logistics');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
61,'Products','Distribution Centers');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
62,'Products','Production');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
63,'Products','Raw Materials');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
64,'Products','Distribution');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
65,'Products','Product Design');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
66,'Products','Logistics');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
67,'Product Design','Technological Development');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
68,'Product Designs','Technological Development');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
69,'Production','Production Plan');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
70,'Production','Plants');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
71,'Production','Equipment');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
72,'Production','Technological Development');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
73,'Production Plan','Market Forecast');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
74,'Production Planning','Market Forecast');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
75,'Productions','Technological Development');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
76,'Productions','Plants');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
77,'Productions','Equipment');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
78,'Productions','Production Plan');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
79,'Profit','Sales');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
80,'Profit Margin','Profit');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
81,'Profit Margins','Profit');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
82,'Profited','Sales');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
83,'Profiting','Sales');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
84,'Profits','Sales');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
85,'Raw Material','Resourcing');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
86,'Raw Material','Purchasing');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
87,'Raw Materials','Purchasing');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
88,'Raw Materials','Resourcing');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
89,'Receivable','Credit');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
90,'Receivable','Allowance');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
91,'Receivables','Allowance');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
92,'Receivables','Credit');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
93,'Sale','Marketing');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
94,'Sale','Pricing Strategy');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
95,'Sale','Sales Force');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
96,'Sale','Customers');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
97,'Sales','Sales Force');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
98,'Sales','Pricing Strategy');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
99,'Sales','Marketing');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
100,'Sales','Customers');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
101,'Savings Account','Cash');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
102,'Withdraw','Cash');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
103,'Withdraws','Cash');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
104,'Write Off','Bad Debt');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
105,'Write Offs','Bad Debt');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
106,'Write-Off','Bad Debt');
INSERT INTO [isc] ([IsCausedByRelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
107,'Write-Offs','Bad Debt');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
1,'Aging Balance','Financial Document');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
2,'Aging Balances','Financial Document');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
3,'Allowance','Money');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
4,'Alloance','Cash');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
5,'Allowances','Money');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
6,'Allowances','Cash');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
7,'Amortization','Accounting Technique');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
8,'Amortize','Accounting Technique');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
9,'Amortized','Accounting Technique');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
10,'Amortizing','Accounting Technique');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
11,'Asset','Credit');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
12,'Assets','Credit');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
13,'Bad Debt','Doubtful Accounts Expense');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
14,'Bad Debt','Uncollectible Accounts Expense');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
15,'Bad Debts','Doubtful Accounts Expense');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
16,'Bad Debts','Uncollectible Accounts Expense');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
17,'Bank Deposit','Checking Account');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
18,'Bank Deposit','Savings Account');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
19,'Bank Deposits','Checking Account');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
20,'Bank Deposits','Savings Account');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
21,'Beginning Inventories','Cost of Inventory');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
22,'Beginning Inventory','Cost of Inventory');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
23,'Board of Directors','Shareholder Representatives');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
24,'Building','Asset');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
25,'Buildings','Asset');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
26,'Capital','Money');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
27,'Cash','Money');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
28,'Cash Cow','Profit');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
29,'Cash Cow','Income');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
30,'Cash Cows','Profit');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
31,'Cash Cows','Income');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
32,'Cash Purchase','Property Acquisition');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
33,'Cash Purchases','Property Acquisition');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
34,'Cash Receipt','Proof Of Purchase');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
35,'Cash Receipts','Proof Of Purchase');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
36,'Cash Sale','Exchange');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
37,'Cash Sale','Transaction');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
38,'Cash Sale','Purchase');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
39,'Cash Sales','Purchase');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
40,'Cash Sales','Transaction');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
41,'Cash Sales','Exchange');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
42,'CEO','Senior Officer');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
43,'Checking Account','Money');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
44,'Chief Executive Officer','Senior Officer');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
45,'Chief Information Officer','Senior Officer');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
46,'CIO','Senior Officer');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
47,'Client','Customer');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
48,'Clients','Customer');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
49,'Coin','Money');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
50,'Coins','Money');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
51,'Cost Of Goods Sold','Money');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
52,'Cost of Inventory','Money');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
53,'Credit','Liability');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
54,'Credit Loss','Liability');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
55,'Credit Losses','Liability');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
56,'Credit Policies','Financial Document');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
57,'Credit Policy','Financial Document');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
58,'Credit Rating','Evaluation');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
59,'Credit Sale','Purchase');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
60,'Credit Sale','Exchange');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
61,'Credit Sale','Transaction');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
62,'Credit Sales','Exchange');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
63,'Credit Sales','Transaction');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
64,'Credit Sales','Purchase');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
65,'Credited','Liability');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
66,'Crediting','Liability');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
67,'Creditor','Company');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
68,'Creditors','Loaner');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
69,'Credits','Liability');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
70,'Currencies','Money');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
71,'Currency','Money');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
72,'Current Asset','Asset');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
73,'Current Assets','Asset');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
74,'Current Liabilities','Debt');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
75,'Current Liability','Debt');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
76,'Customer','Client');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
77,'Customers','Client');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
78,'Customer','Purchaser');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
79,'Customers','Purchaser');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
80,'Depreciation','Devaluation');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
81,'Liability','Debt');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
82,'Liabilities','Debt');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
83,'Product','Merchandise');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
84,'Products','Merchandise');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
85,'Production','Manufacturing');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
86,'Revenue','Income');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
87,'Revenues','Income');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
88,'Sale','Exchange');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
89,'Sale','Transaction');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
90,'Sale','Purchase');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
91,'Sales','Transaction');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
92,'Sales','Exchange');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
93,'Sales','Purchase');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
94,'Salesperson','Seller');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
95,'Salespeople','Seller');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
96,'Technological Advancement','Technological Development');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
97,'Technological Advancements','Technological Development');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
98,'Salesman','Seller');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
99,'Salesmen','Seller');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
100,'Sales Representative','Seller');
INSERT INTO [isa] ([IsARelationID],[KnowledgeObjectA],[KnowledgeObjectB]) VALUES (
101,'Sales Representatives','Seller');
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1001,2015,1,'Tesla','Total Revenue',4046024);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1002,2015,1,'Tesla','Cost of Revenue',3122521);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1003,2015,1,'Tesla','Gross Profit',923503);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1004,2015,1,'Tesla','Research Development',717900);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1005,2015,1,'Tesla','Selling General and Administrative',922232);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1006,2015,1,'Tesla','Total Operating Expenses',1640132);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1007,2015,1,'Tesla','Operating Income or Loss',-716629);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1008,2015,1,'Tesla','Interest Expense',118851);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1009,2015,1,'Tesla','Total Other Income/Expenses Net',-41652);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1010,2015,1,'Tesla','Income Before Tax',-875624);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1011,2015,1,'Tesla','Income Tax Expense',13039);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1012,2015,1,'Tesla','Income from Continuing Operations',-6.93);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1013,2015,1,'Tesla','Net Income',-888663);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1014,2015,1,'Tesla','Net Income Available to Common',-888663);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1015,2015,1,'Tesla','Basic',-6.93);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1016,2015,1,'Tesla','Diluted',-6.93);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1017,2015,1,'Tesla','Basic',128202);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1018,2015,1,'Tesla','Diluted',128202);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1019,2015,1,'Tesla','EBITDA',-756773);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1020,2016,1,'Tesla','Total Revenue',7000132);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1021,2016,1,'Tesla','Cost of Revenue',5400875);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1022,2016,1,'Tesla','Gross Profit',1599257);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1023,2016,1,'Tesla','Research Development',834408);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1024,2016,1,'Tesla','Selling General and Administrative',1432189);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1025,2016,1,'Tesla','Total Operating Expenses',2266597);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1026,2016,1,'Tesla','Operating Income or Loss',-667340);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1027,2016,1,'Tesla','Interest Expense',198810);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1028,2016,1,'Tesla','Total Other Income/Expenses Net',111272);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1029,2016,1,'Tesla','Income Before Tax',-746348);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1030,2016,1,'Tesla','Income Tax Expense',26698);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1031,2016,1,'Tesla','Income from Continuing Operations',-773046);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1032,2016,1,'Tesla','Net Income',-674914);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1033,2016,1,'Tesla','Net Income Available to Common',-674914);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1034,2016,1,'Tesla','Basic',-4.68);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1035,2016,1,'Tesla','Diluted',-4.68);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1036,2016,1,'Tesla','Basic',144212);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1037,2016,1,'Tesla','Diluted',144212);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1038,2016,1,'Tesla','EBITDA',399561);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1039,2017,1,'Tesla','Total Revenue',11758751);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1040,2017,1,'Tesla','Cost of Revenue',9536264);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1041,2017,1,'Tesla','Gross Profit',2222487);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1042,2017,1,'Tesla','Research Development',1378073);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1043,2017,1,'Tesla','Selling General and Administrative',2476500);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1044,2017,1,'Tesla','Total Operating Expenses',3854573);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1045,2017,1,'Tesla','Operating Income or Loss',-1632086);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1046,2017,1,'Tesla','Interest Expense',471259);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1047,2017,1,'Tesla','Total Other Income/Expenses Net',-125373);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1048,2017,1,'Tesla','Income Before Tax',-2209032);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1049,2017,1,'Tesla','Income Tax Expense',31546);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1050,2017,1,'Tesla','Income from Continuing Operations',-2240578);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1051,2017,1,'Tesla','Net Income',-1961400);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1052,2017,1,'Tesla','Net Income Available to Common',-1961400);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1053,2017,1,'Tesla','Basic',-11.83);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1054,2017,1,'Tesla','Diluted',-11.83);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1055,2017,1,'Tesla','Basic',165758);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1056,2017,1,'Tesla','Diluted',165758);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1057,2017,1,'Tesla','EBITDA',-101770);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1058,2018,1,'Tesla','Total Revenue',21461268);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1059,2018,1,'Tesla','Cost of Revenue',17419247);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1060,2018,1,'Tesla','Gross Profit',4042021);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1061,2018,1,'Tesla','Research Development',1460370);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1062,2018,1,'Tesla','Selling General and Administrative',2834491);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1063,2018,1,'Tesla','Total Operating Expenses',4294861);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1064,2018,1,'Tesla','Operating Income or Loss',-252840);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1065,2018,1,'Tesla','Interest Expense',663071);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1066,2018,1,'Tesla','Total Other Income/Expenses Net',-113367);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1067,2018,1,'Tesla','Income Before Tax',-1004745);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1068,2018,1,'Tesla','Income Tax Expense',57837);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1069,2018,1,'Tesla','Income from Continuing Operations',-1062582);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1070,2018,1,'Tesla','Net Income',-976091);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1071,2018,1,'Tesla','Net Income Available to Common',-976091);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1072,2018,1,'Tesla','Basic',-5.72);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1073,2018,1,'Tesla','Diluted',-5.72);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1074,2018,1,'Tesla','Basic',170525);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1075,2018,1,'Tesla','Diluted',170525);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1076,2018,1,'Tesla','EBITDA',1559376);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1077,2019,1,'Tesla','Total Revenue',24578000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1078,2019,1,'Tesla','Cost of Revenue',20509000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1079,2019,1,'Tesla','Gross Profit',4069000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1080,2019,1,'Tesla','Research Development',1343000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1081,2019,1,'Tesla','Selling General and Administrative',2646000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1082,2019,1,'Tesla','Total Operating Expenses',3989000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1083,2019,1,'Tesla','Operating Income or Loss',80000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1084,2019,1,'Tesla','Interest Expense',685000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1085,2019,1,'Tesla','Total Other Income/Expenses Net',-104000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1086,2019,1,'Tesla','Income Before Tax',-665000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1087,2019,1,'Tesla','Income Tax Expense',110000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1088,2019,1,'Tesla','Income from Continuing Operations',-775000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1089,2019,1,'Tesla','Net Income',-862000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1090,2019,1,'Tesla','Net Income Available to Common',-862000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1091,2019,1,'Tesla','Basic',-4.92);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1092,2019,1,'Tesla','Diluted',-4.92);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1093,2019,1,'Tesla','Basic',177000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1094,2019,1,'Tesla','Diluted',177000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1095,2019,1,'Tesla','EBITDA',2174000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2001,2015,2,'Costco','Total Revenue',116199000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2002,2015,2,'Costco','Cost of Revenue',101065000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2003,2015,2,'Costco','Gross Profit',15134000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2004,2015,2,'Costco','Research Development',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2005,2015,2,'Costco','Selling General and Administrative',11445000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2006,2015,2,'Costco','Total Operating Expenses',11510000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2007,2015,2,'Costco','Operating Income or Loss',3624000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2008,2015,2,'Costco','Interest Expense',124000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2009,2015,2,'Costco','Total Other Income/Expenses Net',54000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2010,2015,2,'Costco','Income Before Tax',3604000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2011,2015,2,'Costco','Income Tax Expense',1195000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2012,2015,2,'Costco','Income from Continuing Operations',2409000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2013,2015,2,'Costco','Net Income',2377000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2014,2015,2,'Costco','Net Income Available to Common',2377000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2015,2015,2,'Costco','Basic',5.41);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2016,2015,2,'Costco','Diluted',5.37);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2017,2015,2,'Costco','Basic',439455);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2018,2015,2,'Costco','Diluted',442716);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2019,2015,2,'Costco','EBITDA',3728000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2020,2016,2,'Costco','Total Revenue',118719000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2021,2016,2,'Costco','Cost of Revenue',102901000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2022,2016,2,'Costco','Gross Profit',15818000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2023,2016,2,'Costco','Research Development',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2024,2016,2,'Costco','Selling General and Administrative',12068000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2025,2016,2,'Costco','Total Operating Expenses',12146000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2026,2016,2,'Costco','Operating Income or Loss',3672000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2027,2016,2,'Costco','Interest Expense',133000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2028,2016,2,'Costco','Total Other Income/Expenses Net',39000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2029,2016,2,'Costco','Income Before Tax',3619000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2030,2016,2,'Costco','Income Tax Expense',1243000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2031,2016,2,'Costco','Income from Continuing Operations',2376000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2032,2016,2,'Costco','Net Income',2350000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2033,2016,2,'Costco','Net Income Available to Common',2350000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2034,2016,2,'Costco','Basic',5.36);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2035,2016,2,'Costco','Diluted',5.33);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2036,2016,2,'Costco','Basic',438585);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2037,2016,2,'Costco','Diluted',441263);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2038,2016,2,'Costco','EBITDA',5007000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2039,2017,2,'Costco','Total Revenue',129025000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2040,2017,2,'Costco','Cost of Revenue',111882000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2041,2017,2,'Costco','Gross Profit',17143000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2042,2017,2,'Costco','Research Development',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2043,2017,2,'Costco','Selling General and Administrative',12950000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2044,2017,2,'Costco','Total Operating Expenses',13032000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2045,2017,2,'Costco','Operating Income or Loss',4111000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2046,2017,2,'Costco','Interest Expense',134000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2047,2017,2,'Costco','Total Other Income/Expenses Net',12000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2048,2017,2,'Costco','Income Before Tax',4039000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2049,2017,2,'Costco','Income Tax Expense',1325000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2050,2017,2,'Costco','Income from Continuing Operations',2714000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2051,2017,2,'Costco','Net Income',2679000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2052,2017,2,'Costco','Net Income Available to Common',2679000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2053,2017,2,'Costco','Basic',6.11);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2054,2017,2,'Costco','Diluted',6.08);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2055,2017,2,'Costco','Basic',438437);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2056,2017,2,'Costco','Diluted',440937);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2057,2017,2,'Costco','EBITDA',5543000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2058,2018,2,'Costco','Total Revenue',141576000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2059,2018,2,'Costco','Cost of Revenue',123152000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2060,2018,2,'Costco','Gross Profit',18424000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2061,2018,2,'Costco','Research Development',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2062,2018,2,'Costco','Selling General and Administrative',13876000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2063,2018,2,'Costco','Total Operating Expenses',13944000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2064,2018,2,'Costco','Operating Income or Loss',4480000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2065,2018,2,'Costco','Interest Expense',159000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2066,2018,2,'Costco','Total Other Income/Expenses Net',46000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2067,2018,2,'Costco','Income Before Tax',4442000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2068,2018,2,'Costco','Income Tax Expense',1263000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2069,2018,2,'Costco','Income from Continuing Operations',3179000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2070,2018,2,'Costco','Net Income',3134000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2071,2018,2,'Costco','Net Income Available to Common',3134000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2072,2018,2,'Costco','Basic',7.15);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2073,2018,2,'Costco','Diluted',7.09);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2074,2018,2,'Costco','Basic',438515);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2075,2018,2,'Costco','Diluted',441834);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2076,2018,2,'Costco','EBITDA',6038000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2077,2019,2,'Costco','Total Revenue',152703000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2078,2019,2,'Costco','Cost of Revenue',132886000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2079,2019,2,'Costco','Gross Profit',19817000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2080,2019,2,'Costco','Research Development',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2081,2019,2,'Costco','Selling General and Administrative',14994000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2082,2019,2,'Costco','Total Operating Expenses',15080000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2083,2019,2,'Costco','Operating Income or Loss',4737000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2084,2019,2,'Costco','Interest Expense',150000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2085,2019,2,'Costco','Total Other Income/Expenses Net',52000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2086,2019,2,'Costco','Income Before Tax',4765000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2087,2019,2,'Costco','Income Tax Expense',1061000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2088,2019,2,'Costco','Income from Continuing Operations',3704000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2089,2019,2,'Costco','Net Income',3659000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2090,2019,2,'Costco','Net Income Available to Common',3659000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2091,2019,2,'Costco','Basic',8.32);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2092,2019,2,'Costco','Diluted',8.26);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2093,2019,2,'Costco','Basic',439755);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2094,2019,2,'Costco','Diluted',442923);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2095,2019,2,'Costco','EBITDA',6407000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3001,2015,3,'Microsoft','Total Revenue',93580000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3002,2015,3,'Microsoft','Cost of Revenue',33038000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3003,2015,3,'Microsoft','Gross Profit',60542000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3004,2015,3,'Microsoft','Research Development',12046000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3005,2015,3,'Microsoft','Selling General and Administrative',20324000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3006,2015,3,'Microsoft','Total Operating Expenses',32370000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3007,2015,3,'Microsoft','Operating Income or Loss',28172000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3008,2015,3,'Microsoft','Interest Expense',781000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3009,2015,3,'Microsoft','Total Other Income/Expenses Net',-9665000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3010,2015,3,'Microsoft','Income Before Tax',18507000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3011,2015,3,'Microsoft','Income Tax Expense',6314000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3012,2015,3,'Microsoft','Income from Continuing Operations',12193000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3013,2015,3,'Microsoft','Net Income',12193000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3014,2015,3,'Microsoft','Net Income Available to Common',12193000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3015,2015,3,'Microsoft','Basic',1.49);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3016,2015,3,'Microsoft','Diluted',1.48);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3017,2015,3,'Microsoft','Basic',8177000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3018,2015,3,'Microsoft','Diluted',8254000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3019,2015,3,'Microsoft','EBITDA',34129000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3020,2016,3,'Microsoft','Total Revenue',85320000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3021,2016,3,'Microsoft','Cost of Revenue',32780000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3022,2016,3,'Microsoft','Gross Profit',52540000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3023,2016,3,'Microsoft','Research Development',11988000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3024,2016,3,'Microsoft','Selling General and Administrative',19260000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3025,2016,3,'Microsoft','Total Operating Expenses',31248000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3026,2016,3,'Microsoft','Operating Income or Loss',21292000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3027,2016,3,'Microsoft','Interest Expense',1243000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3028,2016,3,'Microsoft','Total Other Income/Expenses Net',-1541000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3029,2016,3,'Microsoft','Income Before Tax',19751000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3030,2016,3,'Microsoft','Income Tax Expense',2953000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3031,2016,3,'Microsoft','Income from Continuing Operations',16798000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3032,2016,3,'Microsoft','Net Income',16798000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3033,2016,3,'Microsoft','Net Income Available to Common',16798000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3034,2016,3,'Microsoft','Basic',2.12);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3035,2016,3,'Microsoft','Diluted',2.1);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3036,2016,3,'Microsoft','Basic',7925000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3037,2016,3,'Microsoft','Diluted',8013000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3038,2016,3,'Microsoft','EBITDA',27914000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3039,2017,3,'Microsoft','Total Revenue',89950000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3040,2017,3,'Microsoft','Cost of Revenue',34261000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3041,2017,3,'Microsoft','Gross Profit',55689000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3042,2017,3,'Microsoft','Research Development',13037000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3043,2017,3,'Microsoft','Selling General and Administrative',20020000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3044,2017,3,'Microsoft','Total Operating Expenses',33057000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3045,2017,3,'Microsoft','Operating Income or Loss',22632000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3046,2017,3,'Microsoft','Interest Expense',2222000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3047,2017,3,'Microsoft','Total Other Income/Expenses Net',517000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3048,2017,3,'Microsoft','Income Before Tax',23149000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3049,2017,3,'Microsoft','Income Tax Expense',1945000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3050,2017,3,'Microsoft','Income from Continuing Operations',21204000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3051,2017,3,'Microsoft','Net Income',21204000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3052,2017,3,'Microsoft','Net Income Available to Common',21204000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3053,2017,3,'Microsoft','Basic',2.74);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3054,2017,3,'Microsoft','Diluted',2.71);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3055,2017,3,'Microsoft','Basic',7746000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3056,2017,3,'Microsoft','Diluted',7832000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3057,2017,3,'Microsoft','EBITDA',31410000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3058,2018,3,'Microsoft','Total Revenue',110360000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3059,2018,3,'Microsoft','Cost of Revenue',38353000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3060,2018,3,'Microsoft','Gross Profit',72007000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3061,2018,3,'Microsoft','Research Development',14726000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3062,2018,3,'Microsoft','Selling General and Administrative',22223000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3063,2018,3,'Microsoft','Total Operating Expenses',36949000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3064,2018,3,'Microsoft','Operating Income or Loss',35058000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3065,2018,3,'Microsoft','Interest Expense',2733000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3066,2018,3,'Microsoft','Total Other Income/Expenses Net',1416000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3067,2018,3,'Microsoft','Income Before Tax',36474000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3068,2018,3,'Microsoft','Income Tax Expense',19903000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3069,2018,3,'Microsoft','Income from Continuing Operations',16571000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3070,2018,3,'Microsoft','Net Income',16571000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3071,2018,3,'Microsoft','Net Income Available to Common',16571000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3072,2018,3,'Microsoft','Basic',2.15);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3073,2018,3,'Microsoft','Diluted',2.13);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3074,2018,3,'Microsoft','Basic',7700000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3075,2018,3,'Microsoft','Diluted',7794000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3076,2018,3,'Microsoft','EBITDA',45319000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3077,2019,3,'Microsoft','Total Revenue',125843000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3078,2019,3,'Microsoft','Cost of Revenue',42910000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3079,2019,3,'Microsoft','Gross Profit',82933000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3080,2019,3,'Microsoft','Research Development',16876000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3081,2019,3,'Microsoft','Selling General and Administrative',23098000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3082,2019,3,'Microsoft','Total Operating Expenses',39974000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3083,2019,3,'Microsoft','Operating Income or Loss',42959000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3084,2019,3,'Microsoft','Interest Expense',2686000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3085,2019,3,'Microsoft','Total Other Income/Expenses Net',729000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3086,2019,3,'Microsoft','Income Before Tax',43688000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3087,2019,3,'Microsoft','Income Tax Expense',4448000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3088,2019,3,'Microsoft','Income from Continuing Operations',39240000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3089,2019,3,'Microsoft','Net Income',39240000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3090,2019,3,'Microsoft','Net Income Available to Common',39240000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3091,2019,3,'Microsoft','Basic',5.11);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3092,2019,3,'Microsoft','Diluted',5.06);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3093,2019,3,'Microsoft','Basic',7673000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3094,2019,3,'Microsoft','Diluted',7753000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3095,2019,3,'Microsoft','EBITDA',54641000);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4001,2015,4,'Netflix','Total Revenue',6779511);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4002,2015,4,'Netflix','Cost of Revenue',4591476);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4003,2015,4,'Netflix','Gross Profit',2188035);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4004,2015,4,'Netflix','Research Development',650788);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4005,2015,4,'Netflix','Selling General and Administrative',1231421);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4006,2015,4,'Netflix','Total Operating Expenses',1882209);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4007,2015,4,'Netflix','Operating Income or Loss',305826);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4008,2015,4,'Netflix','Interest Expense',132716);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4009,2015,4,'Netflix','Total Other Income/Expenses Net',-31225);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4010,2015,4,'Netflix','Income Before Tax',141885);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4011,2015,4,'Netflix','Income Tax Expense',19244);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4012,2015,4,'Netflix','Income from Continuing Operations',122641);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4013,2015,4,'Netflix','Net Income',122641);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4014,2015,4,'Netflix','Net Income Available to Common',122641);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4015,2015,4,'Netflix','Basic',0.29);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4016,2015,4,'Netflix','Diluted',0.28);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4017,2015,4,'Netflix','Basic',425889);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4018,2015,4,'Netflix','Diluted',436456);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4019,2015,4,'Netflix','EBITDA',3821646);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4020,2016,4,'Netflix','Total Revenue',8830669);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4021,2016,4,'Netflix','Cost of Revenue',6029901);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4022,2016,4,'Netflix','Gross Profit',2800768);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4023,2016,4,'Netflix','Research Development',852098);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4024,2016,4,'Netflix','Selling General and Administrative',1568877);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4025,2016,4,'Netflix','Total Operating Expenses',2420975);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4026,2016,4,'Netflix','Operating Income or Loss',379793);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4027,2016,4,'Netflix','Interest Expense',150114);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4028,2016,4,'Netflix','Total Other Income/Expenses Net',30828);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4029,2016,4,'Netflix','Income Before Tax',260507);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4030,2016,4,'Netflix','Income Tax Expense',73829);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4031,2016,4,'Netflix','Income from Continuing Operations',186678);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4032,2016,4,'Netflix','Net Income',186678);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4033,2016,4,'Netflix','Net Income Available to Common',186678);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4034,2016,4,'Netflix','Basic',0.44);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4035,2016,4,'Netflix','Diluted',0.43);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4036,2016,4,'Netflix','Basic',428822);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4037,2016,4,'Netflix','Diluted',438652);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4038,2016,4,'Netflix','EBITDA',5335599);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4039,2017,4,'Netflix','Total Revenue',11692713);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4040,2017,4,'Netflix','Cost of Revenue',765966);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4041,2017,4,'Netflix','Gross Profit',4033047);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4042,2017,4,'Netflix','Research Development',1052778);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4043,2017,4,'Netflix','Selling General and Administrative',2141590);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4044,2017,4,'Netflix','Total Operating Expenses',3194368);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4045,2017,4,'Netflix','Operating Income or Loss',838679);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4046,2017,4,'Netflix','Interest Expense',238204);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4047,2017,4,'Netflix','Total Other Income/Expenses Net',-115154);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4048,2017,4,'Netflix','Income Before Tax',485321);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4049,2017,4,'Netflix','Income Tax Expense',-73608);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4050,2017,4,'Netflix','Income from Continuing Operations',558929);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4051,2017,4,'Netflix','Net Income',558929);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4052,2017,4,'Netflix','Net Income Available to Common',558929);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4053,2017,4,'Netflix','Basic',1.29);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4054,2017,4,'Netflix','Diluted',1.25);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4055,2017,4,'Netflix','Basic',431885);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4056,2017,4,'Netflix','Diluted',446814);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4057,2017,4,'Netflix','EBITDA',7053910);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4058,2018,4,'Netflix','Total Revenue',15794341);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4059,2018,4,'Netflix','Cost of Revenue',9967538);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4060,2018,4,'Netflix','Gross Profit',5826803);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4061,2018,4,'Netflix','Research Development',1221814);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4062,2018,4,'Netflix','Selling General and Administrative',2999763);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4063,2018,4,'Netflix','Total Operating Expenses',4221577);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4064,2018,4,'Netflix','Operating Income or Loss',1605226);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4065,2018,4,'Netflix','Interest Expense',410493);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4066,2018,4,'Netflix','Total Other Income/Expenses Net',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4067,2018,4,'Netflix','Income Before Tax',1226458);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4068,2018,4,'Netflix','Income Tax Expense',15216);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4069,2018,4,'Netflix','Income from Continuing Operations',1211242);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4070,2018,4,'Netflix','Net Income',1211242);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4071,2018,4,'Netflix','Net Income Available to Common',1211242);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4072,2018,4,'Netflix','Basic',2.78);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4073,2018,4,'Netflix','Diluted',2.68);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4074,2018,4,'Netflix','Basic',435374);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4075,2018,4,'Netflix','Diluted',451244);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4076,2018,4,'Netflix','EBITDA',9303408);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4077,2019,4,'Netflix','Total Revenue',20156447);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4078,2019,4,'Netflix','Cost of Revenue',12440213);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4079,2019,4,'Netflix','Gross Profit',7716234);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4080,2019,4,'Netflix','Research Development',1545149);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4081,2019,4,'Netflix','Selling General and Administrative',3566831);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4082,2019,4,'Netflix','Total Operating Expenses',5111980);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4083,2019,4,'Netflix','Operating Income or Loss',2604254);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4084,2019,4,'Netflix','Interest Expense',626023);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4085,2019,4,'Netflix','Total Other Income/Expenses Net',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4086,2019,4,'Netflix','Income Before Tax',2062231);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4087,2019,4,'Netflix','Income Tax Expense',195315);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4088,2019,4,'Netflix','Income from Continuing Operations',1866916);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4089,2019,4,'Netflix','Net Income',1866916);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4090,2019,4,'Netflix','Net Income Available to Common',1866916);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4091,2019,4,'Netflix','Basic',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4092,2019,4,'Netflix','Diluted',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4093,2019,4,'Netflix','Basic',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4094,2019,4,'Netflix','Diluted',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4095,2019,4,'Netflix','EBITDA',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5001,2015,5,'Dennys','Total Revenue',491293);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5002,2015,5,'Dennys','Cost of Revenue',337702);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5003,2015,5,'Dennys','Gross Profit',153591);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5004,2015,5,'Dennys','Research Development',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5005,2015,5,'Dennys','Selling General and Administrative',66602);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5006,2015,5,'Dennys','Total Operating Expenses',90440);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5007,2015,5,'Dennys','Operating Income or Loss',63151);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5008,2015,5,'Dennys','Interest Expense',7662);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5009,2015,5,'Dennys','Total Other Income/Expenses Net',-139);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5010,2015,5,'Dennys','Income Before Tax',53729);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5011,2015,5,'Dennys','Income Tax Expense',17753);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5012,2015,5,'Dennys','Income from Continuing Operations',35976);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5013,2015,5,'Dennys','Net Income',35976);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5014,2015,5,'Dennys','Net Income Available to Common',35976);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5015,2015,5,'Dennys','Basic',0.44);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5016,2015,5,'Dennys','Diluted',0.42);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5017,2015,5,'Dennys','Basic',82627);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5018,2015,5,'Dennys','Diluted',84729);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5019,2015,5,'Dennys','EBITDA',84623);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5020,2016,5,'Dennys','Total Revenue',506948);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5021,2016,5,'Dennys','Cost of Revenue',342901);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5022,2016,5,'Dennys','Gross Profit',164047);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5023,2016,5,'Dennys','Research Development',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5024,2016,5,'Dennys','Selling General and Administrative',67960);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5025,2016,5,'Dennys','Total Operating Expenses',117048);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5026,2016,5,'Dennys','Operating Income or Loss',46999);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5027,2016,5,'Dennys','Interest Expense',10570);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5028,2016,5,'Dennys','Total Other Income/Expenses Net',1109);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5029,2016,5,'Dennys','Income Before Tax',35976);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5030,2016,5,'Dennys','Income Tax Expense',16474);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5031,2016,5,'Dennys','Income from Continuing Operations',19402);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5032,2016,5,'Dennys','Net Income',19402);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5033,2016,5,'Dennys','Net Income Available to Common',19402);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5034,2016,5,'Dennys','Basic',0.26);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5035,2016,5,'Dennys','Diluted',0.25);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5036,2016,5,'Dennys','Basic',75325);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5037,2016,5,'Dennys','Diluted',77206);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5038,2016,5,'Dennys','EBITDA',69177);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5039,2017,5,'Dennys','Total Revenue',529169);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5040,2017,5,'Dennys','Cost of Revenue',364007);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5041,2017,5,'Dennys','Gross Profit',165162);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5042,2017,5,'Dennys','Research Development',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5043,2017,5,'Dennys','Selling General and Administrative',66415);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5044,2017,5,'Dennys','Total Operating Expenses',94464);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5045,2017,5,'Dennys','Operating Income or Loss',70698);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5046,2017,5,'Dennys','Interest Expense',13934);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5047,2017,5,'Dennys','Total Other Income/Expenses Net',1743);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5048,2017,5,'Dennys','Income Before Tax',56801);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5049,2017,5,'Dennys','Income Tax Expense',17207);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5050,2017,5,'Dennys','Income from Continuing Operations',39594);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5051,2017,5,'Dennys','Net Income',39594);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5052,2017,5,'Dennys','Net Income Available to Common',39594);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5053,2017,5,'Dennys','Basic',0.58);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5054,2017,5,'Dennys','Diluted',0.56);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5055,2017,5,'Dennys','Basic',68077);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5056,2017,5,'Dennys','Diluted',70403);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5057,2017,5,'Dennys','EBITDA',94418);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5058,2018,5,'Dennys','Total Revenue',630179);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5059,2018,5,'Dennys','Cost of Revenue',463078);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5060,2018,5,'Dennys','Gross Profit',167101);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5061,2018,5,'Dennys','Research Development',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5062,2018,5,'Dennys','Selling General and Administrative',63828);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5063,2018,5,'Dennys','Total Operating Expenses',93487);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5064,2018,5,'Dennys','Operating Income or Loss',73614);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5065,2018,5,'Dennys','Interest Expense',18996);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5066,2018,5,'Dennys','Total Other Income/Expenses Net',-619);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5067,2018,5,'Dennys','Income Before Tax',52250);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5068,2018,5,'Dennys','Income Tax Expense',8557);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5069,2018,5,'Dennys','Income from Continuing Operations',43636);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5070,2018,5,'Dennys','Net Income',43636);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5071,2018,5,'Dennys','Net Income Available to Common',43636);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5072,2018,5,'Dennys','Basic',0.69);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5073,2018,5,'Dennys','Diluted',0.67);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5074,2018,5,'Dennys','Basic',63364);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5075,2018,5,'Dennys','Diluted',65562);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5076,2018,5,'Dennys','EBITDA',100653);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5077,2019,5,'Dennys','Total Revenue',542389);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5078,2019,5,'Dennys','Cost of Revenue',378722);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5079,2019,5,'Dennys','Gross Profit',162667);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5080,2019,5,'Dennys','Research Development',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5081,2019,5,'Dennys','Selling General and Administrative',69018);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5082,2019,5,'Dennys','Total Operating Expenses',-2316);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5083,2019,5,'Dennys','Operating Income or Loss',164983);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5084,2019,5,'Dennys','Interest Expense',0);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5085,2019,5,'Dennys','Total Other Income/Expenses Net',2763);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5086,2019,5,'Dennys','Income Before Tax',149199);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5087,2019,5,'Dennys','Income Tax Expense',31789);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5088,2019,5,'Dennys','Income from Continuing Operations',117410);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5089,2019,5,'Dennys','Net Income',117410);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5090,2019,5,'Dennys','Net Income Available to Common',117410);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5091,2019,5,'Dennys','Basic',1.96);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5092,2019,5,'Dennys','Diluted',1.9);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5093,2019,5,'Dennys','Basic',59944);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5094,2019,5,'Dennys','Diluted',61833);
INSERT INTO [incomestatement] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5095,2019,5,'Dennys','EBITDA',0);
INSERT INTO [company] ([ID],[Company]) VALUES (
1,'Tesla');
INSERT INTO [company] ([ID],[Company]) VALUES (
2,'Costco');
INSERT INTO [company] ([ID],[Company]) VALUES (
3,'Microsoft');
INSERT INTO [company] ([ID],[Company]) VALUES (
4,'Netflix');
INSERT INTO [company] ([ID],[Company]) VALUES (
5,'Dennys');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
1,'a');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
2,'able');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
3,'about');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
4,'above');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
5,'additional');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
6,'adversely');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
7,'aforementioned');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
8,'after');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
9,'against');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
10,'ago');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
11,'ahead');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
12,'alike');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
13,'all');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
14,'almost');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
15,'also');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
16,'although');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
17,'always');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
18,'am');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
19,'among');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
20,'an');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
21,'and');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
22,'another');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
23,'any');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
24,'anything');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
25,'approximately');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
26,'are');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
27,'around');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
28,'as');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
29,'at');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
30,'away');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
31,'back');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
32,'because');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
33,'become');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
34,'been');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
35,'before');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
36,'behind');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
37,'being');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
38,'belong');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
39,'beyond');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
40,'both');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
41,'but');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
42,'by');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
43,'can');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
44,'cannot');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
45,'company''s');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
46,'couldn''t');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
47,'currently');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
48,'despite');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
49,'did');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
50,'didn''t');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
51,'do');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
52,'does');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
53,'doesn''t');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
54,'doing');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
55,'don''t');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
56,'down');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
57,'during');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
58,'each');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
59,'enough');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
60,'especially');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
61,'even');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
62,'ever');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
63,'every');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
64,'for');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
65,'four');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
66,'from');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
67,'generally');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
68,'get');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
69,'got');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
70,'had');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
71,'has');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
72,'hasn''t');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
73,'have');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
74,'haven''t');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
75,'he');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
76,'her');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
77,'here');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
78,'here''s');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
79,'hers');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
80,'him');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
81,'his');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
82,'how');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
83,'however');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
84,'i''d');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
85,'if');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
86,'i''m');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
87,'in');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
88,'including');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
89,'into');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
90,'is');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
91,'it');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
92,'its');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
93,'it''s');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
94,'just');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
95,'let''s');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
96,'likely');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
97,'made');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
98,'mainly');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
99,'make');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
100,'many');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
101,'may');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
102,'meanwhile');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
103,'moment');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
104,'more');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
105,'much');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
106,'must');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
107,'my');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
108,'nearly');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
109,'never');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
110,'no');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
111,'not');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
112,'now');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
113,'of');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
114,'oftern');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
115,'on');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
116,'once');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
117,'one');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
118,'only');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
119,'onto');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
120,'or');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
121,'originally');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
122,'other');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
123,'others');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
124,'our');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
125,'ours');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
126,'out');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
127,'outside');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
128,'over');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
129,'overall');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
130,'particularly');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
131,'particular');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
132,'previous');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
133,'previously');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
134,'primary');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
135,'primarily');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
136,'prior');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
137,'probably');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
138,'put');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
139,'seem');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
140,'several');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
141,'she');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
142,'should');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
143,'similar');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
144,'similarly');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
145,'since');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
146,'so');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
147,'some');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
148,'somewhere');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
149,'sometimes');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
150,'sometime');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
151,'still');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
152,'strongly');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
153,'substantial');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
154,'substantially');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
155,'such');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
156,'than');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
157,'that');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
158,'that''s');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
159,'the');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
160,'their');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
161,'them');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
162,'then');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
163,'there');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
164,'thereafter');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
165,'thereby');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
166,'therefore');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
167,'there''s');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
168,'these');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
169,'they');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
170,'they''re');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
171,'this');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
172,'those');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
173,'though');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
174,'three');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
175,'through');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
176,'throughout');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
177,'timely');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
178,'to');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
179,'together');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
180,'too');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
181,'totally');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
182,'toward');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
183,'two');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
184,'unable');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
185,'under');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
186,'until');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
187,'up');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
188,'us');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
189,'virtually');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
190,'was');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
191,'we');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
192,'we''ll');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
193,'were');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
194,'we''re');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
195,'weren''t');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
196,'we''ve');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
197,'what');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
198,'when');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
199,'where');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
200,'whether');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
201,'which');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
202,'while');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
203,'who');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
204,'who''ll');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
205,'whose');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
206,'who''s');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
207,'why');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
208,'will');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
209,'with');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
210,'without');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
211,'won''t');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
212,'would');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
213,'year');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
214,'years');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
215,'year''s');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
216,'yes');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
217,'yet');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
218,'you');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
219,'you''ll');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
220,'your');
INSERT INTO [commonword] ([ID],[Common]) VALUES (
221,'you''re');
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1001,2015,1,'Tesla','Cash and Cash Equivalents',1196908);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1002,2015,1,'Tesla','Short Term Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1003,2015,1,'Tesla','Total Cash',1196908);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1004,2015,1,'Tesla','Net Receivables',168965);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1005,2015,1,'Tesla','Inventory',1277838);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1006,2015,1,'Tesla','Other Current Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1007,2015,1,'Tesla','Total Current Assets',2791568);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1008,2015,1,'Tesla','Gross Property, Plant, and Equipment',5194737);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1009,2015,1,'Tesla','Accumulated Depreciation',-571126);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1010,2015,1,'Tesla','Net Property, Plant, and Equipment',5194737);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1011,2015,1,'Tesla','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1012,2015,1,'Tesla','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1013,2015,1,'Tesla','Intangible Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1014,2015,1,'Tesla','Other Long-Term Assets',106155);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1015,2015,1,'Tesla','Total Non-Current Assets',5300892);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1016,2015,1,'Tesla','Total Assets',8092460);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1017,2015,1,'Tesla','Total Revenue',633166);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1018,2015,1,'Tesla','Accounts Payable',1338945);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1019,2015,1,'Tesla','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1020,2015,1,'Tesla','Accrued Liabilities',321592);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1021,2015,1,'Tesla','Deferred Revenues',283370);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1022,2015,1,'Tesla','Other Current Liabilities',136831);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1023,2015,1,'Tesla','Total Current Liabilities',1622315);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1024,2015,1,'Tesla','Long-Term Debt',2682914);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1025,2015,1,'Tesla','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1026,2015,1,'Tesla','Deferred Revenues',1006896);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1027,2015,1,'Tesla','Other Long-Term Liabilities',1658720);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1028,2015,1,'Tesla','Total Non-Current Liabilities',5381201);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1029,2015,1,'Tesla','Total Liabilities',7003516);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1030,2015,1,'Tesla','Common Stock',131);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1031,2015,1,'Tesla','Retained Earnings',-2322323);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1032,2015,1,'Tesla','Accumulated Other Comprehensive Income',-3556);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1033,2015,1,'Tesla','Total Stockholders'' Equity',1088944);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1034,2015,1,'Tesla','Total Liabilities and Stockholders'' Equity',8092460);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1035,2016,1,'Tesla','Cash and Cash Equivalents',3393216);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1036,2016,1,'Tesla','Short Term Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1037,2016,1,'Tesla','Total Cash',3393216);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1038,2016,1,'Tesla','Net Receivables',499142);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1039,2016,1,'Tesla','Inventory',2067454);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1040,2016,1,'Tesla','Other Current Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1041,2016,1,'Tesla','Total Current Assets',6259796);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1042,2016,1,'Tesla','Gross Property, Plant, and Equipment',15036917);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1043,2016,1,'Tesla','Accumulated Depreciation',-1017642);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1044,2016,1,'Tesla','Net Property, Plant, and Equipment',15036917);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1045,2016,1,'Tesla','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1046,2016,1,'Tesla','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1047,2016,1,'Tesla','Intangible Assets',376145);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1048,2016,1,'Tesla','Other Long-Term Assets',484916);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1049,2016,1,'Tesla','Total Non-Current Assets',16404280);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1050,2016,1,'Tesla','Total Assets',22664076);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1051,2016,1,'Tesla','Total Revenue',1150147);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1052,2016,1,'Tesla','Accounts Payable',1860341);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1053,2016,1,'Tesla','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1054,2016,1,'Tesla','Accrued Liabilities',1210028);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1055,2016,1,'Tesla','Deferred Revenues',1426985);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1056,2016,1,'Tesla','Other Current Liabilities',179504);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1057,2016,1,'Tesla','Total Current Liabilities',5827005);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1058,2016,1,'Tesla','Long-Term Debt',5978284);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1059,2016,1,'Tesla','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1060,2016,1,'Tesla','Deferred Revenues',851790);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1061,2016,1,'Tesla','Other Long-Term Liabilities',4101872);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1062,2016,1,'Tesla','Total Non-Current Liabilities',11298985);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1063,2016,1,'Tesla','Total Liabilities',17125990);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1064,2016,1,'Tesla','Common Stock',161);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1065,2016,1,'Tesla','Retained Earnings',-2997237);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1066,2016,1,'Tesla','Accumulated Other Comprehensive Income',-23740);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1067,2016,1,'Tesla','Total Stockholders'' Equity',4752911);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1068,2016,1,'Tesla','Total Liabilities and Stockholders'' Equity',22664076);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1069,2017,1,'Tesla','Cash and Cash Equivalents',3367914);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1070,2017,1,'Tesla','Short Term Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1071,2017,1,'Tesla','Total Cash',3367914);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1072,2017,1,'Tesla','Net Receivables',515381);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1073,2017,1,'Tesla','Inventory',2263537);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1074,2017,1,'Tesla','Other Current Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1075,2017,1,'Tesla','Total Current Assets',6570520);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1076,2017,1,'Tesla','Gross Property, Plant, and Equipment',20491616);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1077,2017,1,'Tesla','Accumulated Depreciation',-1943904);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1078,2017,1,'Tesla','Net Property, Plant, and Equipment',20491616);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1079,2017,1,'Tesla','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1080,2017,1,'Tesla','Goodwill',60237);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1081,2017,1,'Tesla','Intangible Assets',361502);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1082,2017,1,'Tesla','Other Long-Term Assets',714845);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1083,2017,1,'Tesla','Total Non-Current Assets',22084852);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1084,2017,1,'Tesla','Total Assets',28655372);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1085,2017,1,'Tesla','Total Revenue',858026);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1086,2017,1,'Tesla','Accounts Payable',2390250);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1087,2017,1,'Tesla','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1088,2017,1,'Tesla','Accrued Liabilities',1731366);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1089,2017,1,'Tesla','Deferred Revenues',1869172);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1090,2017,1,'Tesla','Other Current Liabilities',787333);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1091,2017,1,'Tesla','Total Current Liabilities',7636147);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1092,2017,1,'Tesla','Long-Term Debt',9456912);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1093,2017,1,'Tesla','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1094,2017,1,'Tesla','Deferred Revenues',1177799);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1095,2017,1,'Tesla','Other Long-Term Liabilities',4752192);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1096,2017,1,'Tesla','Total Non-Current Liabilities',15784637);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1097,2017,1,'Tesla','Total Liabilities',23420784);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1098,2017,1,'Tesla','Common Stock',169);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1099,2017,1,'Tesla','Retained Earnings',-4974299);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1100,2017,1,'Tesla','Accumulated Other Comprehensive Income',33348);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1101,2017,1,'Tesla','Total Stockholders'' Equity',4237242);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1102,2017,1,'Tesla','Total Liabilities and Stockholders'' Equity',28655372);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1103,2018,1,'Tesla','Cash and Cash Equivalents',3685618);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1104,2018,1,'Tesla','Short Term Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1105,2018,1,'Tesla','Total Cash',3685618);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1106,2018,1,'Tesla','Net Receivables',949022);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1107,2018,1,'Tesla','Inventory',3113446);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1108,2018,1,'Tesla','Other Current Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1109,2018,1,'Tesla','Total Current Assets',8306308);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1110,2018,1,'Tesla','Gross Property, Plant, and Equipment',19691231);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1111,2018,1,'Tesla','Accumulated Depreciation',-3194616);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1112,2018,1,'Tesla','Net Property, Plant, and Equipment',19691231);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1113,2018,1,'Tesla','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1114,2018,1,'Tesla','Goodwill',68159);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1115,2018,1,'Tesla','Intangible Assets',282292);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1116,2018,1,'Tesla','Other Long-Term Assets',969876);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1117,2018,1,'Tesla','Total Non-Current Assets',21433306);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1118,2018,1,'Tesla','Total Assets',29739614);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1119,2018,1,'Tesla','Total Revenue',2567699);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1120,2018,1,'Tesla','Accounts Payable',3404451);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1121,2018,1,'Tesla','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1122,2018,1,'Tesla','Accrued Liabilities',2094253);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1123,2018,1,'Tesla','Deferred Revenues',1422893);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1124,2018,1,'Tesla','Other Current Liabilities',502840);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1125,2018,1,'Tesla','Total Current Liabilities',9992136);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1126,2018,1,'Tesla','Long-Term Debt',9403672);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1127,2018,1,'Tesla','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1128,2018,1,'Tesla','Deferred Revenues',990873);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1129,2018,1,'Tesla','Other Long-Term Liabilities',3039329);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1130,2018,1,'Tesla','Total Non-Current Liabilities',13989838);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1131,2018,1,'Tesla','Total Liabilities',23981974);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1132,2018,1,'Tesla','Common Stock',173);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1133,2018,1,'Tesla','Retained Earnings',-5317832);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1134,2018,1,'Tesla','Accumulated Other Comprehensive Income',-8218);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1135,2018,1,'Tesla','Total Stockholders'' Equity',4923243);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1136,2018,1,'Tesla','Total Liabilities and Stockholders'' Equity',29739614);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1137,2019,1,'Tesla','Cash and Cash Equivalents',6268000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1138,2019,1,'Tesla','Short Term Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1139,2019,1,'Tesla','Total Cash',6268000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1140,2019,1,'Tesla','Net Receivables',1324000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1141,2019,1,'Tesla','Inventory',3552000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1142,2019,1,'Tesla','Other Current Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1143,2019,1,'Tesla','Total Current Assets',12103000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1144,2019,1,'Tesla','Gross Property, Plant, and Equipment',20199000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1145,2019,1,'Tesla','Accumulated Depreciation',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1146,2019,1,'Tesla','Net Property, Plant, and Equipment',20199000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1147,2019,1,'Tesla','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1148,2019,1,'Tesla','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1149,2019,1,'Tesla','Intangible Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1150,2019,1,'Tesla','Other Long-Term Assets',1077000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1151,2019,1,'Tesla','Total Non-Current Assets',22206000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1152,2019,1,'Tesla','Total Assets',34309000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1153,2019,1,'Tesla','Total Revenue',1785000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1154,2019,1,'Tesla','Accounts Payable',3771000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1155,2019,1,'Tesla','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1156,2019,1,'Tesla','Accrued Liabilities',2905000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1157,2019,1,'Tesla','Deferred Revenues',1889000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1158,2019,1,'Tesla','Other Current Liabilities',317000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1159,2019,1,'Tesla','Total Current Liabilities',10667000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1160,2019,1,'Tesla','Long-Term Debt',11634000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1161,2019,1,'Tesla','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1162,2019,1,'Tesla','Deferred Revenues',1207000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1163,2019,1,'Tesla','Other Long-Term Liabilities',2691000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1164,2019,1,'Tesla','Total Non-Current Liabilities',16175000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1165,2019,1,'Tesla','Total Liabilities',26842000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1166,2019,1,'Tesla','Common Stock',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1167,2019,1,'Tesla','Retained Earnings',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1168,2019,1,'Tesla','Accumulated Other Comprehensive Income',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1169,2019,1,'Tesla','Total Stockholders'' Equity',6618000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
1170,2019,1,'Tesla','Total Liabilities and Stockholders'' Equity',34309000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2001,2015,2,'Costco','Cash and Cash Equivalents',4801000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2002,2015,2,'Costco','Short Term Investments',1618000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2003,2015,2,'Costco','Total Cash',6419000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2004,2015,2,'Costco','Net Receivables',1224000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2005,2015,2,'Costco','Inventory',8908000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2006,2015,2,'Costco','Other Current Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2007,2015,2,'Costco','Total Current Assets',17299000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2008,2015,2,'Costco','Gross Property, Plant, and Equipment',23664000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2009,2015,2,'Costco','Accumulated Depreciation',-8263000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2010,2015,2,'Costco','Net Property, Plant, and Equipment',15401000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2011,2015,2,'Costco','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2012,2015,2,'Costco','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2013,2015,2,'Costco','Intangible Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2014,2015,2,'Costco','Other Long-Term Assets',740000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2015,2015,2,'Costco','Total Non-Current Assets',16141000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2016,2015,2,'Costco','Total Assets',33440000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2017,2015,2,'Costco','Total Revenue',1283000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2018,2015,2,'Costco','Accounts Payable',9011000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2019,2015,2,'Costco','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2020,2015,2,'Costco','Accrued Liabilities',3281000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2021,2015,2,'Costco','Deferred Revenues',299000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2022,2015,2,'Costco','Other Current Liabilities',1696000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2023,2015,2,'Costco','Total Current Liabilities',16540000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2024,2015,2,'Costco','Long-Term Debt',4864000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2025,2015,2,'Costco','Deferred Taxes Liabilities',1193000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2026,2015,2,'Costco','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2027,2015,2,'Costco','Other Long-Term Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2028,2015,2,'Costco','Total Non-Current Liabilities',6057000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2029,2015,2,'Costco','Total Liabilities',22597000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2030,2015,2,'Costco','Common Stock',2000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2031,2015,2,'Costco','Retained Earnings',6518000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2032,2015,2,'Costco','Accumulated Other Comprehensive Income',-1121000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2033,2015,2,'Costco','Total Stockholders'' Equity',10617000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2034,2015,2,'Costco','Total Liabilities and Stockholders'' Equity',33440000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2035,2016,2,'Costco','Cash and Cash Equivalents',3379000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2036,2016,2,'Costco','Short Term Investments',1350000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2037,2016,2,'Costco','Total Cash',4729000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2038,2016,2,'Costco','Net Receivables',1252000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2039,2016,2,'Costco','Inventory',8969000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2040,2016,2,'Costco','Other Current Assets',268000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2041,2016,2,'Costco','Total Current Assets',15218000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2042,2016,2,'Costco','Gross Property, Plant, and Equipment',26167000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2043,2016,2,'Costco','Accumulated Depreciation',-9124000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2044,2016,2,'Costco','Net Property, Plant, and Equipment',17043000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2045,2016,2,'Costco','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2046,2016,2,'Costco','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2047,2016,2,'Costco','Intangible Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2048,2016,2,'Costco','Other Long-Term Assets',902000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2049,2016,2,'Costco','Total Non-Current Assets',17945000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2050,2016,2,'Costco','Total Assets',33163000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2051,2016,2,'Costco','Total Revenue',1100000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2052,2016,2,'Costco','Accounts Payable',7612000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2053,2016,2,'Costco','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2054,2016,2,'Costco','Accrued Liabilities',4030000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2055,2016,2,'Costco','Deferred Revenues',365000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2056,2016,2,'Costco','Other Current Liabilities',969000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2057,2016,2,'Costco','Total Current Liabilities',15575000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2058,2016,2,'Costco','Long-Term Debt',4061000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2059,2016,2,'Costco','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2060,2016,2,'Costco','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2061,2016,2,'Costco','Other Long-Term Liabilities',1195000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2062,2016,2,'Costco','Total Non-Current Liabilities',5256000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2063,2016,2,'Costco','Total Liabilities',20831000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2064,2016,2,'Costco','Common Stock',2000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2065,2016,2,'Costco','Retained Earnings',7686000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2066,2016,2,'Costco','Accumulated Other Comprehensive Income',-1099000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2067,2016,2,'Costco','Total Stockholders'' Equity',12079000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2068,2016,2,'Costco','Total Liabilities and Stockholders'' Equity',33163000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2069,2017,2,'Costco','Cash and Cash Equivalents',4546000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2070,2017,2,'Costco','Short Term Investments',1233000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2071,2017,2,'Costco','Total Cash',5779000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2072,2017,2,'Costco','Net Receivables',1432000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2073,2017,2,'Costco','Inventory',9834000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2074,2017,2,'Costco','Other Current Assets',272000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2075,2017,2,'Costco','Total Current Assets',17317000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2076,2017,2,'Costco','Gross Property, Plant, and Equipment',28341000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2077,2017,2,'Costco','Accumulated Depreciation',-10180000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2078,2017,2,'Costco','Net Property, Plant, and Equipment',18161000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2079,2017,2,'Costco','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2080,2017,2,'Costco','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2081,2017,2,'Costco','Intangible Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2082,2017,2,'Costco','Other Long-Term Assets',869000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2083,2017,2,'Costco','Total Non-Current Assets',19030000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2084,2017,2,'Costco','Total Assets',36347000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2085,2017,2,'Costco','Total Revenue',86000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2086,2017,2,'Costco','Accounts Payable',9608000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2087,2017,2,'Costco','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2088,2017,2,'Costco','Accrued Liabilities',3664000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2089,2017,2,'Costco','Deferred Revenues',1498000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2090,2017,2,'Costco','Other Current Liabilities',2639000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2091,2017,2,'Costco','Total Current Liabilities',17495000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2092,2017,2,'Costco','Long-Term Debt',6573000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2093,2017,2,'Costco','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2094,2017,2,'Costco','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2095,2017,2,'Costco','Other Long-Term Liabilities',1200000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2096,2017,2,'Costco','Total Non-Current Liabilities',7773000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2097,2017,2,'Costco','Total Liabilities',25268000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2098,2017,2,'Costco','Common Stock',4000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2099,2017,2,'Costco','Retained Earnings',5988000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2100,2017,2,'Costco','Accumulated Other Comprehensive Income',-1014000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2101,2017,2,'Costco','Total Stockholders'' Equity',10778000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2102,2017,2,'Costco','Total Liabilities and Stockholders'' Equity',36347000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2103,2018,2,'Costco','Cash and Cash Equivalents',6055000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2104,2018,2,'Costco','Short Term Investments',1204000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2105,2018,2,'Costco','Total Cash',7259000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2106,2018,2,'Costco','Net Receivables',1669000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2107,2018,2,'Costco','Inventory',11040000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2108,2018,2,'Costco','Other Current Assets',321000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2109,2018,2,'Costco','Total Current Assets',20289000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2110,2018,2,'Costco','Gross Property, Plant, and Equipment',30714000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2111,2018,2,'Costco','Accumulated Depreciation',-11033000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2112,2018,2,'Costco','Net Property, Plant, and Equipment',19681000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2113,2018,2,'Costco','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2114,2018,2,'Costco','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2115,2018,2,'Costco','Intangible Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2116,2018,2,'Costco','Other Long-Term Assets',860000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2117,2018,2,'Costco','Total Non-Current Assets',20541000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2118,2018,2,'Costco','Total Assets',40830000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2119,2018,2,'Costco','Total Revenue',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2120,2018,2,'Costco','Accounts Payable',11237000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2121,2018,2,'Costco','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2122,2018,2,'Costco','Accrued Liabilities',4051000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2123,2018,2,'Costco','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2124,2018,2,'Costco','Other Current Liabilities',3014000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2125,2018,2,'Costco','Total Current Liabilities',19926000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2126,2018,2,'Costco','Long-Term Debt',6487000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2127,2018,2,'Costco','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2128,2018,2,'Costco','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2129,2018,2,'Costco','Other Long-Term Liabilities',1314000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2130,2018,2,'Costco','Total Non-Current Liabilities',7801000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2131,2018,2,'Costco','Total Liabilities',27727000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2132,2018,2,'Costco','Common Stock',4000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2133,2018,2,'Costco','Retained Earnings',7887000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2134,2018,2,'Costco','Accumulated Other Comprehensive Income',-1199000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2135,2018,2,'Costco','Total Stockholders'' Equity',12799000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2136,2018,2,'Costco','Total Liabilities and Stockholders'' Equity',40830000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2137,2019,2,'Costco','Cash and Cash Equivalents',8384000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2138,2019,2,'Costco','Short Term Investments',1060000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2139,2019,2,'Costco','Total Cash',9444000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2140,2019,2,'Costco','Net Receivables',1535000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2141,2019,2,'Costco','Inventory',11395000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2142,2019,2,'Costco','Other Current Assets',1111000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2143,2019,2,'Costco','Total Current Assets',23485000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2144,2019,2,'Costco','Gross Property, Plant, and Equipment',32626000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2145,2019,2,'Costco','Accumulated Depreciation',-11736000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2146,2019,2,'Costco','Net Property, Plant, and Equipment',20890000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2147,2019,2,'Costco','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2148,2019,2,'Costco','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2149,2019,2,'Costco','Intangible Assets',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2150,2019,2,'Costco','Other Long-Term Assets',1025000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2151,2019,2,'Costco','Total Non-Current Assets',21915000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2152,2019,2,'Costco','Total Assets',45400000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2153,2019,2,'Costco','Total Revenue',1699000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2154,2019,2,'Costco','Accounts Payable',11679000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2155,2019,2,'Costco','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2156,2019,2,'Costco','Accrued Liabilities',4356000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2157,2019,2,'Costco','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2158,2019,2,'Costco','Other Current Liabilities',3792000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2159,2019,2,'Costco','Total Current Liabilities',23237000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2160,2019,2,'Costco','Long-Term Debt',5124000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2161,2019,2,'Costco','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2162,2019,2,'Costco','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2163,2019,2,'Costco','Other Long-Term Liabilities',1455000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2164,2019,2,'Costco','Total Non-Current Liabilities',6579000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2165,2019,2,'Costco','Total Liabilities',29816000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2166,2019,2,'Costco','Common Stock',4000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2167,2019,2,'Costco','Retained Earnings',10258000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2168,2019,2,'Costco','Accumulated Other Comprehensive Income',-1436000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2169,2019,2,'Costco','Total Stockholders'' Equity',15243000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
2170,2019,2,'Costco','Total Liabilities and Stockholders'' Equity',45400000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3001,2015,3,'Microsoft','Cash and Cash Equivalents',5595000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3002,2015,3,'Microsoft','Short Term Investments',90931000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3003,2015,3,'Microsoft','Total Cash',96526000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3004,2015,3,'Microsoft','Net Receivables',17908000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3005,2015,3,'Microsoft','Inventory',2902000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3006,2015,3,'Microsoft','Other Current Assets',5461000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3007,2015,3,'Microsoft','Total Current Assets',124712000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3008,2015,3,'Microsoft','Gross Property, Plant, and Equipment',32337000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3009,2015,3,'Microsoft','Accumulated Depreciation',-17606000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3010,2015,3,'Microsoft','Net Property, Plant, and Equipment',14731000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3011,2015,3,'Microsoft','Equity and Other Investments',12053000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3012,2015,3,'Microsoft','Goodwill',16939000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3013,2015,3,'Microsoft','Intangible Assets',4835000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3014,2015,3,'Microsoft','Other Long-Term Assets',2953000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3015,2015,3,'Microsoft','Total Non-Current Assets',51511000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3016,2015,3,'Microsoft','Total Assets',176223000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3017,2015,3,'Microsoft','Total Revenue',7484000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3018,2015,3,'Microsoft','Accounts Payable',6591000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3019,2015,3,'Microsoft','Taxes Payable',606000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3020,2015,3,'Microsoft','Accrued Liabilities',5096000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3021,2015,3,'Microsoft','Deferred Revenues',23223000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3022,2015,3,'Microsoft','Other Current Liabilities',6766000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3023,2015,3,'Microsoft','Total Current Liabilities',49858000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3024,2015,3,'Microsoft','Long-Term Debt',27808000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3025,2015,3,'Microsoft','Deferred Taxes Liabilities',2835000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3026,2015,3,'Microsoft','Deferred Revenues',2095000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3027,2015,3,'Microsoft','Other Long-Term Liabilities',13544000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3028,2015,3,'Microsoft','Total Non-Current Liabilities',46282000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3029,2015,3,'Microsoft','Total Liabilities',96140000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3030,2015,3,'Microsoft','Common Stock',68465000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3031,2015,3,'Microsoft','Retained Earnings',9096000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3032,2015,3,'Microsoft','Accumulated Other Comprehensive Income',2522000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3033,2015,3,'Microsoft','Total Stockholders'' Equity',80083000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3034,2015,3,'Microsoft','Total Liabilities and Stockholders'' Equity',176223000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3035,2016,3,'Microsoft','Cash and Cash Equivalents',6510000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3036,2016,3,'Microsoft','Short Term Investments',106730000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3037,2016,3,'Microsoft','Total Cash',113240000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3038,2016,3,'Microsoft','Net Receivables',18277000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3039,2016,3,'Microsoft','Inventory',2251000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3040,2016,3,'Microsoft','Other Current Assets',5892000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3041,2016,3,'Microsoft','Total Current Assets',139660000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3042,2016,3,'Microsoft','Gross Property, Plant, and Equipment',38156000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3043,2016,3,'Microsoft','Accumulated Depreciation',-19800000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3044,2016,3,'Microsoft','Net Property, Plant, and Equipment',18356000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3045,2016,3,'Microsoft','Equity and Other Investments',10431000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3046,2016,3,'Microsoft','Goodwill',17872000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3047,2016,3,'Microsoft','Intangible Assets',3733000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3048,2016,3,'Microsoft','Other Long-Term Assets',3642000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3049,2016,3,'Microsoft','Total Non-Current Assets',54034000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3050,2016,3,'Microsoft','Total Assets',193694000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3051,2016,3,'Microsoft','Total Revenue',12904000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3052,2016,3,'Microsoft','Accounts Payable',6898000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3053,2016,3,'Microsoft','Taxes Payable',580000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3054,2016,3,'Microsoft','Accrued Liabilities',5264000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3055,2016,3,'Microsoft','Deferred Revenues',27468000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3056,2016,3,'Microsoft','Other Current Liabilities',5949000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3057,2016,3,'Microsoft','Total Current Liabilities',59357000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3058,2016,3,'Microsoft','Long-Term Debt',40783000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3059,2016,3,'Microsoft','Deferred Taxes Liabilities',696000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3060,2016,3,'Microsoft','Deferred Revenues',6441000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3061,2016,3,'Microsoft','Other Long-Term Liabilities',14420000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3062,2016,3,'Microsoft','Total Non-Current Liabilities',62340000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3063,2016,3,'Microsoft','Total Liabilities',121697000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3064,2016,3,'Microsoft','Common Stock',68178000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3065,2016,3,'Microsoft','Retained Earnings',2282000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3066,2016,3,'Microsoft','Accumulated Other Comprehensive Income',1537000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3067,2016,3,'Microsoft','Total Stockholders'' Equity',71997000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3068,2016,3,'Microsoft','Total Liabilities and Stockholders'' Equity',193694000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3069,2017,3,'Microsoft','Cash and Cash Equivalents',7663000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3070,2017,3,'Microsoft','Short Term Investments',125318000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3071,2017,3,'Microsoft','Total Cash',132981000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3072,2017,3,'Microsoft','Net Receivables',19792000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3073,2017,3,'Microsoft','Inventory',2181000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3074,2017,3,'Microsoft','Other Current Assets',4897000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3075,2017,3,'Microsoft','Total Current Assets',159851000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3076,2017,3,'Microsoft','Gross Property, Plant, and Equipment',47913000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3077,2017,3,'Microsoft','Accumulated Depreciation',-24179000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3078,2017,3,'Microsoft','Net Property, Plant, and Equipment',23734000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3079,2017,3,'Microsoft','Equity and Other Investments',6023000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3080,2017,3,'Microsoft','Goodwill',35122000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3081,2017,3,'Microsoft','Intangible Assets',10106000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3082,2017,3,'Microsoft','Other Long-Term Assets',6250000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3083,2017,3,'Microsoft','Total Non-Current Assets',81235000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3084,2017,3,'Microsoft','Total Assets',241086000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3085,2017,3,'Microsoft','Total Revenue',10121000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3086,2017,3,'Microsoft','Accounts Payable',7390000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3087,2017,3,'Microsoft','Taxes Payable',718000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3088,2017,3,'Microsoft','Accrued Liabilities',5819000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3089,2017,3,'Microsoft','Deferred Revenues',34102000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3090,2017,3,'Microsoft','Other Current Liabilities',6280000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3091,2017,3,'Microsoft','Total Current Liabilities',64527000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3092,2017,3,'Microsoft','Long-Term Debt',76073000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3093,2017,3,'Microsoft','Deferred Taxes Liabilities',531000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3094,2017,3,'Microsoft','Deferred Revenues',10377000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3095,2017,3,'Microsoft','Other Long-Term Liabilities',17184000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3096,2017,3,'Microsoft','Total Non-Current Liabilities',104165000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3097,2017,3,'Microsoft','Total Liabilities',168692000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3098,2017,3,'Microsoft','Common Stock',69315000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3099,2017,3,'Microsoft','Retained Earnings',2648000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3100,2017,3,'Microsoft','Accumulated Other Comprehensive Income',431000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3101,2017,3,'Microsoft','Total Stockholders'' Equity',72394000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3102,2017,3,'Microsoft','Total Liabilities and Stockholders'' Equity',241086000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3103,2018,3,'Microsoft','Cash and Cash Equivalents',11946000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3104,2018,3,'Microsoft','Short Term Investments',121822000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3105,2018,3,'Microsoft','Total Cash',133768000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3106,2018,3,'Microsoft','Net Receivables',26481000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3107,2018,3,'Microsoft','Inventory',2662000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3108,2018,3,'Microsoft','Other Current Assets',6751000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3109,2018,3,'Microsoft','Total Current Assets',169662000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3110,2018,3,'Microsoft','Gross Property, Plant, and Equipment',65369000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3111,2018,3,'Microsoft','Accumulated Depreciation',-29223000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3112,2018,3,'Microsoft','Net Property, Plant, and Equipment',36146000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3113,2018,3,'Microsoft','Equity and Other Investments',1862000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3114,2018,3,'Microsoft','Goodwill',35683000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3115,2018,3,'Microsoft','Intangible Assets',8053000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3116,2018,3,'Microsoft','Other Long-Term Assets',7442000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3117,2018,3,'Microsoft','Total Non-Current Assets',89186000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3118,2018,3,'Microsoft','Total Assets',258848000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3119,2018,3,'Microsoft','Total Revenue',3998000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3120,2018,3,'Microsoft','Accounts Payable',8617000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3121,2018,3,'Microsoft','Taxes Payable',2121000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3122,2018,3,'Microsoft','Accrued Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3123,2018,3,'Microsoft','Deferred Revenues',28905000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3124,2018,3,'Microsoft','Other Current Liabilities',8744000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3125,2018,3,'Microsoft','Total Current Liabilities',58488000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3126,2018,3,'Microsoft','Long-Term Debt',72242000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3127,2018,3,'Microsoft','Deferred Taxes Liabilities',541000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3128,2018,3,'Microsoft','Deferred Revenues',3815000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3129,2018,3,'Microsoft','Other Long-Term Liabilities',5211000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3130,2018,3,'Microsoft','Total Non-Current Liabilities',117642000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3131,2018,3,'Microsoft','Total Liabilities',176130000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3132,2018,3,'Microsoft','Common Stock',71223000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3133,2018,3,'Microsoft','Retained Earnings',13682000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3134,2018,3,'Microsoft','Accumulated Other Comprehensive Income',-2187000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3135,2018,3,'Microsoft','Total Stockholders'' Equity',82718000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3136,2018,3,'Microsoft','Total Liabilities and Stockholders'' Equity',258848000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3137,2019,3,'Microsoft','Cash and Cash Equivalents',11356000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3138,2019,3,'Microsoft','Short Term Investments',122463000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3139,2019,3,'Microsoft','Total Cash',133819000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3140,2019,3,'Microsoft','Net Receivables',29524000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3141,2019,3,'Microsoft','Inventory',2063000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3142,2019,3,'Microsoft','Other Current Assets',10146000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3143,2019,3,'Microsoft','Total Current Assets',175552000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3144,2019,3,'Microsoft','Gross Property, Plant, and Equipment',79186000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3145,2019,3,'Microsoft','Accumulated Depreciation',-35330000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3146,2019,3,'Microsoft','Net Property, Plant, and Equipment',43856000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3147,2019,3,'Microsoft','Equity and Other Investments',2649000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3148,2019,3,'Microsoft','Goodwill',42026000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3149,2019,3,'Microsoft','Intangible Assets',7750000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3150,2019,3,'Microsoft','Other Long-Term Assets',14723000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3151,2019,3,'Microsoft','Total Non-Current Assets',111004000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3152,2019,3,'Microsoft','Total Assets',286556000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3153,2019,3,'Microsoft','Total Revenue',5516000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3154,2019,3,'Microsoft','Accounts Payable',9382000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3155,2019,3,'Microsoft','Taxes Payable',5665000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3156,2019,3,'Microsoft','Accrued Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3157,2019,3,'Microsoft','Deferred Revenues',32676000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3158,2019,3,'Microsoft','Other Current Liabilities',9351000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3159,2019,3,'Microsoft','Total Current Liabilities',69420000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3160,2019,3,'Microsoft','Long-Term Debt',66662000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3161,2019,3,'Microsoft','Deferred Taxes Liabilities',233000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3162,2019,3,'Microsoft','Deferred Revenues',4530000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3163,2019,3,'Microsoft','Other Long-Term Liabilities',7581000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3164,2019,3,'Microsoft','Total Non-Current Liabilities',114806000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3165,2019,3,'Microsoft','Total Liabilities',184226000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3166,2019,3,'Microsoft','Common Stock',78520000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3167,2019,3,'Microsoft','Retained Earnings',24150000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3168,2019,3,'Microsoft','Accumulated Other Comprehensive Income',-340000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3169,2019,3,'Microsoft','Total Stockholders'' Equity',102330000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
3170,2019,3,'Microsoft','Total Liabilities and Stockholders'' Equity',286556000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4001,2015,4,'Netflix','Cash and Cash Equivalents',1809330);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4002,2015,4,'Netflix','Short Term Investments',501385);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4003,2015,4,'Netflix','Total Cash',2310715);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4004,2015,4,'Netflix','Net Receivables',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4005,2015,4,'Netflix','Inventory',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4006,2015,4,'Netflix','Other Current Assets',3121125);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4007,2015,4,'Netflix','Total Current Assets',5431840);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4008,2015,4,'Netflix','Gross Property, Plant, and Equipment',470758);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4009,2015,4,'Netflix','Accumulated Depreciation',-297346);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4010,2015,4,'Netflix','Net Property, Plant, and Equipment',173412);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4011,2015,4,'Netflix','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4012,2015,4,'Netflix','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4013,2015,4,'Netflix','Intangible Assets',4312817);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4014,2015,4,'Netflix','Other Long-Term Assets',284802);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4015,2015,4,'Netflix','Total Non-Current Assets',4771031);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4016,2015,4,'Netflix','Total Assets',10202871);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4017,2015,4,'Netflix','Total Revenue',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4018,2015,4,'Netflix','Accounts Payable',253491);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4019,2015,4,'Netflix','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4020,2015,4,'Netflix','Accrued Liabilities',140389);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4021,2015,4,'Netflix','Deferred Revenues',346721);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4022,2015,4,'Netflix','Other Current Liabilities',2789023);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4023,2015,4,'Netflix','Total Current Liabilities',3529624);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4024,2015,4,'Netflix','Long-Term Debt',2371362);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4025,2015,4,'Netflix','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4026,2015,4,'Netflix','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4027,2015,4,'Netflix','Other Long-Term Liabilities',2078459);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4028,2015,4,'Netflix','Total Non-Current Liabilities',4449821);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4029,2015,4,'Netflix','Total Liabilities',7979445);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4030,2015,4,'Netflix','Common Stock',1324809);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4031,2015,4,'Netflix','Retained Earnings',941925);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4032,2015,4,'Netflix','Accumulated Other Comprehensive Income',-43308);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4033,2015,4,'Netflix','Total Stockholders'' Equity',2223426);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4034,2015,4,'Netflix','Total Liabilities and Stockholders'' Equity',10202871);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4035,2016,4,'Netflix','Cash and Cash Equivalents',1467576);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4036,2016,4,'Netflix','Short Term Investments',266206);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4037,2016,4,'Netflix','Total Cash',1733782);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4038,2016,4,'Netflix','Net Receivables',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4039,2016,4,'Netflix','Inventory',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4040,2016,4,'Netflix','Other Current Assets',3986509);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4041,2016,4,'Netflix','Total Current Assets',5720291);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4042,2016,4,'Netflix','Gross Property, Plant, and Equipment',544604);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4043,2016,4,'Netflix','Accumulated Depreciation',-294209);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4044,2016,4,'Netflix','Net Property, Plant, and Equipment',250395);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4045,2016,4,'Netflix','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4046,2016,4,'Netflix','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4047,2016,4,'Netflix','Intangible Assets',7274501);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4048,2016,4,'Netflix','Other Long-Term Assets',341423);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4049,2016,4,'Netflix','Total Non-Current Assets',7866319);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4050,2016,4,'Netflix','Total Assets',13586610);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4051,2016,4,'Netflix','Total Revenue',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4052,2016,4,'Netflix','Accounts Payable',312842);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4053,2016,4,'Netflix','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4054,2016,4,'Netflix','Accrued Liabilities',197632);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4055,2016,4,'Netflix','Deferred Revenues',443472);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4056,2016,4,'Netflix','Other Current Liabilities',3632711);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4057,2016,4,'Netflix','Total Current Liabilities',4586657);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4058,2016,4,'Netflix','Long-Term Debt',3364311);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4059,2016,4,'Netflix','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4060,2016,4,'Netflix','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4061,2016,4,'Netflix','Other Long-Term Liabilities',2955842);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4062,2016,4,'Netflix','Total Non-Current Liabilities',6320153);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4063,2016,4,'Netflix','Total Liabilities',10906810);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4064,2016,4,'Netflix','Common Stock',1599762);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4065,2016,4,'Netflix','Retained Earnings',1128603);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4066,2016,4,'Netflix','Accumulated Other Comprehensive Income',-48565);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4067,2016,4,'Netflix','Total Stockholders'' Equity',2679800);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4068,2016,4,'Netflix','Total Liabilities and Stockholders'' Equity',13586610);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4069,2017,4,'Netflix','Cash and Cash Equivalents',2822795);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4070,2017,4,'Netflix','Short Term Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4071,2017,4,'Netflix','Total Cash',2822795);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4072,2017,4,'Netflix','Net Receivables',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4073,2017,4,'Netflix','Inventory',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4074,2017,4,'Netflix','Other Current Assets',4847179);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4075,2017,4,'Netflix','Total Current Assets',7669974);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4076,2017,4,'Netflix','Gross Property, Plant, and Equipment',641218);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4077,2017,4,'Netflix','Accumulated Depreciation',-321814);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4078,2017,4,'Netflix','Net Property, Plant, and Equipment',319404);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4079,2017,4,'Netflix','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4080,2017,4,'Netflix','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4081,2017,4,'Netflix','Intangible Assets',10371055);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4082,2017,4,'Netflix','Other Long-Term Assets',652309);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4083,2017,4,'Netflix','Total Non-Current Assets',11342768);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4084,2017,4,'Netflix','Total Assets',19012742);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4085,2017,4,'Netflix','Total Revenue',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4086,2017,4,'Netflix','Accounts Payable',359555);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4087,2017,4,'Netflix','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4088,2017,4,'Netflix','Accrued Liabilities',315094);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4089,2017,4,'Netflix','Deferred Revenues',618622);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4090,2017,4,'Netflix','Other Current Liabilities',4173041);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4091,2017,4,'Netflix','Total Current Liabilities',5466312);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4092,2017,4,'Netflix','Long-Term Debt',6499432);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4093,2017,4,'Netflix','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4094,2017,4,'Netflix','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4095,2017,4,'Netflix','Other Long-Term Liabilities',3465042);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4096,2017,4,'Netflix','Total Non-Current Liabilities',9964474);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4097,2017,4,'Netflix','Total Liabilities',15430786);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4098,2017,4,'Netflix','Common Stock',1871396);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4099,2017,4,'Netflix','Retained Earnings',1731117);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4100,2017,4,'Netflix','Accumulated Other Comprehensive Income',-20557);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4101,2017,4,'Netflix','Total Stockholders'' Equity',3581956);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4102,2017,4,'Netflix','Total Liabilities and Stockholders'' Equity',19012742);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4103,2018,4,'Netflix','Cash and Cash Equivalents',3794483);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4104,2018,4,'Netflix','Short Term Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4105,2018,4,'Netflix','Total Cash',3794483);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4106,2018,4,'Netflix','Net Receivables',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4107,2018,4,'Netflix','Inventory',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4108,2018,4,'Netflix','Other Current Assets',5899652);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4109,2018,4,'Netflix','Total Current Assets',9694135);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4110,2018,4,'Netflix','Gross Property, Plant, and Equipment',786800);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4111,2018,4,'Netflix','Accumulated Depreciation',-368519);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4112,2018,4,'Netflix','Net Property, Plant, and Equipment',418281);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4113,2018,4,'Netflix','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4114,2018,4,'Netflix','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4115,2018,4,'Netflix','Intangible Assets',14960954);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4116,2018,4,'Netflix','Other Long-Term Assets',901030);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4117,2018,4,'Netflix','Total Non-Current Assets',16280265);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4118,2018,4,'Netflix','Total Assets',25974400);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4119,2018,4,'Netflix','Total Revenue',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4120,2018,4,'Netflix','Accounts Payable',562985);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4121,2018,4,'Netflix','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4122,2018,4,'Netflix','Accrued Liabilities',477417);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4123,2018,4,'Netflix','Deferred Revenues',760899);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4124,2018,4,'Netflix','Other Current Liabilities',4686019);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4125,2018,4,'Netflix','Total Current Liabilities',6487320);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4126,2018,4,'Netflix','Long-Term Debt',10360058);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4127,2018,4,'Netflix','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4128,2018,4,'Netflix','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4129,2018,4,'Netflix','Other Long-Term Liabilities',3888257);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4130,2018,4,'Netflix','Total Non-Current Liabilities',14248315);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4131,2018,4,'Netflix','Total Liabilities',20735635);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4132,2018,4,'Netflix','Common Stock',2315988);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4133,2018,4,'Netflix','Retained Earnings',2942359);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4134,2018,4,'Netflix','Accumulated Other Comprehensive Income',-19582);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4135,2018,4,'Netflix','Total Stockholders'' Equity',5238765);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4136,2018,4,'Netflix','Total Liabilities and Stockholders'' Equity',25974400);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4137,2019,4,'Netflix','Cash and Cash Equivalents',5018437);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4138,2019,4,'Netflix','Short Term Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4139,2019,4,'Netflix','Total Cash',5018437);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4140,2019,4,'Netflix','Net Receivables',454399);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4141,2019,4,'Netflix','Inventory',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4142,2019,4,'Netflix','Other Current Assets',1160067);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4143,2019,4,'Netflix','Total Current Assets',6178504);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4144,2019,4,'Netflix','Gross Property, Plant, and Equipment',981226);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4145,2019,4,'Netflix','Accumulated Depreciation',-416005);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4146,2019,4,'Netflix','Net Property, Plant, and Equipment',565221);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4147,2019,4,'Netflix','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4148,2019,4,'Netflix','Goodwill',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4149,2019,4,'Netflix','Intangible Assets',24504567);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4150,2019,4,'Netflix','Other Long-Term Assets',2727420);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4151,2019,4,'Netflix','Total Non-Current Assets',27797208);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4152,2019,4,'Netflix','Total Assets',33975712);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4153,2019,4,'Netflix','Total Revenue',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4154,2019,4,'Netflix','Accounts Payable',674347);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4155,2019,4,'Netflix','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4156,2019,4,'Netflix','Accrued Liabilities',843043);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4157,2019,4,'Netflix','Deferred Revenues',924745);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4158,2019,4,'Netflix','Other Current Liabilities',4413561);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4159,2019,4,'Netflix','Total Current Liabilities',6855696);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4160,2019,4,'Netflix','Long-Term Debt',14759260);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4161,2019,4,'Netflix','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4162,2019,4,'Netflix','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4163,2019,4,'Netflix','Other Long-Term Liabilities',4778599);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4164,2019,4,'Netflix','Total Non-Current Liabilities',19537859);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4165,2019,4,'Netflix','Total Liabilities',26393555);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4166,2019,4,'Netflix','Common Stock',2793929);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4167,2019,4,'Netflix','Retained Earnings',4811749);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4168,2019,4,'Netflix','Accumulated Other Comprehensive Income',-23521);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4169,2019,4,'Netflix','Total Stockholders'' Equity',7582157);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
4170,2019,4,'Netflix','Total Liabilities and Stockholders'' Equity',33975712);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5001,2015,5,'Dennys','Cash and Cash Equivalents',1671);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5002,2015,5,'Dennys','Short Term Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5003,2015,5,'Dennys','Total Cash',1671);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5004,2015,5,'Dennys','Net Receivables',16552);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5005,2015,5,'Dennys','Inventory',3117);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5006,2015,5,'Dennys','Other Current Assets',17260);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5007,2015,5,'Dennys','Total Current Assets',36414);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5008,2015,5,'Dennys','Gross Property, Plant, and Equipment',124816);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5009,2015,5,'Dennys','Accumulated Depreciation',-247995);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5010,2015,5,'Dennys','Net Property, Plant, and Equipment',124816);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5011,2015,5,'Dennys','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5012,2015,5,'Dennys','Goodwill',33454);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5013,2015,5,'Dennys','Intangible Assets',46074);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5014,2015,5,'Dennys','Other Long-Term Assets',27120);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5015,2015,5,'Dennys','Total Non-Current Assets',260623);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5016,2015,5,'Dennys','Total Assets',297037);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5017,2015,5,'Dennys','Total Revenue',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5018,2015,5,'Dennys','Accounts Payable',20759);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5019,2015,5,'Dennys','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5020,2015,5,'Dennys','Accrued Liabilities',45362);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5021,2015,5,'Dennys','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5022,2015,5,'Dennys','Other Current Liabilities',77548);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5023,2015,5,'Dennys','Total Current Liabilities',101553);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5024,2015,5,'Dennys','Long-Term Debt',195000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5025,2015,5,'Dennys','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5026,2015,5,'Dennys','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5027,2015,5,'Dennys','Other Long-Term Liabilities',43580);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5028,2015,5,'Dennys','Total Non-Current Liabilities',2560709);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5029,2015,5,'Dennys','Total Liabilities',357632);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5030,2015,5,'Dennys','Common Stock',1065);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5031,2015,5,'Dennys','Retained Earnings',-402245);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5032,2015,5,'Dennys','Accumulated Other Comprehensive Income',-23777);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5033,2015,5,'Dennys','Total Stockholders'' Equity',-60595);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5034,2015,5,'Dennys','Total Liabilities and Stockholders'' Equity',297037);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5035,2016,5,'Dennys','Cash and Cash Equivalents',2592);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5036,2016,5,'Dennys','Short Term Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5037,2016,5,'Dennys','Total Cash',2592);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5038,2016,5,'Dennys','Net Receivables',19841);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5039,2016,5,'Dennys','Inventory',3046);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5040,2016,5,'Dennys','Other Current Assets',12424);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5041,2016,5,'Dennys','Total Current Assets',35907);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5042,2016,5,'Dennys','Gross Property, Plant, and Equipment',133102);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5043,2016,5,'Dennys','Accumulated Depreciation',-255185);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5044,2016,5,'Dennys','Net Property, Plant, and Equipment',133102);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5045,2016,5,'Dennys','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5046,2016,5,'Dennys','Goodwill',35233);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5047,2016,5,'Dennys','Intangible Assets',54493);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5048,2016,5,'Dennys','Other Long-Term Assets',29733);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5049,2016,5,'Dennys','Total Non-Current Assets',270244);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5050,2016,5,'Dennys','Total Assets',306151);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5051,2016,5,'Dennys','Total Revenue',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5052,2016,5,'Dennys','Accounts Payable',25289);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5053,2016,5,'Dennys','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5054,2016,5,'Dennys','Accrued Liabilities',47232);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5055,2016,5,'Dennys','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5056,2016,5,'Dennys','Other Current Liabilities',64796);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5057,2016,5,'Dennys','Total Current Liabilities',93370);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5058,2016,5,'Dennys','Long-Term Debt',218500);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5059,2016,5,'Dennys','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5060,2016,5,'Dennys','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5061,2016,5,'Dennys','Other Long-Term Liabilities',41587);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5062,2016,5,'Dennys','Total Non-Current Liabilities',283893);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5063,2016,5,'Dennys','Total Liabilities',377263);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5064,2016,5,'Dennys','Common Stock',1071);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5065,2016,5,'Dennys','Retained Earnings',-382843);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5066,2016,5,'Dennys','Accumulated Other Comprehensive Income',-1407);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5067,2016,5,'Dennys','Total Stockholders'' Equity',-71112);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5068,2016,5,'Dennys','Total Liabilities and Stockholders'' Equity',306151);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5069,2017,5,'Dennys','Cash and Cash Equivalents',4983);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5070,2017,5,'Dennys','Short Term Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5071,2017,5,'Dennys','Total Cash',4983);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5072,2017,5,'Dennys','Net Receivables',21384);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5073,2017,5,'Dennys','Inventory',3134);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5074,2017,5,'Dennys','Other Current Assets',14922);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5075,2017,5,'Dennys','Total Current Assets',41289);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5076,2017,5,'Dennys','Gross Property, Plant, and Equipment',139856);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5077,2017,5,'Dennys','Accumulated Depreciation',-243325);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5078,2017,5,'Dennys','Net Property, Plant, and Equipment',139856);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5079,2017,5,'Dennys','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5080,2017,5,'Dennys','Goodwill',38269);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5081,2017,5,'Dennys','Intangible Assets',57109);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5082,2017,5,'Dennys','Other Long-Term Assets',30314);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5083,2017,5,'Dennys','Total Non-Current Assets',282493);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5084,2017,5,'Dennys','Total Assets',323782);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5085,2017,5,'Dennys','Total Revenue',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5086,2017,5,'Dennys','Accounts Payable',32487);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5087,2017,5,'Dennys','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5088,2017,5,'Dennys','Accrued Liabilities',42817);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5089,2017,5,'Dennys','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5090,2017,5,'Dennys','Other Current Liabilities',59246);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5091,2017,5,'Dennys','Total Current Liabilities',94901);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5092,2017,5,'Dennys','Long-Term Debt',259000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5093,2017,5,'Dennys','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5094,2017,5,'Dennys','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5095,2017,5,'Dennys','Other Long-Term Liabilities',40187);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5096,2017,5,'Dennys','Total Non-Current Liabilities',326241);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5097,2017,5,'Dennys','Total Liabilities',421142);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5098,2017,5,'Dennys','Common Stock',1077);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5099,2017,5,'Dennys','Retained Earnings',-334661);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5100,2017,5,'Dennys','Accumulated Other Comprehensive Income',-2316);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5101,2017,5,'Dennys','Total Stockholders'' Equity',-97360);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5102,2017,5,'Dennys','Total Liabilities and Stockholders'' Equity',323782);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5103,2018,5,'Dennys','Cash and Cash Equivalents',5026);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5104,2018,5,'Dennys','Short Term Investments',1709);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5105,2018,5,'Dennys','Total Cash',6735);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5106,2018,5,'Dennys','Net Receivables',26283);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5107,2018,5,'Dennys','Inventory',2993);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5108,2018,5,'Dennys','Other Current Assets',13859);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5109,2018,5,'Dennys','Total Current Assets',47600);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5110,2018,5,'Dennys','Gross Property, Plant, and Equipment',140004);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5111,2018,5,'Dennys','Accumulated Depreciation',-242146);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5112,2018,5,'Dennys','Net Property, Plant, and Equipment',140004);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5113,2018,5,'Dennys','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5114,2018,5,'Dennys','Goodwill',39781);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5115,2018,5,'Dennys','Intangible Assets',59067);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5116,2018,5,'Dennys','Other Long-Term Assets',31564);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5117,2018,5,'Dennys','Total Non-Current Assets',287749);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5118,2018,5,'Dennys','Total Assets',335349);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5119,2018,5,'Dennys','Total Revenue',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5120,2018,5,'Dennys','Accounts Payable',29527);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5121,2018,5,'Dennys','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5122,2018,5,'Dennys','Accrued Liabilities',44677);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5123,2018,5,'Dennys','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5124,2018,5,'Dennys','Other Current Liabilities',61790);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5125,2018,5,'Dennys','Total Current Liabilities',94727);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5126,2018,5,'Dennys','Long-Term Debt',286500);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5127,2018,5,'Dennys','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5128,2018,5,'Dennys','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5129,2018,5,'Dennys','Other Long-Term Liabilities',60286);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5130,2018,5,'Dennys','Total Non-Current Liabilities',373967);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5131,2018,5,'Dennys','Total Liabilities',468694);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5132,2018,5,'Dennys','Common Stock',1086);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5133,2018,5,'Dennys','Retained Earnings',-306414);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5134,2018,5,'Dennys','Accumulated Other Comprehensive Income',-4146);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5135,2018,5,'Dennys','Total Stockholders'' Equity',-133345);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5136,2018,5,'Dennys','Total Liabilities and Stockholders'' Equity',335349);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5137,2019,5,'Dennys','Cash and Cash Equivalents',3372);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5138,2019,5,'Dennys','Short Term Investments',3649);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5139,2019,5,'Dennys','Total Cash',7021);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5140,2019,5,'Dennys','Net Receivables',27488);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5141,2019,5,'Dennys','Inventory',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5142,2019,5,'Dennys','Other Current Assets',16299);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5143,2019,5,'Dennys','Total Current Assets',52733);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5144,2019,5,'Dennys','Gross Property, Plant, and Equipment',267896);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5145,2019,5,'Dennys','Accumulated Depreciation',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5146,2019,5,'Dennys','Net Property, Plant, and Equipment',267896);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5147,2019,5,'Dennys','Equity and Other Investments',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5148,2019,5,'Dennys','Goodwill',36832);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5149,2019,5,'Dennys','Intangible Assets',53956);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5150,2019,5,'Dennys','Other Long-Term Assets',34252);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5151,2019,5,'Dennys','Total Non-Current Assets',407654);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5152,2019,5,'Dennys','Total Assets',460387);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5153,2019,5,'Dennys','Total Revenue',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5154,2019,5,'Dennys','Accounts Payable',20256);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5155,2019,5,'Dennys','Taxes Payable',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5156,2019,5,'Dennys','Accrued Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5157,2019,5,'Dennys','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5158,2019,5,'Dennys','Other Current Liabilities',57307);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5159,2019,5,'Dennys','Total Current Liabilities',95581);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5160,2019,5,'Dennys','Long-Term Debt',240000);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5161,2019,5,'Dennys','Deferred Taxes Liabilities',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5162,2019,5,'Dennys','Deferred Revenues',0);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5163,2019,5,'Dennys','Other Long-Term Liabilities',95341);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5164,2019,5,'Dennys','Total Non-Current Liabilities',501870);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5165,2019,5,'Dennys','Total Liabilities',598451);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5166,2019,5,'Dennys','Common Stock',11094);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5167,2019,5,'Dennys','Retained Earnings',-189398);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5168,2019,5,'Dennys','Accumulated Other Comprehensive Income',-33960);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5169,2019,5,'Dennys','Total Stockholders'' Equity',-138064);
INSERT INTO [balancesheet] ([ID],[CompanyYear],[CompanyID],[Company],[FinancialConstructs],[Numbers]) VALUES (
5170,2019,5,'Dennys','Total Liabilities and Stockholders'' Equity',460387);
CREATE INDEX [y_ear_Y_ear] ON [y_ear] ([Y_EAR] ASC);
CREATE INDEX [ratioconstruct_RatioConstruct] ON [ratioconstruct] ([RatioConstruct] ASC);
CREATE INDEX [knowledgeobject_KnowledgeObject1] ON [knowledgeobject] ([KnowledgeObject1] ASC);
CREATE INDEX [isp_KnowledgeObjectA] ON [isp] ([KnowledgeObjectA] ASC);
CREATE INDEX [isc_KnowledgeObjectA] ON [isc] ([KnowledgeObjectA] ASC);
CREATE INDEX [isa_KnowledgeObjectA] ON [isa] ([KnowledgeObjectA] ASC);
CREATE INDEX [incomestatement_Company] ON [incomestatement] ([Company] ASC);
CREATE INDEX [company_Company] ON [company] ([Company] ASC);
CREATE INDEX [commonword_Common] ON [commonword] ([Common] ASC);
CREATE INDEX [balancesheet_Company] ON [balancesheet] ([Company] ASC);
CREATE INDEX [articles_Company] ON [articles] ([Company] ASC);
COMMIT;

