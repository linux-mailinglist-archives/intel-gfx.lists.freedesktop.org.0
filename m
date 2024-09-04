Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F36096BDDD
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 15:08:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06A7C10E7BE;
	Wed,  4 Sep 2024 13:08:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SnlKXbYE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19F1010E7BE
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 13:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725455323; x=1756991323;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r94+InRfpc3/BVRv+8K3Miyi5WkfQaOi7KwhzEmdjdo=;
 b=SnlKXbYEefaNPtn8b8gBhGJZmgxno0AugvbNhGRaQyGhOlvLlsosOlUV
 LYcH0mI0hPZE5m0gZRgxbf8U3pmT0v3lF2l3xjel/LPSYiNqrGDLzKIDM
 3IYtsdqvF/yNqB3SsxL10kftO11pANVq99JHkGbrWtQhTXLFXjP35RBsE
 x2pilcnM12IsO+KcNUXwLyFzh3v66XGNe9Dmmorm84zV6aHSKQsiwIC4+
 ppQeRqOaEupF9DMY1Itfxr2V4iSQJgJ4a8RJOwUc8AbYBG32bRAsbRZ7f
 3R0iqYY0wbAAM0qO3UE8+sYwm7g77yjFwwZaKLm3GS1EaXB/Iah0of2k6 Q==;
X-CSE-ConnectionGUID: b/O8GTr7QhiGCoGcjI/23Q==
X-CSE-MsgGUID: MwInaUfGQvmI9jl4oy2+7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="35274342"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="35274342"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 06:08:37 -0700
X-CSE-ConnectionGUID: RKTVWtinQ1OlQbc+OvYlmw==
X-CSE-MsgGUID: n05sH6JdQ/qD4PKksVFeyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65606013"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 06:08:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 06:08:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 06:08:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 06:08:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 06:08:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XlQ6LNeVbSV4CDc9RNDd4qYVxxQanIMTHaWphhXmR7WEgKn5JUnO+/BlSuwA+dKECtB/Cf8sCn5YnU6fsEZRniP6XAHo7y1GMZwadIa40SryFrfy36g5hi5aw0PdJAuLfSKZnIJzxwABrWqJFu3jZl0IX7S0wNVoPdf+Wq1zaEA2ayFMrxfKgkdSoOsyypYPiHnEiIuOcCBIQ2pXb+2dU6QaEWlrIJKsbbxRWYZBIOx9eZreNqkaP8YttXbPUd5foUu+bLlD4DMcseKWZ5ncyhA+VozphX3f4GtqOvvjY0eRT2w2ML275gdq/57Z2PAMEV8umnSyg2yyZ9SOOoD2qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2MGc6qL1/KHlY+2jTjfW37+ry7bIGi/jVqJ04hlCWEg=;
 b=M6P3tZVEDrQpEw/KTNDcvZMGydSdEtEW7snZmOs1wuQ5ChDNOwc/JJDPRqBqGKPSkrH/2UEWfDmE0epDh2bYQSWGZirxy5ysAGAcU1fM2iqmWaiLrSQFhQUFVwScrCRDTjgWLiLkbryt8w66DrHyQowGliSymqyGApvqZu2W2aNiudlqopNbAe8KYIwRJaZ9qZudLBLYROaHNyV9y8jpit6AdfoTnStBR9ZE3JaggQeofSKuRv6/1BEK/tN38CmgijIzVaidLac1+nicZH4lYuS6ID2SRG+w0ZAFJkQu4/EUctezo3chwe7+Pf1HvWTWVavM0vVFCy0CPFyObjMqEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB6269.namprd11.prod.outlook.com (2603:10b6:8:97::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 13:08:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 13:08:21 +0000
Message-ID: <1b9e134f-3031-4471-8a2b-2ba5ac52df15@intel.com>
Date: Wed, 4 Sep 2024 18:38:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/13] drm/i915/vrr: Always use VRR timing generator for
 XELPD+
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <mitulkumar.ajitkumar.golani@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
 <20240902080635.2946858-13-ankit.k.nautiyal@intel.com>
 <ZtcOSkceU1iuaATL@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtcOSkceU1iuaATL@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0029.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB6269:EE_
