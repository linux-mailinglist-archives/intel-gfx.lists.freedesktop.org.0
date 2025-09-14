Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B99B56705
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Sep 2025 08:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 306B210E056;
	Sun, 14 Sep 2025 06:07:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hRF8m1lo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182EF10E056;
 Sun, 14 Sep 2025 06:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757830042; x=1789366042;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7lQMQu9yJ/iuhsLIVmgL97GTblOxbg3WHFJbfL8gS3E=;
 b=hRF8m1loX4zwEwTZaF9A1reejShn5x/3PBe7moy/ct5EENkPkLfab1/8
 9ziuQI+Cv5PS2x4EUIBFLcwXKujbxkvy8BWDFL6/JmPf4y57cWC8TfOSP
 CrlbpigX/HuqT4QFcNvHQ9P2lWgLDGccIGRD2K6atAzEknbZLNHUyHXef
 2MpMj9El04nblGK+ngTjWPrYoqMPJHVFP1s/nTA7cOgP5XAYeXYwCT/3P
 TI5vS7I4BS+kO6u9PX0YCWvWfl/uKdzn1VlrWXmIcabW4nplMYvTuKYr2
 gCOPuxbmt5wqaXC4P9qXFCWxaeQbALTRdr0SBweFk9BjYvwoi2hczOfKD Q==;
X-CSE-ConnectionGUID: 18va6q2GQAOwPmzQQSMtZg==
X-CSE-MsgGUID: VwAOb7dcSEOkv5dkcO+jKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11552"; a="70370764"
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="70370764"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:07:21 -0700
X-CSE-ConnectionGUID: fA6VAlaFTx2+3qqJJ7hClg==
X-CSE-MsgGUID: t5HHJXcyQnK7b4hLbeUS/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="174156750"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:07:21 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:07:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sat, 13 Sep 2025 23:07:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:07:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cyoTVtPiSzgqNJNLD4QQRyhiCQkJZaux6S5aFXPwBeu9SmHyMNTwPecrZzU3ZNNUCu12whsxUdKurU7mEc7wqmct5+w7dZPSLhyEFUg4tIoiAsw8fL2/Uhs9BtxxhEXmWGeWXrQxMYxgkZ2E6uZGzW5e1GZZ05+ItXm1+IW9HHgeqHpyccS23f0DulfbQpadTDom0eA1b6ucjinrHCkx1NcC6XiXJkvdT6J1CfJaHOURJ7lhqHqpjeGtdR32StTltJNX/7RSaZoNX5BKtcB/pnBZamvfS7iWF7ddegveBXDfRKEvZbfPUhu0hWJKYtsV5QWyp0ih9XGzeCe4LFg1QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L8Fg2XQTkwyTgKonFUFC9uc8/ljigbvPzG8Z5qKelZ0=;
 b=v4X363cqth1wjwYR9HXp52H5GGFzFeytI2pnzIHHLyOXhgj5jrvQctLKcfR7+L6eky7zeoEEcJUVC995qbhyG740UWuO+sLOVjjiyxuq7bHLzx8dHLEO7nAHuAQNXSuUChhLHhvyz5aWMF0ev8GrFsUlKmsS8UDnx3nysk3yeW344kZsIZ4xac/Co2cxFU/+BwwtQqKUoA92utoNdFtGGovU76tF0oS9q2MctE3oaORSPQwHGmS3mjkBQaHRh4LYCx9npY3TjqF69DBdmbLM47dKKjqJ5sq9hvSzLyQu2NgyESfUAJXFmNogd1N+FEfB1/n17eXhQdtIbBNbl8c2xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by CO1PR11MB4932.namprd11.prod.outlook.com (2603:10b6:303:98::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Sun, 14 Sep
 2025 06:07:16 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13%3]) with mapi id 15.20.9115.018; Sun, 14 Sep 2025
 06:07:16 +0000
Message-ID: <39f69ef0-c585-4a9d-a2bd-2ae316983a58@intel.com>
Date: Sun, 14 Sep 2025 11:37:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/15] drm/i915/vrr: Fix seamless_mn drrs for PTL
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-16-ankit.k.nautiyal@intel.com>
 <aMLfmlp0u6KKpSwa@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMLfmlp0u6KKpSwa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0170.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|CO1PR11MB4932:EE_
