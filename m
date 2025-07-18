Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 083C8B0A0A7
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 12:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD5C10E94D;
	Fri, 18 Jul 2025 10:28:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LGUUCyHZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5676110E94D
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 10:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752834514; x=1784370514;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SrETK79juS8w4impGdPCrWfaeoVr9Eml9kUthHBQT8A=;
 b=LGUUCyHZHHYyGUBzGMmOL4OMaihlTbqB95j/9NrgStQ/NTCNUiZ9aZbx
 6kUf5jVd+eM5m3GIeZuH0J/KNq0xnHyUWJxBIUka7DXLtJLrriIyaqPmM
 M5oCe6ZjoB3EFF6RCKCKoyfB2bY9FYG0JjIlLvJS4gU8NCob+szeMNi6w
 reQsWUcf/qXzAtfzEzhIAJrJb8m/Wo6suMdPbbzD0W2Ema/5niH7VOffW
 tLi2j6NJDLBLymJj5pDvNiS9GhB44bn1qplufvFUhu5PZb20HzPUheaAL
 Sf/JqPU3yM2tPEEjAGe4IPxU4pXbdE3glKtN+umJmLOQI547gYeDXpf0a w==;
X-CSE-ConnectionGUID: CwTtAJCHTpi7B+qUzP94Ug==
X-CSE-MsgGUID: 0OWZ2qGFSnCxCJ8+GXSh8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="66473668"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="66473668"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:28:33 -0700
X-CSE-ConnectionGUID: Q2L6/fgKS6GSwICN2RpH9g==
X-CSE-MsgGUID: 5ZEF0MhoQi+UWNVlEr1Yqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="157696260"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:28:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:28:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 03:28:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.78)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:28:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XakO6RJNXPEJb/wNdEokR0zsn4NZsDO0NLnkW9Z1IAHRjTwkgamFgOIeX00/KfrOLLp6Y+xWieNhfHT/xOZHnm8NUxH/uNMVMMWlxuX1a5L5wHmOrupEiJEb/gmi1WNUeZbJOVJCuz1Z6iZi3/yUX6lwb57ICV/uXgQGZeCO77zCYCMHUD/DntKsGB8rBjPcnN9EUJTomxRywi5lwZx35MpRJjP2fIq+tNN4Njtev4wbLbYP2FswYhHN5jN7iEjkzPxJOHCEAPdrySlv8SK3AlrTU3IOqjlkdL5yj7pzOciMzSnh5up24njL6njkdgJZH1/fDx5g9tael5arGVrFjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r9qIlQgLqhoxuLBYpEZko/7Im1DSgB30IZ3E5gD7LJc=;
 b=giVTHWQWwS0gCI2jful4HIHkmeCS/bdue5E3387BBuDcnT5NYrK9QAk8uxwEu1K+5428mtU94BQgLby/hE/DBuGEElH7Y9LDgnUmJg80OzjGPPT9tUeKIvPCCueAtGhimH4CZnHsd8nmZIGnZZ1TFllFtYCyb0rggDKdnsueM1mGH+2l7N3xRPSqO6Gjcpm1QWp4TP/6h6ZXRxx3w7scrgL78rVLAdSF/PqcwAUsZO6mZb7wAwIAHfp7ThESen0h4mQvldv8hnuEIFHKqSE5Jy0GPll46Jj4PGuOdA5Vn6d1jdeJQs+OGGB4UKU4XZp7iywzaD9+13t+23PBWDiG8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB7538.namprd11.prod.outlook.com (2603:10b6:806:32b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 18 Jul
 2025 10:28:30 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Fri, 18 Jul 2025
 10:28:30 +0000
Date: Fri, 18 Jul 2025 10:28:26 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v3 4/4] drm/i915: Use dedicated return variable in
 eb_relocate_vma()
