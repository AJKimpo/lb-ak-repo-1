-- liquibase formatted sql

-- changeset healthIQ create Pauseds table: 1
-- author: Kimpo

USE Health_IQ;

CREATE TABLE Pauseds
  ( userId           VARCHAR(255)  COLLATE latin1_general_ci NOT NULL,
    difficulty       VARCHAR(10)   COLLATE latin1_general_ci NULL,
    quizQuestions    VARCHAR(100)  COLLATE latin1_general_ci NULL,
    questionIndex    INT           NULL,
    score            INT           NULL,	
    hintUsed         BIT           NULL,
    hintCount        INT           NULL,
    beginTime        DATETIME      NULL,
    createdAt        DATETIME      NULL,
    updatedAt        DATETIME      NULL,
    CONSTRAINT pauseds_pk primary key (userId));

COMMIT;

-- changeset healthIQ create Scores table: 2
-- author: Kimpo

USE Health_IQ;

CREATE TABLE Scores
  ( userId             VARCHAR(255)   COLLATE latin1_general_ci NOT NULL,
    score              INT            COLLATE latin1_general_ci NULL,
    questionsCompleted VARCHAR(2000)  COLLATE latin1_general_ci NULL, 
    CONSTRAINT scores_pk primary key (userId));

COMMIT;

-- changeset healthIQ insert into Scores table: 3
-- author: Kimpo

USE Health_IQ;