X-MS-Office365-Filtering-Correlation-Id: 50539be7-5c67-4344-9507-08dccce2a6d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjU3aTdDRHlaUk9SZEFpS2pzTytyYVQzRm9KeHUwbmJxdVJHam50cm10NTlU?=
 =?utf-8?B?VWdHSkZLN1hVa2x3VVBiN3crRmNsQTBGeHRKaTdnanRSaS9VKytFZHQzVzcv?=
 =?utf-8?B?TGVoczBvSlZBdjUvVnhKQ0JqbHdBUE50dCtiNHZUZisxUUNvR2ZQYWtvR3hY?=
 =?utf-8?B?MmRvVTFNUE16T2NScFF4NHVXR1h5cXpUMENQYlNkYW5jSmpWL1E4UjloRnF3?=
 =?utf-8?B?VGRsRXhNVkNrcG5IMzkvNWM1OFdqd2s0c1IrUE9UeUdYWTRaTDNNSkdNNDNV?=
 =?utf-8?B?MGIrQmp1TldVRnM0bDRrQThtUHo5T3BnM2xqcndCbkVsK3hJQmlxdERmdDNz?=
 =?utf-8?B?ais5SWQyNDBlalhSQzcxMERzRGM0amV6anNxSnRsSUd4SWZTUTgwWEtnTHFV?=
 =?utf-8?B?ay9FTG5nclc0eHE3SzVCZXIvc0RQdW9RbnZadzd1Yll6VmFhUEdUWWVLaHN6?=
 =?utf-8?B?UVBGWjN2a3BlSHJOaGN5SzVUT2dNM0tkQ1hwY3F3ODlQQ0psa2lsTmpQUWhx?=
 =?utf-8?B?ZGg0VVhJRFc3dENYVGN5RFN0QkdIRzQ1YXV5dkJNby9seGp3QjJTZzJVblVK?=
 =?utf-8?B?MUJuQUFIejFaWVdhZVZLbDFMNVVKTDJDcDI5dW8vWWg0L1lPUVRvUjdHL2I4?=
 =?utf-8?B?VEQ0bGZHVGxpdWdCS3JTVGV0OXRnbEdPT1l2SEpSbVgwU2tudWYvQXRwUHV4?=
 =?utf-8?B?aHRlcXcyblc2TVBGMzNlWTlCT3lXenh6bWRWQXVRMnBjKzhVc3lLV0ZIWEVu?=
 =?utf-8?B?OFcvbDZIcGI2YnhheWl3THB3V1VJa2FkOE1TcklRSTNiNVRScGQxOVY2TFhI?=
 =?utf-8?B?UCtsdFJjQ3BQUUZtMG83TWE1Y3RDRjU3b094dGJFUWFnbUoraStoc3pOSlI2?=
 =?utf-8?B?cUYwWEgxMDNBdkxwRWI5SkN3ajRxUXVyRFUrZXh2VXRzWExVMEtYalRmRGRu?=
 =?utf-8?B?Q0FZZGU4ejV4WTlhT2ZXZFAwZE5wdGRFa3kwN2owVWdYblgvcFUyOUZUS0s0?=
 =?utf-8?B?ek1pQkhJYkxXcTNIT2dnbjlYbHVlUVRSVW44VHM2M21uczAvK0FQM0JvTllt?=
 =?utf-8?B?bDEzSytvNVNLY1RTMVY5c1FzallTMTMvajdhMDJPTXFXQlRkOW9mVXdJVGZH?=
 =?utf-8?B?Zk12RCtNQnRDREFtekhQNVZ0TDVROHFGV2Y2RG1TRUZJL1JiNm9xQ3FnNzJI?=
 =?utf-8?B?R0JZRk1YSGI3RUF0ZTNuQnlncGY5d1cvNWpDN3prZmx1dmhzRkh3dVdhMVY1?=
 =?utf-8?B?eGsza1pXNEhZdVMyUVIrbkNmendLYnFxMUtRMjlReUM3Nk5XQlVOQjJIZHg3?=
 =?utf-8?B?U1BKR0JaLzlWVWFYM0pxLzVyTFZHSmJ4dFZGbVVHbTFtaTZFV3dlOXY3bjRv?=
 =?utf-8?B?NkEvajg0NHlMeW5pc0RZaVk3WnczVFZrKzJqcitZRUgyblFCMFhwbHk5bmRo?=
 =?utf-8?B?QTRkSW1JQlVKYjd2eVNjUUFabXBjSDlSTElVSVFWdWMvMHUwTDBydXpoRTlo?=
 =?utf-8?B?S2NHd0x4R0g3SWNwZ2o0UmJEUEVSb3l6N3plVjUvaFVpWlcvRGhRS1Y3ZGFP?=
 =?utf-8?B?MkI2RmxyQTZOTm5uZnBGSEZWUDlOMGpHWmFqTnd1SWpnaTBtWkx0MHA4YWxq?=
 =?utf-8?B?MDc2ZW1mUWQxS2Z5NXdmZVhWdmJ2MDZ3K1ZNUk5YZjU5alk3NUViajJra3FZ?=
 =?utf-8?B?ZmpsbktEL3BMdmg4NjlXc3duN0dpeUFZb3B4S3BaZFJUVk0ySmF4NDdQdVpT?=
 =?utf-8?B?aGZ0Y09hR3VHU2cxM2M2akQ2cWVOcVlOcHpYQXEvTWFTN1d6MGVsWDFhczRT?=
 =?utf-8?B?dTRtbGRVRjRUdkovaVJHdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MnVTSkJ3THUyWlZLcExKVjZiU3piMzhqa3kxRGpBc1ZtUzJNaXJ6SGMzVUpI?=
 =?utf-8?B?VHZPM2xieHgvYmwxL0ZDNzVmdkN5dDZFWUlZdVFJZ0dFTUxTZTRDeURCMHlo?=
 =?utf-8?B?dTJ0SFhIVzF1QVd6RDVUQnR6VFdEWURjNzlxeitBSk90c3Q4L2ZyMXRWeG9M?=
 =?utf-8?B?RGZIOVROTFlnTGdLMjF0Y0pxV1dyRVA3WHN5VW9RcnFZTTFnVEhVZW5pV2hj?=
 =?utf-8?B?dEpEdHZacjZMNmRSVlhaZ3Vhb3BpQVRPSW5ORERXN0MzY3VXTkwrUGJjOFIv?=
 =?utf-8?B?QVlPUXNqUlhFc2RueGJjNEJQUS9PbWdhTFpnejhYY212ekQwV3F2UDJaK0wv?=
 =?utf-8?B?amV6MkVHcnM2ZVVWMUh3QkZna09XdjBOQXlGUjZ1b014a1JyQ2tzdkxmRndH?=
 =?utf-8?B?dUlpUkdZbzRlRy8wMHBDZGNpTXYvNVhEaDNRYU9JdHlJTFJTZ0V1dS96TXNH?=
 =?utf-8?B?YmhhdU1DbmwvNENCZktXOG91QXlpUnBoajNnOENjMnByRUxLbHl2V25obUw3?=
 =?utf-8?B?RWFNeXRFNWpJNzRrc2w4VnhXSGhncUkwTXdJVldiVUtpUFBFZk1SczlRTkFQ?=
 =?utf-8?B?TER6ekVxQmhyNUZNa3kwYmxlazZ0cjhzeDlyVzNXQzRTcFA1T1pZVldOSFlz?=
 =?utf-8?B?dVE5Rno0VWRnZHpTRDJMSlUrcWFTR0RSeWhlMTZBNWllY0hGZThTdXFPVURo?=
 =?utf-8?B?RytGa09CaW03cVNWUnFvb1VYMG16Vks4ak1vSzlJdEJlYjVrSUVvQmpFb3J6?=
 =?utf-8?B?WDBHd0h5UXc0UlYzWjlzenIvL09Ja0RhTzBOYzhNNW9xbkw5S3ZXODdMbXVX?=
 =?utf-8?B?eC9tU3paRDFNSmNOTCtnUEtMRUVJSjRHWUNHWmZnRC90MlpNOG1DeTRvOVd4?=
 =?utf-8?B?RlMyVzJhMlpwV1RZRlg0OUtoUS9HN25lMCtMQkMwQmc4b1VKSW03ZWN1RmJ2?=
 =?utf-8?B?Ylo5MFd0SnBJeVZLUUozeUpqaytZdVpTWE5LVHROZXl1MmMySjJXQ0g5Y1lZ?=
 =?utf-8?B?MjZ0dnpsQk1ZdTU3SlpFaUtLWGxFbFNJSzFkMW5GamtHeUU3dEFidmZpMk84?=
 =?utf-8?B?dXJ6a284MHZFUE8vd3VLQXFObW43cGxjekcreVczdTBKcVFjM0pVYTgzYlpl?=
 =?utf-8?B?Mk5JVGE2SDNSaFZFK2gwRUp3R2NrY28vMndiVE5GTEFCSkNNQUljQklCSVk0?=
 =?utf-8?B?VnY4Si9yUktuVmlXMGJBWXdMRlJGYnkzWW5ZQmw0NkR4RXlZQmE0Q1pKeFMr?=
 =?utf-8?B?d1BlNlFqYWx2VFh1dklidG93bU5SbCtlZnJZVzlhU3RCQUZWbGZrcU1EbUlE?=
 =?utf-8?B?L1h4dzBJZkpPOWR5bWdhV2phM3F4LytjUWNoYm9Ma2F0NC9YK0UvVGM3akY2?=
 =?utf-8?B?NnJnSHgyQnlPeUp1UGllelVWNEIzTTk5aGMrbWt2aXptYWt2UEl0Z0k0dUpO?=
 =?utf-8?B?dkJRZzJEaGZzTHVOcUZzMlhuUXFKMXRITWhvMVRodjE3RTV4Mld2YXlIYkpq?=
 =?utf-8?B?WEZuZ2JZQWZkdUFrQmJISFR1cWxRbXNQbEhtNXpseGxoR2xvQTQ1SHRWWmM3?=
 =?utf-8?B?MDUybkRhcjk0b3RuUDg5aEVFZFVicldMUWIzblFVLzZXemtqSlRxczF2Y3I3?=
 =?utf-8?B?RFhhNDRnVU4zVDhrdzhjUktGbzhrMHpEaE1PaVk0RTRQOURYL0F5THJ6d2VS?=
 =?utf-8?B?cVlteTBMUHBhTFVUbElqMHdSL056bzBiU0pEb3lyRkRXUUIxTGhhYnRWNXh0?=
 =?utf-8?B?L1pFRFpNaTN5UFJjNUVqLzJxVFVvci9RT0svUnRwTy9HbmJSUmM2QlRvRGIx?=
 =?utf-8?B?b0JPLzRFYm1KMDdYTXFSc2w3Q0NTTnZPdHZ2QVdubjN0Y1Z1ZXhGL1JmZGxV?=
 =?utf-8?B?OXlIZG9acUtkVGxKMEJHQ1ZzRTl3MkFjSExBU29lLzdhV3h6QVFIVEd3aEln?=
 =?utf-8?B?YWpTL3dlOE0weXhMcDlvK0Z1Wnl3ZFkrR3R4V0JRcWloRU4rMloyQUlUbnVY?=
 =?utf-8?B?OFo2SnRac0tocEt5dVNZeTVxaDhsWjNVRHJyYTNGZmtGeno2TWRJd0U0Uksy?=
 =?utf-8?B?VDhRVjJHVjUrb0tUZitCdWVOSmR0TWxBZjdqM1lKNkZ6SlBSb1d3SE5GL2NP?=
 =?utf-8?B?SmwwSXJaaCtlbUcycTk3Q3hMZUVuUndvL2l4TVZXN3VNOERYWEhoMDI1MFRY?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50539be7-5c67-4344-9507-08dccce2a6d4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 13:08:21.6706 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bhs/PRUS87thOMpuTMJazBZ/EqiXEUJwFGWUi+Z+XDpbvoXLh+5jw3mkk8v9PKnx+ZsvGEpuolCK0pTTlWvmSgbH3R4AzvA8aVWg0f7GwDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6269
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


