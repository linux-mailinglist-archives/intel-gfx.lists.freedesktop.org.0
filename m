Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C69A2882C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 11:39:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD3310E059;
	Wed,  5 Feb 2025 10:39:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hcfaBPz1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0640D10E059
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2025 10:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738751964; x=1770287964;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZALoiuwiA8G6w2EBFiRVTKN+14RZ1nrGhqxzgs+8Ges=;
 b=hcfaBPz1vL6/sl4K/tgvn3SdZj9iLUAGS5+6gRi/IRJ1u1SFz0rOgtLj
 T3KmjY1mGYgrjBaELVaLE57lcmVR5eulbOpa5S3Nmi/dVu2cjGCoe1Ufa
 I+ricSMsOdLW+jwBsaOxGRKWHkzUED+vBrLYGQ2TQ6lpivT81Wmeb860E
 qgHkl0pIbQjKRAv/zE3TkRCgyMkZsf3Hf4L5komWx9fFAfX5NRyARnDk0
 NzKXigtm+snwPQSNSWSLusKfny7BBL6mPSsgyTSyG/qYycY1PlNGNHtnd
 mqBWHzEhzX1svC/pOpNx4JFGOosD6lpazM/ShYZ3D5LY7Mu0lLdmwCCPJ g==;
X-CSE-ConnectionGUID: dvR7gdLUSHy3ZN6phzJqqQ==
X-CSE-MsgGUID: vbqVjgHyQUSPI1XtbDmMSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="56736759"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="56736759"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 02:39:23 -0800
X-CSE-ConnectionGUID: RDzKF5m1SLq1hkBENytxwA==
X-CSE-MsgGUID: kUVQwmSTQMenW+TxPjZ8Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="115920990"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 02:39:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 02:39:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 02:39:22 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 02:39:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JgHO+F/Zdkl39n62XGridfDTHq0HU3CvfT+SWpN6CW3tnob8SAAJzrX+mLqEbMJuYzXPe/CCLfseN0l7CghDK2aobBNBAPlQkKeHucPnhsMPjXWfOmIxoYPpoL9w3u5WvNrxUd+g5Gr1cmSAUN3yiAyLwoeIbeyLstgpDPhzwQZUa3ZQKJ3F+uaXPmmMkQJXPHRIKJm0Zi+wAQFuOtPso5P9lQBFBFavusabH9BMdy76Hw9hN7UZcsZg0mWAiYQLjA18ddSw8Vq8LerG2H0f4VdLlm/WKN8zDtp3C1bz63BEz0IMyZcMHTRXz3MLJmyCD5X50RPcgjh6tbD6b/Zp6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=umbgT+NLe3pWoAMrdee+AKSBUJcAgWY7sDwmgRlvDNA=;
 b=sueJbZT45/P40dq+x18SpSl+Rkeu3vUYl/P6fwjC5W7wtIJbf/ymjVWI/kjhTQ482TNt/G7gIb4gJNsL/T4fhRjSMT6NCnU6WQM2YFpQUexbEgMoMcD5TaepbJfQYyGmAuSzAxP935Cl/cQih+e+TSzZB9+D1oLmyU1lyTl74rqH6mP/d4hkxCw9i1PMY+Ytkqaa1ZyC+bwifu3fno+RdHwu/rQYhhrOtxU2cM/RjkyFUIy8KRhTcvELmPlH8+twnXz0A+7DzprIUEXJZDnGX7wSvxZTdIEMvSLq6xkf3VY6W1jrYnS0yveo5svADApQ/ZnIoeK6Kx34LIzz55Gd7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6368.namprd11.prod.outlook.com (2603:10b6:930:38::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.23; Wed, 5 Feb
 2025 10:39:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 10:39:06 +0000
Message-ID: <6f03eacf-1f00-445d-b85c-296b9872347f@intel.com>
Date: Wed, 5 Feb 2025 16:09:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [bug report] drm/i915/dp: Get optimal link config to have best
 compressed bpp
To: Dan Carpenter <dan.carpenter@linaro.org>
CC: <intel-gfx@lists.freedesktop.org>
References: <6d13f0d4-9644-40eb-a0f4-71691ae93697@stanley.mountain>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <6d13f0d4-9644-40eb-a0f4-71691ae93697@stanley.mountain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0097.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6368:EE_
X-MS-Office365-Filtering-Correlation-Id: 1769c0f2-5500-4675-b7df-08dd45d150db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TlgvbHliL1BSck5jZ0NKdW5iUUM3US92YmNQREVHN2pFTlVDZTNzK3RHQlR4?=
 =?utf-8?B?bnk3NndYblBYYVNHbW0vQ3h2WDhPK3pxdGhzSHRmdWwraXlJbWNRWndmbXFG?=
 =?utf-8?B?a25haFh2L2ozZVhnR2FNU3J4dUJJeWk3LzZtYUJ4NE5wVmU4bkphR2g4SlpO?=
 =?utf-8?B?STdrSS9BNUhxVGF3clViN0xXOVB3RGxPQWxMQVJHamtJSHFoRVIrdXNkdGwx?=
 =?utf-8?B?b2RIV1lkVytjUTY2Z2F0ZFJ2NWRxWXQrNlZFUFNncDhoeFZ0RG40QklzRk00?=
 =?utf-8?B?MC9GdzlLaEtaRFE2N2VFZnV3RmFSWDFKU1RxckE5SFJYK0wvWWR1UkdpQjJO?=
 =?utf-8?B?UFlhaGFpQndFNnE3aFBnb1NTRStCV0hWRGQzaElneE93YWUyand4R0p0S1ZQ?=
 =?utf-8?B?dTlXQ1Y5QXc3UER3OVYzSm1GUWRhdHo1L21xY1FSVExvbUZsTDRDM29lbEFx?=
 =?utf-8?B?aUVud2cwMUpqd0VXZFpEcGVNQy9jdmcvWGJaN0w4Y3NuVDJHY1F2eG14RFRr?=
 =?utf-8?B?RllMU1dmekJLQ24zRXpmcTRTQjhIL2x5WkZLV0w3SnBNeDFqWWprMEZ0eDRQ?=
 =?utf-8?B?ZGt2clhTT3VXV25xQ0VnYWRLa3B4MDI1YTNka2RXYUVvWHlhOHBhRDh2SFEx?=
 =?utf-8?B?a21sZ2xGWnUrWkVjRHZMeGU4YjJpa3lrcDlPR3VMdFlLeDFSZVkwZGNXVS9m?=
 =?utf-8?B?NmtGaWgza1R5dXkvTis0WkJwc1V6MExMaHJwaWhCQ3ZhOXhwOWpvd3JLelo3?=
 =?utf-8?B?ZStZckVxRVN0a1JEL1ZQcS9aNXA0MEl4UU4zd2kxUDFoN0ZPaEFZdUJHczMw?=
 =?utf-8?B?aTQzblk5aHoxYmVEaVJJbHBBR05HQUcvY3BFaGF4MnRUV01OYjNYVm9yT1Jm?=
 =?utf-8?B?cExNU0ZBbnU5ZmVjSTZlY2ZkU0FYYmFKMk5Bd0dRMGFWZ3ZTLythRldBTHIw?=
 =?utf-8?B?REw4Y29yRWVUODdBRHkxNXZUT3dEU01wTkZxTEUrb0tFV0VwMmxVK083YWc0?=
 =?utf-8?B?SDVJZ1VzaSsxZkhCRjJ0YWUrMFpKS3creVBXa1NYdFpGSkRCcEpHckJCSmli?=
 =?utf-8?B?T3ZwNDl6eWRhaEM0d2kvWkZ0amtxQTV4dEloN3JETmczOVhURTlqWC9tMmtk?=
 =?utf-8?B?Zm9mUklRUzB6U2t1NndidSs1K1BYMS81VVVGeC8rSUZSay9NZ2RaanNEdnlX?=
 =?utf-8?B?TzRsemRHdm1mQko3Yk43bjZXeURDeHpucHBRWHJHaGJZTkc3T1lTckt1K1Yx?=
 =?utf-8?B?VDZ3UHN1aks3WHpLR2FDazJTNXU0WGw0S3M4Y24xTTZ6MWwvemMzbkhuMWN2?=
 =?utf-8?B?ME9JeEx0bldybW43eG5vZ2w5VlJPL0h3RWY1TjNvaXp2QlF3NUhxSytIS2FH?=
 =?utf-8?B?UUxRWmNwOWs0bm50V2w0c1M1aEdXenpMUmNUWnFmeGxTWGdNcGo0RzRiZjNZ?=
 =?utf-8?B?NDJBZ2prNUZrK21rbnB6dXdNNVJjMThmM3JOWFRqWWs2bjdpYXcxcGFiT05l?=
 =?utf-8?B?RGRESC9uZ1hIckhTL2pvZ2d5U0dVeGIxVStvdVNnaTdWK0N4R3NweXVDTFNI?=
 =?utf-8?B?Q1A1WERqbUVwSFQ3SVNrMUVqNlFnZHAzYUZiYSt5NDh2WVU1ekd2Y3BpL3BM?=
 =?utf-8?B?bWRFdnlZZnd2TSsxV1o1RTUvbzJZYTFRek1mcUR2K01BVnUwa0J4TFZWdkN3?=
 =?utf-8?B?b2ZIMEo3TTg1Uk1XbmxRMjZXWEhSR2JuNlVBTW9sUG0vT0lQYzIrQkM0OHpC?=
 =?utf-8?B?dUQ4SFpmZ2xoN29WeE5BVjY3ZWdrMUtHZHZDVml1Z3N4Vk5WQzNPK2JWMFdm?=
 =?utf-8?B?VWlUVEI2akEzL2k4Q21DUDFBUDdmZStxRWFwNHVJcUJHaG5jVDFtaWprSEVP?=
 =?utf-8?Q?wQAcrMUqKe3U8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3QyTmNSYkVvTW9JSWNEdk4vY0FnelYrODM2dWlkU1drUUFNMWdpdE1HaW5h?=
 =?utf-8?B?WE9mUGJHb3NGWGZtNGYvMGNQNlhCUTk1Y2tKZVZuR3UwLzdLdzVsVCsxUGts?=
 =?utf-8?B?aGFyYk1SUFMyek4ycUpCVmQ0dFY3a0pxSEJEQlF2bm43bVZnUzd3dnRNYWR2?=
 =?utf-8?B?N2RPZmJjeFpTenhaSDFScDNhL20wWmN1enoyUUM5YTZjbDFIdUF0eDA5TFBv?=
 =?utf-8?B?T2dNdXZNZTZFak1ud2p0SlpQQ3V0bklUZHBNQXJoOXJic2Z4TmRGM0ZCU2Fr?=
 =?utf-8?B?YTl4RXhGM2xGdUJxZnhXUG02NjAvZFJFWk56UnR6bTJkV21uOGN1eVhwNVRt?=
 =?utf-8?B?b0txUkhBK1MxNjltcVpIRG40akpmVnVPU3A0T0Nmdjc0WmZQdTZ0UmdaUFl5?=
 =?utf-8?B?MU5UbzVIYlNHd3Jib1hFOGMxOFJwZm9LVTR6YXYvUGlXVXlzd3krem43Tmli?=
 =?utf-8?B?dzcxamJLMzNVRjNuK0twbDkzRDFXeld2Z0NxV0l6Vk9LSmVUMDByQlhSVlBv?=
 =?utf-8?B?YmIxNEdsM3BnS09LUUxvT3FvdVYxUTVyTndyd0Rhc2o1Z2JzOUVWYTdDcU9x?=
 =?utf-8?B?VkRwdExUZHRISytrV1lVek9Gb3BCSWxWT1l5YjdCbDBsb2xVUWRLSUQyeU5J?=
 =?utf-8?B?VXpWNE5TUTVzOG42L2paZDBLeTBVb1Z5K0hVamFqVFJqelBzVXRPRnhqTE9a?=
 =?utf-8?B?T1ppYjZzT0ZyVkNKTlZzWXNQYnlveFRGWkdZTFROWnFyTEpUeS91OHZFTGdI?=
 =?utf-8?B?UWpIY3hMUTdpeUVXeGN6bUhpTWdTanh4bU9TREpCSjVUaStyRGNvcDRmck51?=
 =?utf-8?B?VFpsTDUyWTlIWU9IZlVrUlJjVm1iUFRHQXhiL2NqVUxhT0tzT1ljMERrRlhI?=
 =?utf-8?B?dmdDSDhSdjJONzZKaFJHT2Rhc3JoZS9KQTFIMm5BRGtnYWJFTTB5M21OcUlV?=
 =?utf-8?B?MU5tQWNTSWRZa090ckdJb0NSbmxkQ0JjQlU5S2VSVmVHSmQxZi91SDRzUWFz?=
 =?utf-8?B?TG4zSUR5cHRnZmJYendMcGdOLzA0Z2t2RHJqUmY4YkhSUDI0WkFra05Wdkgx?=
 =?utf-8?B?VFd6dDhpMlRTQnNPSTE2SUE2NVEzeC95NFNXZW1GNHZJa0trY2tNSEtDbTIv?=
 =?utf-8?B?REErcERlNGhYUU8yZ0xVNHU1a045WklLZ2NyOW5ESTVuTUlYVUlyc3BIZi9n?=
 =?utf-8?B?RUY3RXhGRlY0amhXT3ZkTmVPeVBZR2hjV20yVmhHa1ZvMlR0QmRPYlVBcVA5?=
 =?utf-8?B?ZXo2VzA4QlQ3NlRHQVdxdllRa2tBYmprMlZZMUV0MzZXV3pGZGhFWWZ1clZX?=
 =?utf-8?B?bHp3OW5FR0FjWWxPenRQUWZXdnJkNUpDRWU5VnpyS0xoZ09XT0FrSzRsZWVK?=
 =?utf-8?B?L1BDUm9MMHI2SysrY0I2N012Q1lFMGFsaGtUS3Y3QTE0aDNQQnBCbGpUbU44?=
 =?utf-8?B?WW1xT2RSckYyVERrNlZhK1N4MTRmUjg4ZUtTdngxYllpUGFOSmJ6Qkpuam41?=
 =?utf-8?B?VFh5NGd6MlA4eGNvWSt6TmJhS28rZ0JJclZUSXVzckREU3FGTWlaOVc0WHJ6?=
 =?utf-8?B?MHQxemhSSWpiZytRWWQwZldkQVZOdVY4YTQ3ZmpjY3YvNFBSTmt4L1pCREVh?=
 =?utf-8?B?eFhWakNCeVdzMEZsUU5Bak9kZVpJcGtucU12Z3BlTFR5UHRkN2RNa1BHUnlj?=
 =?utf-8?B?czVlRXErbjBEWVdjb1U3ZGpodUhSTDN2Mm1FT3MrTlQzb3d0YmgvY3lvMUNM?=
 =?utf-8?B?blhXMTlld2FVRUtrbVc3NWkraXAwUm54Ym1NdUREaWVOZThib1o3WWVydjhu?=
 =?utf-8?B?ZTRpN0gwNmplMWJlelgvRWUzcmtCSHIyaFBqQ2wxVlJKQ0JrZmtIc2RQd3dx?=
 =?utf-8?B?aDB2cTF1NUgvbzVzbkNHT3pJenFCZGJGZnZKUU12M2hkWkZ6QkRNYnNrTGt5?=
 =?utf-8?B?eVNRVUpyYVA2RFpzazF6MmM1QzdtTEorUXRRYnJDMnJHMjcrRnBuTVNtb3Zo?=
 =?utf-8?B?OHdIZ3ArbkRTc2grd3c5eVlMOWFVSTR3SFVZMTBsZHprRGZMeGp0NkFhc3Ru?=
 =?utf-8?B?Y2hDL0hRZE1na1c2VXBTYWFOaGpPaEQ4L1ZuT3lxdXVyUWRMRUZya2p6eW0x?=
 =?utf-8?B?TWdIK3BwOXI4Zi81dkhtb2dhM3RlMmdjSW9RUFlTenpmQWw5YmhZQURkbHA2?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1769c0f2-5500-4675-b7df-08dd45d150db
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2025 10:39:06.7619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uOkf0lsK7dLfEuh6EH2DApPyQbSmZKyvjqQuUT3W7oXSMU3BI4B5ZAXLS/ESi/j2gktqg5slfKkoDS5PmQ7YeD8W40ME6NZ6DpdgO4H4lUc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6368
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


On 2/5/2025 2:00 PM, Dan Carpenter wrote:
> Hello Ankit Nautiyal,
>
> Commit 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have
> best compressed bpp") from Aug 17, 2023 (linux-next), leads to the
> following Smatch static checker warning:
>
> 	drivers/gpu/drm/i915/display/intel_dp.c:2481 intel_dp_dsc_compute_pipe_bpp_limits()
> 	warn: always clamps to 24
>
> drivers/gpu/drm/i915/display/intel_dp.c
>      2472 static void
>      2473 intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
>      2474                                      struct link_config_limits *limits)
>      2475 {
>      2476         struct intel_display *display = to_intel_display(intel_dp);
>      2477         int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
>      2478         int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
>      2479
>      2480         limits->pipe.max_bpp = clamp(limits->pipe.max_bpp, dsc_min_bpc * 3, dsc_max_bpc * 3);
> --> 2481         limits->pipe.min_bpp = clamp(limits->pipe.min_bpp, dsc_min_bpc * 3, dsc_max_bpc * 3);
>      2482 }
>
> This is an unpublished static checker warning that complains about weird
> clamps() so it only just started showing up now.  The problem is a
> mismatch between intel_dp_min_bpp() and intel_dp_dsc_min_src_input_bpc().
>
> In intel_dp_min_bpp() it uses "6 * 3" but then that gets overwriten with
> "8 * 3" eventually.  The warning is that "6 * 3" might be pointless?
> I haven't followed the code totally, but it seems like potentially the
> checker is correct.