Message-ID: <20250718102752.684975-5-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: WA2P291CA0025.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::6) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB7538:EE_
X-MS-Office365-Filtering-Correlation-Id: c4c78afe-e3f8-489f-e7b3-08ddc5e5d744
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y05MWVNwclpTT2k4cklidUZqQU1CaFZvNTB3WTBHdVhnNEhzWlhzaFBpWDBz?=
 =?utf-8?B?Z3FRSUk4bFBVMVk1VzMzeVFZclNEMzFsbWJjcjlJWnBrRUhLQjIrQk14cmNi?=
 =?utf-8?B?MjVlRmtkeXFJa3Rwd1NNZHJOS1hBaWxVSzFxalpVWXNhRmhmSDc1NHBzTGFt?=
 =?utf-8?B?Tm9aUjZ4aHZHb2x1VkEzdFhpN1VWdGUvY3NtUmJmejZxK0Q4S2ZmaEttdkNT?=
 =?utf-8?B?RUNEeEMwSU5jTk9UclVZWmVpZHkxQjlTNHpnSlRseHoxS25lWCtIY1g5RTJU?=
 =?utf-8?B?NVczWW1XWlJpaENIbmFUTFF1UDFLbVM4dkUveW5kWW00SHlpZG9JOHY2YnUy?=
 =?utf-8?B?SjVzckw2aHBTdkh6NzdHK25uaHFwd1JMcDdNeUU3UlVZT1VvK0Fxd2hVTTRM?=
 =?utf-8?B?VUllMTFsaFRCZm9pUzJvNDZ0UFUrTWFXdk5sZEdKLzRablFJZktPZjFrTUM5?=
 =?utf-8?B?Q1RFdEFZWlVaaE5QaVNGQ0FVYXhPL3pmSHNpbmt0VW8ydzF6WEEwOGxLdHJE?=
 =?utf-8?B?RjhDR2VtTndjcmlZM2dHY0Z2Z01nYmRVV0k4ZytNZEpISXZEb1JxVXhsZTFS?=
 =?utf-8?B?VnVkeG5PSW9sK0p2NjZjMHBWdW9mSmlRZkpiMHlocm1aYXVDRzE3L0ZiRGc0?=
 =?utf-8?B?OUFNdEYxV2FkdVpqSUpqa29TcllkcDJiZWtPT1EybVVEQkJRNW5vdmVwUith?=
 =?utf-8?B?dmt4b2I4Qi9kaTBEcTg2Z1hRbkFJdGZPejU3d1FLU0RKZ3JFY0k1Wk1BSW1V?=
 =?utf-8?B?OHJoMjEyaUFHWUZ3VFE2Rmw5UnA2ckVVY3JKRXhnOVVacExFV2E1UUJIVzJy?=
 =?utf-8?B?Y1E2a3Z0NnNSMlVSV2pQbkRqRHAyRkZ2SG9FbGU1K0VYaVVwN1NrNGNGeStQ?=
 =?utf-8?B?eEtOU21odmo4L0FXTHZjYWt5cjJoQlpodTVSQWlleVRMaGlTeGF3eHFJSUdS?=
 =?utf-8?B?MytWSTRySU92dEJlUUk2eS9QLzg0dzdQUnB3V1gzR3J4eHBiVHJJenA3QnMx?=
 =?utf-8?B?c3QyTmE2YXJySVd3UHpocVRBTjFjajd4Z0pEdXlKQldtUEw4TlB4Z2haV0Nn?=
 =?utf-8?B?YWM0K0lFVENVVEJWRTc3NENEMDRRY3kwMk9PSjhvU0JCaVQ2Q3pTNGxFdll6?=
 =?utf-8?B?Q01kSFdFMko4M1c0TGNRSFJWTmZVYWNXMUduZDIzRG5Fc3ByMWs5VmtlUFVI?=
 =?utf-8?B?a1c0ajZZeXIrdFBKMEViTmFaTVBKSEM1RVZhYXZ5US9mR2VtM0Juc2dTTFlH?=
 =?utf-8?B?SXg3S2dUbXZDbXhVYVg3d2IyYWY4TUhaczIwRDRGUHpCN3Y5RENsY1JxSVZK?=
 =?utf-8?B?WEcvNmJpZVI3VG1VZ0UrUGo5akJ3TWVXcUxzNzBFMkVnVkJ5dDk3bEZZNzRQ?=
 =?utf-8?B?SU8wMUpWSHpMbHI2LzMyU1B1OE5mR25MVWc3T1Z1S2M5OExtUFlqclh5dnN4?=
 =?utf-8?B?UFNYV2FBYW9mUGhxcU1EdFcxSk5Zd1B6Szk2dmtHWGFPQXFlczloeWlUZnN6?=
 =?utf-8?B?bFRSbytNbUZub21XNzdEODMvWUJSRm4rOUFKbFExYmhIU2tObmZIcFRUOWtR?=
 =?utf-8?B?c1BpeUJyeGdCU0hBQkhrV1dUam1iZnZyZ0R2NW5zWWpLakZpL29RaEVUUXor?=
 =?utf-8?B?K09WM3U0Y3ZBeDZnRUUrTjNWWHAzTSt3OForamxRQUN5V3JwS3h1dzNkWGxa?=
 =?utf-8?B?aHlJRUdEUmRGSXNoUUtxTEdRUDJQcE1KLzNZbVIyWTF1NWVnTnlyWGwreUI1?=
 =?utf-8?B?eVM0dHpjbmQwOCtwMFFlR1lEWEhOM2pVMm5DRHY3YXk4bWREblBUNlI4YW42?=
 =?utf-8?B?MitPY21NUkhnMzNPbEdFbnlkaEZxMEtxeXY0a0tRWlJCRm9KVkx4ZTUvQWxV?=
 =?utf-8?B?enZTYXpnUjZtVktxdk54eENqL2d2VTlXUS8vUnFTNDE4eGN6MW05TWtCalhW?=
 =?utf-8?Q?5ylqWaKiSUI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eEdpYlF2TEM5SFcreDJyMXVhOVpXZUhzcnVrN2VnT0poTWFzaE10SjdWR21j?=
 =?utf-8?B?Z25TNmV6VFV4Qi9FeTE1ZzYvOTVWS1IvU1Y1UGh1SXcwbkMyM3c3cmhlZ25B?=
 =?utf-8?B?cEtqK3BqYU9Jejg4L2FvL2U1cFA3dThmL2hWT0pDM2ZVSjZsZEYvVnJIbjdv?=
 =?utf-8?B?TEZSaXlUWXJFem92WVdyK1VoYndwY0ptTUpWbHNIYUZqWnN5My9GcnpnaEx0?=
 =?utf-8?B?WG1zRTFWeDFGc3FPQXRPZCttNmlqWG5lelQrTWx4N2FQT0ZsL0xlNzEyVkRu?=
 =?utf-8?B?T3I2Q2lFei9nZWNJTlBQM0FKak1GQ09ScHBIY0g2Mk1wU0RCQzFmb0ZRbGpN?=
 =?utf-8?B?ZDlRK2xCa1J4cS9WRkJ3UFRzQTJpeEV2OTZhMm40eUlpekd3NDZsdnpPcGNC?=
 =?utf-8?B?cmh1ZXNRN1dORjM3b3RCc3IzTnBhNS8zQ0JpUWhoUUpENzlyZGNzNTl4Q1lD?=
 =?utf-8?B?aFUweG0rVGN5cG1ma0tOMUJRdm91VzlNRHZtNnNLblJTUUYwR2ppU3UvRCtQ?=
 =?utf-8?B?N0xrdnNyQkhUeUcyM2xqMS9LN2tzYzNmUFR0VzAxbUNFdThHNkVVb1c4MHRl?=
 =?utf-8?B?bFdQTXlFY04rNEx2UW9NZkRnbnRsNXJZWlVLb2tUKzlGSzlFV044RWlNak5G?=
 =?utf-8?B?MHdYWDhQNFdqNGV4Qmt6V2gzWVFMa2g2d2ROYWtWT3p1Snh1UmUzNUhzc25q?=
 =?utf-8?B?ZEFKSWQybE8xUW5WOHpIUzVUYUM3NWpNWkZXbEsyaDhGOG5WblEzOE9BVkxk?=
 =?utf-8?B?YWdONlNiVFFzc0QvV09kL2ZVd3dCNmtJZ2JBQW1NMWx5SFpqZlZyREN4NzZh?=
 =?utf-8?B?S1RSSVdDZDhTRUN5SitPU2JldmhBalBUeTVuUzF4RGZvNUl3cHBnMTFURHpr?=
 =?utf-8?B?NWh6VlIvckFmaWptQmc3L3psNWRYNFFwMVQwR0dpaWl1bThsUGI0TTB1dlRh?=
 =?utf-8?B?ZWtJU3lWSlcxSWsveWRXMFU5Z3JaZkg2dEZJbitHS2tlc2NXc0g1M2h4b3Rv?=
 =?utf-8?B?L0tLUzhrUXh6dmF5Si8vRkJuejAvM2d0N0JoMm1Pa2ZLaXRlVTFXc1RZNFIz?=
 =?utf-8?B?S1EwNFFkeHk0bnE2OUV3bG5PdUJ4Y2tlL0x0b2tYQ1dYZDNBVFVGTFAwTkhE?=
 =?utf-8?B?Z2QvSWZtaDgvdHRGczhoanVxUG9OSG1HOWQzOUE0bUNTcXBJSTh4WWpLbTNR?=
 =?utf-8?B?T0F3TnFOc1JwV0hUeEFBd0RKZXh3S29TbFl5bGxqS3UvQ2tvUVZ6VnNtOGNH?=
 =?utf-8?B?cDNhek9CdVpadU85L25wUDh0MWZHQlJaU2pQS1VIOGU3UzBvb3J3MVdFYUta?=
 =?utf-8?B?cVBtbHpETG1mZWZ3Z0lvR0xRSzJpSE1Jem00dzdnSHdRQmlVaG1RNjNMRjNH?=
 =?utf-8?B?bU5mM3MvS0xtUFZOUGtuU1hZRkNVSlE2cmVjSGdqYjNkNEFIYXFLL3lZdlpI?=
 =?utf-8?B?WkNiTG1xdFJHbHpWaHdjRlQwQjhoUjg4bERERnMxSXFuTFpZaWdKRmJLOWpN?=
 =?utf-8?B?MGRLU3E5RkN0Z0V0OFdlWVdpZDNkMlEvWE9pTHRKWmRWeWI4amFlWHhaaFZw?=
 =?utf-8?B?WDFWSmJ6YVpWQWQ1a3NINXlNbDg2ZWtoOS9PR1gzMWZGT1BIUEhtdXYxdnRV?=
 =?utf-8?B?N1FxQnB3V3lHMFhjaWxlTkwwcFRSYkZWMCtHZFlIaTBFSlJKTVRhTTVXOFYx?=
 =?utf-8?B?SnFCMmVGWWJFeFVrQThDanhzdHRWUUVZZWRQcHpnaW16MXhaVHNKNkJZN1lD?=
 =?utf-8?B?YU5pWHF4MFlDMkYxdEFUUGJSMHRqVkdPNFo1YjhnYzk1TFc4cnNlS29xK2d2?=
 =?utf-8?B?VENvSXc5T0gyWnV2VWxOYVpRWG9TMnhGNjNQalErMXlTdU1mem0wS3JYRXFK?=
 =?utf-8?B?eWFqV2hBbUo2ZGwxRTJzeGNRY0pkekQxNXRaTFBRUnBKU0xEc0xKZnJycTho?=
 =?utf-8?B?c0FrZ1NVWS94Z0VxNUhHSU5yQXVsTFFXS0piL0g3eXBjd05lMUdGNzN2aU1J?=
 =?utf-8?B?Uk1ybEw1bzZoUy9GYzRBNVM0TGNOc0VOMktTemtWZ1dMcGZKbVo5b1V5Qnkv?=
 =?utf-8?B?OGxqbVpaZFUrU2xTb2x4eEJDNGE1Z0l4cnpxVjhTYkE1VUJTazVIZk1sRUhB?=
 =?utf-8?B?cVp4Tnk4NGF6RzhCSzBDSFJMM3JiWGltNUFkTjJRaGUzUHd4a1pvVlRvWm5x?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c4c78afe-e3f8-489f-e7b3-08ddc5e5d744
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 10:28:30.7673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: we3V1X1r6YSkGYUKOb8LTkcmUWQ9CqFZKklJ0GpBBcms9HWdLvrtGAbKN+OLN0GqFRzA2VjvC2QFm61qC/eXl+G8kaIKu383FtI4Gpf8Upw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7538
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