X-MS-Office365-Filtering-Correlation-Id: 71f0effa-af12-482e-3ca5-08ddf354f466
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Yi9pN0Q1MVFHMXMzRFJIOVFIZ05UTTVaU3BJeGpRN2RhbmxEWFZGbHBrUERG?=
 =?utf-8?B?OVBoRjl6RzMxL1hEY2xCbStNZkJma0F3emkrc094WGZhQjB4Mk81N1dGeEE5?=
 =?utf-8?B?eU1uRk15UlhGdDEwaWVma0djK0ZNS2kyVW9aMGZ6NHFCMUEvUDI3cGhETzdU?=
 =?utf-8?B?NWxCeTU3NXROeTNxOGFBenlxUGQzK1g0R0lzUmx6aFhlNE5zekJZdTdTMDd6?=
 =?utf-8?B?SGNvdmxTeWVPb1N0enBkNExhWG5SMWg4WDFmdDdHNjBxYlAyMEdCS2h3THU0?=
 =?utf-8?B?aFR5bkRYU2hZL01CWmJJNXRncmptZkFPMGRKY1lnSUtRZTMwOXNRK3JvVTFT?=
 =?utf-8?B?QW1aNlNhTXh3UkpjZGU5VFF0SVUrMVU0SnNUQnl1akVuZ1hpeFJUSEgrbDBE?=
 =?utf-8?B?blNDRnBFVlFwK3hlRDA4UU5zSmF4OWVhYndWVVNEM0NKMStoVTM0end0bTRU?=
 =?utf-8?B?S2tKL2RMWjJSSkxic3Y4blM5R05Ra2tqNG4vSFZmSW9SOHFIS1YwQktmK1Zk?=
 =?utf-8?B?dVpmTVowRTNuN3VUc3E4dmtuR1Z4NmRjSjlVSC9IQWFLMXYwUmN5R3FkUkpJ?=
 =?utf-8?B?bEVpS2Rac2xFOS9RVk92aDRVYnNMYVFJYUpIdTlqVzZlU2RWNTRaRjJFUCt3?=
 =?utf-8?B?QkZiU2M1S3A3Q2gxeDQxNmNxcFdlREtMRUw3eDFPUEVTaExLQlBwc05FUGIx?=
 =?utf-8?B?ckZkWTlBRUNFWDFObndZVUlycUc1b2QvbnlBWlE4TmwxOW9PMHFHeU02VEJx?=
 =?utf-8?B?QmJBZ1Irc25mQ2l0SnppR2pMMU5jOGduTkdUbFliY1I0MlA5ZTlSUENGTTM5?=
 =?utf-8?B?cWwvTW1KekFYYml5S1JVbkcyZmVhU3QvbStHZm94MDg5eFV1MWJnOFl2bVZi?=
 =?utf-8?B?Y1RteWxuMzIvaXJhaUw0ZnRXa1poclhYcmJrYlZmT216aElJRDE1bTdVVUth?=
 =?utf-8?B?RVQvL3dKUXR6Nm5ZUzVLNUtuc3VLU2hVOEVJb1drdnRKb1RtK2pzTjZKYUg5?=
 =?utf-8?B?TWJuNjJVdysvOHpIUTVBSUN2bkQ2azVrbjZwV2Z1MTBnVC9MQ2FYREppZ1lR?=
 =?utf-8?B?dTBEdkJvMDEvRmNQRTRaUlBFSi9sNGY4ZUJ2MTlGbEkvMjdTcEZySEVkSHgy?=
 =?utf-8?B?MEwxNXVjaG5HZ2t4QklVT05jdE1WQ0Ric1Q2YmMxN01EYzhZN1BsdHlOV3Yz?=
 =?utf-8?B?a0xqeUcwMk9mNUMreW5MV3NKNSthY2JON0VMQUQxaEZHRnhlUHRhdFBCZXdG?=
 =?utf-8?B?RWxLVHp5SldMc3VrbkRCZy9PUnJkT2pVaDFkSWs4TkR1QUpaM0psS0RLK2tl?=
 =?utf-8?B?U0F0bERCWUlnTy9SaHA5UzYyZTNzaDFpMUIyZWpkTE1FaTlKSjZpRkFVTW5a?=
 =?utf-8?B?cGVFT0djRC9xa2h5ZVBRQmRFTE1KK1ZjaGdnNU5nMmIxUUtkNllDZHhVT2JS?=
 =?utf-8?B?U3VhTTRsM3loSXJkVnVLVE52K0ZEYi9wMGM5RTZJQm10QTBOcXNQVmNXWlNF?=
 =?utf-8?B?ay9yTDNGREVkc2JYRkZ2UnZ0Z1lSaUMycGRPNk1kTVBRNno0Ly9JN1d0RjEy?=
 =?utf-8?B?clBIam1YRG5PMHdtazdxbEg5Y3V5UU4zb2dKTThQTHBTb01icWNDS2hlY21F?=
 =?utf-8?B?QzFzUkl5YlRiVDBmWVVYamcrb2Nnd1JDOHl5ZThEVTVQS242MjBYV1MxVVQ5?=
 =?utf-8?B?L1hxMzFMVDVNdW4xa01xbzBSNE05ays2eFU3TFMxNFNuWUw0L1Jad2lCNHJQ?=
 =?utf-8?B?WXA5bGFSMEZWVFVWMmdqUU0vamxlOFU1RmNkN05UWkxkYmtMM00ycmhqaTA3?=
 =?utf-8?B?aEthOExpNVg1NnBzWTdseGdTcm5pcmM1dWcwR2RsRXR2SVFmSmRHeUl5Uzg3?=
 =?utf-8?B?WHpFMm5odjZRckk4UnFaMEtRT1dMeFdsckZzVERrK2YzVFVjUjFyUk02dTRG?=
 =?utf-8?Q?0ovorrNbceY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3l4MXIxNUw5WlBzenc4bGpRWi9kMVMrZzRXeUNGeVBkbllxQXkwelByOWZF?=
 =?utf-8?B?TEYyRnlHWHMwM21UUkJBR0txQ3pBQXJZbThKbk4vTkFuYVFsWkxwUXNUQ1pp?=
 =?utf-8?B?SFZLOFZuRnNFbEtPSCt1ZjBYS0ZpMUZQZnJFWjIvWXVuT09LenA1aVFLMXNZ?=
 =?utf-8?B?S2krTnUxdXowNmtsaHkxYkZlZ1FRc2Q5T1ZxZ1dvYlVDUFZ1ekpqTU5abmIr?=
 =?utf-8?B?bmxFekdvSVpQZFE5d3ltYjFkUXVJUUprelBLS1VqMmtoa25LOXRuTTZPbmtQ?=
 =?utf-8?B?M0RpOUlQcWV3NHZzQllEMUgzZmZzUDBvY1YzTE9QRVdITTBKcllBTEVqSzUx?=
 =?utf-8?B?OU1iL0dqVk1lZUxCSFB3ZE5PZFFCOCtOMzlKSjMwamVCY1hhcFBpbDlGSmhu?=
 =?utf-8?B?SHZlK3VLYml3RFk5a0FzT1FPL1pST0J6ODJ3RW9ycXdMVWpMN2xpc0ZLUk4y?=
 =?utf-8?B?bmZyQWluTkgxNXh3dmM4Nll2b0E5VE12SWY1UTNFK0lYWEo2YzBaMStoMDJ2?=
 =?utf-8?B?SU5jYThRanhRbWxJeVRPYlZMd3FVUTJLV24wQ09sZXY3VTU3Y09Ia1p0eWhw?=
 =?utf-8?B?Y1lObGpQNkJRdXVFek5haDNEWTl0RTVpdWZXZTVNd0JSSGZ3djNOeVAwUkxz?=
 =?utf-8?B?dStxTklIQVpDRml6ejRxdzhnMGdrb3NhSWFaMDMvbGEvNHVJUExHRGNRUGlL?=
 =?utf-8?B?TmhzZjlZQ3R2VkJwaVgyYUo3eXVuZXM3bCtuSWRqbFRrOTJDVnZQS25kekVZ?=
 =?utf-8?B?b0d5N21GLzByUzVFZ09PTzdMVVpKbWdEM04wV24wSUx3ZU9ldmNxbmszT0JK?=
 =?utf-8?B?Y25uRVFWbFRtcWZKejlRTHpVNXg2dWlNOW9YOVFsUWN0YnVNNFNPSWVQbGl2?=
 =?utf-8?B?QjV4L3ZmUHl5cEhvMDZFWnlwdVg5d2pqam44VTR2SnJTZUprM05TK2x5Q2d6?=
 =?utf-8?B?eDJYSUl3ak9NWUhUVzJZd3RJMTNSVlF0SUtxaytGd2lGQmZaU3BxM2thdU1Z?=
 =?utf-8?B?TW5DOHlpdDJXZmlNUVdCMFE2TVVrWHZpWTNUVFZObHZ2c2ZwbzVNOU83K3RQ?=
 =?utf-8?B?MkVLS2F2SitBOUc2RkpISHZIbUZmZmY1VG5BWElxWmg4RytmOVpLZWNoWnAr?=
 =?utf-8?B?L2RQd0lvelErQXVMaUxnYnE4ekVSNEdRWHBzL1lnR3plN3RGckNiTkxDSlNU?=
 =?utf-8?B?czVyNXliMS9RRDRjeldKL1A4YnZLOW5heDdPR09KVGpYOGZZWm5sc2tXUVo2?=
 =?utf-8?B?WWZpd1BLNk9rRUh5QlNmamx1N1ZKRGlhYURXeGpoTklUN0oxNGUyejZWSVFx?=
 =?utf-8?B?UUlRcm5vZGptVVRsaHFYTFMrT1FyYWlhREovRE1ZaXQrVjdPaDR1QUgreGhn?=
 =?utf-8?B?dWFyUHo0alJuZTdObTZreDVQTzVIV0lDTDFRcXNxT01XRWRyYXlvTW1LZFJT?=
 =?utf-8?B?RktWSkxRRUNDcmJJZzdYakFHOXhwSlJkNW1ORlBNQVBiUjZIZVNjM0VQVWZw?=
 =?utf-8?B?bk13Um9lUUlUd2xYc0RFNW5mRHFNTitzY2RyL0lxV2c4ZjZUc0kwVFNDUnQy?=
 =?utf-8?B?OWNPSU1HS0o3eS9lRnBvb3VvemRFVEtXZGhySTFJWksvK3dFcFhxbmJOTjRo?=
 =?utf-8?B?Wlo3UlBtM3NyQytEMldoNEJnZ1VVMWk1NGJUNTVrbWpDRElJK243d1BzN2Vt?=
 =?utf-8?B?Y3FCSU85QnU3Znhqb3pmZDdhbmI3SWlDc2pxME5ZZFdNcEZDOVlCOW9uQzVY?=
 =?utf-8?B?QndWUk1nOWhyN09TTWRvNnQzM0lIYkNLVk9wK1hPbFdQNk1FUzFmcko3REJr?=
 =?utf-8?B?VzBCL2duSmp0eHk2cFM1WEQzN2llWGJ1TXNxVVVGNW41eTVGMmdXclJZQkov?=
 =?utf-8?B?VURrOUlnL1NIQ3V3WTRFUGtPSEgzTk4rNmE5UjMvcWdiWEhsMXY0dlNjZmh2?=
 =?utf-8?B?VWlOK0htMTkrUjduNVVOUENIbzBKTnVad3lKa3VMT2lUY253UEZFR2Zmemk5?=
 =?utf-8?B?d1dWVDA4aEg5Z25Kc0c3SEdyTEJKcCtKcXg0QWZ4NmpERVN1MVBuSjJWcHhM?=
 =?utf-8?B?eU9IQjlnV2NJWU40RFp6RXUrT1RreThZQy9INkpTZ1RoamNsS2ZodGlzV0tR?=
 =?utf-8?B?RjNkNDJVM1h2cklpaFc2TWtSU0hzTTJBSXZYeVQ5VktGMWtWdXZVTlRGL2VC?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 71f0effa-af12-482e-3ca5-08ddf354f466
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2025 06:07:16.3211 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dFQoJvLysn8NyghrkBc4uhTxHEIA19e4tZwplqu7BLaaDN0CtU7IwCNY3NFbYynelmVv/DKnQ7ckoCFWGIj35vyHaM9m9MBhh55DH0wY8No=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4932
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