Hi Dan,

The intel_dp_min_bpp helper function specifies the minimum bits per 
pixel (bpp) that the hardware supports for DisplayPort (DP) without 
using Display Stream Compression (DSC).

On the other hand, intel_dp_dsc_min_src_input_bpc() specifies the 
minimum bits per component (bpc) that the hardware supports when DSC is 
used. This is used to derive the min bpp which can be the input to the 
DSC HW.

For a given resolution, the driver first tries different lanes, rates, 
output formats, and bpps within a minimum and maximum bpp range without 
using DSC.

If this is not possible, it then tries to use DSC. With DSC, the minimum 
bpp the hardware can support is 24 bpp, so we update the minimum and 
maximum range accordingly.

>
> drivers/gpu/drm/i915/display/intel_dp.c
>    1175  int intel_dp_min_bpp(enum intel_output_format output_format)
>    1176  {
>    1177          if (output_format == INTEL_OUTPUT_FORMAT_RGB)
>    1178                  return 6 * 3;
>                                 ^^^^^
> Is this pointless?  Should we just always return "8 * 3" since
> that's what it's clamped to in the end?

The 6 * 3 value is the minimum bpp when DSC is not in use and the output 
format is RGB.
This value is not pointless because it represents the minimum bpp 
supported by the hardware in this specific scenario.


>
>    1179          else
>    1180                  return 8 * 3;
>    1181  }
>
> drivers/gpu/drm/i915/display/intel_dp.c
>    2161  int intel_dp_dsc_min_src_input_bpc(void)
>    2162  {
>    2163          /* Min DSC Input BPC for ICL+ is 8 */
>    2164          return 8;
>
> This 8 becomes "8 * 3" in the caller.

This function returns 8, which becomes 8 * 3 in the caller, representing 
the minimum bpp when DSC is used.
If DSC is not used, intel_dp_dsc_compute_pipe_bpp_limits() does not get 
called, and the clamping to 24 bpp does not occur.

I hope this clarifies the distinction and the logic behind the clamping.

Thanks & Regards,
Ankit


>
>    2165  }
>
> regards,
> dan carpenter
>