Introduce a separate `ret` variable to hold the return value in
`eb_relocate_vma()`, instead of overloading `remain` for both loop
control and error reporting.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
v2 -> v3:
	- Split commit to isolate individual changes
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index e66d2f60f23b..b737acf74439 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1530,6 +1530,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	struct drm_i915_gem_relocation_entry __user *urelocs =
 		u64_to_user_ptr(entry->relocs_ptr);
 	unsigned long remain = entry->relocation_count;
+	int ret = 0;
 
 	if (unlikely(remain > N_RELOC(INT_MAX)))
 		return -EINVAL;
@@ -1560,7 +1561,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 		copied = __copy_from_user_inatomic(r, urelocs, count * sizeof(r[0]));
 		pagefault_enable();
 		if (unlikely(copied)) {
-			remain = -EFAULT;
+			ret = -EFAULT;
 			goto out;
 		}
 
@@ -1572,7 +1573,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 				continue;
 
 			if ((s64)offset < 0) {
-				remain = (int)offset;
+				ret = offset;
 				goto out;
 			}
 			/*
@@ -1603,7 +1604,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	} while (remain);
 out:
 	reloc_cache_reset(&eb->reloc_cache, eb);
-	return remain;
+	return ret;
 }
 
 static int
-- 
2.34.1

