Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A2A9CDA43
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 09:14:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE2CC10E3B1;
	Fri, 15 Nov 2024 08:13:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H5e3J2YP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C1CF10E3B1;
 Fri, 15 Nov 2024 08:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731658434; x=1763194434;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=joGNJBYfaDViGMGS6B4c8i9QP0I4i5Ew+Zfh+Q360GI=;
 b=H5e3J2YPl05fVtYmTfBb+r4JO6AIf1i4ZOVPnrx7h2lYphIxGPdUmlyU
 uOdCdXqMXGf1tkjNz6k3HdjAq2GRExiYkxEUFY3/RGzoZslu8xARf7r4M
 OWRXdsPgSqRILqw36ubok+GLkqsf23OMEsR2KZfo5ZjQoUQuaGxF/VR3o
 zcViISqLfivV+38UVjKU5yNU/siXSAvudi14gbU+0fEh5Q7nSwFx3LKbk
 rLwlD8+YEOH//5bnuUTICfnx6H85TUkFO0Css11ezU8Lg1fONZ8omyTTN
 h9fHdU1wXg2NQY9PyBVyWpeuVnYeOVUedjfWjOSkFTAiYy1ktFXavf1F8 g==;
X-CSE-ConnectionGUID: QMVKVPlpQSeC7NtF6y2NYg==
X-CSE-MsgGUID: zsyl6z8TSgGiZY3Z4aVCDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="19266145"
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="19266145"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 00:13:49 -0800
X-CSE-ConnectionGUID: wpDjyRFBRae3zTKF9cAsdg==
X-CSE-MsgGUID: s8T/5gHyRy28hcUfzl2MVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="88890759"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 00:13:48 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 00:13:48 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 00:13:48 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 00:13:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FG11NNZDlPtf1tARMffYwfhi+yxkqVY/ABQhk9Vd8isWIrydH3tfioucwxqqMMK8XsXPxN7k4qmddRLRWiuL6qh8vwft8a3YNx7wvveTQ4X68/BLJBcJxEXx9oKbdIgj4qEU4FOoff3nD7P/2URxKMju0Wc7r4U3zqzYu4kTDWUAXeYCasBVvzxRLY272FQgR9h/4d1IwofD9sHQTfNlQEciHLXFWQb7k2ABJn5OzexbKv3FniL4HEKykZamJgJNV7v3bsdoNQ5kuMCv3/bWzs+C2h2UTu67DAWB1TeUwuk3xVAmTxQRhD7BwMOmpuRq/EPKQLh3gagViIHu200iYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9j/KHX4M3ME7+y5kj19YJTNDWXepDWsGEyPOpqZg9QA=;
 b=t572UGq3g/r6HbSpOsega0DC8rhYPCepruSxAgDnD8wg2xPKxn6j9SKmwmvyYQx4KiQC0yEanm1Rne2se04C/D2vJrskm14JlH+gNX+MZce++GE63Q7AulFswCW4WRh6krmcL3bCTtKQiuQqGxzGdFSI8d/dydqZ1cX7qfXnCfk6CCVoTjyHvfTxUIraH9lQYA4lD1MRv2wK2NUmQbVyvSr2oQo1oRA06BmpgXwlUJ1aKeg38c2Uxi4L8vPgC05xE0zwoir20K7NgPqZRliT/4V08NvPZJpIvCzSmg3B+Ml2cZqCG7dt3LCp7yMVtp2idpTamn6dBAms1AzTSh6YtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV8PR11MB8509.namprd11.prod.outlook.com (2603:10b6:408:1e6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Fri, 15 Nov
 2024 08:13:38 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8158.013; Fri, 15 Nov 2024
 08:13:38 +0000
Message-ID: <712c03fe-90c9-4a76-a3bf-c4402f8ea6fb@intel.com>
Date: Fri, 15 Nov 2024 13:43:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] drm/i915/dp: Refactor pipe_bpp limits with dsc
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <jani.nikula@linux.intel.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
 <20241003104343.984060-6-ankit.k.nautiyal@intel.com>
 <ZxEA9KDEWys913p5@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZxEA9KDEWys913p5@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0186.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV8PR11MB8509:EE_