INSERT INTO Scores (userId, score, questionsCompleted)
       select t.userId, t.score, t.questionsCompleted from (
              SELECT 'amzn1.ask.account.AE3AIUDODQ7T6RTPOEUGR4UDFVEAM536LEK7MYGVH6O7NQ3D77L4OXAU4J6AV5MNJ6BTPQ2EKMJN3TDAC2F5XSIEXVDXU5W63TO3JPSEBJTQSMISXGW2OZXW66Q7FRUDXT2V52N7TZ2WQNSWV4VOM7ZZFI7PKT7ESEJ3P7YPZUOLHQG5PFOPE5JB5CQJJAUW6LET5LP5JZVVWXY' 		AS userId,
                            975                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AE5BVD5ICUQ7NLDUJFPLSEQ6BO5QKCTBAO23HUQPRN4F4GXL7RTAKTBTE65HNI4UCV2QABIDJ3TT6G6XHGGLITOQEKKBF5GID6T6RIAUJJRM3R6CPZWGQAQFADZGRXWGQLF7L5IKPXRNBW4FKZWT5LH7PZNIGQHSR2DIKEIL5VMXLBWR5U4D4BSXANG7LUUT5NZGGT3CZCDHIFA' AS userId,
                            325                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AE5TXNK6XN6FZP3Y7BLI5MPADQ545K3DVPQTDSCSPPUP2DOTAK5KG32HLO3BXIX6MDR6ARH4EIQZKO4OQ656J5N4XH4HH7QHXJ7S5TIH3ZODV7JAMXEL7MGYVZPRCQLKGAQ6QGGMSI6LQXJZN757ZZKKBYTM7GXUOZJFV6EZBGIZRYER6OXUVIGTW222RTFQFKK3XJNA2KQOMEY' AS userId,
                            350                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AE6HNBUD2XHKDKRK7VYKRLUBYQ66SI5GMH35AR2QWBQ3YPNS7CTI2V4CPAG6SUE4XFVYHS5K2ORG4UMZWEOUKN4RAWYOKCT3JEOH7LBNBRDYS5H47PRPWLVIAAMVDOYVDXW7372CKSR3T7SXJDKVHS4TY6PCIACQ2ZE7RJRO5GYN5ZS4FOOIDMJSD7L73NFNEV2MBLMJF4P4QAI' AS userId,
                            1125                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AE6I7BY3L5P5HJX2U7WDNP2IQGHAXLRPTBK27UKYLPVGDMGHKEQCFMW7P6JYZTZD3KL755K5PTC4C7EI7D7EX32JGKSLPEHQKKWEQ2ACANWVVS3NY6OC5WBDQTJ2SUDGZTP3NM3OOIDNILKQQ2AMWURABITB5CBBYY5UCXENPGEEJXKM2CBPAL5KIRY2CEOSJ6SEKXNOQAIV2AQ' AS userId,
                            475                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AE6IBSCI45TJFMSK6Y6IAQLLZ5PKP3QUYY7M2LNKOHEIKRUC2RDAABJ5MEZCIA7SZ3PQHVJPLDDBOJ4MUIHNMGZKCAPVYWO44BPJRII4SXZBGL2F2WJE3ISNBQBC5Y7GWKTZJQCMQFKGU2QMDQB4WYVRV5A77GIF2V7JE6ZJE5KT7OHMCCL5CJ4QZ7MQTLGIBTE2HUE4AGGQKVQ' AS userId,
                            1200                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AE6QM6PCKQ7OUBJYI3674UIRVHAWVKOJ32KGU4AVIVJ7NK3Q6QWNLOY7FVUP66BU374XXCD24RXD7BE5XIWXTTIJQ2GQM4ZKEPIXACGLRETDJH6S2QTAUUP3C6XDUYPVBNZHGTKF526CRX7HZRDHWLWRQ753VWCMBYDTH7DSCFS6EAL6TBYQ2Z3ZNGSRZUVUXQEPS3YKOZF33JI' AS userId,
                            400                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AE74FTZDFMZ2BYVVCNEYKWMTQ4ONMYNSDACSBTVTTQAZRX6PHCKGASTDO67QAQWPQ72KU6XRIOBR6GCHW2BU7Q33LWNAURQJ2A4XTTLVOMI3GSSYIYSO3POB7XQS3YJXE35M6FK66GDAFEGZMRMEFRKQQDUD5V6LZQ3CTOML6P24TNNIPXLCQLZ6J3AXPY6CZ3C2G7HTCNM4FOY' AS userId,
                            1100                                                                                                                                                                                                                                AS score,
                            '[16,112,137,195,384,27,140,165,313,327]'                                                                                                                                                                                           AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEA3JN2GCDXUHQEOOCVCVVWZCZBVOU3IHB5RTHUIQEIEKGSTJOGEY4F4LRX5JUSN57UCJ2XPFEF3XITIEJPKBP7ABNYGOY5BKYK7O2UR7BKTBVRH4Z6FHOXYMB3QWC5QYV3ORUL3THKF6PUDEZZM7AOCL6OXZE5YHFL6S3LXWGSV6JD5UBNRSWMGRENEEAZXUAM7BOSVXPH74PQ' AS userId,
                            825                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEAK3LFTSLADKKHTJBELNCYGY4LPQSXF26VDTXEY4MXTEY55FM2PQ537CABNO4RI7FARBBFFX76OCBKN2DGDMYMYDDKVSK2K3DSVLCENSEA56G4H4JW227QHSBSVVQIE7JW2YH4CKRWAUJVDAKQK2CZS3RZIC3NNLLO2PKTKOUM3SRTPXY7JPVHNZEE6PXS456IQF64QBCTVBXQ' AS userId,
                            750                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEAOEQSJ2WULVZFGNSRDZPNC6KX35JNG6NNHIZB73E3OULUPPA7AMS33NRHI36BN7HMBLIMULPCVLJDWNODUCRZWVMGWQVTAEYHFR3GVJRVLOWURAAHXJYB2ZHH4WKBNVMQQPLNYG3H6OU6YXBIH6J2C3NUPV6PLSBLXREEDIS4KFMUBGB4VIR3ZNHNGTSJMYRVBS6FAVVCL3YA' AS userId,
                            275                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEAQJBU4PK7JVPGMWWUOKJEEO7GZTKP4ISUPXLZMSVCN7PFDIIDXS7ASKRFOAD4TRIURX2PP5VQE3R5CVKY2K7TAVXEYS6FPMXKPZKDBS5YABQE6JLZ3KPYOCQUJBLEDTNHF2X7LW6RQAXZBIPNTA4ZXAGQM3Z2EVP4QYD5CMRACFP3LE45CCN6KKI4DUQ6PCIXEJBIUAH27XPI' AS userId,
                            450                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEBIMYTEYLYHQYA3XRU3QEQDM52GOWGUCY36AYOWQXQ33Q2EBOZKVWWJAEHXTLV6VYMJHN4QUMNTHHMI5IULVAHLCD3ATQQU4N5FSWSRCSH5CMJFRYIERDSG4YV32FQOX3PUM4PSRQKG6JEJCAEA52KPMYHOBFZAN7LT57LCENG3BKJ5EOEUIFNRJZWTG5IKPTSV3UUDJQZPSBY' AS userId,
                            1575                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AECASPFN5HJ5MEVWEU35IBUQ3CKDGDBBNNTEXN63HIVWGWZZMVAHBZXC55VEW6PPSXF6F7DAZASXVETTLN4N2XZ5NGJKY3V6TWWKTFHJKCJF35RGEEM3KXYW463NR7JNCXH4M5PAOBHZYLROHSHCMKHIH3BTB2YVNKAPDZBYFHDABT3ZH5X5OH222WQAS7JEJXKCM6CFCJIWFMA' AS userId,
                            675                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AED5ZRO3LW5CXYAABC67VWMQIYQBBBVSVDLVWSNY6YY7BUQ52P6SYHN6NA3KPBTDWHHDDWFTQ2DHC6SLSC34H77V6JTDUKKPH7KBKT7ID62JWNPY77MJ2ISDTWJLFIFMTZW3OD4SS473WLCOKA3DVADR7IJZJ2575QDQTNUWGPM6L67PWQZ7TYRQA2K6UVX62NRYWWLKNLYHEOY' AS userId,
                            550                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEDUYR73X72D6B6RXHZW3ZWZOQX6ODBPDFMXOIQX7CCHJDCYNVRZB6CDWSVQ7AQNDL4LIRGKSM54BYAX3HFC5A3LY4EEA5ZSDGWB3YB56FPGAQRPVGAX4IIONWUEDCOZ2KGY6WC3YOAQMUTKGTA4USFWBAYDL3Z34DADMBU6OCXXPQJPCGZADXSICGHK6AH2RWVK7WWCQ6A3Y6A' AS userId,
                            850                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEEPTKWVUYH2BTHPWD64VETMG3XVOBSCHP757RVWTQS3U5M3IS5NEAEAGRJMNQB2E7LOBBQOB72YRR4IRQ2KN547KSH2X7HDCVEJO4S7DEV32AYGEE2ELXQWHNFBCQFYISOKTOFSCYKWHPVMSKLQPDTZN4E5FZHFFMOQPNB36TOX32Z7ZFROWZPGSIAZEAFKXQFTOSYZD7ZLF4I' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEFA2QBB2BKBDJ65CCVEQNWIMWY4LQ4P5IPAMT3NVOCVHRZYNEDYL4MY6CTTPS6DNXKIHZ7CVKAAYBEQCVM5HY3N2W3XAYTCXR6WZIEPCCJYM7CUZLVVDNIAERAQ2L5JRZ6GX6PTISUUZ3HPUDDZL4AWFB6YHVD7ITS2F4GLQGCR6EYWGWDFQSN6LM76MMLS7GH2RD7BRIQE5KI' AS userId,
                            575                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEFDRIO3N7LE5AE4K67BD2UXK6CC2WQ64XVYVGTVNUFEEJGFLFKFOQ7M6EMHCHCIGUHQ35XK4XP7QNC4PRJVBHSS4XLHUT43HYPE2AMIL7DXMZ5YGH3OWPBGMF6W4GPXQ5GPRZIBGBICNIWFNGMZYHDYLIQHIILTFWXMPU2LUO4TIAWIRZ2S5NLRYYI347LQZH64MZIWDB6C26A' AS userId,
                            800                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEFLUANU6UUEXDFTHAJQSBD5EZ7AYM3XO2VAAPG6IUYTQIGDWDEUDUOATISNBXRNNITPGNHZT7HWYMHI6DSREYGXI2R2DUTAA4IOOBVGCHSQLZH4QIYEUHM4F33ZG557LSHZMRZQNOBOXRKVA7WBDLC3W5FCTRBIIZ45TDI7KHKI4AL4YXFIOHELFM3VGZ3OIC5PDL2AYJK65AQ' AS userId,
                            500                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEFTUHMEEEKSMMSFGIXBFWTBKFJ7NXANHW3UVD27RCWNT5OJ3MEDWEVIUFGBMFL3B2JLFO7ONAOIF4GS5BBK45TXGOJXUV5EIPOKOU62Q7GPXPPBAHRAXHWMTCXDSUUZ5RD67CZO56RX75PO46GJR4PT4L7NDDRK2S4QRYOEJQQAVLJMFKFJCJDUINKGVFGL2ZE34LATGEULB4Q' AS userId,
                            3400                                                                                                                                                                                                                                AS score,
                            '[25,93,137,258,360,18,113,176,286,349,20,110,166,296,341,61,78,174,299,396,22,162,169,269,327]'                                                                                                                                    AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEFVDQJ2PSYOGP3LOGLNLFMSYZY5PVDL7JYDHMX23X4N2EXOYCQOHMFB42MG2N5RAFYRTCCGM7QW6SG3NLFVBZ3QO2CKF4XTLK7S657WPD3H4MQFU4XPCQHTNNK5SA5D7VNF5I3G62QW2XRM4IV253NDTXD2FTUK4ULIXHWZCGNCIDCF7OYFQE6OI2IYYQKQSU4DRSDSQ3JXPTI' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEGTATJTYSK4SNHRYVCU37UNKACYIEMMNLLTPYTIJLLKVMPACC3IAMTZCGYCPBZFEJPVXHRRPQTJGFT5IJNMAUYHHKNY77F6L7QIWQJGGJ56ZSWT7MDBLWEWDU2AQSENUMOCQYXR7TCIOIO3D3XYMGFEFQMEZEU7P7NMVHER2C63ZESAIRC5ALFIR2QIKPM4ZCY7I5WUP6RBVBI' AS userId,
                            3150                                                                                                                                                                                                                                AS score,
                            '[32,79,140,255,398]'                                                                                                                                                                                                               AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEGVWHLJ6BWQQDTL37HVEGHY5YK75DI42MDNXT4SESULYDTEUB5GO4NMC6VFFEJ37RIXPHQJ5RX6H6QON5AYCERDC4FM7TKFR4PFCX362NOFSBUQTBU7INJHG3EUHTLQZUGRVEEZZIQHJBAXI6XKERMNM2CQL46RX4YF7V75OTBGBJDEA7C7VL3X7PZSSXFOK6MF6RMPURSBGPQ' AS userId,
                            450                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEH6J2Q4FAMBLHD2OMKXBSEG5DVGG74BHOTNL4WMW5TBJF7AEVOOOCVLZRKUPJPGJUIFJTULHEMFEP5DICMV6HERNYXQCBLM4PWVNZOZMIZW6CGUG2USFGZGZXVJS6UIKPRRKRELDZSKVJRXAXYOVUZKKKU7LVJ6DGXTYM6OERVPOQGXLKX4YQSUBGAI7MQMENMULJ53P2GHOSA' AS userId,
                            225                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEHBQEZI4B63GREZRYDPXDMPD27UOHRQ5JHBC4UZGQE2DIK7RVJRSCB4KFKDDU2NDZV3QTYAVNPTKO3HC4F4JZIITMW6GCLLWPUTYTPUJZMACEIF7N2IBDWIBV7EO2M7WDUTELTMMVMQG3X5QNLTOOZ7H52KX2UA5DC4ZES7LXEO6NVRGNA7GP6WHUMBAUC4AP7RT2QFIS6BDSI' AS userId,
                            1350                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEHYGRWTHLRRDYPLM3ZNJ72BUWXDOMAEC6O7YSP5IVMNED2VSSP3PONGFHDUYETPLZEW3QVKVFIA4GKBHAGZOHU4IN4MYR2ZXM52U3XFHL3E4UGJ5YMCEBW624AX7VNPG6ULA636CL5ZPKCQD4T2VUXEFP56SDKYIXNEFRJHS2PNSFM6HI2B6EO7LLMK5Y4QM74OPOP7IVP263Y' AS userId,
                            650                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEIAVKWFU6HTUJDQZMQDJZPXVT56GOXBBKAPUOT4VWKBFLGMR2HOXLU4NW252R7RSLCGV2Z263BMBILBGHFYUU76PSFHZDQOKGPH4K5X7DUHRJMAL3MTDKX66PTJZHB56LICI4OWHHUJJ4DSQQFSP4SGU3E7YJUKF6RO6YMA2KHASE4H5NJYJOESPYFGLISVNSLJTEFA5TXCDHQ' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEIKNZZJAXRF22N2SRVO6SWYNIHM422KZKCGG5MC4YNT65H3L2XALGH2YP2KTE4C7CKUT2BAZB4AUNQQBBHZQAKIMGEALGNA6WN5T7GJ7XKRV3LGCSAXIUAYWOIJ4NHGTE3NAMEYCU3P24CVXWCAR3RMJ2INDJFMWLOGRG7LICYLMUSONEFVBRIT26J4LMZ3WIHHDDH7PCLSXXI' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEJNV5TXTM34DC3OFQFGWQMH2VF6S7YJSGVMWLG2X4TPNFM2YVJQGOZP64XZR7UTKYVBFSODHGGTAUMCOJHUQTSYUS7BRXHKQRG3OBK4UQD36QQ4SDUULH6Y7WPV5ST2HEF3V5IO6R5JSTKM2RJT544RCEZKWOFLKTEM4ZNVGVYPWRPVZMVAIXTNFZDGL2B4K62JDWYQRIJVFJA' AS userId,
                            350                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEK2UQIRW6DMGBHQQNMBSCXQTN7K5PWKRBQGDFKEGQ7WRL6SNTOW7F2HSMVZYHSJMLPALH4IMUKOOGRPS6MTVYGKADPZLVH4DHIJ2IKOACIATAC4O3E5TFSFZKEB42IEUNCOUAGBS7Y7TGBKEEK6N6LKIQ2TUI5EY2QPWZOBMWCZW3RHIDFSXEY6F7Q7NW6NNWW52MRPZUMYJJA' AS userId,
                            125                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEKNVSD4KS2C3ZBI5I43P26GTKE2M2FIC6HZB44JQ6GD2UWNNU3R7AB7SGXVG67DUA2RZOHMZL64KJPZTHJ5GPGPECR3URKTYOP2SC2JCTLLBDJAMZHI2L533VLBO47XQ6VQTYVM77J2U2Z5CJC272GBQFY54L6TVM6BF672XJEQCGMFFWA62B6BM4LCIYACBW24F3NXDDPROWQ' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AELLIURQXBOVHG4EX3PBXWWJF3CID7OIMJXTOMOZEUG7LMYPOIOHCBE5LPNMVVNZ3KQ7QIPNFON5GY3THFDASKCOML7KGENIJTRQAJBSEDKDW6VOXVRCFVFU7UNOCGJJBLDURVBSRUW3E6IX47OFFNMJVGSFJU3SBOTMQ425GZ5AEQXZAC4Y4EFBMTYBJPDRFKZSGARS7HBVOOI' AS userId,
                            1650                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AELSXWET5PQX2E2YRQVYXDL5TMK2YOIH4BO4MGLCF2JQ55UQNRCILHAWHGQSYUS2MYFB3GV3NEMCFT4SV2R7QU43XTLC4XBO4PNKN2LNXJOKU5I6AKGCDUUNIHBUQ3GQEJKIOBUJH53X47X4IJFSAB6JCGREIK6YPQDSJ3D6VSF5RJZQ5FD42BUXW5SXB3G45N4EWORHPCJ4UEI' AS userId,
                            1050                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEMEGEVSQREI6GMOB4WWCENTSQM5XEKJ6LXZSPXZTJWD7QM6HFTVGUNU5T2HUPRYMKT2IZJOEJYPHG5VVQL6YIHTTXEBGV7DQXWOPO7XUKVZYJYH2WQEWV4C33Q2AS6XUUANIVSNSNGO7Y4PHSY6VXP2M4BYNHVM2XNS2NILQXZVJ2QEIDFOQCYJKHXEFCXZGN3BPEIR65PTXNY' AS userId,
                            450                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEMNDTPJ6MP4QJU4MJ6LVQ2DXKKW35CXGBOCQFCYFCXXJV5RCO2U24JV45UBMGX3NDNCJ7XBBU6W4NFE4GUP7BSXES2LPT7SA52GE2G7FBWTOOHY4TVJ5DQZ4Y6T2FLJPBMWGE4P3K723PGPYEXV4AQCGIVYLPATM6ESFQ5B7DM3DMKREWQSBL7SD3USY7FQALTYLFZPVYEQ6PI' AS userId,
                            950                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEMRVOR2R2LQH3O6ZPNBXWM4MA6AFUWLY4SBNHTEHXWRSNCBVG4NKK22YHRVJ6KXTJU2E7T7QXPGE6L25BDBDZC5BN6QIAFSIKQ3Z44ATLTQKQA6SPLJYQFKWL7JI63LOCYUHMFA2A52E447EXNZWFE7JCYKAOFMJ5XWALKNB2KI2WCYYOG5GHC44OOYCTEI2GMABNCEHDUPGAQ' AS userId,
                            725                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEMYVNBCPPXGA6XIB2OZG34NWIWAQAPSHPCG2RDH4BSDBQINA5PWKJH6CQBOA3SUGD37YI2EATFQVQKVYQDXRLMGIDRD3K4OO5FRVRFVHKBEKM5SXVKJ3AWXXCUGYVC35ELW6QQRLCMUJI3LH7TGA2V5ZRGY6B7TGJZQFEI6TZONSNNG73F4MG5744ZUIWM7WCXHGGWG3RFKC4Q' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEOXRPHOWHYVMUL6YWQJR4EFUAYKL4KSHSFTNWC2FBFW5J7DE4W7O5KTXMGFZXUZSCRBEWQL5XUSH34MQDP5K76VOO2Y32FIKWHPUD2CKNOB4K7PTQIA3TQPK5UVLTNFJKW6VGLL3RSZSE2S4WQND3JE2R5KYQYYPHIYEZ5QZ27B2OHH4NPJJ6CIPWKVUR6C5447WME5B5II4CY' AS userId,
                            50                                                                                                                                                                                                                                  AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEPQMJSYHBII62LR54CJJKTWO7QDNRBGDQO5O2KCWJHM5XYU3X5GHQW3VQEOOBGCBVT3JRLIS2PHJQNYYXKBH2XQBG7RMWNIS2K2THA4VNJG7ERV63RWXWYSEMRABNAEF3B5B4QF4FEQIXUFTI77PANM2JJIHNAR7LX3Y26OVUEQJBQJGDZYJT2R6H2DFFZYA4ZH33TMDI67LPI' AS userId,
                            225                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEPY6PC4R44AME3KA2ZSQLDETSNGG5WA4JC5IUG7M7HNUUKOCCZIHOFNOEL6AZ6U2OEGQ6EABPVSJQKWZ62VJBE7KWKQWUYDVU7GECU4PPQ74SQFBWVFT4GCWY5UXCBWOSN6GIWVBPEAEFH7ITRNDWFDJLUTPTMKJOHNVK7HQWM2XPL4GVCKVMLWIRFDBOBBGP7B7J3SLJZ35KY' AS userId,
                            425                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEQRW3AAV45A3BVUE2REQTF4WBIWRDSF6YEDY3IIENV7UBDSW3G3X5HAJ4AQAAVOKGXHLZRSS4DO7ULTKJLKC7BMXRHI7B6CQKVZKWM7RFZEDVGT6EEBFX4YSANFRJ5SPXJHUPGI2NXFU44PW6EUDTNHFDWI53OPUT7NKMDQM3NGU4N5C3GSH6EMFD6ORR2WTWN4D75ZG2MTREQ' AS userId,
                            400                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEQZSEDEDDDSI45TFNZJSSMF6D7ED6JZ5SVNUBQJQUE7J2F245RKDDIGRZDQ4N73PNDM5CXRBM5TUVFF27UMLW7PH2WKRHGVUNDCK535QNFYGBUGYL5AUXHJWLZTMANNYZSVNWCRSOA75ELR254KXIKSFL53PVGLM27WAAYSZ5ELC4ZDR3ZLAN2TFYZDJCTSD6S5VPKFYTOS7UI' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AERCPI2GYMJITBDIB7HUPRZ3CCPQNE2DTNZKJRPPJGQ3LBNFHUV4VQ5DVCEN4UER4RMUWR2XEFUWOBYFSWXUNHPSQIRC6DOGDONDWC4OPFQSZX4OIALDIEGF4VBIRNQSTLNMXNI2GTFKFAUWFR6R7PQ37TZVQ53A7TWMPB473QTZVQIUDY7XBJEVNUCWGV4PPNEQW4776WQE3OY' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AES2HGURSDZ4J2LYFW6DPO2D2YQYZCA7IVE2R64BICJQ6YMC23HQ6TUKER6MCYIODTL5XGMPKLROL2ESIJY34NYQKXIJCVQPCLA552Y5MCQECIVA7O4BHPMLNBWP5QIIXJFLCLMX2476GOPEXZI2SK72ILFGDDMNV5AWHNFFC4DZYZTH57U7DZ3ECYBV23N7WBG2Y6ODH56WH6Q' AS userId,
                            175                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AESAKKGNDINL2U365NOSYAJDLBCHV3DY2CWKZ4VGLFZMLBQL5VMSVDQJ7DWROWCSDQ7HE6S42MMNSN5ROXUSGWQ2JIXKL3KPCXAGLRGKUAQNH27SSDSPVO262YCD5U3OIFNVQ7MQSSWQJ5ARTPFKG7SODPDZI7JJ5FMF67J6YA6BDBOJ3LMCWEUNKRDCNOPDQS3BVKOSRYK6KLY' AS userId,
                            1625                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AESD3NDZSVDCL56ZRCNJPFJQ5INXNFWEJ3IRFZF3UBTRUZOAEYTP53O5GYV3ZH3MJ6ST2KAIXVRWH5AGHPZGJBOMLDWDLNXYFE55VYSZYYAL3IMSCPVA52P6AP5V4XYTEUW3OZEUG4MPDZGBYCJ4SZK75HKW4HLJ35WB5BM4PYWMDTR7JUWF5BW6E2MIDUH4PLE5NFVC6EB7NSI' AS userId,
                            7600                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AESNX7OWOZ3OMYPDOFTDXLDOOPNJZN3QPVR2WB2Z5WUQTTMFCXPVGSJGEO5BH7T7SLDSOG6SBFR2QQNEMURZNJ7D5N4QJHGHFWKY5LNQWQHIR2XF5H6U7IIN75M7AJAOT5I2JGZNRVITPAIDTBVQKLXZVKJ7XAET6JP4DW4OEL3DBVRWLMDDHRU2O3WDOZCZFKKFXGWV2MUGSMY' AS userId,
                            850                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AESSUTB7A7CNHIBYZYYS7ZVXIQ4XO3CGL3UJK2ZG2YTN6KFRXIVYV6XUAT24UCPIXHRSOF3N4KTGVRQC4GLPSZFEFVFRRYJRJ24YOYJFBPCCAYGFDGASS7SUG4K7UCEI3MJQHARTIRHQP4YPQXJHGZT25PFZ6IB3YNHQHUMGEPZLYHRKPLVNZDJPIIMWETPSYK7QNNO6LTWDXRY' AS userId,
                            275                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AET5BFVPDO74OSA4MRZEDYWGDSO6JVRLRQH74ZLBBP3WAJCOU7RZORTUIMDPFHI63E6EHLDFNUIHNYTMZT3F5MN6G45GLFTUHH65EMTQ5OSNE7ZOPSL7AQRAKCM66VHEEG2JYRCDIEH7ZQHQFB63QNRRZMEBKW5NG7HHSR7N5VIYLYXKE6Q2W5ND6KX4BMSPRU67J65OPAICEOY' AS userId,
                            300                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AETLTYKODC4LDIVCKTHJHMNT4I4BFT4XRYBT26H7GTMQRJ2MBKHO2G4HL2X56BVMNXWZEIU5IPCOZ3GOOQ3TDVAW63OKHJ5JB5WPCONWG4MXRK7QZUIQOV5TPRAZCVCHVCYRXXOQI6P4TJ2XMRZSOITDXP25LVDMICYXOJI6TS3XCMV2VT2V5X536N3HCE4BAAAKVJGFZOSAZBQ' AS userId,
                            100                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEVDN7OH6OVEZXMRUTSWYFKB3YEMU4V4JOSO7HNG5KZVC364ZOE6R6LBZBS5Q4RNZ3GQKZ225CIHASO6PV54KDCIM6F4FJCJBGO3XJJIF5OBR24LTNAGKPZBJ2OIKPZZCTIOPS5H3MUN7A2FT6GGXSQDCDHOULLX6LJUYBQHK5YAQ6ACMPLHHGFQQ7ZU2XCYRTHRJBGSM6TND2Y' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEWBXF7S6UE3R26HAXMTF3Q27NCJAS3FBIMAFQ4GUDJITPJHZUPEG27RYQY2Z4QXHEVT5KBUKSH3IMIVJM72OM6KKHAQ3FSELSDROHKI2KQBEJIS5THWSJUTLKV3HOGMDBY7KO5AFI77ER23MLAQUXMWZILPBE4II55QGPRY7QETGLAQBRIAMQZKWSAQKU2F5XPF4PAEUAH6NWQ' AS userId,
                            250                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEXT5XVCGXKQR7EJQCJZK4JSNBXQFFBVQNVGGF22RKGUB2U2IJCAVG3NSOYV2FYMLH56H7PATTMRAYEYY2AYC73T4EUXOUXC6GB5JLQUR45KB3PXX2KPXDIUSRGSICQOODJWJKUBS6O3GTJEV7XONW3QKXNFSTYZWCEMCPNWAJS5DQYP2MHEITPAPNDCRTMU6FFZPIZ7EDCUC4Q' AS userId,
                            250                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEYQKYSEW54FFQWWSPC26JBEJ64LCJHKUCFUQ5T6DIS7SQWLBPUCW5L4QUI7EL6H7QI4ODYXKENMAOQ2AWUSSE46FES2KXIA7FDQGAMBZ34TB6SGUPDR6AEZGLMOH3FPWGIOOUALB6JZRAIZ3PVPTNBJ5OHZABWIAYNYBGHNEB6SHZ4WI6NMODTU56ORBBZJFJYJAFAHDP4YUOI' AS userId,
                            0                                                                                                                                                                                                                                   AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEZ7N7647CBQ66KS4GWJ4SBLEHAH2PLMJJQC5F2W5MFVVABXKLJ2Q4R34O6WOLLRFA3YQWNSPUEFKCHMFHKJPA2P6ESXH5SLAR7PMMVYYSGIZ3DTTQDWUHRK27A5KBMMYKKOGHGDWUE2XLKB65YOAYUNXQ6U4CXEHZUHEE4UBVFQQHTLB6UT3BYF4K2IKOZSD35RGP7RQV45G4I' AS userId,
                            1025                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEZK5DTNXBCFKSOCNTSCG2EMAZMGEFF64MYJ5IIG7SXFTFRPHFDP6C6CEBQMOS2VQA2TKGDGB2XLPLICQ7FGBAZJJ52XLBCPULJMFERD66DXYAWIYKFLDX5O4DTVD4PUTOEJOHGCAJQIXC6UP4XCZKOOYYKWUFSL3LWDWD6DJXSLA36I7CSHONUHWHNFEH6C3M4X3XOAZ2ZNSMI' AS userId,
                            300                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEZMV3BVW6DN2TNILDPHX5LLFDNJEQLE6IS74PBD4CN2TOVNTYCM2LTBFZZOCUHR4NE63A4C5WOIIKK5TTK6P6OCAMILZRWJUD2PPO6PZSFOEFGXNBRNR2E3M3FD54POGBE6KVT45VUZF5AEEXA2SZYYBTJ6ABHVQYHCD7JW532RV3IPRZWAZKFM5B23L5EG26LRZB2YLDA7WFI' AS userId,
                            0                                                                                                                                                                                                                                   AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AEZRC4JU25N3ZPLJV7FPZYLO45TI2DZ7UP7ECL2J5W2TSFLM7IYXSGDBCGZJOUZPPK554RAMJYWT6Q3WNZTN4LCFU6WRSH6PCZHFEW63HS6MZSZTSS6WEBG65B7RGBK6UT5NOJMKQGX42CCBNCGMTGYR4JOLY3SI7K5O37HOONUTVBLJKCIYOAXAWKN3AHRX4BYZNJS6O7ZKBHI' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AF2Y5IHFULWWWYPOKDFG6W3GNZXSSFTJXERPHVDY2VGW5QGXXTT5GTUJKACPRKMIENVEFOZJD6AWR2IH64I5FREJEO3RAQH52J4ISLRMNF22BI6UGZNW72K5LAJZHJXHW5ACEGLAKYLTMMOEJMSK5QQR2AZWKTZKH5JIBE47F6WFNYO3IP76XRCQO5WZWGL6KAOPO4KLPURZ4HA' AS userId,
                            525                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AF2Y5IHFULWWWYPOKDFG6W3GNZXYM3VRVR6T3GULO43A7RSWV6ULFHHYJZSGOAUNP4IU7YMP6IF2TPPCDUI4RKGROXCW3JTPVD3VLR2IVICOLJHUSNBM6CJPSOBPAYUJZCYBT4UIZEB6HTQVCPY6MHQH3YO6C4N2F4ADG3GK4PC4UUVWLSNAXO7K5NNTBQMGNQJD2DQK45Y57JQ' AS userId,
                            475                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AF36UFD77CY6SL2YOHSRBXXKPAPSTSQHELLKTFK6G6MMMQANUTJEVHHBJSKMEQAHB5I36HNEXB2335PX2V3LRLPYBHJ6M23G46W2UD4KH2BRGWX7XKVKPV34GRTFSF4YGKE35QEM2BUOKKYOSBREBNXFML73KEVJ2AS2PC7IRCQ6T45TOOB3IOQLTMIES5XM53M6IOJ5VRUMZOA' AS userId,
                            1275                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AF3LCLKNGVOQENVXA6NETVM2KXMKE2GJ6RGBVKPPRANAUBELETO52Y5SKFH6RWEOYMSS6OITK3MDKGHPKURC5UL7VMLWVML6FG4G72KQQONWMPOF6IEZCEDTT72VD6XCA32N64O52MBAJUG4TBHMCIKFWCYPI34LZW22MOPZUOBUGOPQ2JJ5K5Y46WAQDMFYAA4JC3AVVRFEN4Q' AS userId,
                            750                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AF5KNJFDENTBCMBYJEJUKQGLPZ2H5IXW6UTPRALJYBZLEX3IVTHHZKVGXZ4JAPUKH4MHTYSW76TONNENIYE6OKAJCYIJXSSAWDBZKNIHF26BN5BDJRI7GSETP7CH4RTOVJR7D5JPF64MBCMJIZI2WFEIMLR3LTVDD4ARWLCKXJMMNH4DACILAJKRLJMCT5TRM24V4CRM7MPSQLI' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AF763DX45ABUAAZFOHQ3TI745B5O2N34YOZPCJ7ITU4WAAXBJMOU5NTE27D3C3Y3YT67TP4LVOCSNKFCF24YP35HERH32NN4NV3WNFWCWSMBJC4FSORJACUUVCJTDPSGG3X7UPWJGRDNLHNWVZJ4EL7HT2DQ6TQCF7HXRAPHE32HUIHE4KHT5YYXJZEKWYAPRPOL5KWW22E3SIY' AS userId,
                            1175                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AF7EOVTZ2BYOGTQD7ARDCZVQP5A2MLVTTCSCNXORIGNWFM6XEWODA6MVA2OS62VQIBB7NUYY5G7JHDKHW2SD5UQSA2IKBXWHCRPMG3L6FOXF2HZOJFU3I6LONOMLIYGYZWQ5POLS3RIETYF2DRA5XK7MZENHHXHXV6PMXQKJEE7L52DWMGKGLFZ5J27T5MJFBCQXE5WHMAHC5JY' AS userId,
                            700                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AF7EOVTZ2BYOGTQD7ARDCZVQP5A2QVNLY23TRBVEBHQ5ZX7XADW4YKGGYCGSAKPHXQW5SDCR7B5YVYHK76Z6VBYPIQXDS2VMDWCTRKCTHVEL27GVKBDY3TKSZE7M6IKL35SZMTCZQ3ETLMXCWPMXCZPKOJMENZXHG4BRFOBXGD5HV2FF6OHROZSZOXJYMFM4DYCAXH2LHFXZ56A' AS userId,
                            225                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFB7CKJBY32POQHPMJUGO6GGMHLD7A4KHKCG25DOD64YNMUXJYLAPEOREPGNDADZOFYQTCQLIF7PP252AQDALJZASIPK7WTVU5FTJ3R4G2EQJB6MBDP4MCNHOJMU6U2QGSBERHJBKL6C5G76VAQCRPYPZR5HKAPNZFBUAHRQJ6OEFKOHM3PWLASUAGIB5GY5A4HRQKE3TZGYODI' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFBTMXZFHOIH7KW7QXCWWCN5Y5QCR3EQS336ESQUXQ7YJ2UVNWDYEEXOYB5F7XVZ2CJBL4UCCA632TIPQ3SLVWWHQKCEFEG6XPCDMBKZIY6E45S4LQ536BUIYFI7RKPI5FSE5QQ5RTBBL4FIFP5UG5FHMBWY6OHIK47DPJ2E2JFYNH4HY6I3DZFNGNEFDS5AXFLC66N6L7ELMRI' AS userId,
                            525                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFC4R6BVUNFEOW27FPC7W543NF337UCBEXQ3ALI4KWAMDG6EMGE4U7HEFYIQWYNUEAJXOI76PM3WTWHFOUS7APF2U5OLCVLBI55T2TDDBUFAUFPASWCBL43CS2JBTGB27NBVSHSGSHUC4QS7ILJVNMI3HKOFGBFPIFKOPEZK5E5PV7WTRGMCTXY75V6I3MLAYN5A3CLWTXUYCAI' AS userId,
                            225                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFC4R6BVUNFEOW27FPC7W543NF3ZLT5A6NRV4Y6SQEP7RQBBGM62YZLCTDWGVV4L63JF2RWJKLJOZS33F3I5G77XK67OPYPVA42MYQESDNJCST2JMM44ZBJZKWZJHORLNLPQFUP7WSLZJEHRV42UD6DKJU5GTEVDFZBM7GIFCCP4MV33MONA3QDCXLSCPMC2TCKMS73YSBPUW7Y' AS userId,
                            425                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFCMHOFBRZ2KTWFVE2YWQ4ZTQOQNNYRX7XJILMQCSOLV7S2P2KQBALZJ24C6T5PIONWWJUGULMTH7EQP52TUADIO5KQT3SXQTWUTHWBZSTLKLX3AOCSIDWSMAIAIN3U7CU546SXC7RYQAR4VMGWS2W42OMRB6M3W2JDNWBRFDMN3S4RLBZDERHQAMTQMMSDJPFGO6LOYP2ODIIA' AS userId,
                            650                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFCQLPMEDHXQPVPLKWX3CWKDWQHZMEUYDTOJCLJDQ7J3UQV3ETA244SJIMOD2CSRAYXVGCRS2R4SZ3WZRNF6RCHM5M4LLKY5B6RHAFMZKSWX35PHH7B67MRYSLDFGVQNCGAXVNDM5SBG5BTRF3SUUN2TZ5FE5RSHSYDFQHBFC7VS36G35FFJ5BYBKXFYAHUX3SZPISIEAUHTQPI' AS userId,
                            175                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFDAKWGPCFLI6FUPNYUQET5TMXLGO6I5KNC6IR5IRV6MJXZGO4VXFSR3NXTFTAZMKMMNQNGK72HCDOCW7GOLDUJ3YDNLVL4VVWGA736K7ICGZKJ3CATLZ6S2NJ7L4SDXN7BJIP3ZT4JUG4RXCHX23RPM3R4I7XUBOL7WB6HHETFDUPJFRQHOLDTY7PB7M4CYPUUBHHZCQJHWVFQ' AS userId,
                            225                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFDF4PIY6X545QONOM7Z6LG6JCXQPGUTGTAT775B4NMG6EGK4I23MQLMI6K37AMXIGJXQKFTGWB4GA2PKUIPQ3CAC2UCJYN7A525BWPD62B74U7IUMYP6KIJBUURQXGWILHBUPMG2RQKJH7NF2GOVAPNG3HQKRUHSWM7LOUFIIQLUXHXH7VRWEWIGGHJZ7BGAF6SCZR5KYL7API' AS userId,
                            300                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFDU3LKWTOZY5EGFYFMBPDA5YIPX2FTMK4DTFKH2FYCVC3QGJOKIQEUEYRW7VPF7NVZ3S5VQCZLR5PR3Q4Q23HJO5TORQXJGWIFC63J4YRU4OPTAUS5YKG5J2ZR5MEUGSL4BDHDGRIKNTGRBXU2PSA3AEQ3FTX46IFUB5ZRXPMEADOEQX5X7FDS3O3K7GGFZCIABZQEZRT7VY7Q' AS userId,
                            225                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFGBCG4F4M3T6PQQFBBHT54R7K7PSAOUCUCIGR7FN2FYZSJQVSOKNX6JSOY623IUZSSP7S4OMVE2H566WB2RY4Y64GDHZFX572X3VTYDOSQU4ETRW4FCH4MXPURFY7QKSAVYWYHET3WNG3MYRMH45WK6KPATZXO5JO4WZV7VU5FACPZGHH44DDV4JLSLKYCR27BCCHUD7K5FD4Y' AS userId,
                            450                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFGC27DWUCEP7VTBF5NQPGVNGEG7X5OFAPZRMXDTIKWA3ODMLMR54LMQQI62SPBRLYVDLJWORK7S7MWV6VLRJHZ66WK2NPDWYPZYXAHICZIZSLPCJ7BYENXG7NXFJJRAWR6JUBOR7VY75S7QSYEIQBXY5N6MJCK4IMA7VRKI52TT4YRGSNO46HZOAQIXB3BMLS4ZDTJADUP3H3Y' AS userId,
                            300                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFICUKOZE62LVNKYSAID56WNMUDVIQCXTCP54ONT7XQUYVBKVWTHUTHXC64E5OMRHTBEN7OT7ICA6A5J6LPYCDYRKOLQS6LPYKPC4X24TGERUBCJ3U6JIUTX5H3NHSWRY7IZMLDSYZDGKVTHLU33PGD34QGAWPCMXHHWBPDGLPEPU2UIVT2KO5EBKLSYYX7MF6N4D7TNVUD7PMI' AS userId,
                            2450                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFKKX24KY3Q7F4PMNET6KBCP4HFLF46W4KXY23XD4R3M7ZAVPOFVIJ3YGFM2AIGSGV55VFMBJY5M7KBSVCL7O3KHVVX2U2YRRYOLVSQ5OV2P2BR7FLDJO56KUWUF3SHEUPZJF2ESWSYIIWNDQNBY4AOB5DYSEFUBL45UY57JCOURRVB2AGXVEXGYXRXGJKWGONPB2OATEUZWN2A' AS userId,
                            175                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFKVTP4HUO6VXD2E7GLX2QNSFTW5BLBKGBAJWLKPKH7SFC24QKHDOR5BKO3LPPHRXLT326V2OJ364DDZNBBUA5QZWLPPYQCZJC5YKQGL3MDX56JPY3AAY52GJMANCD7NGGDBG2O636EWMEZAI7Z27ALOF5Y4EO6JUHONXQYUAIIWCM2M366LWKSEBNVISG4DP7KNEWMSCXMDIBI' AS userId,
                            900                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFMJDRKLNHF53HWHOG26HRVDNLMTKNBCWQ6APOSV7QOCN76XHI2QUSGBYW2OOZZKFET3GRI4DR6XSPWJNSZMWLUCCCR47H2PVVTDTMUACVH5ZRYBP4YLFEGMHQ3AOUVHAN3MJUS37CGXXQD274ZJHZDVYSQ5NTTXLOXJRYETBLN6PCQUF4HXVVDQWYD5KKRLKMWFAFWASO7HNJQ' AS userId,
                            225                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFOJCIVFHD7OLB7E6KBJE6GCTVKUHDQMAUBRVWC5ZKXNOYYXABDXR3BVEBLU4THYQKMQTGW4HJIEJZJOSYS6T7ACEZRIMLFYXGZS5YO2BVQQNMQS5THWDDWAMX5S3I2HLMSNYUHH2JS66NFTUPV3PVTFT5RG4DBUMXKIKMNDGJGV6YHPLSB5BTXCKJT54SLVQ5XNWWLMNTFI4JI' AS userId,
                            1025                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFQPA5VMBRPD2WGXR67DWSFYU4AJ3VJZDICMGSDO4LZAQOGWTC6JKDMRAIK7NS3LMRF5YOO5YZQ6W2KBPOLVJUC2W5XYGKPMQLKXI5XU3AG5FV2PWRLKPNBQZEAI42742LKHS5U66WHFMSPIXENIE5QUUTLC6A3GWCX7CSKBNWTO4CIJDCRIPRZGTV23KWMCDYC2USD5NZT6HFY' AS userId,
                            1150                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFQUPTWWJBO2S3FP5JPFFCTO2AD23PIDE4HTLUYK57ZV735DWAM2KXGP6PNUF4A7DSIHYP4VZ572HSNQHUHKACCFBHVGDYE7RMFBOVHT3FJ2GGIIXI6ND5ZUQWZLKIMSOXUWOVGZGPGOALQMVJUXPA7NIZGWLLNGVTSTUWX6NMGJVN3JUYLP34AG7PLXGTTAAZNPNSLV3ZYITFA' AS userId,
                            1500                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFRBWER3EYIEKY23HIKVCIQ62T4DCO4ZL3M2CDALNZWVH2GCSFX7EBOR3KSABBEDZS56F5XURP5SJ4FF23WHRN33J7VFJBIHU2R6NKKPAIYUM6WPUUHJKRH5QWXNPMKV4CLKK4YRRWRIHODUW37R2XMNM3ND5IEK75V7UVFPAIZ3BXSI75LUZOBBGQF3GPMKAHVJGCVQNLLYH2A' AS userId,
                            975                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFS6BXG6NVFKUUH36MQRAZCJQJH4SI6DJHAKVKM6EEAZ6AL3GPQE7ZQIRCLYKMYGHEGWTKWGJ4G4ARIETCZYKPR6HDY6GI72YQBD47ODXGXONWPX3EZCOB7Q6GSFI2CYJG23S3BDT5IJXXUPRGZUSBY5DDVXHEI4U2ZMQCNECX3LPCDRKWIBGENJA6V6NXCGF3CLTF2GXIAHV5Q' AS userId,
                            375                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFSCJPEHB64W77VZF3NTKGCD74X5WMT3JL5LV23AH2HDAWZVDS5JAFHKOOOP5VTPRVHDZ5YOIFN2VEQSAL6XW2NL5YFXXY7UV3HJ2UOR3LD7MCFL43KENFTHCWDWWSZLJL5XQFAFXBGW4KBAQMZQPMG7YNRJ7VBJ52ISXYZN3K2M7DGOKFDZ4S7PGQAJX37NO7ABGC5J6YVC43Y' AS userId,
                            2100                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFSKMHQXMOZXJKVSMDGIDRNYSGJ65O3356XBZZ4TSK6NFELAGYY226EKQB3YI67AUCWTMJWU6OORSZL5RM2OHNVNJUPDP7GYGNJGZZMARWUINLRS7AANZHEFVZWWGYZWJYQZTMI3FHHJ6ICNISRIC33LWA67IBWMEYHLZXZ64WOJHQFHP3YOSW2GCGJIZHFRL27KQTB6HLOBJJI' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFSV42J2OQCTV26FAU4PZLF2DVVZCLZXASMRPKH5WA6MV5AHE5XJ2QZ6ZODRB4THJCTP3VNTY4FV5JTYHUBNOS5JRO6IBL2FYZ2JNMRDHQ4UA64FXB42F5WVKNUMZQ3YKN2QRIKOBJNH5EMHDGE4U2CILMEDDDQRQJXMXVNBRRKAYKAGZDVC5HL4DVEGLHCYUQ7HDUWSPETGESA' AS userId,
                            725                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFUJVMF3H5MRYRIDOCUUE5ITYOBP43WQ46C7HBJ3PGNPCLAKZGYZ2AEFP25XNX4ZKKRUFZE7EDF63OCG6ODYUAVQZ2VVYBKCMTZ4SOYOPIIFEKWVMNVQOXBKDCEORZQDLUTPMRI3T3HASPGOYVPDK4L23MFAIB4ZAIISW7MRUIUPJECBCCVFEP52X5H777RY55HYJ4TZWTJVYSA' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFURCLO3WRALG4DANBI2SIXD5GWWR4B2GTQCRANRVKXNUE27SLFCW5OLYW2JAH6ZDTP6YDM2QCN55SSH6KMM7CLRZYD7XX5MFJXR2T2X7Z6RLY67P54KL3VTDT4NNY2XFZZ7AK7HKFOUKFYFRGTINFJO2BCQ4TUK2BD2MS224VZWONXY7VB7XPW4QBXXARDSLREG2YAQLBFHBCA' AS userId,
                            175                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFYZRUKDI7LPF6JUWZ63FSL3NH724PXEFY7OAUTLM2UWANW5MIQ66LWTMVSAHDSJYFJKCAWKGUGEQPCA3QMQON5HSKD4JUALB4NRB65UBPYWNBEU3H73DCHATW3UX4OA7FSI76GNERGCUQ76PEW4NNDDQOPBHPPYKGSRDAXJAUDCX7NQIP64UZRHEYALRSTMVNIPOJCMJQQTG2A' AS userId,
                            600                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AFYZRUKDI7LPF6JUWZ63FSL3NH76AYOZOH6U22BTSA6FQU3XE44YSVZS34S2KL5SADVLHVQL3X2HEDDS6X3RVEPBCA65CGVRTHGBD2CRH6VQZ6MLP2YDA5KDCQIJTLIFDCJWYBBPLMSVBIEQOWJDBBB7LKTK4I73QHEQNCUQBQO6G2QPFVNYQXGISVEWJXJJAPY43JYEPQFTNOY' AS userId,
                            75                                                                                                                                                                                                                                  AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AG22EJF5PBBLUMC2WMVL7QVY5H7ZKPYELU524HYMSACRK3EX2IFXHQIFMWAKNEEAOROSQCWMWUP3MV6AOUHCWTTU22F43RNGHS36M7IEBDILDDSFQQAVDZEAVDCAEGRLOAYZNKH6NZBMG7OFKOHGRPWLPESY5X7KUYDTTTLFBJU72NZECWBGET727H6ZSLXMF56WLHIZDF7AGGY' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AG27AJXLGFUODPUS2ERXL6U4DAQ67U2BEBU6S6LR2PURJ5EAAETVRYWYLZGTVZQGOXSQIGXDJFSKKLEODHTYTYFE6GH5TG6IGAI7SQVLIJLUBUEQIKXI7IJEHU2HKB6VXEKRV64YD45XAG5J5M5RW2LXTP6INTJ4B7AT2WSFECXBOADPN2EDTJT5YG3UDUWOTENUZECDTH3WLCY' AS userId,
                            800                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AG2HYCEHZ5EEWRMAJQ3AXED5KVA3AQGZXCQOYSJIQVEY5GL7ZVKWGPNWYIV7LMT5MZVRJV6IFLQJRQLFS7GEGMTPP2WZDRKFIUYN4GPDJT4U7733MLKF2MMQFXPPVNMNZUS643CXIMN3SQRMUM6E5243MH2ANRZ4HTKBTC2HK25F5NYP6EQUL46GDEHTAGZMDRUJNGAHFAXYXPY' AS userId,
                            700                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AG2ZHMUUD3BRERZIHEG4O35SN6MEKKWSBW2KTF5VVPSXP5LBOSCLET2KHVRIJHDU46M35DHXM7P5YJMPWDMH5FOSSPYHJXV3MKT6PMKN3CYK5FDOMYOWFHRGOBQOUNX366BHNKSKHRDAVMT743QHFJ2ND33RYV3GMQMVIRQOW6JIZX7JAFWXECNBS2MHQRI6GWXJ2P244OAC2ZA' AS userId,
                            400                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AG4DK6WNUVIWNDAI7SHTZESUQ6KIH5WYQO3UGU7E37GYBVE7LLSZN7JGZ54HMQI5JA26B5K6UYT7YR7TAPQS4QJZNZHOC4SESVWHD53N4UVGQTFITAEQFIOMOKWO2JOK6KMH6EGS6O4GAARSV6GGYDRLOR6S2OC576R7WJEQTRCWI5IJTYS5N7RWZSR7EFVAXLXW3HEO2USSLXY' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AG4VRXZYX7UOJTKVXZRCQY7ZKSJ5K6SQTW6V4U5WWV7SBBJ5DG64EEH6SGM47WEEANQSO73ISDMXJJDSUQDYCIXBUFPBD5USQ5OF5AGKB3GDZB37HATZRK2WTNHWM2LJFUMGADMPLHQOZ4CKRTQF5HIMQKAU4KHS3K3VTESXU6AZRTIO2GBTC7QIYQQ2HHNYOG7D62SLJXUKFHQ' AS userId,
                            100                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AG5ZKBHS22XGOGUG2FMB6FT7GTJO22GQ4XNAPJM6QDYGACW2UYDRT56A3ZVTJW7I6MZRV3PYV5T2RY2OPRR7ER76ITTSRLW4JNPIFX56Z3T3XYZUTK3CBX5JN5F5XCZFAJH4DRSWOVKAF67ASWA4QIBFDRWKFXU5ASLT6YF7AFPFAZJM4MFINXC55RJXLDIVGF4VY3PS3UYSXCA' AS userId,
                            75                                                                                                                                                                                                                                  AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AG6BKD27P5YNEL6XGZ4HGPVPXUXRNBGZWXMSSLUKIAMDPVVUIGIZZO5GNH77VJ3ZOU3GZVTT3EAU3UEOD47ADLOYVSFMCV6Q73JGNHVMA6JPW7YLKY57R2K77GFPS56XZS7HM35HBGXN3HNCNYJMOGZASRRLKDXY6T46ZADH5ZY63353WVQY3CTJ66ZJYJ32NCSP6OOQNFL3C4Q' AS userId,
                            75                                                                                                                                                                                                                                  AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AG6VYY2EFU6IYE7MYSVQVBKWMLZS2ECSL5X5W5NACMXDKSAA3FJC6THD7K6GU5SY6GGRXLOAFJIIMHTW2IV4AVMKMDZ3CGAW6O6LBGIA5RSL6IIURN6RTECZSZE6MNAP73IMANWKQUCZA2LQTDMFRSIH3NHOC7X7LWK3L4I43GGP55YO3YXF6QQIA3I633RN4K6T2VPSF7I327I' AS userId,
                            700                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AG7M5C6JMD4ANGSQLJJR5LYNRANRDLV5SWOBKFTLH6LMBIVP33YVKKMFNLG6NT5FT6HJLDTEFLUSXTKKZRMFNWGA4X5B4BBQYHQ42DORCDKDYPWNHNQK5LGSBXD6ZAJBFJH2V3WIYOUYECHKWHJWVPAU3F4R44TMAUXG3CTVFOIZ2DX5QX42MOZL2XSRLS2LBLW7ZCNY6B7RQXA' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AG7SEFLAX2I6TSBV4XQX2XAMNTRZTQRNK5B7XYD62LGSYLPLFAWH5YQQGRTXAZ7GXML3LDGPL7OGJJI5S2QQ3EWB2PUS7CG7QOYK5XKR55SVIRSMOTBSJ75ZQYC2H6U7IJ2X35NHWHCPLX25BQLEXMYM5EFGIEVGODSHOOX4AKEDQN22RWT4PUDLBCBUSCMNHUOBOGUYMMBUVYI' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGAJPQLMQTMULXAO2RG75RLEZRBC2UG5BLFAVLPVRHS5M64RILN73B4F2OSMB43HX3FQI633ME3OAADOT24K7VN6QG4XLCMQWJXBALPMS4MT7LUF2ZQFPDBZ62WWQAQAGZ4DTNANECU77LM5NPM32CID2CAVGCIS5RXVXID77DUUTPNA47S2DRV5AULSDQ457PWLKBKKSCK7WEI' AS userId,
                            400                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGAMKZYSSLYFPOO3ET6X7SNNFIEOKS66YH4LIC2ZLKR26ZK246INHF44XWTJZATXVABAWYAF3OKBF7DPNK4XTEOCV5VDN7XLQ5TCLX4BV2PTHJGYYJ2SQMTZMJ75TLMXBZ2IDBCAZNXVVPXE53D3WV3RUXJIW553R7GREYGEVCLPNB3KA35QQHEDE3ZYABGKVQCNP7F6KGLDO5I' AS userId,
                            250                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGAV4YJKTK5IKUGD5HMQWUU3NB5HFWQK5IX35N6LNB7Q3OEJXCKAFYVVJ2SUH4VDIXCSRXBUBDPJRF4Q25KA5MRTWKHKYPZE67EHLWJQWMLN3FTEMCDDIA3AGZOCGIA7AB53FKIMTRI7D57PTORBZWQOKZKRG3GSNCSLV7DYOEI5CX4GGMNXXTRX3RFF3V5EJQD7UNCIVOA6PZA' AS userId,
                            850                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGBANVIIO7JA2PUMI7YV7QY3OROM2ES7H3BKYQCSA3CEJZNVBC74NL376YZDVFHHK2C24FDVID6FWJVZ22JPZEKSXOPPM5XT2RN25SVAO2QDLIPPWLIF2RQLZH3DQZK4TBXCAP3PJYK2BK6VAT4DXBR6KUQIOMS7KER4ZS7DMMTY6H5LOXA22RYMQVXX5P5HYW5BIVOZZYJT3EI' AS userId,
                            1500                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGBBKY6XMJO7BMWKD5X7QP3NG3RC7U3ODMJ6ZUGRGWZYJBYV2HB5SD5YJM3IMTS3F64AUM732PSXVFTKUO3BE36YRGVQJGLBFBVDAAJH3JPLIVPWTES5V5P6EUABJHQQDCIGUKCFNRCMME43J34W3OVYOVPI5MFVMJSQM754NZ4ZXTYAAWG6ZBGXRYJKA2TIYFNOCJJJAYDUPAI' AS userId,
                            1200                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGBNJBLAUJKECOR2B2XDMX2XAHVYRMWGNSYYAB7QNULCHAHWXYG5DO6MHHSFDQOX4QACQIVRKWRZUUMRI6MLNGAIJMQE4TVQGS4EKHWINXWVSAAUHZSZZDTSIX37MWPJK62QUDTOF27FOUXUHY5Z3C25DMO5EBQDU7TZFWDNVQ34PJJLMEMHNNDXATF6DXROU6LTYEYZEJKCPDI' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGD7FI3APM6VDUF7HVXPNKEOZKL3E6Y3EV2OEACX5HJVKD6SYI5ICLQLKTERJEYRRKRSDUPLFWCNKSJXK66OJZ3AOOXKXJVILIIAKKXH7PSQQCBL57AU3MZD4F3VI77NUP7YHNPWE2NP26BC4Q7ZYEKQQBAWMTG2CM7UHEET2NVF5NEQXF3LNR5L46QBRO3GZEQJ5PRDZ3USWKA' AS userId,
                            750                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGDB3KEFVW4J33QZXJRK3JSY5SJDKDN3IVRU5JPJT7HXTSNNGFXU3TMZBKQZAY4UNRK4GARGAVEXNXLXBJ3H2AJII72FBY7HNYITPVTUF34CHI4GL3BDWIJG7GG5ZDTJQ2DLF232FPU6RMFCE6PUVXY77EHPBFASWLT2UT2YGYQP6AKAAS34CEB3WMBKCYJZJSESNMPY6P73XQA' AS userId,
                            300                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGFXNK4HNSGRUYKB66Q7RLFRGWU2CONVLRE6LCICMSGKORVC43RHSI3NB37W4Z3UOLMQQAENVD3VYLMLGPN6NOFRN2OYJYL6Q65S3XGW6DE732DXPBYZOQJXVB3VMD7C6HDOH4MET5TTS6MPG5IZZDJZQWGTAMUW3E6BMRSM3RXO56R7HKZ5NNHZW234PWZNEV5XNIRBMGTHLKI' AS userId,
                            550                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGFXNK4HNSGRUYKB66Q7RLFRGWU4DZYVOPMFLS4YF35KTVQWELFSIUVXYXUYSKAA55MDSXKYGSJA7UFVJXUZ477CDZOIOQVZ2OPKTHRVIRNCBUCQR55V4R3OJWJPLNVIHWYLEHXHYD64F7IOV2ODZBYBIRIV745K23IYHZSGWPUSVEDBKYT7ECM6NRBTELTJ34HKQG7K3KYDC5A' AS userId,
                            175                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGFYFFJWD7IIUQNG53AXAGZQ6YRAJ6V57YULZNUMXI35MM5XXIJ3KLMRDF65DFHVX5VBZOYIBJA3E6WIIN22GI4UZ25S7Z23Y4JHMILWDBGDWBPDXYRX2PXPWXP4C7PW42Q4YWDI6MRPEURHCGDHOXOYDENCGS5HUK6HADWUQGDKJNRBZFJLC3I3GMAN3BPVVEB7JKOL4TTYICQ' AS userId,
                            175                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGG7NRSBSIOXKSACPLCWOW4KVQIPXCCIUP52QK24MUNEOIY4EBLHGT5LJ5Y4TQMVUCFN5OZXX4E2TPVO3U5FIPRM4DHFQLFFCXI6XULKCVULP42S6M5SWCNVRBROYG2T5CFOB4LVSLJ5LQSCH3EG764K6ODS4D4VR2NR5OHBSI2SQU5GXMGM3HF6CCLNFIKGGGRUDCDU25OUXUI' AS userId,
                            250                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGHMETQLEDNP4XQ6LD2PUNKFHGICXRFDXTKNJQJHVHRVDQTBZD5CK5KQSQK2DB3OAMYPQIIILD6EUCA5PUU5PNBCT6SHYDUIY73GRMKKXSM6M3B237KYX6CP2W2ZBL7SMEIP7Z63XEFN6BOLQVPPXGBIHVJPXXONIK63OWSTLRLIZR4TXTIYUCPO5ZWVY2MTVDYLPPV35Q3BPWY' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGI6MA4R3QORC4URD2MRWWPAC47EPKXXUM4IELLOPPYTNLGQ2EUGTL62QQ7NQJ264YN45UQK2NDSKPBW7JGULP3ML6OPUVPCJDFDXDCVNZ7NUCJL77OFSSZ7I6VIRJFXHODNL2VS5PWK5BJVRFNLE52D2DBKKJKBG3SA4AKR7TYYAVAPZ5TCSL6AKPOVPVF2MWPSE6SAWFRL2EA' AS userId,
                            700                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGIEAP6ZWNTSE5TOEOMKDHNHPZ536GLPOIO46TL6GTTAPWKYV3VRYBMMLGWJRK2BQQGO3R5GLIZXVGYNSGW26BBAAEC2PR5RM5VW6Y23TOXQEIKU4ERXWNKNEJY33PT235OB6MJY6NHY5JJHHNIL6FYET5SQS24L4K5GWONXW5VEHUENLZUYLRPUL52L76MTW4DWEVVBUQ6JBXQ' AS userId,
                            650                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGJC3ZPHBJZ346MUNPW6WKIORKCD5IJHCQ43RXPAGKKPKANRZFQBIIMH7BQKGPBGBKJUXM6OAZVUPRNTQJKJOMKN4SXRG5KPBUHD6VOYZQG3WEJO7WOS7WXLALENVADO6IV55WMJCM4WWHWVFDXQ6PME6BPP24FFCN5K3EAYCG2XVOITGBNQOU3AXRDZNRCROW25QBHFTBXCMLQ' AS userId,
                            325                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGJLZZP44CBHNTSIICM6GOMCA3O3ONE2QE44BJLD6CM3YHSQINQSVBBFL4NRCKIBGMASSBMW72GTYAA22QN3LG2B4ITZ3F5WK6X672PVGK7ESKQ4RPHK2PCGMT3WHJHZJXP5ZOI5K2GLROO47HVBMJJ2VCAKCKGRUX7VZKMU57TVAEUNG2AMCD4AE4BI63VXVGUSC4IZVW23HPQ' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGJUN24ARY73WY5VUS5KKKUAC5SJB3PMRUYOAI63XCUPRYWUIDA5VRT775IIOO6WZC4G2RWS7PSBHNXKFLGPD4MK7DSR5S54K6TUPRXJMGHLOPBM57H7YRJRR4GSRQARBRUC6ALLLXQWE4PETRWHFFPR33DX6TDIGLKQSCV5VN65R42N23MZHH2MGQKLJD3CSRC4XUXDY7LOXMQ' AS userId,
                            300                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGJXFFQXOKBF7DMPKBOXGGO34TKO7UNECSMY2HOQFX7FDKR22IF5PMUCK5KMSGDY5FNBMDKGKSEPNX3DHDNJLSKPCMGGIJ3UA3RG5U5JOF2VTGVRJWVMYL6HL6DDL5AJHUC5ZL726B4HJSJNAIJIMNLOZNMK4D24TZHCDN7OXXG73LYFVRCBLIRNM7XWIZBVQVPE2LKHQMYTEOA' AS userId,
                            400                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGLM4LCBBTOXTE6OTVWYMP37VZ5PUYXCANCM4Q5XHTUG4Y3QGLQKNRPSQWVADWENIMCGVXCCX5VYILDGHR3MXRCU4G43E7R4SDRMMYKXSXZW33YQF6GWSEEKMIKSKSNWQHCJU5TEJ5I6ZLXFU2QZHEX4G532W2YKR4HC3DUEEZ6MVBQ3OTZFVVEOGRULQ5ZLGFXSVEQHXMKD5MQ' AS userId,
                            1050                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGNG7IN7DA3ENQL556LKU3SI3NFFJAIR4B4ZR5X5GSF76PVX2J3LO3F6GVZO4V2NT3MQWTJUQGDS2TYIBY3TNTV34F4WHSBPN7TVAK7KO5S5WCZ7R4ROXUH5JFRJYWNPAT2P6P2YQENO5R5HZLZCMHBMTSJYUAO2ANHM5GMJRHSLT4KTSCBGZPJNDV6UVE3DSF2C5EEL3JBO7CY' AS userId,
                            300                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGOYRWHQJVCGE2HOOL6CVY3BI7XGX23A5KSLNKB3IKGYVQ6WPHYPX6ZBNDIGC2K6BH24R2TV7734CJGPF2UKS3IREI4ONISOV27C65OQ3FBDXIZGGAQE7UXVNSZF2G2LAEIEORWMOLGZ2375YL6BDWYBLEY2EIRDEJZ2PMPSTYRN4IH7UQLT2OA5GXZMAFSBAJOBEVLLB2ZWJ4I' AS userId,
                            175                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGPBOHEUWY2KA2LZIFAQHHWVJUSROTA4RZJAVHTVHGMVXGNCEY2EAXPIQKIULDDT3YWETBD3JLM4BMH4LX4VSIIBTZGMWAF3YOP7OIIFNAXCPQS35LWDAYNGWI27CX7VJEAKH3EI5HMD2XCDMHHCRYPSTRQKTGHPUM2AV23A34CRYLJLJMUUHOUTP2HLIUNH2ZKD53FL42D6QSI' AS userId,
                            0                                                                                                                                                                                                                                   AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGPK3KIOIO5XH22YPFZSNNB3VHIFAIOK5H4GSMWM7EC42Q4S337LNH267N6COJ3UGDTOYBAVZE2VAEJJ5X7WWKGV5A2SWBFJRTSLI5VRW6RKHXS46NPYYKY2P4YOU3YMEQ3JY7ORDOZU4QDLGCIMDOS5H5BQ3PGCOANUXTWM2EO6VT6TGJHUA7WG2YJSGS6HETK5HFFUFNC6T2Q' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGPP5HBLSQKRETCBV6BPRG7YHYCSKCC2WMRHMMHA4FAN2KEBBDQWE24SM54GUCXIG63AFMSMYAKAL6NXNB3LSRIXUM6KBVYSTKB74T4QSYT7QQPZBYY6NJAKLL5WZ37HCAYMUAOIE5B46GUYG7PB5OYX7NJTEBP3CHFHB7KV24KCQMM4PREQWUVYZ4J3CBV43QXXKYZMYCNM6CY' AS userId,
                            450                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGPS4NIDOJYRRKX24TNJUIHJNVS2TVQSNYOHZMKEU4GB7G6ZM6WWVAZ6EC6ICLYLBNRMLFMZ5GGEHDO5AROBEHS3NSXMGRRT5VDEM5CVQTUHAUVLNQTDW7WWENH3YUB4L3IINPFWUS6GPJHZAJCNPWTOOHI4WGGC6T75HOJEVKUM7YZKGYHNDXO7A5X6TTVBQLPNOCONQK7XBOQ' AS userId,
                            425                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGQKPKW6CN4TAF22BD5Q2WRYI5L6HICXI6GGCTZJP24FTAX4SAMGACHUMNSIPRGYHWEFIKX4TT4WPC2KQJJIIHVHBGKNXRV444RRG6GQE6LL22PYLXBNRYE6RYTQZSVXQA72KDWRKBU7DQKAQO3GGWEGDO7C2YCTQIIEMMZCJQ7CFQOY2IZJ2ZGGPP5NWJOD2CG5N43BDWKWOCQ' AS userId,
                            500                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGQL6ED7NA4LYDDIT4GP7FMASCHPSPSWUIGAW74O7RNQAH27LZC5QI5UMYFGJQN7GMXPSOXQAFOXUCX7XLHTEY3PPKK46H2NBRDQGXLHAIQIA2YWEQAPWO5ZRZTGVXRH35VISK7S5MHFRTE6LUAPGXJQYTL64NLLVUQEGHSV6ZFNFD4KZHMYNDNSKGHCNCM33CNTRG3UQUAU4WY' AS userId,
                            575                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGRJSBA4NFCOI357DEHM4QTOF7C4ZIP2HMBED7LHUASE4CJB3MJTBVODDTGDNCZHYGZJHYU6MKSEBGICUWPSVUVHSCIAPB336D4QHUOV36K2WVIVP5KVDXSHMVCGBFUUTISN465LZ2LY6DJVGY2DU5XNNDSSKCJJFGNESNHGQ3QCVUVCXFOCYMB4TGQMOL2CLRISIXRA3HF5B3A' AS userId,
                            1125                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGSBKZK74FV547DRT5QUAEGAARX6LI2T3N4SHJE3CH5M4N5TXBXOE4BJGNZLADZ6NCXCD77GBNA63T2GXKOYIAR4TF3G7ZGNCVBCG6EVFGCFCGURMVAQXRN4IHGAPQ24IMN5XF2IT46CLII7O6B5FKWFIIBRZTUVZKLQRB4JV3EM7JMU4OPRXDRBMSSZGRA226XUF5BQRI3NCFY' AS userId,
                            300                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGTORW6M476SAQQOSPYI5C6YFSCDI2NKNRB5Q6MOBUBCVCL7OCIGJUCEY7VR2DU5ZB3ZQLR4JQ7JGJPUH7V7GV3XCSR46VVBRG77LKISZGTSBQKTOWSE4QILZQCPBXSRCNO2SWJB3NHHGIWVYN2PQ7C6XM3ROBWTMSP4SZ2TFTOI3274FDYIRXZPGW6BWLHAMATWOWTMNA43LCI' AS userId,
                            1675                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGTY7UHPEU4REE4E3BH3SM5WPHYZ33IZSZKXVZIRCLUFWD5CHVE6QPWTK2NSMA6URFEHMZBXHQIW5KZKP65ZOBJ3DF6LA2XNNUGOTSOLNIUM6TICKMO4MZXOJLMZ32XU3UYSJ4B3UI6MMCSWYQU5L3KOZ7OGZGKZWVZBHHYOBJRHKLQ4WQPBJHQRYOSUA34I7WNLVM33ZPMB3XA' AS userId,
                            475                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGV2G4ZNILY5RRSBRZHJYXK47IC5JKR74ZKZNHSD4BBQB72WUVNKY4NB5WVZBNEOSJFJ6XWZ7YC2ZEDRCZKALVLJICHSTTNPDRXQTPC45IXSKNYKNCELCEJLHJRGWMKW6HXXVLYMI4YIHOQ3EO35APCAZ2BC4HL6LOJARD4XJLYC32RFUUQMWAYBIUFR6EQLL25B55D4Q65HH2Y' AS userId,
                            225                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGV2G4ZNILY5RRSBRZHJYXK47ICXL4574Q4T6TU6VQEKY3ABSW3NTEFLIFARHXR46EPXWJLYEJ6VVRHPPQMAFK2Q5NEDJLCE5CHPHNKHQ5ZB2WZHSUFNSA2UNYB5QLEOJBOLPZDZVUI6SBHY7LTD4YUG7Z3SAARCQTEMSX4FEBGX4GMK2ZCYT5DFTV2PCV34NSWVMN7OMW3Z62Y' AS userId,
                            825                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGV2HHHT5TOTJXOIM77AWBHJ32AFI6O4GUIRBFOIP3DFXGCBTHDZFILEFKSOLWEWBBF2BE7AI3MNF76E2RAFETUORWUK63DHFKVAFQIQO7MTOKU2CZWIINVLXPJJ6MVIH6XWO7VKHHG4QN4J47IXSTBEQPP34GDM3WSS5YL7JVGULLTUZSV2YTI3K7CP7BRHI5ZPT4ZYB6WELQY' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGV5LIEMSTMJFBHP2XPDOYYXOYWMIB6STMJBUXCVSJ2N6N6LGDVZTSMYRJN5ZIHJ6QMJNVZGXFCDESLC6QMVJ2DBVNLDUB7SYRFTRJVMXRVJQOCRDM4PG2GYUVR3LL3WNB7YR7GM4GYTBNXS7ZUARRU2NRYPZLMM7IO5IVKKF4NBG2P6WZRSAUATAHM6WD337J3MJYNVRCZEJNA' AS userId,
                            2650                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGV7SR5QAGZVFDQJ42RBU2HYG355GDWU5JJLGYAJMGM4CYXF2CT64SFBZJBHBO57AHVQ6RNEEFK2S2Z26AZTDTQ22YEHKQG5ABOF7OR4MK3CXAIIIPTRQ35YP4OGU3GK2HXKFAS3WEENC3FQL3HFQYUK6VRRF6JXJCYKSLK6H7AOOQIBFPVU2FZPCA53XDKDZJFJ6LG5HAEASAQ' AS userId,
                            375                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGVI4DPHYLTF553NYCGHDPAV3OMYHFNTDYLA4V4I7U6ZOAXIK3QZ2ODLJI5Q3BLYYTVYLPM3KLRPUAEUIFKPFYPESY2QKFIDDRFR7QYZ2LE6CBSOBFNHE7KHI4NSYDULPRHOADRB34EXPQGUUIGG5YVHKVNJ25ZMSIZJP5SBWTKBNPC2ENNZXEVVXYXF7NH6HHLYGQFVIWBDRAQ' AS userId,
                            100                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGWDRJBLZIUHZPSJCFRP662HAXPTI3PMFFVECEGJFPO3Z754VVZVCFNA4KUR7SG4GHABLZ7N4Y6E64GZNNVRTWKMMQFPWG6JYU32SQUQXSLPZGWSBCQTFJ63TEDV7ONAEOYVUMQFSXOLZ2PUQCJIJMCRPONNWIBA2ZNDPK3WRBZDMSVGBHG2WH5O7LJUHFFKOWF7H3QUGZIW7AA' AS userId,
                            325                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGWTGXSFTF4IBOSPD4FFFBL5XPYBBARQD6KWHJQC2AECXN3GBE5CNSU5UV7C3NKW5EFJIZO4BOUP62ULIIO2OT3ZJ4I6CA7HMGEFKJBJR75ADUW47WOCN3KQ3BCCCSHO47FKAGODXBR6GDMDEZFRMJSIALB52K3FI6JFD6KXNHVDPK3NJLYEBGKJICKL3ERIOY3A5VQQNZH6MTQ' AS userId,
                            275                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGXM7JP25GLN3ACJBVNFQTH5JRM2XCNSID64ATH27AN6PGCYZESSWROQMW4CRNFAW3TACTIN2ZOBORGNFUEDJW4SY4FKUUUN5YSKFLZLHB4TPYKVNO5HRQL2I2QWOXY66VHEUYCLFZNQGTMSBX677KHA667IJFOMWXVLLH4GH5QLWJNSABBUELW45NU6HP2NN2M4JWNQHLSCR2I' AS userId,
                            125                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGY3LK7V2R5JZRDZJWIESXII743QV4NIY7AMWCA2OI625YUSXNZHFINV2VHCEKWQ2II4WLQ4JV6CGREBSW6A2QUSFTTJIK3CUGWZCTDVW3BTUYBIAJZVLBCIUY2O45C2QDXZANSZBVPK77O2YDQDQS65XXVNOAAFNANVJ6KQM2M7NZJQPTOZ5UXVZYNX6SJDCL4KDE23X4OVJSI' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGY7FCRRJ3POVJEKC4KFWACPHS73LH4BFKZCVNOTFXJTTSVFIV6PSTNCT5XBM3SD3Y2RRAL25UJEQOH72UOYWORAJVVZ4KO7VLY322UKTJ7EHB57XSUP3A5ZZP2YKYEI6OH4ZE6Q7TINC2M4IZRYZ5JJPHE3BLRJNUKP7FSBPZLHRNVPYKWZCJ4QDIO3GLHR4XKLYWPMDOE7QXQ' AS userId,
                            450                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGYH5LRJNTEU7LAVY6XYEOZHMOUEMPV5VD3TYUPFJVVHJPIAMYVRDL6FJRMM4DUNAZGOV3U3MTJ6NNBZ5FEBPPW5FGNNPVNTHXBTM2ZNOARGJDJA3OPBCLXU22HGNXN3XIWQ3SWGEXTZ6JKIHD4VT2WUJXJP5V3G5UEPENMKR74I4VL25FVPLK33GUZIPRJHDKI5INTQM5LZT5I' AS userId,
                            1450                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGZEX6BQBHLDSZZJBTVR222IUZKKLCKLL4LTECQPUU4TSHJ3NWFTFUV5GUG5GBN6R3ZWMZBWNQDL4HBSYC55RDYDPWUSC6IGH44KZJRB6566VDYOZU4KTH4NKQKMBFNX3AT7SZNHDKMSL5MK7S7J2UYHGCMDZCXULX5I6CXVUK4Y7WUCWMJ3ZM457ODY2OYWK2DYC2DFZYAYWCI' AS userId,
                            0                                                                                                                                                                                                                                   AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AGZONGL6FRZS2JQU5Y6EIGC7GPPXB4YUOBIZ7ZEIAZOLR6BW3X4Z4T4JY4XXI73O4HFX5DVL6QS4CAKSZBPZZBDAGGZCLH5SB2J3TJADXAD645X73NFYQCCQ6DUBGLL5GN23I4IDFRTIEUI5OMIQPR5HBQQF4SWTRWS3ATHQOOHR5AQ7FKV3LAXYT4WDGGJDBRDM2OPMZJNEQVQ' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AH2TA5V4EIJJQRKPSPOJB56DY6ASKG36BSPG32T2TSZJC2HUAGTHNB7IIFRYAKU25KHLT35MJCHY2B7OB7ERVDYLVH4NBJYMQM3EPNSTWGEZ2KDVLQ4UDG4C5EJGEFOJMVNKXI3EYNREDHEVDINHZOY3X4QJXHFMCMEFZ7EYVIQ7SS3LGIELNMDPONMJB7WLCNW4TOCWSVAPFIY' AS userId,
                            1975                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AH3AZBSBAQQYEGCCGQMPHINP4N4BUC6BCDPOWMBGVELFEQVAWRW53O5D6TUGWC4YMBZ4Y6JQM7ZJA6BMC436SL2KII625BCFE4FN7ITXLFRVCR3DBHWUBWSKY2JRH63RBUXBQQXM4PFIARAEOT2TE3YM6E5UNMKGM5AD7LUO3XJ5WM4ZDITHBB6PW2M2OQWWT4KY4TGUEYXE33I' AS userId,
                            500                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AH3JQQWHLF7Q6B7MNKEM7XWKBPVELQZYPVXDV33QWGEZUG5X3TLIU2M37YRZOUVVU2O26Y5KO2RYRCICMF5PBKX2MEWGDAXGT2B3YEEZUJCU5FL57YN2UBOTJCGREON2XVKXDLAZB2Y5VWXZEPZCPROS3CMTEDQJGHM6WZRJOGUUSMGW4Z4R45OPN2TL5MLC7ZDIDDEVSUB2OKQ' AS userId,
                            800                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AH4GSICNBNPHOBTH5RNBHHAPMWWHUDBGDYTSKZXSXSG52R7GQGTNEEXYF6JGVYALIAUBHKCGUH5FJB64SGQAB67QNT5EK67L7WCPAZDEQP3GJCAT52N75BTW2MERNUIQKDX4WN56EZV4PT327WE4TCTJ5YQ4NBDHRCFSRKUGG4DBOUKWEBNUS3CETBFO437FKLLWW444JK65LBI' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AH4YOKSO7SHW6U3OMJ5ST2MAMLWQ635YIQLU4O4JVLEQG5E2JILHHJMWWWSNZXKAITYA7SEVNZ4WK5ZNMCSHHLSNDROOSO3RAWZJODMJR32VSJV3ITFOB54VURDLQOURSF4AQVGD4MU63WBERCNTEOVZBYYEBCQYCPEUO3PUFEJXRT2OKY4UHHBSAHSPQ4BLCPD5IUWNTH4LLII' AS userId,
                            550                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AH5SK3RYJQ6GAGOOPLY4S7NKRCTGOFUMJM6BIQC6FCMAYRK66DCPG563PIM62RNYMAR5MNEEPCLQPJSD4V2D7EAFUUCANWGH7MKLZFFGULNQ246BJZKEFJZKYSRUPIS3VCBBQKTLMQA5VWK5JM7WKENYARFDZZDHQU6LKIJ6SP6A7PA3YVITRKED7HWU4QCFRXU53MIB5TNF4HA' AS userId,
                            325                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AH6QXT5QM3IREOC6XJMNGV6WADVDZ4AOR5VRCU7HR3BMMJ4CNRJ32E4R4F6WQA4P5LMLRZJKWFHFSOZVVUJPBDNE6HWQ4VQNAAOY44GNSJM7DPIW5BF67SBH7H6AJHC2SR54XJ5MUBY3QQNE7PDCRHLWOUFU4KR26DYM2NZCNZCP62DWSL2M7V4MYRSUXP5NNBZ2R75OAOXNOAY' AS userId,
                            525                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AH7SM2FMUB2QPI5K3EAL4ETKQCQNLZ776VWUN2H3CGZ43BNYLNI3OHXLJFITEY5G76UYV6UC5XDREFXDVONI5BU2FVCFEGNPCIU5B7WHW63A3NYYXI6PONQJO22Z6QUS4H3YNNBN2OUG2QLUDRQXIIS3ZSMIMLP7CSKNUR42CHMYOMMPBNGT6C2E4Q2ACCRVDXVOM4F6OEE4ZMY' AS userId,
                            450                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHA3HKHENXRZVQ34A6U4MG4O3MAV5AFHQJ7ZTB72OK3QNLLC32GJKHLXJ3JKRKEHGVOTM7ZDUR6Z35GP3E6KUVWY6XNBL27WGQCNEYLWZ66X5CF3UF2ZMPFQOSSDMDYI7DLT5L33MYYBCYRBFCKXGGTGNUHPFPEHNQQQFLZ3MVO2PZWPNLVIRCSVYIT3MH34NGMD7JSNWYW65EQ' AS userId,
                            275                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHAFAINNCXONLFBFWYZJADELQHKJALIE5GWIDC5CWCLC4VWSYQMZGEZNGHBLX3JUHGCC3HAM2SJ655TBFHZRB33VDN4GFZIPJKEOKLOGANYF24SPUXXBNN322XG7W36PP5D54GPAMOOCSPOLG2GTBVNFJDQKJSRBFWRIDHCNNZP2B66MBXIUUX277B2FVNESMQ64BFNZG24EREY' AS userId,
                            775                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHBJH62HWEMJI5P5HNQOHJENNGW4Y3Z5BVSZ7MIT4NHTZDG64MZQUOBDYYP4ZPE7CBXVW7I5UMSNK4YZ5AW5RGJWG5NJODVT6SJPXVTKU6UKDWL7KL3AJVTIIPFUCUBMBAVGWQI4X6YCHXLKR3O75ZVS7TKY3GHH4WFSUV5HGEY3RHKFSPTAJL5M7RP7UBIXO34MI6OQQCUIHBY' AS userId,
                            500                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHBVO6OO7ZHB5TMWFXIVLGWU2PG5G7NXKFPZGQWSE62F2VAQCMWIGCXWPO27WLICXF3XTVVRZ4CLEPSZZFHPCNIDWUEBQ73JRXVFAF4CKIXFNLANBNYTT4R6MDIZ5OMK7LHPS73WW7VSBA75XVUEP44CIE3EQ5NJKINQXFOORKONHZ6MI3HU4VHRPB6NYFNC7MFMDQDD2DUZF4I' AS userId,
                            800                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHDHVAPT7N26CGVNASLM4VUSJA76QIKOAP3OB2EU5NYWTDR6RCLUHZW7UV3BBJZJFINV73Y3ERNWKS3HPJ5PB6FMRPPSDRPMBTYI2QVZYPMXALPWGFNGH6PWK6LYC2AWJ72KZHGSC4GUSVOHZCQVI3ADFWVV7ILWTEXV2FTK6AP5L77ABSXQ7EWRZKBHQAA6BLS6AFAYMYLGMVA' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHECBJJSBEKUBIW5FY5AU4PBC4NOJDN226MDQXGT3F75HAJL5ZM42LCA25AXIXUB5BCHBXL6TVQ72QCLNPJMALZFLAEYH6W7LXRDITUC43YJKIZBBSBE4BYWCPWPH7IG34US4WJ5DEHPRBIJVCRZ22GAUHRJPECCU7IKDMUIFKRRZI3VM6YJZGFDHUPD6CXIIA7ZUZB7SY6XLUA' AS userId,
                            900                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHGSJBCZJNEMXUMJG7YUDHIWVA234EGQPFH37VDY6GTED66SBPLKQVW7LMHM4LKMBUX5S2MDPS5FMCRXDVNLZSYUIWHJDN4POCPYKDB3QLUEYJOJL4KWJ2MGISNJ3ZI2DHGU2V6VGHAWE5TIX77LRKT4NAP52G4JRRWZKN4BT5DXF5AVOSLY5KLEOZSRKHDZBI3GPMQVCVGMRUA' AS userId,
                            175                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHH5OGGPKMVZUEA6DNV27EY6Z2VFOQGTKV67NUHQQX3VWWWTSOBCSMOU2TWYSN63WYIKP322FXIMALF4X674CZFPPUUQBKIVEBYO6E5GCSIGUDJEFNKY5V3P5N6CEHBHI2FRNWEC2QP7GVOHZLWN66IIZVKCAIP4TEJXLMZL32WBJ7OZRUM7L3G2WIWZMUBSDATN2B2OPFBEBXY' AS userId,
                            850                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHHNH35V5XKXYLUCZYVELVDQDG6UBQJNPSS4XYUPZ34NLZ7UKPZBTNN2URFF2BVMHY5NDFERMX5BNHPKZZABF7N5IGC7OWP2JEO2MW74YP55HRF6PPQBPI2VHDXXZPKKXCSV2TCHA63ACNY6SHGVSVD5S5PZTSN23NN34OUYZVSWKVX2LNYWOC4OVPYPMZKPYJMBCOH2XO7FLLY' AS userId,
                            0                                                                                                                                                                                                                                   AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHHTYUBHLOY5OCXURNYXTA5DWNA3NCMM3VOLFZ5LBNXEWP4XJVQVUSYN7ZFSJWWQOGV7POUXXJOWNWATFVKRPGCXIAZ32VQHKHFNAPMUNG62PFJYXHSWD2BQ5EMXHDCDIHUPPCGQCPYKFWK5VM4UIDK5ZJH5ANG2CEUWAGRFUPNOXQTSRBBJEZBKDSADOCXJQTV3NN5PN77KKCI' AS userId,
                            2100                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHHUCCHJCSNN6KLBFQ25E2N5LW5LIURBJGYMQI7CQNGE2COKIRIVF4CXTRI56O5D6LYDB5BDDWARXVBQX5AFXXLOOWKQKJVDYXKPWMJ5DGY6PSNEFXLI3SLJPAX24VVXZODFQ7MGNNL25N3GSR7NF2BJHCCT7TF6WFO5JPSWB6QTNCWE6A43AB6KWM6Q37WA3PWNNWHSXOICBKI' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHITPKUEF3Q3BSV3CKGYUXZJSJXNM5TYR7HTB5766XM2JPX7H5LQEAM3YHA3LYUVDJMOYXYZVUZMHBPZTJFKKMGT47XV55DANMH6MW3PX5H356RATNVUAZX54VZBVIP2T256HTCBEKD6FNLN3OMZGAGML4A6ZKFTQDH6F6E3YI5U67WEQ4XWON6QXD635SKJHQMOFDVM23QG2ZY' AS userId,
                            375                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHJNEFO525WQPP5GPTOGNQI6ULKMEPBDY6GRVPEPACHUP6PMMDVPNIEJG3AEOS7HYNYDM774YONJKTEI5V3IFHUHPCPXFLFSSPQ5UBF2SBHBGK4XZ35PGUFBSHVQFFICQCGNGZS5MIXEFK43LSA3FHNDBV4RJ2AYUPZ6LFIMRUZWFU6HQHAHRD4REQDHOBMIFALKLQGSTVFHRJY' AS userId,
                            225                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHL3DQZYXEJMBOYL6Z6FTAKFMQI5UBM6KM4RPCHTFOBSITYO7ZCCHAWABGBLF7NJS54DNTEDG7FFCGEQIRU4TVWQ3MOZESYQF73D45MTQ7U6J3SYGXLBXK2OVEHBKPST74JDCY5ZQNZV6KS6LGJFGSI67MFUWX2XGWFLDEZ3JWEEQY6O7VWB5M34AT4R35O57RSU4QUFYUPZI7Q' AS userId,
                            300                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHLPOSKECW3XLLLMY7Q56REC2LD72VANIGIPA56W36YNYCXJCRGIB2WY2TJK4XZ3UHB3CS2FD5EJR4LPPCHQRJFWYBNSNRCK7JS5Q4ZA4W6UWVA2Z55ENPBB7EJDIXYXZN5KETCXJJLSCLDHESQR7BN3QO6S3QM4ALHQMUO6VJB6HAWNV2B7HHCSUPDGL2F73YJ3JRJDTRJC52I' AS userId,
                            250                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHM3TNELSW6G66JORKBFYZR2JVQHIZYEEX5JJAHZ73DJEFLQRE3YIKAUNE255QYJMYB5IIPXB5XDTUMWH2YGLPW4JYWSQ4IIWOPQVA2LN2NWJ7IFIZ2HOFL7WDFGED532WOPOJZEQMF2KU6NTFLTXURGOQYMTCUMT53IWWXFVE4ZCTQNKMDDYZPVCUPKE6T4DA6XSRBCQY5HXSY' AS userId,
                            475                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHMX5THE4ACKXNRRYCFV6PCHIW2PPVUVR7EA2BXG67BVNUYXQX2K5TA3YE3ZFPUVFGIHHDG3JZFPSQ2MXK63MY7MX5RBK6PLGBUSOKBBB4HFVSAZLCXWD4LQTEYUE7OUEXXNH5WPFIQ42GVWBTPFAINELYMYUXXICY7NJIMQ3OPATAE4PRWXUF6X3BGVTOYSTWPM3C2RJ5TUKAQ' AS userId,
                            250                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHNUYYFH2JXEAGCHKWZRWSQ4GNJA2ZSRBCOV7NT6FQ5F377VVUEXJMFHZJMJF4AYKCNDR2THJV7AHPN262LPYDN532CCRK4JPTCFJ3267DIEKWHO6LVYLMPJYD6C3BQ5EJLH7K4VTWVDJELYTVG46SNQ5YLZVVHCWXAVGKLUKZ5R7SPRS5ZN64RJEQGKS3UZYXVZ3ZD4CPRBCDQ' AS userId,
                            275                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHOQ3XL2BSUGL3GRRLSXDD7OKGZWIBC32RNNXQH5XGS7TVI6YEAVOUZSGO24PZWFAX7HORKE5JBZLZFD7XBTR44AVUDQRONQEAVO77R4ULVCOZ47PKNCQGRCGI4FHJGNKJUX7PIYMESHX4AALAQAQZGLMNVXLERCC6CDMLIB7GSCU2PRKNJHQBEH4GEPARD7RYIZ7FZ2W7JLXBA' AS userId,
                            400                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHOZ5BPWN6R3J6O2SMTJ5EUI6NUVU25KVD2WXXYVV45QWCQXES6D2QN7MIUSSYSCQ7B4RIWYNCW3K5L6IV5HYBR2UH6MAP74GLRICHUEP7AMM3BB5NAJOQNT3PCSPTN7Z6WVZIC74DMHTUBLOG5JIJT2PLRPJLKU2WWJXVOFBKGCH73DYHW2MO74LZPSZBZOWBUI2WSJHH7W3FA' AS userId,
                            675                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHOZGAAJYNHB4JSV66UDYGI3TIR64TFYX4LWFUHHXCCPKEG3N635XSV5IAGBMGFCOI5K5Z67NCBYHFYU5QNBPZQX2CYATW2GZMA4CM3VDDJTSZ4SSA45SK3VIYLGGJPPNI2QF2G7QIVWCZQ2HF6T3OOB3FUW4W43UVIUGU6PT7CI2HHQCDS2K7GSYVLT5OKAP4OIHSUL4J3NO6Q' AS userId,
                            375                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHP4C3OJQ7LD2ATCRJDHZQWKS6XLHXDJGHFGZSUS3OKIVUEV4T5F7X5NIDJ2QWTSX5YA6F2QZRIYWOUUPCCR2ZPLXWFE444TXRAUZ4YIZPUOK4NQ4RQW4ECWQMKC2CZYHMTLZ74O42PCFM6YUEQZG3FILASO34RZ52FM7ANSFWPRNBGN7MHXZYTTRKRSVKKZWRTJJVF4UUXKS5Y' AS userId,
                            225                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHPBBEPQUCT7OZIW57GPRSK6W2YOTB6LM4CHTYPY6L6XWG6FWMQOYEAOR44UXMK52MAUDZ62BR6A22YWHTY6RQBY7ABLVMY5TWI3CZILX7MSZXFO64ODU5RHUL3NOVYH2KIPE354N5G7OPMAX4CSPNJUHR3SJ6RF5IHRWMSIFCDIS5ONCQK3VMXZTQETPKCEZJKVHKFUFDABTMQ' AS userId,
                            700                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHPCAWBDRJ6R4TRHHRGGZNQLYFBFQZT4B3RLV7UEMCRJCSUHD2NWZIA7UN6NQW3VJKQ3EYZ4H5FS22OWP7CLN3NTKQNGJ2KSROXCSB7VDPVC6ILDRNJ43VQ6DROBVHHZI7IGSST2LMKZR4EQ6IULNHHO5FC2EKJDPEORIOH7MSJQMRMOAX5XHPVOJVCD6QG6VPVDADN7UODZ7PI' AS userId,
                            1200                                                                                                                                                                                                                                AS score,
                            '[20,78,176,270,349,48,110,254,313,353,31,87,138,283,390]'                                                                                                                                                                          AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHPJC2ESERMB3PVVFFCAQEPEGTLXMOXRJRFM6NWCHFG6O7IWNNAP6YNXT27SCCIYBEUVJGPVTZWAA4NIME6V47AHLKJSE2FNDMZEWI2SDSQ4HVFV34OOJ7F7TD6WK3PHBACAK4I6GLSHVPMO5MO5OPNOJVT4YGR3WQ2QRT4JN7WMWKUIDIZSDCW5FFWQT3EOO4MTKUWVPBCHUGA' AS userId,
                            450                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHQMNM3K6VV7TGKLQRJ7MQMDA2T2JI7N4DTUGHKNALQU3RI5IQ4IBINUDLQSQWTFMEZJGEBFZGADPZLNN2C7BS5TC4YWWTRZA45BQYJQHZD5ATLRMVIDPYSAAKSIIJXCMWBPJM2GWCABI4E2EVUOARRSPUXRTQ7PX5GDIPAFVNTKTVPWSGDC7KEGSUZNJZTEIQKNUPESOWGDYUI' AS userId,
                            250                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHQUBA2JMHBJBFYRQR3CT3DASCFH5ZQZT4B6EAYRTRGAKZIO56H6DA5PGNPL2QPKMF5UEIYGVZW6SINUTQXZPCCXYBSAGDMFYGRUEEQXD6KG3BNDLB2ZXF7I7GSVPPETHQGDWO2ASWXF2ZANQSTPOASI2M3QLX6LC6TFECC4CBDKMDTU5Y2KXJCKS75HE2XEM3WEM2B7MJ22VPA' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHRI4V2LYBXRKHCLXRLJDGXMRTWR3WW5ASUFU6GE2AHWWOPSWZ3D4OM6EFB2D47DUV774AYFV3VWKBTPJKXHZJRKFKQ4QK7L4UDMF2LPSVERWFTRI23O2NWGC5IGTODJ65CMU3XP6ZOOTJ7UUCOOZ5NDS3AAXHKYFGHYWPBUZVEB2673QTOF6YNZ6LTISQAZUVYRVCE4MEDYZLQ' AS userId,
                            550                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHRQ4AQYQH4R5YHLV2YVAQGAEAY7T3N63Q4JJ7U3E54EKBWHUYQPIKPYYWYHYXUCFOABP3UYMXXL4CBILU5ZAM243I6PKZOGINWWTAPGIRN7J5U3RSAIV6OPBZXBG7K5EX56KIXSWMP55FU2MC7HQRUXFWPZSBRWOA7IZQQHS45EVHLJCRWSHRIARMAI3ZFIB5FWAVP4KG7KF3I' AS userId,
                            375                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHSUTKVKF4GYJ4SMMCRUMRSSJGRNR3XXP4UI3BP6GP6W4OGBNFWEVGGXNUINRQYTSJEJGMQQVPTQZQX6X5VBORNWGWBD6VM6VTPFOCNCFJYQS7UFJW36QQ5XQEVBMBOH2R7QNDK6TNPFSUGMUQHJHZOCBKZGUIKCDAGPIEIIG3WI37UDG24RTT6ETTVYVU5SJT5ECPC6EJ4GRLI' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHT77U2MR3NU4IHZRNMLLJUNKE5I4VBWJP4PYFEOZOULYU7BFB3KHI5L2BXVNJEH4YKE4OPL5JD4XSIMI6IJNEY3XPNOSVB6JK75G6LPC6AEZPUG33UIXPWAZ5A2HE67X7PHINLPA235W632KOLNFCIRQSM3SNTWF42OLZFHZYHXIFUKAB2HSMMTDB6UBNPEABGTDQCSUDMWBPY' AS userId,
                            775                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHTZHXY4OD2NLUH4VNMUMFCS7UXEGEP4TKHUYFGLVHYPMCSPYQQOCDNIADFGLOVTRBYUZAUL6V5TIE7OTFORMUBNAZ5ZCD6NDPPSUGKL5B2IHIXUEXBF27O6WUGAN2WMGZBQ2NW4I6JQ5PG6WSCFFJ5ODHN2VUE4QSUOPBLEBS5RWASM7XQXKDSSWLVW53RW2DJOG4TY2ADDNEQ' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHVINI6W24YKXI7J526Z7OCZ73EPZU2P3HCMF7UOJTPBUSUIMQJN5GYTBYXGDD7HNEGFNV72ER5W4YRKT6VTRNA7OG6RJB3BGLBOTQZSKRG74RD3CUYX4MRO7DWPX4YZH44RFWCQAVTP3TY7CL3OH74OFWDHWLTEEWR7UIL3CNSPI23GVUCPO7JZIYOID3A6AGWSYYWKW73LYJQ' AS userId,
                            175                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHVIR3AAK5NUMFMCK6A3C4YKRNQQDC5PWUUTG7373XBRMC6KUWS7JUC3EN7RJBS5ZEYJLEW7PQCQQENQXY6ZHI6KGU2ID53C5JS5APZ6GLMPS5II4P5JXKA32RT23GVUBZPWTIASFHBJL4ZWIGVFHTW7LZN6PVY5DP557UJAMJRPZMNNEFSWZ6M4CIGOV52ZPMM6JMBQDPSQTOQ' AS userId,
                            625                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHX3BCDC447HTSKX2MHJHYWTB55AHBVWHOHK5EYVII7RIORXPEGJMJDQPQFI3B7YPVNQMKZZ3V53ZYQAVUGNLZMDCJD4GW4FF62FH73S2FOA4SCGRY7OKF4FDPCVE5FITPHRFTDW3MRC6NTMM4OFMKNLNFRHWMIQKCDEXWHUPWMHWTVUSFJMXMZRD7Z2BVPNIDGZFC43KWKRK5A' AS userId,
                            400                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHXCAVMDVDB5PDHGWPOUBMO2V7KODLWJXJXEJXFNRXKCMVSXDPC2ICYJGHF465UYLFHHXLWVB24HSJ56PYQUTEDNEWPBGCEF4UIVC6MCKZWAHVMZJNU7ZUJVKA6LYK57HQ2O6MN4K24KNJQE35GQPFQ4SIZ5PMNWATT7YBBKNTYSCCGRDUDYSUKIHO4XVPMSZJVGOIC7H6FRV2A' AS userId,
                            6250                                                                                                                                                                                                                                AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHXNMD3JOMOD5NTYTKGQWL4SBOJMWZRW34P6CCND4TA4TSTIQDWL42XU77IQZ6XXLP7QLKS4BQXZ5RJJTUFGH7THMAQYBJDEFN6O6OHT4MHBM75VWZKEULG3WGNB4OLYQJREA45EWG57QCZXLLWG6735UGQQZVMG6KZ4N6LGA6FSXG7KQKESCOZBTUHDVL2OTIUB7R37O4U2H6Q' AS userId,
                            250                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHY7JWEOYZQHNPM47Q43XM4YUP3R7QCDMGPIE3B5EMW4LR3CTPP6JTPEFJTSTAXE6YFXFNZSVWIWGD4DYFG64KXLCASLGTJWIJXHFRJ6TECBSJGUHNWPPCNW56D7FVOHLSRJVOBAZXQBC5L2DPRRY54CNML4F2B7ZOR5NNLFB4VVC25MHMTQ3DEZBSK4VITXLI2BBMVMAKKQ2CI' AS userId,
                            200                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHYIWEYVQAJVHX2F63YARMECAK6GYORJVWTMLYP56IB3PBGR5IFF7NODV2WI2GXBATNQYZFW4LOGRJYP5OG3SMRQDBG7BGIM2NFU7D7SS4HMGYCQFB74IHTY7JANY4NAN6OORIQDSB6Q3MYAAAVJN3FKH5QUBJ2RTNV47E5G5PXRZB4VTOTLW247BZDVFC7TH3PNLOEL5CTKV5Y' AS userId,
                            150                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHYJCYPT72EKZBPQKLTRD5FRKVOKHVI6PBCT5XDGDXCMO5E6AWAJYWFVKINMMJO3X6OCELEBEZ6QCSTE4CTWNCMX6E6WRH2VGD5VQ3W7IIYT3TQRNULRT67WYHEBREBN6WT7FTM737KT7FPTKV2RNYYKNAKPFUUEHETSD2Y5OKCW3EUJ7PD2W6XBDODMQDE7CG6YTDHJRAHQPPQ' AS userId,
                            350                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted
                     UNION ALL
                     SELECT 'amzn1.ask.account.AHZ7TY4QBMVNNR6JOGO2H5FUKKH3KSQYAFDIS4M7X35UJLOXSWSUVCCVQPOTSLXVMRTKSRY2R27HSUI55KGFMNO247GZ5OOM4WVJCUHLEI3NIVIU3GEHEPXQS7RUS3S7WNACFL4JM5LO4TNUBGLK4STUNNH2PWKOKDH5CEJV7BWYX6OUXGOTSECRTJBZO6L2CTGZCJGEKNWGJUQ' AS userId,
                            575                                                                                                                                                                                                                                 AS score,
                            NULL                                                                                                                                                                                                                                AS questionsCompleted 
				) t
;

COMMIT;


-- changeset healthIQ alter Scores table: 4
-- author: Kimpo

USE Health_IQ;

ALTER TABLE Scores
    ADD COLUMN easyQuestionsCompleted VARCHAR(2000)  	COLLATE latin1_general_ci NULL, 
    ADD COLUMN mediumQuestionsCompleted VARCHAR(2000)  	COLLATE latin1_general_ci NULL, 
    ADD COLUMN hardQuestionsCompleted VARCHAR(2000)  	COLLATE latin1_general_ci NULL
;

COMMIT;
