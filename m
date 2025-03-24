Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C68BAA6D5A9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 09:00:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BDC410E212;
	Mon, 24 Mar 2025 08:00:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G1q8rHhk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AB8610E212;
 Mon, 24 Mar 2025 08:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742803225; x=1774339225;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=Do/X/1mygoXQlmlvVX1xs48aYVyTxokRU71EqrdYXeA=;
 b=G1q8rHhkDdKTAZYGObXG/QF05xpy+pfeY+S1sxZjp4EmKAjLMsgw/XpL
 Hw5te/hGh7nuZGuyCPFLICrvDzcFJytQb3eKZO4Lb3wzLryU4iETpd5BJ
 fdi4mvGxG556Ai7ZUJW5N6m9N3pIIPa3vqzBuaIsmGrzxELC9D1ozdekz
 hO74N5+JnHjKyDrj4pv59QboyRJ+AiNJ+YkY8MS/lrREvpa4KqvzgFlSK
 fWbVsduOU0VuSmmoVWEqZwMHhlutRIu0OuJrtTeNeY2qPaID5m0eu8UZg
 nq5qTevg16vw7N0B0gAf6/tK3PhwbHIKcUB/2+RI0nk4zyAhRDVSeXytU Q==;
X-CSE-ConnectionGUID: sltx+Gr4T1uOKnN2voH8zg==
X-CSE-MsgGUID: ZLu1IJART3udYCIgGxJzFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="44159320"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208,217";a="44159320"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:00:23 -0700
X-CSE-ConnectionGUID: RBs1nBXfQHuuItxkmiOi+A==
X-CSE-MsgGUID: 4mWraq7qTDSGRMV9pNC+Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; 
 d="scan'208,217";a="129036179"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Mar 2025 01:00:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Mar 2025 01:00:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 01:00:20 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 01:00:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=evpWywJ4oe0uA6UXZZ5dYneo1e4BYFJEsYel9P0qRip5y4yB0+0EAVAebHy582JFzZSxz64fnhAyi/CIczbjH3scBuuMyzzGD4wl6XrMfWN2SvpFYZenSPwxrUswMBDP5jTEGTgqSGoUwv9VaSXa3bq812prmqp18e3r8l+/TFpkNyjfuvodMCWybS/5DtXPcBUTFfJmF6I8d1Wx2NDB/fyNJRhvh5w7eXi0vNSpecArN11NBDR/cp5R/hGNngx0UHRwrRkUkBK61sTe5zgWTqs5iu0IwU7s16WYKw+Sqg5p3tf/2wHl8qrpKqxcGPl7kEVRlU4Vh2phB6Z8w78oLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OHbP2QYwKTQuGf4osl4fwCp4KBvO1rkj1enho3Lw074=;
 b=sB4lFuyhKChXVFcuQSNzsmW0MK1yDvkjGTH+JfTf1zmHw3GSGKHqNpV/ChraGWJ6R7X2orz8Xcl7PBA8s/+EdS9OUiVN+EVvD+JXGewQ6S0W9VdDu14iEK6CQykDf9CXc1sTJC/c/a8XK6LqL5q1vDkQ2iT1XW8yQ4fbp25eYJQ6kP76uqdLCQuubGXSDcUuDMFbJGkSltv26xBIff/OtFYx0AfRYVmdjtUmGSG864Sd3vl32QVhcAxMMXjWyR9HgdO0cu5rmljesrEzOA7gnCI0U5H4vxNTEVxlFDzUMWLcaqdJ5iPhQ/VziJ8xre+RZxJ8kiN6aM+/UzdMXCksPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB8521.namprd11.prod.outlook.com (2603:10b6:806:3ab::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 08:00:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8511.026; Mon, 24 Mar 2025
 08:00:15 +0000
Content-Type: multipart/alternative;
 boundary="------------pRRevc08SUsSaXCekSGe20kU"
Message-ID: <4afc6654-37e3-44bb-8331-a87036ca23ff@intel.com>
Date: Mon, 24 Mar 2025 13:30:07 +0530
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?B?UmU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIEZpeCB2cnIu?=
 =?UTF-8?Q?enable_handling_and_add_logging_for_fixed=5Frr?=
To: <intel-gfx@lists.freedesktop.org>, <I915-ci-infra@lists.freedesktop.org>
References: <20250322044345.3827137-1-ankit.k.nautiyal@intel.com>
 <174280003274.70384.5298839828995065168@18a75f3d1eae>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <174280003274.70384.5298839828995065168@18a75f3d1eae>
X-ClientProxiedBy: MA0PR01CA0064.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB8521:EE_
X-MS-Office365-Filtering-Correlation-Id: d8e92f29-4d51-4424-d9f6-08dd6aa9e89e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|13003099007|8096899003; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NHppZWp4OUF1eFhac3duNWtKaGVjV0xZM2szRXY5czRNcU5XYml5VkxEeS9V?=
 =?utf-8?B?R1dBKzhvRmxHcm1xS0x5VGdFR1pReUNkV2JwREhoa2kybGpYQTN1SDh5WTZ6?=
 =?utf-8?B?WFFHektMU1c0eWJ1bWxxTytvQlRJa0sySTMrL2dSb1F6b1QxZDc0MFNaUFJo?=
 =?utf-8?B?bEUvVzk3UmNPUnZ6K0hyRklsdEVhcDZucW8ySnFiaDV3bldqSXFpLzR3ZFlB?=
 =?utf-8?B?cXRLa3NjakVDbFdZRkw1b3RnRzg2czNXVGNEV2M2SG4zaHVMWXNERHQ4UU5F?=
 =?utf-8?B?SmloekF4TnRBSW4zcDhFTll5a2tCMjVXVlYveFQ2ZUpyOGd4SjllamJxYjZJ?=
 =?utf-8?B?MDdjV0pJdE9IMGlRTm11THhJYVRxTmQrY29CckVEWFkzM2lXb3QwMm9DbS8w?=
 =?utf-8?B?Y056YWRzTFBsYXA1VGxYcHFtOSs1aGRPL1pkY1I0VDVGWnBIdEZqVTd1UEdE?=
 =?utf-8?B?dEhrK3piUW9pUWY3bjdUMGxmRFNmMU5WT09pNDdnYk91dW1GR0toSWZNbkF0?=
 =?utf-8?B?WlcrT0xkL2F4b1BpMkRUU05sV0xmYUdQeHlKbjVDa3d0Vi9hVlpXYWtkNXov?=
 =?utf-8?B?WWhRd0FlTGFja0Rack93cU9lY1hvampMRHZlNUl1UDRHOEZpdWNnOWk3Rmph?=
 =?utf-8?B?SVBLQURsTlFjWDJpKzJGQU1WUXdLY1c1VFJ2Mml6STdjWVFYQklqQWcrSU9L?=
 =?utf-8?B?K0VhOTVjT2FIVlozQk5tSEw0ZXFNSitrWGxueTFXRG95QXpROXhYeUVoTHVw?=
 =?utf-8?B?VnZEa3hjOWxOcWZVOUFqVGpmaTNtb25hcHptcU9rYlBwYVdhTmI2SHRXTUtp?=
 =?utf-8?B?TkFJUmc2SFJLU2JJVGtqdU0vaDNnRi8rc01WcG8rclJLUDdzc1F3L2Z1dDk1?=
 =?utf-8?B?dGZRbi8xb3B2eS9UdTJlc0xsQ1gwUG9nZFhKdjAvUGJvSHZscHZSbDRwNUI3?=
 =?utf-8?B?WEg2NVozdlNOUkRTSHpMclpxTjhtbkRFZzQxVVZxMVNiREtYbmhOMkZDM0xR?=
 =?utf-8?B?QWpBUkRid3cxR1JNa1ZLcWVVRkxEWGRGN0piRTMrZDFvZTBwdURGQk00aGpI?=
 =?utf-8?B?VnhqZTc2d2pUWml6L01UcmVYM29LelR4ZFYwQ2hHOVpnaXY2SlBidEQ2WENN?=
 =?utf-8?B?WGthUkZpQkdidnNFenhJVlowYnd2UzJlMy96czJWaWZQa05pMWYycWxBYWxR?=
 =?utf-8?B?QUUzU1hUVkZGRXo2cHB1MjBtYUtKbEttSyszWTgvZzAwbUNjSE1PbWxZU0M4?=
 =?utf-8?B?NUdVQUpPWGdWcyt0c21lZENIdDV1OTY4Zjg3SHEzMVdwRDkzN0NIOHdvL29Y?=
 =?utf-8?B?b1VIWmt1TERsZ05kOTdDY2p3V2dZbzZ4MGZUQ2d3bElPU0srRjloNzBSYXlv?=
 =?utf-8?B?em9FTGVwRTNTQnd4RTUyZVo5eEhHU3paRGRlTXU2aEl6cXJySFFDcTkyQWlI?=
 =?utf-8?B?SVd2UktvZVFmMmd3Q3o4ZWs5YUdEbU1PSTk3cEpObDErTlpNL0pCcW56OU5s?=
 =?utf-8?B?YXQwcjRFYnBDdDBTNnc2cHhsL2NSd3J6UXUrVmtLcjZPUnFKa3NpVStHN0pt?=
 =?utf-8?B?a2VpdUJucUhCTExCWVZ4aXNTemY5QjllZE9hNmJxazd6UURScEc2SUMrQmM5?=
 =?utf-8?B?dEVocFF5UC80aVhrMjI3MVg2UlFQTHVBSGxMMFRRY2doMFI4UGg0UTVpVGo4?=
 =?utf-8?B?eVphSXJKQ1RKTG9VT1dHS3pTM2xVMm9WWnlPWUh3R0FiTXRSdmRHMncxTjBV?=
 =?utf-8?B?OXAyZXdUTzdCejluNURLK296dHl0enVBV2hyZ0MzM3lNUEhUclU0ekZDRStR?=
 =?utf-8?B?ZlZPTlJybzhsSlFHU2VlUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(13003099007)(8096899003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c05sUjgvZXlaRE5wbXVWU2dMMlFjM3RvSm9oVm5HdWNwaXJYQTdGWVNML3VJ?=
 =?utf-8?B?dWVhbm0yVXJjUmt6dG05bk5sak1YTEZ0VGVMYzVxRFZrWTN2cW5HR283Y04x?=
 =?utf-8?B?b0xBL3VOV2VPekR0cDRyWlhtR2k1ajFjM1I5Z2UzOElJaURtNU9pdzRjRFB3?=
 =?utf-8?B?NDVZU2x6QzEwWi9xVTdtMkRWYkFLYVNWMU52ekQwSkt2UnV3SDM3RTJTYWRa?=
 =?utf-8?B?OWNleDRhQjJxOVZtazhYcGVEQTBOSHQxV1RvYWVZbDVlVHI5MFlLREc2SlFB?=
 =?utf-8?B?dUtUOHpqR24wSUlTTDBNdWorWndXWmhleTNEKzg0M01mVzk2T3RFVEltaFpC?=
 =?utf-8?B?ZkNZSWR5YzZkWHc4ek5tNzRnY0VTcTlGbWsxVjMydWVzNUZBN001andiNXkv?=
 =?utf-8?B?NU9KWGJJNDUwaWRCMGdjQVpBWlkreFZkeC9sUkZSTUk2UnN1cXF2L3ZFWE5F?=
 =?utf-8?B?SWZ5VFpob0h5T2ozNi9ReURpdEpFaDJxYThJdFltU2loajAxR2hzWmlVZGk4?=
 =?utf-8?B?b24rMGxhS2ZpbnhOdS9DeVVtUlBzSTNXQmNMOGhId1NML3l5azhOYngycWhH?=
 =?utf-8?B?NU1ZWlIxVHZoY211UWJBNlRnOWMrMGZrTXl4K0ZyUTdGNkoyWkhHUU5hWTAv?=
 =?utf-8?B?Mi9jNVNpRXZzN044dzN4RDlxVEcrSjl4c0N5dUJYUkhkSitMQkk3TXBWQkpU?=
 =?utf-8?B?QldBSGdTSzBuTHFtUDZnZUpVZDRMemRPTnM4bXBPTGhGWmpRWjJMZCtvWXly?=
 =?utf-8?B?SlVvTVl4ZDJWTXd4R0ExMFV3V2pBdnM2SXBUNVBtS09mc3RFM1RDYWp0bW5w?=
 =?utf-8?B?bEcxS2t2Z0Zha3dRcUQ1SGlmVTZCOU9LOUtrUjJRZmdPVU5acnF5cmNRcm5G?=
 =?utf-8?B?M1dNNUhMcXg5Sld6OUl3ZGNMd0c1c2w1eGQxbUlacVdCT3JaMjFyQitOcDB0?=
 =?utf-8?B?clNkQ2hsLzdiN2RSY3AyZ1lNbi9VM2dmZHp1c0d3ODcvVTlHZVp4a0VyWFMr?=
 =?utf-8?B?WDFNb0g0OEpzcWozTkwrbkpveWxrbDd6R0xiS3hyb3JpL0Z0VTE4czA4RmYy?=
 =?utf-8?B?TGJ6M2NWS3dQTkFqR2VscFBvN08rQkdMNzhDMXpYZ1pOcU9XRGcxc2g1aThs?=
 =?utf-8?B?TVJtYmRybXVpb0RKWjgyYzdLK1BHUGJQQ1pNT3VUTnA0eW9ieCtzeWlUZm42?=
 =?utf-8?B?ZloyaGllZ3hPa1JmdjJuZXJvL2QwdmV4bk82blB3VWJkeklNbmJQTlhwTmRv?=
 =?utf-8?B?TjNnakR0VVk5YjJkN2dkZHUrVExvN2U2Ym9KOEE0SU1zazQreXp4bDVPdDR1?=
 =?utf-8?B?eXNwdnlncFd0d282dng1UlBYMWR4RkxFT1NubmFmdXltZDJyWFAyd3V4ZDZL?=
 =?utf-8?B?WVd6RGliM3pnbTIxbzFyRzFUN1NvRjRYVG9DSkR0US9rUnVTdUtiN1U0RFZE?=
 =?utf-8?B?ZnNYKzJnbGxLdzJGNFljN1RTdktySmpxelVwY3NoTWhHR0hVWFQ4aFU1TTU5?=
 =?utf-8?B?ajdySndIZzl5Y1FwekhxSC95eEc5SFZzOU1ieVFka0YxV2RKeFZNK0RPMCt1?=
 =?utf-8?B?dkpRdTM1ZTBUNEhibFBUWTZzVXJGbmNTSVRiaUp1OEIvUm5VQTdxTEo3cG5t?=
 =?utf-8?B?OCtzN1RjWkorRkpXTXJ4dHJHNDk3a3M4eGF0OHp6K1R1UTlYT3kvc1RTMGR6?=
 =?utf-8?B?ZS9HZGt4VEpNbk5VOWZYNGpNbmlXOWhYLzBxOHRCUGtFNGoraUUrOHZ4aGkr?=
 =?utf-8?B?Lzl4Zk9CZlg0N29LckNLNVhMaVN2K1Azb0ZheUtjSTZIZU1LaENhLzltbXJ6?=
 =?utf-8?B?N3VlN1M1ZXVGZjRhNlBWcTFsZEZOeUpZUnFRRVltWU5tVVhTY2tnR2tMNTVB?=
 =?utf-8?B?MHBLK1duamczUS9CSStqZitvQ09oczNJS2JzSG95dW5EVmczNG8zYXZUUFkv?=
 =?utf-8?B?THBLUTZZdTFmRStYeVVaaGloYkhpTXZrcXFibW14U1VwZjErcmNvU3dBQVJM?=
 =?utf-8?B?UWEvaDdxSVFmb3htOG9PcmZ4M290U1BjWW85YkhsTmRZSjBFbXE2bllydnM4?=
 =?utf-8?B?NFpmMmc5WnZtOWRhK2ZXNUhhcXpzdUtacGFjM05FenBHWmZUeXAyZXhxSnJ6?=
 =?utf-8?B?T2hXZ1BxZ0YzR3hLbVVpOUk5SmJmK2xCRXRWckY0NDJPZWRlY21ZQllGZ3pS?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8e92f29-4d51-4424-d9f6-08dd6aa9e89e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 08:00:15.1585 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: taABSK/Ug9AcUpaByesuaF+Pj2XAh50pdkLj3DA0/VkZHmTvRjIWGYOjR9ly3cJH33qe8mbgxMSrWW7Tm+2g8pqlSM6JUsr2PGjHm1iPFlk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8521
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--------------pRRevc08SUsSaXCekSGe20kU
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


The issues reported are not related to patches:

  *

    igt@kms_flip@flip-vs-wf_vblank-interruptible:

      o shard-snb: PASS
        <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-snb5/igt@kms_flip@flip-vs-wf_vblank-interruptible.html>
        -> FAIL
        <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-snb5/igt@kms_flip@flip-vs-wf_vblank-interruptible.html>
        +1 other test fail
  *

    igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:

      o shard-tglu: PASS
        <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html>
        -> FAIL
        <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-6/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html>
        +2 other tests fail


Regards,

Ankit


On 3/24/2025 12:37 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Fix vrr.enable handling and add logging for fixed_rr
> *URL:* 	https://patchwork.freedesktop.org/series/146619/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_16301_full -> Patchwork_146619v1_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_146619v1_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_146619v1_full, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (9 -> 9)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_146619v1_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@kms_flip@flip-vs-wf_vblank-interruptible:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-snb5/igt@kms_flip@flip-vs-wf_vblank-interruptible.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-snb5/igt@kms_flip@flip-vs-wf_vblank-interruptible.html>
>         +1 other test fail
>  *
>
>     igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:
>
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-6/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html>
>         +2 other tests fail
>
>
>     Known issues
>
> Here are the changes found in Patchwork_146619v1_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@api_intel_bb@blit-reloc-keep-cache:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@api_intel_bb@blit-reloc-keep-cache.html>
>         (i915#8411
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>)
>         +1 other test skip
>  *
>
>     igt@api_intel_bb@object-reloc-keep-cache:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@api_intel_bb@object-reloc-keep-cache.html>
>         (i915#8411
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>)
>  *
>
>     igt@debugfs_test@basic-hwmon:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.html>
>         (i915#9318
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318>)
>  *
>
>     igt@device_reset@cold-reset-bound:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@device_reset@cold-reset-bound.html>
>         (i915#11078
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078>)
>  *
>
>     igt@device_reset@unbind-cold-reset-rebind:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@device_reset@unbind-cold-reset-rebind.html>
>         (i915#11078
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078>)
>  *
>
>     igt@drm_fdinfo@busy@vcs0:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@drm_fdinfo@busy@vcs0.html>
>         (i915#8414
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414>)
>         +7 other tests skip
>  *
>
>     igt@drm_fdinfo@virtual-busy-hang-all:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@drm_fdinfo@virtual-busy-hang-all.html>
>         (i915#8414
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414>)
>  *
>
>     igt@gem_bad_reloc@negative-reloc-lut:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +14 other tests skip
>  *
>
>     igt@gem_basic@multigpu-create-close:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@gem_basic@multigpu-create-close.html>
>         (i915#7697
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>)
>  *
>
>     igt@gem_ccs@block-multicopy-compressed:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@gem_ccs@block-multicopy-compressed.html>
>         (i915#9323
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>  *
>
>     igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html>
>         (i915#12392
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392>
>         / i915#13356
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>)
>  *
>
>     igt@gem_close_race@multigpu-basic-process:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_close_race@multigpu-basic-process.html>
>         (i915#7697
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>)
>  *
>
>     igt@gem_compute@compute-square:
>
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_compute@compute-square.html>
>         (i915#13665
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665>)
>  *
>
>     igt@gem_create@create-ext-set-pat:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_create@create-ext-set-pat.html>
>         (i915#8562
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@gem_create@create-ext-set-pat.html>
>         (i915#8562
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562>)
>  *
>
>     igt@gem_ctx_freq@sysfs@gt0:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-3/igt@gem_ctx_freq@sysfs@gt0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html>
>         (i915#9561
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561>)
>         +1 other test fail
>  *
>
>     igt@gem_ctx_persistence@hang:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_ctx_persistence@hang.html>
>         (i915#8555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>  *
>
>     igt@gem_ctx_persistence@heartbeat-hang:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@gem_ctx_persistence@heartbeat-hang.html>
>         (i915#8555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>  *
>
>     igt@gem_ctx_sseu@engines:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@gem_ctx_sseu@engines.html>
>         (i915#280
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
>  *
>
>     igt@gem_ctx_sseu@invalid-args:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@gem_ctx_sseu@invalid-args.html>
>         (i915#280
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
>  *
>
>     igt@gem_ctx_sseu@mmap-args:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html>
>         (i915#280
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_ctx_sseu@mmap-args.html>
>         (i915#280
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
>  *
>
>     igt@gem_eio@hibernate:
>
>       o shard-dg2: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_eio@hibernate.html>
>         (i915#7975
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975>)
>  *
>
>     igt@gem_eio@kms:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-8/igt@gem_eio@kms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-6/igt@gem_eio@kms.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784>)
>  *
>
>     igt@gem_eio@wait-wedge-10ms:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-mtlp-8/igt@gem_eio@wait-wedge-10ms.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-4/igt@gem_eio@wait-wedge-10ms.html>
>         (i915#13193
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193>)
>         +2 other tests abort
>  *
>
>     igt@gem_exec_balancer@bonded-dual:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_exec_balancer@bonded-dual.html>
>         (i915#4771
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771>)
>  *
>
>     igt@gem_exec_balancer@invalid-bonds:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_exec_balancer@invalid-bonds.html>
>         (i915#4036
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036>)
>  *
>
>     igt@gem_exec_balancer@parallel-balancer:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
>         +2 other tests skip
>  *
>
>     igt@gem_exec_balancer@parallel-keep-in-fence:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
>  *
>
>     igt@gem_exec_big@single:
>
>       o shard-tglu: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@gem_exec_big@single.html>
>         (i915#11713
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713>)
>  *
>
>     igt@gem_exec_capture@capture-recoverable:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@gem_exec_capture@capture-recoverable.html>
>         (i915#6344
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344>)
>  *
>
>     igt@gem_exec_fence@concurrent:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_exec_fence@concurrent.html>
>         (i915#4812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>         +2 other tests skip
>  *
>
>     igt@gem_exec_flush@basic-wb-prw-default:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_exec_flush@basic-wb-prw-default.html>
>         (i915#3539
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539>
>         / i915#4852
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852>)
>  *
>
>     igt@gem_exec_flush@basic-wb-rw-before-default:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_exec_flush@basic-wb-rw-before-default.html>
>         (i915#3539
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539>
>         / i915#4852
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852>)
>  *
>
>     igt@gem_exec_reloc@basic-cpu-read-active:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_exec_reloc@basic-cpu-read-active.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +2 other tests skip
>  *
>
>     igt@gem_exec_reloc@basic-gtt-read-active:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-read-active.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +9 other tests skip
>  *
>
>     igt@gem_exec_reloc@basic-write-cpu-active:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_exec_reloc@basic-write-cpu-active.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +3 other tests skip
>  *
>
>     igt@gem_exec_schedule@preempt-queue-chain:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_exec_schedule@preempt-queue-chain.html>
>         (i915#4537
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537>
>         / i915#4812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>  *
>
>     igt@gem_exec_schedule@preempt-queue-contexts-chain:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_exec_schedule@preempt-queue-contexts-chain.html>
>         (i915#4537
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537>
>         / i915#4812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>  *
>
>     igt@gem_fence_thrash@bo-write-verify-none:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_fence_thrash@bo-write-verify-none.html>
>         (i915#4860
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>  *
>
>     igt@gem_lmem_swapping@massive:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_lmem_swapping@massive.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>  *
>
>     igt@gem_lmem_swapping@parallel-random-engines:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-engines.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>  *
>
>     igt@gem_lmem_swapping@parallel-random-verify:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +5 other tests skip
>  *
>
>     igt@gem_lmem_swapping@parallel-random-verify-ccs:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@gem_lmem_swapping@parallel-random-verify-ccs.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +1 other test skip
>  *
>
>     igt@gem_media_vme:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@gem_media_vme.html>
>         (i915#284
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284>)
>  *
>
>     igt@gem_mmap_gtt@bad-object:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_mmap_gtt@bad-object.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>         +4 other tests skip
>  *
>
>     igt@gem_mmap_gtt@big-copy-odd:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_mmap_gtt@big-copy-odd.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>         +7 other tests skip
>  *
>
>     igt@gem_mmap_gtt@cpuset-medium-copy:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-medium-copy.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>         +5 other tests skip
>  *
>
>     igt@gem_mmap_wc@close:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_mmap_wc@close.html>
>         (i915#4083
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
>         +1 other test skip
>  *
>
>     igt@gem_mmap_wc@read-write-distinct:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_mmap_wc@read-write-distinct.html>
>         (i915#4083
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
>         +5 other tests skip
>  *
>
>     igt@gem_mmap_wc@write-gtt-read-wc:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_mmap_wc@write-gtt-read-wc.html>
>         (i915#4083
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
>  *
>
>     igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +9 other tests skip
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>  *
>
>     igt@gem_pread@self:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_pread@self.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +2 other tests skip
>  *
>
>     igt@gem_pxp@create-regular-context-2:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-8/igt@gem_pxp@create-regular-context-2.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@gem_pxp@create-regular-context-2.html>
>         (i915#12917
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917>
>         / i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>         +1 other test timeout
>  *
>
>     igt@gem_pxp@protected-raw-src-copy-not-readible:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>         +1 other test skip
>  *
>
>     igt@gem_pxp@reject-modify-context-protection-off-1:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_pxp@reject-modify-context-protection-off-1.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>  *
>
>     igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>
>       o shard-rkl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html>
>         (i915#12917
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917>
>         / i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>         +2 other tests timeout
>  *
>
>     igt@gem_readwrite@beyond-eob:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_readwrite@beyond-eob.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +3 other tests skip
>  *
>
>     igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>
>         / i915#8428
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>)
>         +2 other tests skip
>  *
>
>     igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>
>         / i915#8428
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>)
>         +5 other tests skip
>  *
>
>     igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html>
>         (i915#8428
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>)
>         +1 other test skip
>  *
>
>     igt@gem_set_tiling_vs_pwrite:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_set_tiling_vs_pwrite.html>
>         (i915#4079
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079>)
>  *
>
>     igt@gem_softpin@evict-snoop-interruptible:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_softpin@evict-snoop-interruptible.html>
>         (i915#4885
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885>)
>  *
>
>     igt@gem_softpin@noreloc:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-7/igt@gem_softpin@noreloc.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@gem_softpin@noreloc.html>
>         (i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>         +13 other tests dmesg-warn
>  *
>
>     igt@gem_userptr_blits@access-control:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_userptr_blits@access-control.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gem_userptr_blits@coherency-sync:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@gem_userptr_blits@coherency-sync.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>
>         / i915#4880
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880>)
>  *
>
>     igt@gem_userptr_blits@readonly-pwrite-unsync:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gem_userptr_blits@unsync-overlap:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@gem_userptr_blits@unsync-overlap.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_userptr_blits@unsync-overlap.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gen9_exec_parse@bb-chained:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@gen9_exec_parse@bb-chained.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>
>         / i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>         +1 other test skip
>  *
>
>     igt@gen9_exec_parse@bb-large:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gen9_exec_parse@bb-large.html>
>         (i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>         +2 other tests skip
>  *
>
>     igt@gen9_exec_parse@bb-oversize:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@gen9_exec_parse@bb-oversize.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>
>         / i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>         +2 other tests skip
>  *
>
>     igt@gen9_exec_parse@bb-start-param:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
>         +3 other tests skip
>  *
>
>     igt@gen9_exec_parse@cmd-crossing-page:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gen9_exec_parse@cmd-crossing-page.html>
>         (i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>         +2 other tests skip
>  *
>
>     igt@i915_pm_freq_api@freq-reset:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@i915_pm_freq_api@freq-reset.html>
>         (i915#8399
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>)
>  *
>
>     igt@i915_pm_freq_api@freq-suspend@gt0:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html>
>         (i915#12455
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455>
>         / i915#13820
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820>)
>         +1 other test incomplete
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle:
>
>       o shard-tglu: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle.html>
>         (i915#13790
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790>
>         / i915#2681
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681>)
>         +4 other tests warn
>  *
>
>     igt@i915_pm_rps@min-max-config-loaded:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@i915_pm_rps@min-max-config-loaded.html>
>         (i915#11681
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681>
>         / i915#6621
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621>)
>  *
>
>     igt@i915_pm_rps@thresholds-idle-park:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@i915_pm_rps@thresholds-idle-park.html>
>         (i915#11681
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681>)
>  *
>
>     igt@i915_selftest@mock@memory_region:
>
>       o shard-rkl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@i915_selftest@mock@memory_region.html>
>         (i915#9311
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311>)
>         +1 other test dmesg-warn
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o shard-tglu-1: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#4817
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817>
>         / i915#7443
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443>)
>  *
>
>     igt@intel_hwmon@hwmon-write:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@intel_hwmon@hwmon-write.html>
>         (i915#7707
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707>)
>  *
>
>     igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-y-rc-ccs-cc:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-y-rc-ccs-cc.html>
>         (i915#8709
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709>)
>         +3 other tests skip
>  *
>
>     igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html>
>         (i915#8709
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709>)
>         +1 other test skip
>  *
>
>     igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-mc-ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-mc-ccs.html>
>         (i915#8709
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709>)
>         +7 other tests skip
>  *
>
>     igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html>
>         (i915#9531
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531>)
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html>
>         (i915#9531
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531>)
>  *
>
>     igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html>
>         (i915#1769
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html>
>         (i915#1769
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +1 other test skip
>  *
>
>     igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         +2 other tests skip
>  *
>
>     igt@kms_big_fb@4-tiled-8bpp-rotate-270:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html>
>         +12 other tests skip
>  *
>
>     igt@kms_big_fb@4-tiled-addfb:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         +9 other tests skip
>  *
>
>     igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>  *
>
>     igt@kms_big_fb@linear-16bpp-rotate-270:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_big_fb@linear-16bpp-rotate-270.html>
>         +10 other tests skip
>  *
>
>     igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         +2 other tests skip
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html>
>         (i915#3638
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
>         +2 other tests skip
>  *
>
>     igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         +5 other tests skip
>  *
>
>     igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         +1 other test skip
>  *
>
>     igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html>
>         (i915#12313
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
>         +1 other test skip
>  *
>
>     igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc.html>
>         (i915#10307
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307>
>         / i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +44 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html>
>         (i915#12313
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
>  *
>
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +136 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3.html>
>         (i915#10307
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307>
>         / i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +146 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html>
>         (i915#12805
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805>)
>  *
>
>     igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-2:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-2.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +9 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +7 other tests skip
>  *
>
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg1-18/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +99 other tests skip
>  *
>
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +39 other tests skip
>  *
>
>     igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1.html>
>         (i915#10307
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307>
>         / i915#10434
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434>
>         / i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>  *
>
>     igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html>
>         (i915#12313
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
>  *
>
>     igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +29 other tests skip
>  *
>
>     igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +19 other tests skip
>  *
>
>     igt@kms_cdclk@mode-transition:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_cdclk@mode-transition.html>
>         (i915#3742
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742>)
>  *
>
>     igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html>
>         (i915#13781
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781>)
>         +3 other tests skip
>  *
>
>     igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html>
>         (i915#13783
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783>)
>         +3 other tests skip
>  *
>
>     igt@kms_chamelium_color@ctm-0-50:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_chamelium_color@ctm-0-50.html>
>         +2 other tests skip
>  *
>
>     igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +3 other tests skip
>  *
>
>     igt@kms_chamelium_frames@hdmi-aspect-ratio:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@kms_chamelium_frames@hdmi-aspect-ratio.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +5 other tests skip
>  *
>
>     igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>  *
>
>     igt@kms_chamelium_hpd@vga-hpd-fast:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-fast.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +13 other tests skip
>  *
>
>     igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +4 other tests skip
>  *
>
>     igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html>
>         (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
>         / i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +5 other tests skip
>  *
>
>     igt@kms_color@deep-color:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-10/igt@kms_color@deep-color.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-1/igt@kms_color@deep-color.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_color@deep-color.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +5 other tests skip
>  *
>
>     igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
>
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html>
>         (i915#7173
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
>  *
>
>     igt@kms_content_protection@dp-mst-type-0:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0.html>
>         (i915#3116
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116>)
>  *
>
>     igt@kms_content_protection@dp-mst-type-1:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_content_protection@dp-mst-type-1.html>
>         (i915#3299
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299>)
>  *
>
>     igt@kms_content_protection@srm:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_content_protection@srm.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>)
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_content_protection@srm.html>
>         (i915#6944
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
>         / i915#7116
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116>
>         / i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>)
>  *
>
>     igt@kms_content_protection@type1:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_content_protection@type1.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>         +2 other tests skip
>  *
>
>     igt@kms_content_protection@uevent:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_content_protection@uevent.html>
>         (i915#6944
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>  *
>
>     igt@kms_cursor_crc@cursor-offscreen-512x512:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html>
>         (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-512x512:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-512x512.html>
>         (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>         +1 other test skip
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html>
>         (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-max-size:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_cursor_crc@cursor-onscreen-max-size.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +1 other test skip
>  *
>
>     igt@kms_cursor_crc@cursor-random-128x42:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-random-128x42.html>
>         (i915#8814
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814>)
>  *
>
>     igt@kms_cursor_crc@cursor-random-512x170:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_cursor_crc@cursor-random-512x170.html>
>         (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>         +4 other tests skip
>  *
>
>     igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8814
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814>)
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:
>
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html>
>         (i915#13566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-32x10:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-32x10.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +1 other test skip
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-512x170:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-512x170.html>
>         (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
>  *
>
>     igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html>
>         (i915#9809
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809>)
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html>
>         (i915#13046
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046>
>         / i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>         +1 other test skip
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html>
>         +29 other tests skip
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html>
>         (i915#13046
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046>
>         / i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>         +2 other tests skip
>  *
>
>     igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html>
>         (i915#9067
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067>)
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html>
>         (i915#9067
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067>)
>  *
>
>     igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-glk1/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-glk8/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346>)
>  *
>
>     igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html>
>         (i915#9723
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723>)
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html>
>         (i915#9723
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723>)
>         +1 other test skip
>  *
>
>     igt@kms_display_modes@extended-mode-basic:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_display_modes@extended-mode-basic.html>
>         (i915#13691
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691>)
>  *
>
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#3804
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804>)
>  *
>
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html>
>         (i915#3804
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804>)
>  *
>
>     igt@kms_dp_link_training@non-uhbr-mst:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-mst.html>
>         (i915#13749
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749>)
>  *
>
>     igt@kms_dp_link_training@uhbr-mst:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_dp_link_training@uhbr-mst.html>
>         (i915#13749
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749>)
>  *
>
>     igt@kms_draw_crc@draw-method-mmap-gtt:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_draw_crc@draw-method-mmap-gtt.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812>)
>  *
>
>     igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html>
>         (i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>  *
>
>     igt@kms_dsc@dsc-with-formats:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_dsc@dsc-with-formats.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>  *
>
>     igt@kms_dsc@dsc-with-output-formats:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_dsc@dsc-with-output-formats.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>  *
>
>     igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html>
>         (i915#13798
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13798>)
>  *
>
>     igt@kms_fbcon_fbt@psr-suspend:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_fbcon_fbt@psr-suspend.html>
>         (i915#3469
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469>)
>  *
>
>     igt@kms_feature_discovery@display-2x:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_feature_discovery@display-2x.html>
>         (i915#1839
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839>)
>  *
>
>     igt@kms_feature_discovery@dp-mst:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@kms_feature_discovery@dp-mst.html>
>         (i915#9337
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337>)
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_feature_discovery@dp-mst.html>
>         (i915#9337
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337>)
>  *
>
>     igt@kms_fence_pin_leak:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_fence_pin_leak.html>
>         (i915#4881
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881>)
>  *
>
>     igt@kms_flip@2x-busy-flip:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_flip@2x-busy-flip.html>
>         (i915#9934
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
>         +2 other tests skip
>  *
>
>     igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html>
>         (i915#3637
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>)
>         +5 other tests skip
>  *
>
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html>
>         (i915#9934
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
>         +1 other test skip
>  *
>
>     igt@kms_flip@2x-flip-vs-panning-vs-hang:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html>
>         (i915#9934
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
>         +6 other tests skip
>  *
>
>     igt@kms_flip@2x-modeset-vs-vblank-race:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_flip@2x-modeset-vs-vblank-race.html>
>         (i915#3637
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>)
>         +1 other test skip
>  *
>
>     igt@kms_flip@flip-vs-fences-interruptible:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_flip@flip-vs-fences-interruptible.html>
>         (i915#8381
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +1 other test skip
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587>
>         / i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +2 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +3 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +3 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +2 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +1 other test skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587>
>         / i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +1 other test skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         +1 other test skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +4 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +3 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>         +7 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html>
>         (i915#6880
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-tiling-4:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html>
>         (i915#5439
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-tiling-y:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-tiling-y.html>
>         (i915#10055
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html>
>         +15 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +13 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +3 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html>
>         (i915#1825
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>)
>         +60 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html>
>         (i915#1825
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>)
>         +12 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html>
>         (i915#10055
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +11 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html>
>         (i915#3023
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>)
>         +31 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>         +18 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html>
>         +49 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html>
>         (i915#10433
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433>
>         / i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +1 other test skip
>  *
>
>     igt@kms_hdr@bpc-switch:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_hdr@bpc-switch.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>  *
>
>     igt@kms_hdr@bpc-switch-suspend:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-11/igt@kms_hdr@bpc-switch-suspend.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-2/igt@kms_hdr@bpc-switch-suspend.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>  *
>
>     igt@kms_hdr@static-swap:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_hdr@static-swap.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>         +1 other test skip
>  *
>
>     igt@kms_joiner@basic-force-big-joiner:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_joiner@basic-force-big-joiner.html>
>         (i915#12388
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388>)
>  *
>
>     igt@kms_joiner@invalid-modeset-big-joiner:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_joiner@invalid-modeset-big-joiner.html>
>         (i915#10656
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656>)
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_joiner@invalid-modeset-big-joiner.html>
>         (i915#10656
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656>)
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@kms_joiner@invalid-modeset-big-joiner.html>
>         (i915#10656
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656>)
>  *
>
>     igt@kms_joiner@invalid-modeset-ultra-joiner:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@kms_joiner@invalid-modeset-ultra-joiner.html>
>         (i915#12339
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339>)
>  *
>
>     igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html>
>         (i915#13522
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html>
>         (i915#13522
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522>)
>  *
>
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         (i915#4816
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816>)
>  *
>
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>
>         / i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>)
>         +10 other tests skip
>  *
>
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>)
>         +3 other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>
>         / i915#6953
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953>
>         / i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>)
>         +3 other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b.html>
>         (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>)
>         +3 other tests skip
>  *
>
>     igt@kms_pm_backlight@brightness-with-dpms:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_pm_backlight@brightness-with-dpms.html>
>         (i915#12343
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343>)
>  *
>
>     igt@kms_pm_backlight@fade-with-suspend:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_pm_backlight@fade-with-suspend.html>
>         (i915#9812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812>)
>         +1 other test skip
>  *
>
>     igt@kms_pm_lpsp@screens-disabled:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_pm_lpsp@screens-disabled.html>
>         (i915#8430
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430>)
>  *
>
>     igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>  *
>
>     igt@kms_pm_rpm@dpms-non-lpsp:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_pm_rpm@dpms-non-lpsp.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>         +1 other test skip
>  *
>
>     igt@kms_pm_rpm@i2c:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-11/igt@kms_pm_rpm@i2c.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-2/igt@kms_pm_rpm@i2c.html>
>         (i915#8717
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717>)
>  *
>
>     igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>         +1 other test skip
>  *
>
>     igt@kms_pm_rpm@modeset-non-lpsp:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>         +2 other tests skip
>  *
>
>     igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>         +2 other tests skip
>  *
>
>     igt@kms_prime@d3hot:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_prime@d3hot.html>
>         (i915#6524
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_prime@d3hot.html>
>         (i915#6524
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>
>         / i915#6805
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805>)
>  *
>
>     igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html>
>         (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +5 other tests skip
>  *
>
>     igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html>
>         (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +2 other tests skip
>  *
>
>     igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf.html>
>         (i915#12316
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316>)
>         +2 other tests skip
>  *
>
>     igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html>
>         (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +1 other test skip
>  *
>
>     igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html>
>         (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +12 other tests skip
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html>
>         (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +5 other tests skip
>  *
>
>     igt@kms_psr2_su@page_flip-p010:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_psr2_su@page_flip-p010.html>
>         (i915#9683
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>  *
>
>     igt@kms_psr@fbc-psr-primary-mmap-gtt:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_psr@fbc-psr-primary-mmap-gtt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +14 other tests skip
>  *
>
>     igt@kms_psr@fbc-psr2-basic@edp-1:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@kms_psr@fbc-psr2-basic@edp-1.html>
>         (i915#9688
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688>)
>         +6 other tests skip
>  *
>
>     igt@kms_psr@pr-primary-blt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_psr@pr-primary-blt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +4 other tests skip
>  *
>
>     igt@kms_psr@psr-sprite-plane-move:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@kms_psr@psr-sprite-plane-move.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +29 other tests skip
>  *
>
>     igt@kms_psr@psr2-cursor-plane-onoff:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_psr@psr2-cursor-plane-onoff.html>
>         (i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +12 other tests skip
>  *
>
>     igt@kms_psr@psr2-primary-mmap-gtt:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_psr@psr2-primary-mmap-gtt.html>
>         (i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +4 other tests skip
>  *
>
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#9685
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685>)
>  *
>
>     igt@kms_rotation_crc@exhaust-fences:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_rotation_crc@exhaust-fences.html>
>         (i915#4235
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235>)
>  *
>
>     igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html>
>         (i915#5289
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
>  *
>
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html>
>         (i915#12755
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755>)
>  *
>
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html>
>         (i915#5289
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
>         +1 other test skip
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html>
>         (i915#5289
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
>  *
>
>     igt@kms_rotation_crc@sprite-rotation-270:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_rotation_crc@sprite-rotation-270.html>
>         (i915#12755
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755>)
>  *
>
>     igt@kms_scaling_modes@scaling-mode-full:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_scaling_modes@scaling-mode-full.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +2 other tests skip
>  *
>
>     igt@kms_tiled_display@basic-test-pattern:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_tiled_display@basic-test-pattern.html>
>         (i915#8623
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html>
>         (i915#8623
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623>)
>  *
>
>     igt@kms_universal_plane@cursor-fb-leak:
>
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg1-19/igt@kms_universal_plane@cursor-fb-leak.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak.html>
>         (i915#9196
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196>)
>         +1 other test fail
>  *
>
>     igt@kms_vblank@ts-continuation-dpms-suspend:
>
>       o shard-rkl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_vblank@ts-continuation-dpms-suspend.html>
>         (i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>         +12 other tests dmesg-warn
>  *
>
>     igt@kms_vrr@flip-basic-fastset:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_vrr@flip-basic-fastset.html>
>         (i915#9906
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>  *
>
>     igt@kms_vrr@lobf:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@kms_vrr@lobf.html>
>         (i915#11920
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920>)
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_vrr@lobf.html>
>         (i915#11920
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920>)
>  *
>
>     igt@kms_vrr@seamless-rr-switch-virtual:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-virtual.html>
>         (i915#9906
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>  *
>
>     igt@kms_vrr@seamless-rr-switch-vrr:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_vrr@seamless-rr-switch-vrr.html>
>         (i915#9906
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html>
>         (i915#9906
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>         +2 other tests skip
>  *
>
>     igt@kms_writeback@writeback-fb-id:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@kms_writeback@writeback-fb-id.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>)
>  *
>
>     igt@kms_writeback@writeback-fb-id-xrgb2101010:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_writeback@writeback-fb-id-xrgb2101010.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>
>         / i915#9412
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412>)
>       o shard-tglu-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>
>         / i915#9412
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412>)
>  *
>
>     igt@perf@gen8-unprivileged-single-ctx-counters:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@perf@gen8-unprivileged-single-ctx-counters.html>
>         (i915#2436
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436>)
>  *
>
>     igt@perf@global-sseu-config-invalid:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@perf@global-sseu-config-invalid.html>
>         (i915#7387
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387>)
>  *
>
>     igt@prime_vgem@basic-fence-mmap:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@prime_vgem@basic-fence-mmap.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>
>         / i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>  *
>
>     igt@prime_vgem@basic-write:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@prime_vgem@basic-write.html>
>         (i915#3291
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291>
>         / i915#3708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>  *
>
>     igt@prime_vgem@fence-flip-hang:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@prime_vgem@fence-flip-hang.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>  *
>
>     igt@sriov_basic@enable-vfs-autoprobe-off:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@sriov_basic@enable-vfs-autoprobe-off.html>
>         (i915#9917
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917>)
>  *
>
>     igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:
>
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html>
>         (i915#12910
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910>)
>         +9 other tests fail
>  *
>
>     igt@sriov_basic@enable-vfs-autoprobe-on:
>
>       o shard-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@sriov_basic@enable-vfs-autoprobe-on.html>
>         (i915#9917
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_eio@in-flight-internal-immediate:
>
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-mtlp-7/igt@gem_eio@in-flight-internal-immediate.html>
>         (i915#13193
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@gem_eio@in-flight-internal-immediate.html>
>         +4 other tests pass
>  *
>
>     igt@gem_lmem_swapping@smem-oom@lmem0:
>
>       o shard-dg2: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         (i915#5493
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         +1 other test pass
>  *
>
>     igt@gem_pxp@regular-baseline-src-copy-readible:
>
>       o shard-rkl: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-4/igt@gem_pxp@regular-baseline-src-copy-readible.html>
>         (i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@gem_pxp@regular-baseline-src-copy-readible.html>
>         +1 other test pass
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-glk: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-glk7/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-glk4/igt@gen9_exec_parse@allowed-single.html>
>  *
>
>     igt@i915_pm_rc6_residency@rc6-accuracy:
>
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-accuracy.html>
>         (i915#12942
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.html>
>         +1 other test pass
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-256x85:
>
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-256x85.html>
>         (i915#13566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-256x85.html>
>         +1 other test pass
>  *
>
>     igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-4/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html>
>  *
>
>     igt@kms_dp_link_training@non-uhbr-sst:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-3/igt@kms_dp_link_training@non-uhbr-sst.html>
>         (i915#13749
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html>
>  *
>
>     igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
>
>       o shard-snb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-snb1/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html>
>         (i915#11832
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-snb5/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html>
>         +1 other test pass
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html>
>         (i915#13027
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html>
>         +1 other test pass
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
>
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html>
>         +4 other tests pass
>  *
>
>     igt@kms_hdr@static-toggle:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-3/igt@kms_hdr@static-toggle.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-11/igt@kms_hdr@static-toggle.html>
>         +1 other test pass
>  *
>
>     igt@kms_pm_dc@dc6-dpms:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-mtlp-6/igt@kms_pm_dc@dc6-dpms.html>
>         (i915#12913
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12913>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-7/igt@kms_pm_dc@dc6-dpms.html>
>  *
>
>     igt@kms_vblank@query-idle-hang:
>
>       o shard-dg1: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg1-16/igt@kms_vblank@query-idle-hang.html>
>         (i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg1-17/igt@kms_vblank@query-idle-hang.html>
>  *
>
>     igt@perf_pmu@busy-double-start@vcs0:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-5/igt@perf_pmu@busy-double-start@vcs0.html>
>         (i915#4349
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-11/igt@perf_pmu@busy-double-start@vcs0.html>
>  *
>
>     igt@sysfs_heartbeat_interval@precise@rcs0:
>
>       o shard-rkl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-1/igt@sysfs_heartbeat_interval@precise@rcs0.html>
>         (i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-3/igt@sysfs_heartbeat_interval@precise@rcs0.html>
>         +11 other tests pass
>
>
>         Warnings
>
>  *
>
>     igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg1-16/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html>
>         (i915#3638
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>
>         / i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg1-17/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html>
>         (i915#3638
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
>  *
>
>     igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg1-16/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html>
>         (i915#12313
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>
>         / i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg1-17/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html>
>         (i915#12313
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
>  *
>
>     igt@kms_content_protection@atomic:
>
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-snb5/igt@kms_content_protection@atomic.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-snb5/igt@kms_content_protection@atomic.html>
>         (i915#8816
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8816>)
>  *
>
>     igt@kms_content_protection@atomic-dpms:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-7/igt@kms_content_protection@atomic-dpms.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html>
>         (i915#7173
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
>  *
>
>     igt@kms_content_protection@type1:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-10/igt@kms_content_protection@type1.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
>         / i915#7162
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-1/igt@kms_content_protection@type1.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>  *
>
>     igt@kms_content_protection@uevent:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-11/igt@kms_content_protection@uevent.html>
>         (i915#1339
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339>
>         / i915#7173
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-6/igt@kms_content_protection@uevent.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>  *
>
>     igt@kms_flip@2x-flip-vs-suspend-interruptible:
>
>       o shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html>
>         (i915#12314
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314>
>         / i915#12745
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745>
>         / i915#4839
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839>)
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-glk2/igt@kms_flip@2x-flip-vs-suspend-interruptible.html>
>         (i915#12745
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745>
>         / i915#4839
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839>)
>  *
>
>     igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
>
>       o shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         (i915#12314
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314>
>         / i915#4839
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839>)
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-glk2/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         (i915#4839
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html>
>         (i915#10433
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433>
>         / i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +3 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html>
>         (i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html>
>  *
>
>     igt@kms_pm_lpsp@kms-lpsp:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html>
>         (i915#3828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html>
>         (i915#9340
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340>)
>
>
>     Build changes
>
>   * Linux: CI_DRM_16301 -> Patchwork_146619v1
>
> CI-20190529: 20190529
> CI_DRM_16301: a123616cf3afc205116835d8b083f48272583dcd @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_8278: b6673db372bd8987f65948d3a97f8dcd2ef42b01 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_146619v1: a123616cf3afc205116835d8b083f48272583dcd @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>
--------------pRRevc08SUsSaXCekSGe20kU
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <p>The issues reported are not related to patches:</p>
    <ul>
      <li>
        <p>igt@kms_flip@flip-vs-wf_vblank-interruptible:</p>
        <ul>
          <li>shard-snb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-snb5/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">PASS</a>
            -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-snb5/igt@kms_flip@flip-vs-wf_vblank-interruptible.html">FAIL</a>
            +1 other test fail</li>
        </ul>
      </li>
      <li>
        <p>igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:</p>
        <ul>
          <li>shard-tglu: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html">PASS</a>
            -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-6/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html">FAIL</a>
            +2 other tests fail</li>
        </ul>
      </li>
    </ul>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Ankit</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 3/24/2025 12:37 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:174280003274.70384.5298839828995065168@18a75f3d1eae">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Fix vrr.enable handling and add logging for fixed_rr</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/146619/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/146619/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_16301_full -&gt;
        Patchwork_146619v1_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_146619v1_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_146619v1_full, please notify your bug
        team (<a class="moz-txt-link-abbreviated" href="mailto:I915-ci-infra@lists.freedesktop.org">I915-ci-infra@lists.freedesktop.org</a>) to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (9 -&gt; 9)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_146619v1_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@kms_flip@flip-vs-wf_vblank-interruptible:</p>
          <ul>
            <li>shard-snb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-snb5/igt@kms_flip@flip-vs-wf_vblank-interruptible.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-snb5/igt@kms_flip@flip-vs-wf_vblank-interruptible.html" moz-do-not-send="true">FAIL</a> +1 other test fail</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:</p>
          <ul>
            <li>shard-tglu: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-6/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html" moz-do-not-send="true">FAIL</a> +2 other tests fail</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_146619v1_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@api_intel_bb@blit-reloc-keep-cache.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411" moz-do-not-send="true">i915#8411</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@api_intel_bb@object-reloc-keep-cache:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@api_intel_bb@object-reloc-keep-cache.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411" moz-do-not-send="true">i915#8411</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@debugfs_test@basic-hwmon:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318" moz-do-not-send="true">i915#9318</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@device_reset@cold-reset-bound:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@device_reset@cold-reset-bound.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078" moz-do-not-send="true">i915#11078</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@device_reset@unbind-cold-reset-rebind:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@device_reset@unbind-cold-reset-rebind.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078" moz-do-not-send="true">i915#11078</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@drm_fdinfo@busy@vcs0:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@drm_fdinfo@busy@vcs0.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414" moz-do-not-send="true">i915#8414</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@drm_fdinfo@virtual-busy-hang-all:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@drm_fdinfo@virtual-busy-hang-all.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414" moz-do-not-send="true">i915#8414</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_bad_reloc@negative-reloc-lut:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281" moz-do-not-send="true">i915#3281</a>) +14 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_basic@multigpu-create-close:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@gem_basic@multigpu-create-close.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697" moz-do-not-send="true">i915#7697</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ccs@block-multicopy-compressed:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@gem_ccs@block-multicopy-compressed.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323" moz-do-not-send="true">i915#9323</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392" moz-do-not-send="true">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356" moz-do-not-send="true">i915#13356</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_close_race@multigpu-basic-process:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_close_race@multigpu-basic-process.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697" moz-do-not-send="true">i915#7697</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_compute@compute-square:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_compute@compute-square.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665" moz-do-not-send="true">i915#13665</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_create@create-ext-set-pat:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_create@create-ext-set-pat.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562" moz-do-not-send="true">i915#8562</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@gem_create@create-ext-set-pat.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562" moz-do-not-send="true">i915#8562</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_freq@sysfs@gt0:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-3/igt@gem_ctx_freq@sysfs@gt0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561" moz-do-not-send="true">i915#9561</a>) +1 other test fail</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@hang:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_ctx_persistence@hang.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555" moz-do-not-send="true">i915#8555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@heartbeat-hang:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@gem_ctx_persistence@heartbeat-hang.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555" moz-do-not-send="true">i915#8555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_sseu@engines:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@gem_ctx_sseu@engines.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280" moz-do-not-send="true">i915#280</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_sseu@invalid-args:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@gem_ctx_sseu@invalid-args.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280" moz-do-not-send="true">i915#280</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_sseu@mmap-args:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280" moz-do-not-send="true">i915#280</a>)</li>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_ctx_sseu@mmap-args.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280" moz-do-not-send="true">i915#280</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@hibernate:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_eio@hibernate.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975" moz-do-not-send="true">i915#7975</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@kms:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-8/igt@gem_eio@kms.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-6/igt@gem_eio@kms.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784" moz-do-not-send="true">i915#5784</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@wait-wedge-10ms:</p>
          <ul>
            <li>shard-mtlp: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-mtlp-8/igt@gem_eio@wait-wedge-10ms.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-4/igt@gem_eio@wait-wedge-10ms.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193" moz-do-not-send="true">i915#13193</a>) +2 other tests
              abort</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@bonded-dual:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_exec_balancer@bonded-dual.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771" moz-do-not-send="true">i915#4771</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@invalid-bonds:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_exec_balancer@invalid-bonds.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036" moz-do-not-send="true">i915#4036</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-balancer:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525" moz-do-not-send="true">i915#4525</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@gem_exec_balancer@parallel-keep-in-fence.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525" moz-do-not-send="true">i915#4525</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_big@single:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@gem_exec_big@single.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713" moz-do-not-send="true">i915#11713</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_capture@capture-recoverable:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@gem_exec_capture@capture-recoverable.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344" moz-do-not-send="true">i915#6344</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fence@concurrent:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_exec_fence@concurrent.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812" moz-do-not-send="true">i915#4812</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-wb-prw-default:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_exec_flush@basic-wb-prw-default.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539" moz-do-not-send="true">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852" moz-do-not-send="true">i915#4852</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_exec_flush@basic-wb-rw-before-default.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539" moz-do-not-send="true">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852" moz-do-not-send="true">i915#4852</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_exec_reloc@basic-cpu-read-active.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281" moz-do-not-send="true">i915#3281</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-gtt-read-active:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-read-active.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281" moz-do-not-send="true">i915#3281</a>) +9 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_exec_reloc@basic-write-cpu-active.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281" moz-do-not-send="true">i915#3281</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@preempt-queue-chain:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_exec_schedule@preempt-queue-chain.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537" moz-do-not-send="true">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812" moz-do-not-send="true">i915#4812</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_exec_schedule@preempt-queue-contexts-chain.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537" moz-do-not-send="true">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812" moz-do-not-send="true">i915#4812</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_fence_thrash@bo-write-verify-none:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_fence_thrash@bo-write-verify-none.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860" moz-do-not-send="true">i915#4860</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@massive:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_lmem_swapping@massive.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613" moz-do-not-send="true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-engines:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-engines.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613" moz-do-not-send="true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-verify:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613" moz-do-not-send="true">i915#4613</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@gem_lmem_swapping@parallel-random-verify-ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613" moz-do-not-send="true">i915#4613</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_media_vme:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@gem_media_vme.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284" moz-do-not-send="true">i915#284</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@bad-object:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_mmap_gtt@bad-object.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077" moz-do-not-send="true">i915#4077</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@big-copy-odd:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_mmap_gtt@big-copy-odd.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077" moz-do-not-send="true">i915#4077</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-medium-copy.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077" moz-do-not-send="true">i915#4077</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_wc@close:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_mmap_wc@close.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083" moz-do-not-send="true">i915#4083</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_wc@read-write-distinct:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_mmap_wc@read-write-distinct.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083" moz-do-not-send="true">i915#4083</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_mmap_wc@write-gtt-read-wc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083" moz-do-not-send="true">i915#4083</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282" moz-do-not-send="true">i915#3282</a>) +9 other tests
              skip</li>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282" moz-do-not-send="true">i915#3282</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pread@self:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_pread@self.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282" moz-do-not-send="true">i915#3282</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@create-regular-context-2:</p>
          <ul>
            <li>shard-rkl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-8/igt@gem_pxp@create-regular-context-2.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@gem_pxp@create-regular-context-2.html" moz-do-not-send="true">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917" moz-do-not-send="true">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964" moz-do-not-send="true">i915#12964</a>) +1 other test
              timeout</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270" moz-do-not-send="true">i915#4270</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_pxp@reject-modify-context-protection-off-1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270" moz-do-not-send="true">i915#4270</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html" moz-do-not-send="true">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917" moz-do-not-send="true">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964" moz-do-not-send="true">i915#12964</a>) +2 other tests
              timeout</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_readwrite@beyond-eob:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_readwrite@beyond-eob.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282" moz-do-not-send="true">i915#3282</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190" moz-do-not-send="true">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428" moz-do-not-send="true">i915#8428</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190" moz-do-not-send="true">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428" moz-do-not-send="true">i915#8428</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428" moz-do-not-send="true">i915#8428</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_set_tiling_vs_pwrite:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_set_tiling_vs_pwrite.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079" moz-do-not-send="true">i915#4079</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_softpin@evict-snoop-interruptible:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_softpin@evict-snoop-interruptible.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885" moz-do-not-send="true">i915#4885</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_softpin@noreloc:</p>
          <ul>
            <li>shard-rkl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-7/igt@gem_softpin@noreloc.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@gem_softpin@noreloc.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964" moz-do-not-send="true">i915#12964</a>) +13 other tests
              dmesg-warn</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@access-control:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_userptr_blits@access-control.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297" moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@coherency-sync:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@gem_userptr_blits@coherency-sync.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297" moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297" moz-do-not-send="true">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880" moz-do-not-send="true">i915#4880</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297" moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@unsync-overlap:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@gem_userptr_blits@unsync-overlap.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297" moz-do-not-send="true">i915#3297</a>)</li>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gem_userptr_blits@unsync-overlap.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297" moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-chained:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@gen9_exec_parse@bb-chained.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527" moz-do-not-send="true">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856" moz-do-not-send="true">i915#2856</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-large:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@gen9_exec_parse@bb-large.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856" moz-do-not-send="true">i915#2856</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-oversize:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@gen9_exec_parse@bb-oversize.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527" moz-do-not-send="true">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856" moz-do-not-send="true">i915#2856</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-start-param:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527" moz-do-not-send="true">i915#2527</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@cmd-crossing-page:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@gen9_exec_parse@cmd-crossing-page.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856" moz-do-not-send="true">i915#2856</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_freq_api@freq-reset:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@i915_pm_freq_api@freq-reset.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399" moz-do-not-send="true">i915#8399</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455" moz-do-not-send="true">i915#12455</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820" moz-do-not-send="true">i915#13820</a>) +1 other test
              incomplete</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle.html" moz-do-not-send="true">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790" moz-do-not-send="true">i915#13790</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681" moz-do-not-send="true">i915#2681</a>) +4 other tests
              warn</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@min-max-config-loaded:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@i915_pm_rps@min-max-config-loaded.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681" moz-do-not-send="true">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621" moz-do-not-send="true">i915#6621</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@thresholds-idle-park:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@i915_pm_rps@thresholds-idle-park.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681" moz-do-not-send="true">i915#11681</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@mock@memory_region:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@i915_selftest@mock@memory_region.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311" moz-do-not-send="true">i915#9311</a>) +1 other test
              dmesg-warn</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817" moz-do-not-send="true">i915#4817</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443" moz-do-not-send="true">i915#7443</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@intel_hwmon@hwmon-write:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@intel_hwmon@hwmon-write.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707" moz-do-not-send="true">i915#7707</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-y-rc-ccs-cc:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-y-rc-ccs-cc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709" moz-do-not-send="true">i915#8709</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709" moz-do-not-send="true">i915#8709</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-mc-ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-mc-ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709" moz-do-not-send="true">i915#8709</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531" moz-do-not-send="true">i915#9531</a>)</li>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531" moz-do-not-send="true">i915#9531</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769" moz-do-not-send="true">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>)</li>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769" moz-do-not-send="true">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286" moz-do-not-send="true">i915#5286</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html" moz-do-not-send="true">SKIP</a> +12 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-addfb:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286" moz-do-not-send="true">i915#5286</a>) +9 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286" moz-do-not-send="true">i915#5286</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_big_fb@linear-16bpp-rotate-270.html" moz-do-not-send="true">SKIP</a> +10 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538" moz-do-not-send="true">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190" moz-do-not-send="true">i915#5190</a>) +2 other tests
              skip</li>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638" moz-do-not-send="true">i915#3638</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538" moz-do-not-send="true">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190" moz-do-not-send="true">i915#5190</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190" moz-do-not-send="true">i915#5190</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313" moz-do-not-send="true">i915#12313</a>) +1 other test
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307" moz-do-not-send="true">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095" moz-do-not-send="true">i915#6095</a>) +44 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313" moz-do-not-send="true">i915#12313</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095" moz-do-not-send="true">i915#6095</a>) +136 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307" moz-do-not-send="true">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095" moz-do-not-send="true">i915#6095</a>) +146 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805" moz-do-not-send="true">i915#12805</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-2:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-2.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095" moz-do-not-send="true">i915#6095</a>) +9 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095" moz-do-not-send="true">i915#6095</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg1-18/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095" moz-do-not-send="true">i915#6095</a>) +99 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095" moz-do-not-send="true">i915#6095</a>) +39 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307" moz-do-not-send="true">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434" moz-do-not-send="true">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095" moz-do-not-send="true">i915#6095</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313" moz-do-not-send="true">i915#12313</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095" moz-do-not-send="true">i915#6095</a>) +29 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095" moz-do-not-send="true">i915#6095</a>) +19 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cdclk@mode-transition:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_cdclk@mode-transition.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742" moz-do-not-send="true">i915#3742</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781" moz-do-not-send="true">i915#13781</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783" moz-do-not-send="true">i915#13783</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_color@ctm-0-50:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_chamelium_color@ctm-0-50.html" moz-do-not-send="true">SKIP</a> +2 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151" moz-do-not-send="true">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828" moz-do-not-send="true">i915#7828</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_frames@hdmi-aspect-ratio:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@kms_chamelium_frames@hdmi-aspect-ratio.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151" moz-do-not-send="true">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828" moz-do-not-send="true">i915#7828</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151" moz-do-not-send="true">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828" moz-do-not-send="true">i915#7828</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-fast.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151" moz-do-not-send="true">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828" moz-do-not-send="true">i915#7828</a>) +13 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151" moz-do-not-send="true">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828" moz-do-not-send="true">i915#7828</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151" moz-do-not-send="true">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828" moz-do-not-send="true">i915#7828</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@deep-color:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-10/igt@kms_color@deep-color.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-1/igt@kms_color@deep-color.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_color@deep-color.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173" moz-do-not-send="true">i915#7173</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@dp-mst-type-0:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116" moz-do-not-send="true">i915#3116</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@dp-mst-type-1:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_content_protection@dp-mst-type-1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299" moz-do-not-send="true">i915#3299</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@srm:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_content_protection@srm.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118" moz-do-not-send="true">i915#7118</a>)</li>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_content_protection@srm.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944" moz-do-not-send="true">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116" moz-do-not-send="true">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118" moz-do-not-send="true">i915#7118</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@type1:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_content_protection@type1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118" moz-do-not-send="true">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424" moz-do-not-send="true">i915#9424</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@uevent:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_content_protection@uevent.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944" moz-do-not-send="true">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424" moz-do-not-send="true">i915#9424</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049" moz-do-not-send="true">i915#13049</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-512x512.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049" moz-do-not-send="true">i915#13049</a>) +1 other test
              skip</li>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049" moz-do-not-send="true">i915#13049</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_cursor_crc@cursor-onscreen-max-size.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-random-128x42:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-random-128x42.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814" moz-do-not-send="true">i915#8814</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-random-512x170:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_cursor_crc@cursor-random-512x170.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049" moz-do-not-send="true">i915#13049</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814" moz-do-not-send="true">i915#8814</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566" moz-do-not-send="true">i915#13566</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-32x10.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-512x170.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049" moz-do-not-send="true">i915#13049</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103" moz-do-not-send="true">i915#4103</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809" moz-do-not-send="true">i915#9809</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046" moz-do-not-send="true">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354" moz-do-not-send="true">i915#5354</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html" moz-do-not-send="true">SKIP</a> +29 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046" moz-do-not-send="true">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354" moz-do-not-send="true">i915#5354</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067" moz-do-not-send="true">i915#9067</a>)</li>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067" moz-do-not-send="true">i915#9067</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-glk1/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-glk8/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346" moz-do-not-send="true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723" moz-do-not-send="true">i915#9723</a>)</li>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723" moz-do-not-send="true">i915#9723</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_display_modes@extended-mode-basic:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_display_modes@extended-mode-basic.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691" moz-do-not-send="true">i915#13691</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804" moz-do-not-send="true">i915#3804</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804" moz-do-not-send="true">i915#3804</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dp_link_training@non-uhbr-mst:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-mst.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749" moz-do-not-send="true">i915#13749</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dp_link_training@uhbr-mst:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_dp_link_training@uhbr-mst.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749" moz-do-not-send="true">i915#13749</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_draw_crc@draw-method-mmap-gtt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812" moz-do-not-send="true">i915#8812</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840" moz-do-not-send="true">i915#3840</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dsc@dsc-with-formats:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_dsc@dsc-with-formats.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840" moz-do-not-send="true">i915#3840</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dsc@dsc-with-output-formats:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_dsc@dsc-with-output-formats.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840" moz-do-not-send="true">i915#3840</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840" moz-do-not-send="true">i915#3840</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575" moz-do-not-send="true">i915#2575</a>)</li>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13798" moz-do-not-send="true">i915#13798</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@psr-suspend:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_fbcon_fbt@psr-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469" moz-do-not-send="true">i915#3469</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_feature_discovery@display-2x:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_feature_discovery@display-2x.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839" moz-do-not-send="true">i915#1839</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_feature_discovery@dp-mst:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@kms_feature_discovery@dp-mst.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337" moz-do-not-send="true">i915#9337</a>)</li>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_feature_discovery@dp-mst.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337" moz-do-not-send="true">i915#9337</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fence_pin_leak:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_fence_pin_leak.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881" moz-do-not-send="true">i915#4881</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-busy-flip:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_flip@2x-busy-flip.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934" moz-do-not-send="true">i915#9934</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637" moz-do-not-send="true">i915#3637</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934" moz-do-not-send="true">i915#9934</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934" moz-do-not-send="true">i915#9934</a>) +6 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_flip@2x-modeset-vs-vblank-race.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637" moz-do-not-send="true">i915#3637</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-fences-interruptible:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_flip@flip-vs-fences-interruptible.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381" moz-do-not-send="true">i915#8381</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672" moz-do-not-send="true">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>) +1 other test skip</li>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672" moz-do-not-send="true">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587" moz-do-not-send="true">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672" moz-do-not-send="true">i915#2672</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672" moz-do-not-send="true">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672" moz-do-not-send="true">i915#2672</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672" moz-do-not-send="true">i915#2672</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672" moz-do-not-send="true">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672" moz-do-not-send="true">i915#2672</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672" moz-do-not-send="true">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587" moz-do-not-send="true">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672" moz-do-not-send="true">i915#2672</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672" moz-do-not-send="true">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190" moz-do-not-send="true">i915#5190</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672" moz-do-not-send="true">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190" moz-do-not-send="true">i915#5190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708" moz-do-not-send="true">i915#8708</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708" moz-do-not-send="true">i915#8708</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354" moz-do-not-send="true">i915#5354</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880" moz-do-not-send="true">i915#6880</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439" moz-do-not-send="true">i915#5439</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-tiling-y.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055" moz-do-not-send="true">i915#10055</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html" moz-do-not-send="true">SKIP</a> +15 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458" moz-do-not-send="true">i915#3458</a>) +13 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458" moz-do-not-send="true">i915#3458</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825" moz-do-not-send="true">i915#1825</a>) +60 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825" moz-do-not-send="true">i915#1825</a>) +12 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055" moz-do-not-send="true">i915#10055</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708" moz-do-not-send="true">i915#8708</a>) +11 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023" moz-do-not-send="true">i915#3023</a>) +31 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354" moz-do-not-send="true">i915#5354</a>) +18 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html" moz-do-not-send="true">SKIP</a> +49 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433" moz-do-not-send="true">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458" moz-do-not-send="true">i915#3458</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_hdr@bpc-switch.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228" moz-do-not-send="true">i915#8228</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-suspend:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-11/igt@kms_hdr@bpc-switch-suspend.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-2/igt@kms_hdr@bpc-switch-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228" moz-do-not-send="true">i915#8228</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@static-swap:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_hdr@static-swap.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228" moz-do-not-send="true">i915#8228</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_joiner@basic-force-big-joiner:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_joiner@basic-force-big-joiner.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388" moz-do-not-send="true">i915#12388</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_joiner@invalid-modeset-big-joiner.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656" moz-do-not-send="true">i915#10656</a>)</li>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_joiner@invalid-modeset-big-joiner.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656" moz-do-not-send="true">i915#10656</a>)</li>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@kms_joiner@invalid-modeset-big-joiner.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656" moz-do-not-send="true">i915#10656</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-7/igt@kms_joiner@invalid-modeset-ultra-joiner.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339" moz-do-not-send="true">i915#12339</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522" moz-do-not-send="true">i915#13522</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522" moz-do-not-send="true">i915#13522</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816" moz-do-not-send="true">i915#4816</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247" moz-do-not-send="true">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423" moz-do-not-send="true">i915#9423</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247" moz-do-not-send="true">i915#12247</a>) +10 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247" moz-do-not-send="true">i915#12247</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247" moz-do-not-send="true">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953" moz-do-not-send="true">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423" moz-do-not-send="true">i915#9423</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247" moz-do-not-send="true">i915#12247</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247" moz-do-not-send="true">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247" moz-do-not-send="true">i915#12247</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_backlight@brightness-with-dpms:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_pm_backlight@brightness-with-dpms.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343" moz-do-not-send="true">i915#12343</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_backlight@fade-with-suspend:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_pm_backlight@fade-with-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812" moz-do-not-send="true">i915#9812</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_lpsp@screens-disabled:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-5/igt@kms_pm_lpsp@screens-disabled.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430" moz-do-not-send="true">i915#8430</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519" moz-do-not-send="true">i915#9519</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_pm_rpm@dpms-non-lpsp.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519" moz-do-not-send="true">i915#9519</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@i2c:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-11/igt@kms_pm_rpm@i2c.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-2/igt@kms_pm_rpm@i2c.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717" moz-do-not-send="true">i915#8717</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519" moz-do-not-send="true">i915#9519</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
          <ul>
            <li>shard-rkl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519" moz-do-not-send="true">i915#9519</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519" moz-do-not-send="true">i915#9519</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_prime@d3hot:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_prime@d3hot.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524" moz-do-not-send="true">i915#6524</a>)</li>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_prime@d3hot.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524" moz-do-not-send="true">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805" moz-do-not-send="true">i915#6805</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520" moz-do-not-send="true">i915#11520</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520" moz-do-not-send="true">i915#11520</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316" moz-do-not-send="true">i915#12316</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520" moz-do-not-send="true">i915#11520</a>) +1 other test
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520" moz-do-not-send="true">i915#11520</a>) +12 other tests
              skip</li>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520" moz-do-not-send="true">i915#11520</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-p010:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@kms_psr2_su@page_flip-p010.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683" moz-do-not-send="true">i915#9683</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@fbc-psr-primary-mmap-gtt:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_psr@fbc-psr-primary-mmap-gtt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072" moz-do-not-send="true">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732" moz-do-not-send="true">i915#9732</a>) +14 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@fbc-psr2-basic@edp-1:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@kms_psr@fbc-psr2-basic@edp-1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688" moz-do-not-send="true">i915#9688</a>) +6 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@pr-primary-blt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_psr@pr-primary-blt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072" moz-do-not-send="true">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732" moz-do-not-send="true">i915#9732</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr-sprite-plane-move:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@kms_psr@psr-sprite-plane-move.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072" moz-do-not-send="true">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732" moz-do-not-send="true">i915#9732</a>) +29 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2-cursor-plane-onoff:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-9/igt@kms_psr@psr2-cursor-plane-onoff.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732" moz-do-not-send="true">i915#9732</a>) +12 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2-primary-mmap-gtt:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_psr@psr2-primary-mmap-gtt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732" moz-do-not-send="true">i915#9732</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685" moz-do-not-send="true">i915#9685</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@exhaust-fences:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_rotation_crc@exhaust-fences.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235" moz-do-not-send="true">i915#4235</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
          <ul>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289" moz-do-not-send="true">i915#5289</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755" moz-do-not-send="true">i915#12755</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289" moz-do-not-send="true">i915#5289</a>) +1 other test skip</li>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289" moz-do-not-send="true">i915#5289</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@sprite-rotation-270:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_rotation_crc@sprite-rotation-270.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755" moz-do-not-send="true">i915#12755</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_scaling_modes@scaling-mode-full:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_scaling_modes@scaling-mode-full.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_tiled_display@basic-test-pattern:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_tiled_display@basic-test-pattern.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623" moz-do-not-send="true">i915#8623</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623" moz-do-not-send="true">i915#8623</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_universal_plane@cursor-fb-leak:</p>
          <ul>
            <li>shard-dg1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg1-19/igt@kms_universal_plane@cursor-fb-leak.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196" moz-do-not-send="true">i915#9196</a>) +1 other test fail</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-4/igt@kms_vblank@ts-continuation-dpms-suspend.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964" moz-do-not-send="true">i915#12964</a>) +12 other tests
              dmesg-warn</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vrr@flip-basic-fastset:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_vrr@flip-basic-fastset.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906" moz-do-not-send="true">i915#9906</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vrr@lobf:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@kms_vrr@lobf.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920" moz-do-not-send="true">i915#11920</a>)</li>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@kms_vrr@lobf.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920" moz-do-not-send="true">i915#11920</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-virtual.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906" moz-do-not-send="true">i915#9906</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@kms_vrr@seamless-rr-switch-vrr.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906" moz-do-not-send="true">i915#9906</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906" moz-do-not-send="true">i915#9906</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-fb-id:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@kms_writeback@writeback-fb-id.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437" moz-do-not-send="true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@kms_writeback@writeback-fb-id-xrgb2101010.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437" moz-do-not-send="true">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412" moz-do-not-send="true">i915#9412</a>)</li>
            <li>shard-tglu-1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437" moz-do-not-send="true">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412" moz-do-not-send="true">i915#9412</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-1/igt@perf@gen8-unprivileged-single-ctx-counters.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436" moz-do-not-send="true">i915#2436</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@global-sseu-config-invalid:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@perf@global-sseu-config-invalid.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387" moz-do-not-send="true">i915#7387</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-mmap:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-4/igt@prime_vgem@basic-fence-mmap.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708" moz-do-not-send="true">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077" moz-do-not-send="true">i915#4077</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-write:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@prime_vgem@basic-write.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291" moz-do-not-send="true">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708" moz-do-not-send="true">i915#3708</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@fence-flip-hang:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-6/igt@prime_vgem@fence-flip-hang.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708" moz-do-not-send="true">i915#3708</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@sriov_basic@enable-vfs-autoprobe-off.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917" moz-do-not-send="true">i915#9917</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-3/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910" moz-do-not-send="true">i915#12910</a>) +9 other tests
              fail</li>
          </ul>
        </li>
        <li>
          <p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
          <ul>
            <li>shard-dg2-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-9/igt@sriov_basic@enable-vfs-autoprobe-on.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917" moz-do-not-send="true">i915#9917</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_eio@in-flight-internal-immediate:</p>
          <ul>
            <li>shard-mtlp: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-mtlp-7/igt@gem_eio@in-flight-internal-immediate.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193" moz-do-not-send="true">i915#13193</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-5/igt@gem_eio@in-flight-internal-immediate.html" moz-do-not-send="true">PASS</a> +4 other tests pass</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html" moz-do-not-send="true">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493" moz-do-not-send="true">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html" moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
          <ul>
            <li>shard-rkl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-4/igt@gem_pxp@regular-baseline-src-copy-readible.html" moz-do-not-send="true">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964" moz-do-not-send="true">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@gem_pxp@regular-baseline-src-copy-readible.html" moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-glk7/igt@gen9_exec_parse@allowed-single.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566" moz-do-not-send="true">i915#5566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-glk4/igt@gen9_exec_parse@allowed-single.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
          <ul>
            <li>shard-rkl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-accuracy.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942" moz-do-not-send="true">i915#12942</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.html" moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
          <ul>
            <li>shard-tglu: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-256x85.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566" moz-do-not-send="true">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-256x85.html" moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-4/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dp_link_training@non-uhbr-sst:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-3/igt@kms_dp_link_training@non-uhbr-sst.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749" moz-do-not-send="true">i915#13749</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:</p>
          <ul>
            <li>shard-snb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-snb1/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832" moz-do-not-send="true">i915#11832</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-snb5/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html" moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027" moz-do-not-send="true">i915#13027</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html" moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
          <ul>
            <li>shard-snb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html" moz-do-not-send="true">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html" moz-do-not-send="true">PASS</a> +4 other tests pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@static-toggle:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-3/igt@kms_hdr@static-toggle.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228" moz-do-not-send="true">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-11/igt@kms_hdr@static-toggle.html" moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_dc@dc6-dpms:</p>
          <ul>
            <li>shard-mtlp: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-mtlp-6/igt@kms_pm_dc@dc6-dpms.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12913" moz-do-not-send="true">i915#12913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-mtlp-7/igt@kms_pm_dc@dc6-dpms.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@query-idle-hang:</p>
          <ul>
            <li>shard-dg1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg1-16/igt@kms_vblank@query-idle-hang.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423" moz-do-not-send="true">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg1-17/igt@kms_vblank@query-idle-hang.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@busy-double-start@vcs0:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-5/igt@perf_pmu@busy-double-start@vcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349" moz-do-not-send="true">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-11/igt@perf_pmu@busy-double-start@vcs0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_heartbeat_interval@precise@rcs0:</p>
          <ul>
            <li>shard-rkl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-1/igt@sysfs_heartbeat_interval@precise@rcs0.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964" moz-do-not-send="true">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-3/igt@sysfs_heartbeat_interval@precise@rcs0.html" moz-do-not-send="true">PASS</a> +11 other tests pass</li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
          <ul>
            <li>shard-dg1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg1-16/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638" moz-do-not-send="true">i915#3638</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423" moz-do-not-send="true">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg1-17/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638" moz-do-not-send="true">i915#3638</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
          <ul>
            <li>shard-dg1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg1-16/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313" moz-do-not-send="true">i915#12313</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423" moz-do-not-send="true">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg1-17/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313" moz-do-not-send="true">i915#12313</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@atomic:</p>
          <ul>
            <li>shard-snb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-snb5/igt@kms_content_protection@atomic.html" moz-do-not-send="true">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-snb5/igt@kms_content_protection@atomic.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8816" moz-do-not-send="true">i915#8816</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@atomic-dpms:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-7/igt@kms_content_protection@atomic-dpms.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118" moz-do-not-send="true">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424" moz-do-not-send="true">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173" moz-do-not-send="true">i915#7173</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@type1:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-10/igt@kms_content_protection@type1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118" moz-do-not-send="true">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162" moz-do-not-send="true">i915#7162</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424" moz-do-not-send="true">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-1/igt@kms_content_protection@type1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118" moz-do-not-send="true">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424" moz-do-not-send="true">i915#9424</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@uevent:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-11/igt@kms_content_protection@uevent.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339" moz-do-not-send="true">i915#1339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173" moz-do-not-send="true">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-6/igt@kms_content_protection@uevent.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118" moz-do-not-send="true">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424" moz-do-not-send="true">i915#9424</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314" moz-do-not-send="true">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745" moz-do-not-send="true">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839" moz-do-not-send="true">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-glk2/igt@kms_flip@2x-flip-vs-suspend-interruptible.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745" moz-do-not-send="true">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839" moz-do-not-send="true">i915#4839</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314" moz-do-not-send="true">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839" moz-do-not-send="true">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-glk2/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839" moz-do-not-send="true">i915#4839</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433" moz-do-not-send="true">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458" moz-do-not-send="true">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458" moz-do-not-send="true">i915#3458</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
          <ul>
            <li>shard-dg1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423" moz-do-not-send="true">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html" moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_lpsp@kms-lpsp:</p>
          <ul>
            <li>shard-rkl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16301/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828" moz-do-not-send="true">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146619v1/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340" moz-do-not-send="true">i915#9340</a>)</li>
          </ul>
        </li>
      </ul>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_16301 -&gt; Patchwork_146619v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_16301: a123616cf3afc205116835d8b083f48272583dcd @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_8278: b6673db372bd8987f65948d3a97f8dcd2ef42b01 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_146619v1: a123616cf3afc205116835d8b083f48272583dcd @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
  </body>
</html>

--------------pRRevc08SUsSaXCekSGe20kU--