X-MS-Office365-Filtering-Correlation-Id: bd91f8c6-0471-4702-1755-08dd054d689f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c0ZyaExFaEp1WlNCRlgwaEJEa2QxUWlWL0poS2IrMGtOUTFLbVZMTmZEL0Ew?=
 =?utf-8?B?cm8rODhrSjNmK01ZclZ4ZENwdTUxL0M2dGF3UitZRi8rZzRINDRDdi8vb0JL?=
 =?utf-8?B?NXFjc3p5dW1SWEpPcU1QTjVneDFHK3QvYW9pYmpnMm5PdXdEcFdKMnh1VDRP?=
 =?utf-8?B?enBFazVWSm5wNXJnMGZjakFkd2FRTDU1MjdRU2l6bmtnMlgwVktkc3NhQkVD?=
 =?utf-8?B?MjVocnpXUkVFanNCRGpQZEFNUkJiajlKU1IzeFhKZGprWkZucUFOUVRGTWNV?=
 =?utf-8?B?a2FKcnVEdFZZSXFMZzRwbWk2UkNrYTJzTjRid3pRd3VvYUdMOGxCUVZ1V3R0?=
 =?utf-8?B?U0R3L3pOQVFqaHgvTGNjYXo3K0k3OGNMNkU5WGxaV0xtNEFWNTY0UDRKaEUy?=
 =?utf-8?B?bGR6VGllcEJiUmNLS2pGVzZEbHhjcTYweGZLVjRQNFpQdXhPclVDTUVsTkhO?=
 =?utf-8?B?Qi91a0hMK2lmTjZJczM0K0ZXRmtqZ3pHaHBrU2liNGhBeFFZVlBhd0huNWdI?=
 =?utf-8?B?L0NHb3ZOMWt4bktZVzU0dExReHp2blhrSy8wK0k1TFNOcjJLdkZURDNucW1t?=
 =?utf-8?B?VTl0RXQrazNnSmtHRVNyMDkwOWZiWks3eG41RUlpamtGZnA1dGt4WXVlMmNT?=
 =?utf-8?B?Z2s5MWVvR0Nra1cyKzFNZnJibldWdGI1Qk5MUHJjWEpCQmNFemNZWEtOaTJy?=
 =?utf-8?B?dTJKY0RqM2UxQjZrNmh5ZGN1U0MreGtVemFsemdMV0JMWUc2Wk0rYWNTOVZx?=
 =?utf-8?B?WThsdlFoaHdrMmFTSEJDVGcrQkhjV3RMZFY4Y1ByWUVKcWwvRDFWTGt0eXYr?=
 =?utf-8?B?dHU3QkZrakxuSEEzMFZzdjl1QzRkMi8vSEpwbDlkQ29jY21DQUt5ellubzVH?=
 =?utf-8?B?TUd0SWVDSzdTZ1UranBNeXl6U2wydHRUQWYvZzgwQkxtbGlMdHZWVWY5ME8w?=
 =?utf-8?B?OTZoRUF5djBOY2JzTUN5c2pHRm5BYXQvbGVCekp4bklFdlRkTGxlOWZ6ZmtQ?=
 =?utf-8?B?dlRqZU94ZFByRklHUEUzS2ZwQnhuazJkSzdKSUNFWUlBcVRJY1NkSHhwSTNz?=
 =?utf-8?B?QWpBSVY0eHZCcHkySUl3Z0lWN0VoL3AwdVhBRVJjZ29xSS9YSXhuSG4zaFg5?=
 =?utf-8?B?NmgzdzhTVElPVUhUNHdwVW1VZ3FVQVg3VWQrUkpzWUM5azVYdndyUy94NDlZ?=
 =?utf-8?B?eTJsajMvbmM0YVZXY0IvcVNTUlRNVmx4MGJ4RlpBUnB2d2pKbG1Xdy9GNm9a?=
 =?utf-8?B?c24yaktMaUxhQytEUUlWY1JOcTlFck5OaGhLVTJjSWhVOU0zVjQwak94eEJv?=
 =?utf-8?B?ZmgwRU5CUTkvYS8rQWp1Rm40VWdKR0NLdzd6TXZpOXFraFI3Vkt6OUxWV00x?=
 =?utf-8?B?OFY2VUJyUzlSd3dHZ3pYZlVWcUd1VzVSMFM4THJ2MmxCVW93bHRYYkRZS2JG?=
 =?utf-8?B?OHc2aU5FL05YWTdQdGtrMld1aEVIOFplM1lyNUpIZzFWUTJQaEZLQnlGQXEz?=
 =?utf-8?B?bERncUNSY2FKN3pkZHR1R1Z2ZU5pa3FIQmZaL1lpdTRqY0lnL21kQnc1Z2sw?=
 =?utf-8?B?ZFNvSldRV1VEUlNocGFWZGdiWjA4U3JkUFZlbktqVWlUZk13ZmovUHZQd2RO?=
 =?utf-8?B?SThhbTB6bVp5eWlhZU85MGxmMmtjV3FZM3dVWkgwYVgrNzZiMVY1aDRVazdE?=
 =?utf-8?Q?ypt5emUKZa/M7DnQ6ArP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2picEgrWE1XWVJweTcweEVnM3V2eUdnWVBHYVJsZzFTRUZxU21xVmFjV1hv?=
 =?utf-8?B?SmZOcm1wZEkwTmc0WEZ0U3V2Zncwc1UybGlXemV4WmVMOXBiTjl0ZTVaVngr?=
 =?utf-8?B?L1poVS81ck5zbGhOT0tzeFcvTHRGcFVsWGxCNGgzMkRXcWFNaXFkQU1DN21q?=
 =?utf-8?B?Y3p4b1NrQ081dkxjeWpYUHVpY3I4TUJ2ckVvaTBuQ1VGZmJyVm1wenVweG9T?=
 =?utf-8?B?S1JhbTJWSjJrR21TWmtLWVU0WkU3b1lwR1Y0SXcyOUxvUnpMVFdVZ3IyaE4y?=
 =?utf-8?B?dmJGeDFZSEkrZXZ2N2dsajFzbjUzVkMvOW5jbXJQejh3ODQ3UXJDQXg3b0FZ?=
 =?utf-8?B?SjBCRnVOTXowajFPb0NTYjF1amc1UmYyTWRrbW9PNnVXQU9vU292U1hidW1K?=
 =?utf-8?B?QXdxODBiOXNmb0NuVWd1MmF5eWlRS3ViaDBmNS9VZFMzWU03NlhDYXJWbXJE?=
 =?utf-8?B?d0lKaUw3eThQOUNJWGEyQ0hVSUJmbmlOaVByTVRxanFESVc5bEczU3QyakhV?=
 =?utf-8?B?K25sbFh0Z09GRlpJNmMzai9Helh5ckF6S2VXZnFYM3M2OUNCRWwySzUwQmRB?=
 =?utf-8?B?TS9qL0VaZW1nY0poNktGQUc1QWZBNk5vSXVWRTNGbmpVaXNTSUZ2U2ZZNkl1?=
 =?utf-8?B?bm1GN1NJUFRJV1Fyamoya0l5bnZJMEUzSkVKQ0lNMWIvUGtpWTN1UmMzRjZk?=
 =?utf-8?B?ZC83THQ1ZzVxVVRESzFHczlzbU5la2tQSjdzUGNOekJ5cll3b05hNEd0VWwv?=
 =?utf-8?B?b24xTklxcnBJOEEzMWh5dURMRGRJQTcwaXk4NVBWczdXcU9OZkV0VFRZRy9j?=
 =?utf-8?B?Snk5VGpsVDJqckJNcDVPT2J4bE13VU9qWXhQOWNPd2lSY05IUklpRUYyMTVU?=
 =?utf-8?B?WEtGQ1BjaHRSa2w0SUVsZlRPSDc3M1dWRGlVTDZSVzRRRHN6MDRMbzE2dGJq?=
 =?utf-8?B?SUE2Ymt2ZHNOQXpCbFd3Zmw0Q1lIekYyWVBMT0JFYkFKcHU1b2xkRDhGSjlV?=
 =?utf-8?B?anpjK3YyN3BwRzJScVpvUTNyb0J2Q0d4VlZhU1hjS2lOK3Ixd1BtTUlTVFpP?=
 =?utf-8?B?SHFHNW80UW15MFBFeVA2R0orQWNNQ3Z5d2tOOVJqV3d2Qy9ya2JycTRUeWEw?=
 =?utf-8?B?cHp4VVZjZ2kzK2VYc0xHelAzR0hjU1NUa3NUdnpQZnYvdkQvNHkrSzBWL3RL?=
 =?utf-8?B?UFBsMmNtcnlqY3JoV2h2L3YzWHhRSlNuZjcxZWtkcFlkWFFVMVhEME9iQXdI?=
 =?utf-8?B?cmdGVlZyem9KclJnbCtQdDY4ejNrd0taV2VhUHZJL2lSNTd0d3hvTERubUM5?=
 =?utf-8?B?eHBIVlRZZ3RuV3ltdXRLSCs1aWM4UEdPSXpLRExKaXJNVWdUbTEwdjhWUTFF?=
 =?utf-8?B?alZaQVYxTWpGVG5oaENjYmhVYUpURjVRazM0YStYcFNyNFpZdGIvWkd2a3Vt?=
 =?utf-8?B?OUdSZ1htdWY2Vm5TMEVaS2I0KzI5bFRidkZndDRQanNmU0dWbjYzdzlkdW9s?=
 =?utf-8?B?eXFLQmhkS0VVQ3d1MHE1eWFrYTVwZkNIQUYveC9CZ0tZd0xPc0l5NHFBTkF6?=
 =?utf-8?B?blZjTHcyT0QvMkVOOTQ4QUxDSFZmc3o1d3NMYW9sV29hK0V6WTA4Q2tRdHpk?=
 =?utf-8?B?RFBuZjFVSCtRcWtJbnZ2WmR1YkY5Wk5xV2QwTVYrYlJPTm41SjJNbHZlV0x3?=
 =?utf-8?B?VjRGZVY2VFBtdXA3b3RFZk9VT3JRcUg5akhqN0h1akZxdDRSRG4yZjVpM1J6?=
 =?utf-8?B?dGoyZEY3V3pwOG9mRmRUMy9nZkNKMUtWTlVBbEY3bERMWXNOMjJ0aW80TkE4?=
 =?utf-8?B?UHB5RzFjTnpWM2h5S09BNlNUWGFrUzc1WU1kR0QrNngrZFdqcmpCeFBzNllu?=
 =?utf-8?B?bHdYcjVpTnNRSVR5bU91WTVtMndZMmN3QTFaUldIZUR1NTQyL2FNemRoVzZk?=
 =?utf-8?B?OEFiNU5HWFZTV2llMHFqdmZCcWZRL1BJcHBuNzI2YzBOZGhMeWRkWS9iQitL?=
 =?utf-8?B?UTZ0QTFOQThLdDRNVjcyRnVIU1hsS2pGd3hCWko1SWI1dG5mODRLL24xbXJl?=
 =?utf-8?B?TTdINVBTdEFQakVrdHFSN0lGUFU1cGpCeUVaZ1pBNkJWcWxEeDlCcFk4M2tR?=
 =?utf-8?B?SEJocTNRSkRHdXJoZGdQOVpxNmpmYlNGSG1BTVk0ZDlYUjY3QWpaakhQZW01?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd91f8c6-0471-4702-1755-08dd054d689f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2024 08:13:38.5573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XLOIKwnJed3I5Lda+sBrXClemd+rU44eMlVZJG2VpbJah/b7bMBiE+Zs7VTL2SSmWYS4A9FDpKJ6ZHhB5J8UfNYfvdeq3x1ohVj9G/GDXUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8509
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