On 9/3/2024 6:55 PM, Ville Syrjälä wrote:
> On Mon, Sep 02, 2024 at 01:36:33PM +0530, Ankit Nautiyal wrote:
>> Currently VRR timing generator is used only when VRR is enabled by
>> userspace. From XELPD+, gradually move away from older timing
>> generator and use VRR timing generator for fixed refresh rate also.
>> In such a case, Flipline VMin and VMax all are set to the Vtotal of the
>> mode, which effectively makes the VRR timing generator work in
>> fixed refresh rate mode.
>>
>> v2: Use VRR Timing Generator from XELPD+ instead of MTL as it needs
>> Wa_14015406119.
>> v3: Set vrr.fixed during vrr_get_config (Mitul)
>> v4: Avoid setting vrr.fixed when vrr.cmrr is enabled.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 61 +++++++++++++++---------
>>   1 file changed, 39 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index e01d4b4b8fa7..625728aff5a2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -172,41 +172,54 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>>   		return;
>>   
>> -	crtc_state->vrr.in_range =
>> -		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
>> -	if (!crtc_state->vrr.in_range)
>> -		return;
>> -
>>   	if (HAS_LRR(display))
>>   		crtc_state->update_lrr = true;
> We aren't supposed to do a LRR update unless the refresh rates are
> within the VRR range. So this needs to be moved as well.