On 9/11/2025 8:11 PM, Ville Syrjälä wrote:
> On Thu, Sep 11, 2025 at 08:15:54AM +0530, Ankit Nautiyal wrote:
>> With VRR timing generator always on, the fixed refresh rate is achieved
>> by setting vrr.flipline and vrr.vmax as the vtotal for the desired mode.
>>
>> This creates a problem for seamless_mn drrs feature, where user can
>> seamlessly set a lower mode on the supporting panels. With VRR timing
>> generator, the vrr.flipline and vrr.vmax are set to vtotal, but that
>> corresponds to the higher mode.
>>
>> To fix this, re-compute the vrr timings when seamless_mn drrs is in
>> picture. At the same time make sure that the vrr.guardband is set as
>> per the highest mode for such panels, so that switching between higher
>> to lower mode, does not change the vrr.guardband.
>>
>> v2: Add a new member `use_highest_mode` to vrr struct to help set the
>> vrr timings for highest mode for the seamless_mn drrs case.
>> v3:
>> -Modify existing function to compute fixed refresh rate timings instead
>> of adding a new function. (Mitul)
>> -Tweak computation for scaling the vtotal and use DIV_ROUND_UP_ULL.
>> -Improve documentation.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_types.h    |  2 +
>>   drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>>   drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>>   drivers/gpu/drm/i915/display/intel_vrr.c      | 90 ++++++++++++++++++-
>>   4 files changed, 90 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 358ab922d7a7..9796c7b855d0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1321,6 +1321,8 @@ struct intel_crtc_state {
>>   		u8 pipeline_full;
>>   		u16 flipline, vmin, vmax, guardband;
>>   		u32 vsync_end, vsync_start;
>> +		/* Indicates VRR timing is scaled to highest mode for seamless M/N */
>> +		bool use_highest_mode;
>>   	} vrr;
>>   
>>   	/* Content Match Refresh Rate state */
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f74ac98062d4..5c29c696c83e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1742,7 +1742,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
>>   	return bpp;
>>   }
>>   
>> -static bool has_seamless_m_n(struct intel_connector *connector)
>> +bool has_seamless_m_n(struct intel_connector *connector)
>>   {
>>   	struct intel_display *display = to_intel_display(connector);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index d222749b191c..6da0196c23d1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -217,5 +217,6 @@ void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
>>   bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
>>   int intel_dp_compute_sdp_latency(const struct intel_crtc_state *crtc_state,
>>   				 bool assume_all_enabled);
>> +bool has_seamless_m_n(struct intel_connector *connector);
>>   
>>   #endif /* __INTEL_DP_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 002165026a20..80bbe4b1ef7f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -11,6 +11,7 @@
>>   #include "intel_display_regs.h"
>>   #include "intel_display_types.h"
>>   #include "intel_dp.h"
>> +#include "intel_panel.h"
>>   #include "intel_vrr.h"
>>   #include "intel_vrr_regs.h"
>>   #include "skl_scaler.h"
>> @@ -299,6 +300,16 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>>   	if (!intel_vrr_possible(crtc_state))
>>   		return;
>>   
>> +	if (crtc_state->vrr.use_highest_mode) {
>> +		intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>> +			       crtc_state->vrr.vmin - 1);
>> +		intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> +			       crtc_state->vrr.vmax - 1);
>> +		intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>> +			       crtc_state->vrr.flipline - 1);
>> +		return;
>> +	}
>> +
>>   	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>>   		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
>>   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> @@ -307,15 +318,69 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>>   		       intel_vrr_fixed_rr_flipline(crtc_state) - 1);
>>   }
>>   
>> +static bool needs_seamless_m_n_timings(struct intel_crtc_state *crtc_state,
>> +				       struct intel_connector *connector)
>> +{
>> +	if (!has_seamless_m_n(connector) || crtc_state->joiner_pipes)
>> +		return false;
>> +
>> +	return true;
>> +}
>> +
>> +static int intel_vrr_scale_vtotal_for_seamless_m_n(struct intel_crtc_state *crtc_state,
>> +						   struct intel_connector *connector)
>> +{
>> +	const struct drm_display_mode *highest_mode = intel_panel_highest_mode(connector);
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	int vtotal = adjusted_mode->crtc_vtotal;
>> +
>> +	/*
>> +	 * For panels with seamless_m_n drrs, the user can seamlessly switch to
>> +	 * a lower mode, which has a lower clock. This works with legacy timing
>> +	 * generator, but not with the VRR timing generator.
>> +	 *
>> +	 * The VRR timing generator requires flipline and vmax to be equal for
>> +	 * fixed refresh rate operation. The default fixed RR computation sets
>> +	 * these to the current mode's vtotal. However, when switching to a
>> +	 * lower clock mode, this would result in a higher refresh rate than
>> +	 * desired.
>> +	 *
>> +	 * To simulate the lower refresh rate correctly, we scale the vtotal
>> +	 * based on the ratio of the highest mode's clock to the current mode's
>> +	 * clock.
>> +	 *
>> +	 * When switching to a higher clock mode, the current vtotal already
>> +	 * results in the desired refresh rate, so no scaling is needed.
>> +	 *
>> +	 * So compute the scaled vtotal if required, and update vrr.vmin to
>> +	 * the scaled value. Also, set vrr.use_highest_mode to indicate that
>> +	 * VRR timings are based on the highest mode.
>> +	 */
>> +	if (highest_mode && adjusted_mode->crtc_clock < highest_mode->clock) {
>> +		vtotal = DIV_ROUND_UP_ULL(vtotal * highest_mode->clock,
>> +					  adjusted_mode->crtc_clock);
>> +		crtc_state->vrr.vmin = vtotal;
>> +		crtc_state->vrr.use_highest_mode = true;
>> +	}
> I have no idea what is happening here. I think the only thing we should
> be aiming for is a fixed guardband length, but this is now doing all kinds
> of otehr massaging of VRR parameters. Why?


The idea was to support Seamless M/N DRRS with VRR timing generator.

Currently if user sets the lower mode i.e. same mode with lower clock we 
were able to seamlessly switch with legacy timing generator.

With VRR Timing generator this doesn’t work as we need to change the 
flipline/Vmax vtotal to achieve the same effect.

I was trying to do something like that.

But apparently Seamless M/N DRRS is defeatured, so perhaps I will drop 
this and the previous patch.

Thanks again for clearing this up with the Hw team and for the required 
patch.

Regards,
Ankit


>> +
>> +	return vtotal;
>> +}
>> +
>>   static
>> -void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
>> +void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state,
>> +					struct intel_connector *connector)
>>   {
>> +	int vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
>> +
>> +	if (needs_seamless_m_n_timings(crtc_state, connector))
>> +		vtotal = intel_vrr_scale_vtotal_for_seamless_m_n(crtc_state, connector);
>> +
>>   	/*
>>   	 * For fixed rr,  vmin = vmax = flipline.
>>   	 * vmin is already set to crtc_vtotal set vmax and flipline the same.
>>   	 */
>> -	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
>> -	crtc_state->vrr.flipline = crtc_state->hw.adjusted_mode.crtc_vtotal;
>> +	crtc_state->vrr.vmax = vtotal;
>> +	crtc_state->vrr.flipline = vtotal;
>>   }
>>   
>>   static
>> @@ -397,7 +462,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>>   		intel_vrr_compute_cmrr_timings(crtc_state);
>>   	else
>> -		intel_vrr_compute_fixed_rr_timings(crtc_state);
>> +		intel_vrr_compute_fixed_rr_timings(crtc_state, connector);
>>   
>>   	/*
>>   	 * flipline determines the min vblank length the hardware will
>> @@ -876,6 +941,7 @@ int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
>>   {
>>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> +	const struct drm_display_mode *highest_mode;
>>   	int dsc_prefill_time = 0;
>>   	int psr2_pr_latency = 0;
>>   	int scaler_prefill_time;
>> @@ -888,6 +954,22 @@ int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
>>   	int guardband;
>>   	int pm_delay;
>>   
>> +	/*
>> +	 * For seamless m_n the clock is changed while other modeline
>> +	 * parameters are same. In that case the linetime_us will change,
>> +	 * causing the guardband to change, and the seamless switch to
>> +	 * lower mode would not take place.
>> +	 * To avoid this, take the highest mode where panel supports
>> +	 * seamless drrs and make guardband equal to the vblank length
>> +	 * for the highest mode.
>> +	 */
>> +	highest_mode = intel_panel_highest_mode(connector);
>> +	if (needs_seamless_m_n_timings(crtc_state, connector) && highest_mode) {
>> +		guardband = highest_mode->vtotal - highest_mode->vdisplay;
>> +
>> +		return guardband;
>> +	}
>> +
>>   	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
>>   				   adjusted_mode->crtc_clock);
>>   
>> -- 
>> 2.45.2