On 10/17/2024 5:50 PM, Imre Deak wrote:
> On Thu, Oct 03, 2024 at 04:13:41PM +0530, Ankit Nautiyal wrote:
>> With DSC there are additional limits for pipe_bpp. Currently these are
>> scattered in different places.
>> Instead set the limits->pipe.max/min_bpp in one place and use them
>> wherever required.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 43 ++++++++++---------------
>>   1 file changed, 17 insertions(+), 26 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 46f3b680afe9..55ee438a4fec 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2166,21 +2166,11 @@ int intel_dp_dsc_min_src_input_bpc(struct intel_display *display)
>>   }
>>   
>>   static
>> -bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
>> -				struct link_config_limits *limits,
>> +bool is_dsc_pipe_bpp_sufficient(struct link_config_limits *limits,
>>   				int pipe_bpp)
>>   {
>> -	struct intel_display *display = to_intel_display(&i915->drm);
>> -	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
>> -
>> -	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
>> -	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
>> -
>> -	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>> -	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>> -
>> -	return pipe_bpp >= dsc_min_pipe_bpp &&
>> -	       pipe_bpp <= dsc_max_pipe_bpp;
>> +	return pipe_bpp >= limits->pipe.min_bpp &&
>> +	       pipe_bpp <= limits->pipe.max_bpp;
>>   }
>>   
>>   static
>> @@ -2195,7 +2185,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
>>   
>>   	forced_bpp = intel_dp->force_dsc_bpc * 3;
>>   
>> -	if (is_dsc_pipe_bpp_sufficient(i915, limits, forced_bpp)) {
>> +	if (is_dsc_pipe_bpp_sufficient(limits, forced_bpp)) {
>>   		drm_dbg_kms(&i915->drm, "Input DSC BPC forced to %d\n", intel_dp->force_dsc_bpc);
>>   		return forced_bpp;
>>   	}
>> @@ -2212,11 +2202,10 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>>   					 struct link_config_limits *limits,
>>   					 int timeslots)
>>   {
>> -	struct intel_display *display = to_intel_display(intel_dp);
>>   	const struct intel_connector *connector =
>>   		to_intel_connector(conn_state->connector);
>> -	int dsc_max_bpc, dsc_max_bpp;
>> -	int dsc_min_bpc, dsc_min_bpp;
>> +	int dsc_max_bpp;
>> +	int dsc_min_bpp;
>>   	u8 dsc_bpc[3] = {};
>>   	int forced_bpp, pipe_bpp;
>>   	int num_bpc, i, ret;
>> @@ -2232,14 +2221,8 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>>   		}
>>   	}
>>   
>> -	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
>> -	if (!dsc_max_bpc)
>> -		return -EINVAL;
>> -
>> -	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>> -
>> -	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
>> -	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>> +	dsc_max_bpp = limits->pipe.max_bpp;
>> +	dsc_min_bpp = limits->pipe.min_bpp;
>>   
>>   	/*
>>   	 * Get the maximum DSC bpc that will be supported by any valid
>> @@ -2284,7 +2267,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>>   
>>   		/* For eDP use max bpp that can be supported with DSC. */
>>   		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, max_bpc);
>> -		if (!is_dsc_pipe_bpp_sufficient(i915, limits, pipe_bpp)) {
>> +		if (!is_dsc_pipe_bpp_sufficient(limits, pipe_bpp)) {
>>   			drm_dbg_kms(&i915->drm,
>>   				    "Computed BPC is not in DSC BPC limits\n");
>>   			return -EINVAL;
>> @@ -2502,6 +2485,14 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>>   	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
>>   	limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
>>   						     respect_downstream_limits);
>> +	if (dsc) {
>> +		struct intel_display *display = to_intel_display(intel_dp);
>> +		int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
>> +		int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
>> +
>> +		limits->pipe.max_bpp = min(limits->pipe.max_bpp, dsc_max_bpc * 3);
>> +		limits->pipe.min_bpp = max(limits->pipe.min_bpp, dsc_min_bpc * 3);
>> +	}
> Then intel_dp_mst_compute_config_limits() would also need to do the
> same.

The function mst_stream_compute_config_limits() is calling this 
function, so that should be covered.

Regards,

Ankit


>
>>   
>>   	if (intel_dp->use_max_params) {
>>   		/*
>> -- 
>> 2.45.2
>>