Noted. Will move this in the other block.


>
>>   
>> -	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
>> -			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
>> -	vmax = adjusted_mode->crtc_clock * 1000 /
>> -		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
>> +	if (!crtc_state->uapi.vrr_enabled && DISPLAY_VER(display) >= 20) {
>> +		/*
>> +		 * for XELPD+ always go for VRR timing generator even for
>> +		 * fixed refresh rate.
>> +		 */
>> +		crtc_state->vrr.vmin = adjusted_mode->crtc_vtotal;
>> +		crtc_state->vrr.vmax = adjusted_mode->crtc_vtotal;
>> +		crtc_state->vrr.flipline = adjusted_mode->crtc_vtotal;
> Has the "flipline can't be below vmin+1" issue been changed in the hardware?

Need to check this, will get back on this.


>
>> +		crtc_state->vrr.fixed_rr = true;
>> +	} else {
>> +		crtc_state->vrr.in_range =
>> +			intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
>>   
>> -	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
>> -	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
>> +		if (!crtc_state->vrr.in_range)
>> +			return;
>>   
>> -	if (vmin >= vmax)
>> -		return;
>> +		vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
>> +				    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
>> +		vmax = adjusted_mode->crtc_clock * 1000 /
>> +			(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
>>   
>> -	/*
>> -	 * flipline determines the min vblank length the hardware will
>> -	 * generate, and flipline>=vmin+1, hence we reduce vmin by one
>> -	 * to make sure we can get the actual min vblank length.
>> -	 */
>> -	crtc_state->vrr.vmin = vmin - 1;
>> -	crtc_state->vrr.vmax = vmax;
>> +		vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
>> +		vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
>> +
>> +		if (vmin >= vmax)
>> +			return;
>> +
>> +		/*
>> +		 * flipline determines the min vblank length the hardware will
>> +		 * generate, and flipline>=vmin+1, hence we reduce vmin by one
>> +		 * to make sure we can get the actual min vblank length.
>> +		 */
>> +		crtc_state->vrr.vmin = vmin - 1;
>> +		crtc_state->vrr.vmax = vmax;
>>   
>> -	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
>> +		crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
>> +		crtc_state->vrr.fixed_rr = false;
>> +	}
>>   
>>   	/*
>>   	 * When panel is VRR capable and userspace has
>>   	 * not enabled adaptive sync mode then Fixed Average
>>   	 * Vtotal mode should be enabled.
>>   	 */
>> -	if (crtc_state->uapi.vrr_enabled) {
>> +	if (crtc_state->uapi.vrr_enabled || crtc_state->vrr.fixed_rr) {
>>   		crtc_state->vrr.enable = true;
>>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> Hmm. This is now a bit of a mess. We need to come up with a sane way to
> deal with the vblank timestamping code. Dunno if we want to make it so
> that we'd always use VRR timings or the non-VRR timings. Should be
> identical from HW POV so technically might not matter, apart from the
> software state tracking POV. And from that angle it seems to me that
> for the dynamic fixed vs. variable swithcing we might want to keep the
> code using the non-VRR timings for fixed refresh rate.

So do we set I915_MODE_FLAG_VRR only when actual vrr is used, (ie. when 
the vrr property is set)?


>
> There seems to other stuff amiss still:
> - We don't enable/disable the VRR timings generator early/late
>    in the modeset sequence?
> - How do we atomically switch between the fixed vs. variable
>    timings since we can't temporarily disable the VRR timing generator?

Yeah, with current changes vrr.enable is always true.
Perhaps I should have added a check for disabling(fixed_rr, ..) in 
intel_crtc_vrr_disabling.
Will get back on this as well.

MST + VRR is also one of the thing yet to be handled.


Thank you Ville, for the comments and guidance.

Regards,

Ankit


>
>>   	} else if (is_cmrr_frac_required(crtc_state) && is_edp) {
>> @@ -421,6 +434,10 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
>>   		crtc_state->vrr.vmin = intel_de_read(display,
>>   						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>> +		if (!crtc_state->cmrr.enable &&
>> +		    crtc_state->vrr.vmax == crtc_state->vrr.flipline &&
>> +		    crtc_state->vrr.vmin == crtc_state->vrr.flipline)
>> +			crtc_state->vrr.fixed_rr = true;
>>   	}
>>   
>>   	if (crtc_state->vrr.enable) {
>> -- 
>> 2.45.2
