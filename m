Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC82A9C1DA8
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E7B310E995;
	Fri,  8 Nov 2024 13:11:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f2UJHejy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80FD210E995;
 Fri,  8 Nov 2024 13:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731071459; x=1762607459;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=YLNzlah8kZ1tuTJY++U0gFIaBgHQOu0uu3KpVcR5yXo=;
 b=f2UJHejycozKtIQEZfr/C5O7Jt0An72bAodHxiZPPsavzGKsDEOL6E/Q
 UF4wBFpC01itMrxFijDG0HOu60TijYag/SsJs9RThJCp1+04GXcJiKkJR
 a/ILQfwkpS38tpM2ln6uAhBme9Qc7Hu1T/rQv5ptUOSBZ/TGrLv3floqj
 HTvwWRKB6JjZ69nQ1iDXIMIVt4a90PVBxdvTiBc8ZT4fObxODXB1w79Ap
 AEHBiWPfMfOgLDi7q2QhJv80+1U3hs1Y3omX+7cT4/3Mx6t8i2mM/5LBF
 aQ6qVI95kIlLidCh4uMGcTiRxESY3aeEvDxD32LjNlc323nRr0Sn2Ou76 g==;
X-CSE-ConnectionGUID: i4Ek4SQ0RlGiU8URHG1rWg==
X-CSE-MsgGUID: myi5gjnYRA6MFkzOn+3N4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="42338047"
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="42338047"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:10:59 -0800
X-CSE-ConnectionGUID: CpBdrYV9TWmocLf+ZfSh6w==
X-CSE-MsgGUID: ND0HmH1pSXOR8HuDREpUEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85699090"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2024 05:10:59 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 8 Nov 2024 05:10:58 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 8 Nov 2024 05:10:58 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 8 Nov 2024 05:10:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vjmIj45txeb6cff2K+itZfPMP1fHBKcM3BgeO7RYpsJnZ9bXsMVWYOQLN6HRofgI5O5mCd225INaVq2SV7i2KkOrYbc9v3sTZQDLc8El2d1HkKMEZmkdFg3spAPN7RJjUrpMt0nZkMQKg9ewWXd8RezEOt6PdgYo4gZkAGpXR6c0FD/x4LUqFNxV9qjy0i1S4atqHknsiko092xrm+b6VAAh5bMAvavwSDoBApX9b8u/FUKskyngHgxuVKsp6aXRqyyB3bn3tPVyOz9NIvGJBIJywRFACbaWe0ilMLR7SJBLqg5we4yzIPHMEk8GXYD8rSW4R2DdodCMC1SYEDJgrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKZodg9vKrxcxON0aXaUGGohnVz9XvQHzSBkibytiq4=;
 b=j+xP8UfFwtlLqZ4DEzmDA7kgfJ0cZIMbK3JgOSPKHWRFgAv7NGc/mxmZyNxevRaxqi9z1/KH/DPMtMC8hSPUp6264ZOKZ5DbO5JPx7/LiAhA0O5vBMeD4zc/9mz0IdKFRRKdGnDPClSOQv/93u0gQTzgmUh9E1YO9CeRKkjToBJpYZ5DTrAtgNGvkmKHjGt/xYnlgSUH8wqcQOTUdrUbsqnoFfOk/OTK3zm7KOf4dxMQDkagfufVW8YnzdKPQgmHggAJ/2lJ/Dv5740X1DT4Mj898Yyc6QHTGAhpzHrhhOIrBN+4Jy6j7LSnzr/5RqxNCfU1ziwEj8ZlP/sqM9EoGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7263.namprd11.prod.outlook.com (2603:10b6:8:13f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.22; Fri, 8 Nov
 2024 13:10:56 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8137.019; Fri, 8 Nov 2024
 13:10:56 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <795a663391e94e3617f4a85fdb854c7c96bd3890.camel@coelho.fi>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
 <20241107182921.102193-18-gustavo.sousa@intel.com>
 <57edfe78f9da272e0312ad77ee8ff7060932ae8c.camel@coelho.fi>
 <173101047610.92682.5793541337752745725@intel.com>
 <173101096307.92682.12411368075185471884@intel.com>
 <795a663391e94e3617f4a85fdb854c7c96bd3890.camel@coelho.fi>
Subject: Re: [PATCH v3 17/18] drm/i915/dmc_wl: Do nothing until initialized
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Fri, 8 Nov 2024 10:10:50 -0300
Message-ID: <173107145054.7597.8961012735447486811@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW3PR05CA0001.namprd05.prod.outlook.com
 (2603:10b6:303:2b::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7263:EE_
X-MS-Office365-Filtering-Correlation-Id: e02c9423-682a-4787-3994-08dcfff6c79d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a0lFRTRBbisrUjQwNnRlb2pyRE90elhLZ3AxdWV5SEVvRktadFE2bTI1T1Zk?=
 =?utf-8?B?Uk1WZ1UzSGtyYW1qUVV3WFBNYnlSWnU3OXoyVm1kaWE5VEVkT3RNalBndW1C?=
 =?utf-8?B?ajRpVGF1K2p1N1ltNmJRbDM2Wmp6S0JxeDkvM281R0ZIMjRKWWUxTXlGU2RT?=
 =?utf-8?B?aG1qWFA0bkErNTJBYmRET0JrUndqOXRzbitxazNNaHUvZXBOUlRBMGVndExz?=
 =?utf-8?B?c0w2RkpUZ1dhTjBFbUp3b1dmMDZsbnp2dk5yOFhoMi9SOS9lak03UG9tVm4v?=
 =?utf-8?B?YWY1OExFbGxOWWR4cnUyTldsV2I5d1hHVkVid0hDWUkyeXBWWi9uMHphQ21G?=
 =?utf-8?B?L1h0dENEcUQwN1VSZGJCSHVpSGU5dVcvSkJBSEZqTkhXK0szNnBYUDhoOWRu?=
 =?utf-8?B?cXI0ZXpIbzdDd2pWODdoZkJqRS9zWUR0Znl6T0ZDVmhlU1VMbWZPODcrN3VW?=
 =?utf-8?B?QktUTTY5M21lT0dqVVhlYVBaaUt4dWI1c0VIZFpFTFArY2FVY0N3OHIrS25Q?=
 =?utf-8?B?cWRVUXhRcXUwcVFnNGNNRm81WWdoSVk5NFF5cFlRNk8wc0dGdzFra1E1bGEv?=
 =?utf-8?B?d3dFTFRFNGplSCtnQ0FScTR2aExNUU51Snhnc1JqREhSRzROcmJ2QzRwZ0tz?=
 =?utf-8?B?RWtLaERiYU1pbTlBcFdJSVJmL01vQVQySDFVRlB6aTFyQnVmQWpRR1lmbUVY?=
 =?utf-8?B?dnVrZldlSVNVQWluWXZYTUhXcDU2VVFET1cvZE5oUkdOVWF0RTVCMm5HQ0ln?=
 =?utf-8?B?dGYrNGpqZ3dVYUJidit5dkVIN2N5NnNtckJoMFU1NVdjSWgyK1Jpd0JLN2Ur?=
 =?utf-8?B?dVJZK0RBTktCM1NyQ3B4V1pzZkVIakhPRUxQZ3BzS00xNC9XUUxBaUlEdFBD?=
 =?utf-8?B?eTcySTZhTE5BVEovQ1JibmtBNWZCbmdYQ1lWaVBNK1JvY0VOK2ZvNjVwZU1l?=
 =?utf-8?B?NWV2aW9uTkpqNXQ2bWNtMUZ1aU1sc0cwYmRMcXFBbm9pSjhsVkl4TEFNbEhZ?=
 =?utf-8?B?RHlGNGpXUWdONkU5ZEdHbEZJK1V6TzRKVXd4bGswOGJBY01odkJlTTBlZ1I4?=
 =?utf-8?B?UllwQm1aM2JUR2VDRDdPRUZ0dmJ0RFFWbitFNlduckkxajFsbXZNQXRKODV1?=
 =?utf-8?B?QXdHTWxSbjBwQVNqeXpnQWJ4YmZpeFlEdzVHb3Vic25BZGpUTTlKMHR3d21G?=
 =?utf-8?B?NUlqSU82dEZvU0pLWFIwMUhTMVZ1V1QzdVJvL2t1T0QyYy81Wi8rU1Q0dy9y?=
 =?utf-8?B?WGNYbnJraUVlY3FJVHlsd3JxUHJhMC9QRkpFK1REMDhHRXROeUM2Wlp1M0RU?=
 =?utf-8?B?d3VVMGN1Rm4zeU5ncnMwL0U2UmJFV0xnN2dPUk1wbTNqQ0U5UWxNaWRIclFy?=
 =?utf-8?B?UldGbmZNVkJLaDR4RXoycURDSk9GZlVHLzVxZzRFVGFYNTNMZHNYKzRiNnFs?=
 =?utf-8?B?TG9sSEtoaGd3UkhuL01zYnRyOWNyZlR3QVpUaXNyWi9tcVZoS2JWVjdSZXZH?=
 =?utf-8?B?QlE5d1pZVmJVS0tLT1Z1UjFGeDhJTDBiQ1V3eUc0M2NMZWlxWmh2dmpCRURW?=
 =?utf-8?B?dzZTTDh5Q3RNczI4b1NoT3I0TlRlK3g4b3lqQmg5eUlkUXEzZ3ZKUEpoOE43?=
 =?utf-8?B?QmR5TDU5LzM2Tm5GTkFlU3ZkMEl0TWtNakxJSXFKMHAxelVPNnMybzdKM1FP?=
 =?utf-8?B?eUcrTGJneXI1c0VlNnJnSzZDUVd3ZStOTmhzalhvUnBvTjBhUUFIM29BTDU4?=
 =?utf-8?Q?hVbUoGbcC9VShKwiGgyRXu8jyEkU83qQPyVWdp7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFFpKzJqZExmNzR3RHBWRmgzL0hOOFNHREtGWU9kQ3BicGhjY0hwVzlRV3RG?=
 =?utf-8?B?VDNwQStzUTFzS2VXNmh5dGJDb3ZLN0NlNWh0TmcrZE5GbFJOY1NhZDV1blBZ?=
 =?utf-8?B?TElLc3pJOWNUZWptYUdJNCs3NW9iWUFwbUIwUE9tSWFqN01PbC9LbTdkTzZU?=
 =?utf-8?B?Q0hoN0dWVG9YYTg3cWZlN0JlUy9RTndoZTZmK3ZFRHlnNUZzeHBFNUI2SmZI?=
 =?utf-8?B?Q2hZRVdEbXVOVmxhdldIOVhrekJGNDlHNEk5QmpQc2FLVkF1aHFDY0pXZGRh?=
 =?utf-8?B?bnFsTzhlNnhNZkd6Z0VuVC90U1ZtRndtTmJiQmlZVXl2SjR3dVZobDJYZkpW?=
 =?utf-8?B?NW1VbXZtQ1FRS2dnTjNUd2NwUjhJS3NVbEN1UjRUZldxMjA4TUJTOXlFSW9k?=
 =?utf-8?B?dU5lK3gwWFFERVp1dE8yYndnL1FHMmZneC9PV0ZDekxYd0FRUktlY0pKMUZh?=
 =?utf-8?B?MzJpeUM0SW1YNW1jQW5qVHVieVFzSHRIWTd2MksyTU9EbHkrMnJXNzI1Njd3?=
 =?utf-8?B?K1NYOER5eTIxMGF5MTZnTXZHaitGMldnd3ZRSjZCc3RpZS9NS1haNFVKNGZv?=
 =?utf-8?B?RFFoeER5OTdTSjBUZWJLYzNDcHNBejJ3UFJqVWtPbk03aE9jZjBYeXIybFBq?=
 =?utf-8?B?eGFtTkovUjBYZDR4QlR4MnVQT2owVGs0d1FOdmxCUVdwcll1SCs1S2VvQnlF?=
 =?utf-8?B?VldDZ1R2VzRXYmp6Vkc5UTBBUHpucXVqdEdJL2ZBNFQ5TWo2QUxRVEh5WW9p?=
 =?utf-8?B?b2NrcUZ3WmozVlFhUlh6cFpUZm1ZUXlIdGx2RWF4Smx5T3d1VnJYTm9qMUFG?=
 =?utf-8?B?Q1FpakZuU0c4cmpDSG4ybWIyemNpQmFoMkFTYmNRcjBQMG5JYWVvWUwwUEk1?=
 =?utf-8?B?dFBKNHNrOFZVSlg3dDhRR3NXSEdYSFh6S3VxaVZBczhmdHh5bzd1b1VpR1h6?=
 =?utf-8?B?b3BwSEpQSyt2NmNBTGtwRFlqSzd1SmRxTTZDRjFLajYvY0t5R2lYYXlVSGd2?=
 =?utf-8?B?cENSYUh4U2lkbHdvL1NteVJnazdsS0ZqaUNwMG5yMmUzUlVUNG9zZmdwWFU4?=
 =?utf-8?B?TVorVFcwMDNyenBDdjY5YTdjWk9HV2pzTFZ6T3BzeExJM3NzU2VQUUgxL3JS?=
 =?utf-8?B?VkwySDY5RjhjOHFLZU5mNzU3dkN0TDlFVVBYZGM4NS8vamlrcng1dDZBT1d3?=
 =?utf-8?B?VmxNQUlXQVhhMm1kRFM0ZG9IK0xMYU1weWt2SGZzQ0lkNWdtQ3FsekRwV0tt?=
 =?utf-8?B?ZmJUL0N1UE44MFR3bmEzYkNhWW1qY3lVWnowS3NJZUhUMmc2Y1VacThVLzFz?=
 =?utf-8?B?d3lhZWRRMnVFTW03Q3pWNkxXdXhqdzNTd2k2ZU9VNUc0RmlxSU5lbTZaQXM0?=
 =?utf-8?B?MGlPRkk3Y253NWhmd1FRY3F5ejIvNEF0Yzg2b2lwWjBzN0ZFeHJFQmJsSmpp?=
 =?utf-8?B?ZFJuUHVXcktmeVVRY1NUQW0yR1BHMzBTYkdvMkxLNHdNTko3YlZiQlJSOXRa?=
 =?utf-8?B?OUZjUnJXTCtiaS9CTmloN0t6bGU0cFhrTXJNSVFucmxZMXBQbWRDTUVlYm1u?=
 =?utf-8?B?azhFY05aQmtBMjA0Qmp4K1p4ZklxRllQcDJmK1I3UjBtV1Zpb0pHdkw5QjB5?=
 =?utf-8?B?ZFZ0WkR1UzVuQzR1dXhDbEdaRy9PTlNiK3RKUjMxN0VMbmhuYUNpMXFSVi9C?=
 =?utf-8?B?cHQrUk9vNEZ2ZTZKTDZSVTdVcXZBN1I0d25LaWJrWEJmM0ZvMHdUT1B5Y1NH?=
 =?utf-8?B?d3VreUVzNjE4ZFNyR1lvR2hxWHE0SHJZTUVLM3VZdTVSRmgxU3JoQzY5NHda?=
 =?utf-8?B?V2JKTVJmVmNxQUVtNFVKSG1xV09uWWNMMU5rL0dqQXVEMWRMNEVpdjIvRFBD?=
 =?utf-8?B?NHJNdXJTMnFvWFR2SG13QWRkMlI5RkdtLys4NzdzLzFzS1RyNnZCVXF4ajdp?=
 =?utf-8?B?anFBRTBzQWUzVHRVbUlQZ3hnVXppZlBGaVVCejcraEY2ZTBNVU94ZDBsM05V?=
 =?utf-8?B?STRycTF1WllvWDZkZk9sT2FzVk9BMlk0T2ZRdDRhQ1Q0Z1pTQmRpSkc2eEl3?=
 =?utf-8?B?c2x4ZVdLOWhqYXJCOG5QRDkzcGlESjNmbG1NMW43dTRRWWtaZFkwaVlTMXRM?=
 =?utf-8?B?UkJrZllKVGdabkhlRng1bDc1TWJXd25zWU1vS09wSXJrbmVVakhnR09lcDRM?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e02c9423-682a-4787-3994-08dcfff6c79d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2024 13:10:55.9207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XZqh/oOEpO+/jFVxfE4C+FJXSaBDRlvdMBNNU1owfLfh/91Ctwi4c6X+ocXvdVWKsY6D4Hdy0x7ygGKn7eRKhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7263
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

Quoting Luca Coelho (2024-11-08 06:57:11-03:00)
>On Thu, 2024-11-07 at 17:22 -0300, Gustavo Sousa wrote:
>> Quoting Gustavo Sousa (2024-11-07 17:14:36-03:00)
>> > Quoting Luca Coelho (2024-11-07 16:23:06-03:00)
>> > > On Thu, 2024-11-07 at 15:27 -0300, Gustavo Sousa wrote:
>> > > > There is a bit of a chicken and egg situation where we depend on r=
untime
>> > > > info to know that DMC and wakelock are supported by the hardware, =
and
>> > > > such information is grabbed via display MMIO functions, which in t=
urns
>> > > > call intel_dmc_wl_get() and intel_dmc_wl_put() as part of their re=
gular
>> > > > flow.
>> > >=20
>> > > s/which in turns call/which in turn calls/
>> >=20
>> > Thanks!
>> >=20
>> > I'll do
>> >=20
>> >  s/which in turns call/which in turn call/
>> >=20
>> > as the subject for "call" is "display MMIO functions".
>
>Right, I didn't pay much attention and conjugated it with
>"information".
>
>
>> > > > Since we do not expect DC states (and consequently the wakelock
>> > > > mechanism) to be enabled until DMC and DMC wakelock software struc=
tures
>> > > > are initialized, a simple and safe solution to this is to turn
>> > > > intel_dmc_wl_get() and intel_dmc_wl_put() into no-op until we have
>> > > > properly initialized.
>> > >=20
>> > >=20
>> > > About "safe" here... Can we be sure this will be race-free?
>> >=20
>> > The initialization is done only once, during driver load. The wakelock
>> > will be enabled only at a later moment. So, we are good in that regard=
.
>> >=20
>> > However, now that you mentioned, yeah, we should also consider that th=
at
>> > we do concurrent work during initialization (e.g. loading the DMC).
>> > Based on that, we will need to protect "initialized", which means:
>> >=20
>> > - initializing the lock early together with the other ones;
>> > - always going for the lock, even for hardware that does not support t=
he
>>=20
>> Oh, to be clear: I meant the spin lock here :-)
>
>Yeah, I got that. :)
>
>
>> Something along the lines of:
>>=20
>>     diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/d=
rivers/gpu/drm/i915/display/intel_display_driver.c
>>     index 4257cc380475..e6d4f6328c33 100644
>>     --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>>     +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>>     @@ -186,6 +186,7 @@ void intel_display_driver_early_probe(struct drm=
_i915_private *i915)
>>                      return;
>>     =20
>>              spin_lock_init(&i915->display.fb_tracking.lock);
>>     +        spin_lock_init(&i915->display.wl.lock);
>>              mutex_init(&i915->display.backlight.lock);
>>              mutex_init(&i915->display.audio.mutex);
>>              mutex_init(&i915->display.wm.wm_mutex);
>>     diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/g=
pu/drm/i915/display/intel_dmc_wl.c
>>     index e43077453a99..bf8d3b04336d 100644
>>     --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>>     +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>>     @@ -307,11 +307,11 @@ void intel_dmc_wl_enable(struct intel_display =
*display, u32 dc_state)
>>              struct intel_dmc_wl *wl =3D &display->wl;
>>              unsigned long flags;
>>     =20
>>     -        if (!__intel_dmc_wl_supported(display))
>>     -                return;
>>     -
>>              spin_lock_irqsave(&wl->lock, flags);
>>     =20
>>     +        if (!__intel_dmc_wl_supported(display))
>>     +                goto out_unlock;
>>     +
>>              wl->dc_state =3D dc_state;
>>     =20
>>              if (drm_WARN_ON(display->drm, wl->enabled))
>>     @@ -353,13 +353,13 @@ void intel_dmc_wl_disable(struct intel_display=
 *display)
>>              struct intel_dmc_wl *wl =3D &display->wl;
>>              unsigned long flags;
>>     =20
>>     +        spin_lock_irqsave(&wl->lock, flags);
>>     +
>>              if (!__intel_dmc_wl_supported(display))
>>     -                return;
>>     +                goto out_unlock;
>>     =20
>>              flush_delayed_work(&wl->work);
>>     =20
>>     -        spin_lock_irqsave(&wl->lock, flags);
>>     -
>>              if (drm_WARN_ON(display->drm, !wl->enabled))
>>                      goto out_unlock;
>>     =20
>>     @@ -389,13 +389,13 @@ void intel_dmc_wl_get(struct intel_display *di=
splay, i915_reg_t reg)
>>              struct intel_dmc_wl *wl =3D &display->wl;
>>              unsigned long flags;
>>     =20
>>     +        spin_lock_irqsave(&wl->lock, flags);
>>     +
>>              if (!wl->initialized)
>>     -                return;
>>     +                goto out_unlock;
>>     =20
>>              if (!__intel_dmc_wl_supported(display))
>>     -                return;
>>     -
>>     -        spin_lock_irqsave(&wl->lock, flags);
>>     +                goto out_unlock;
>>     =20
>>              if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(r=
eg, wl->dc_state))
>>                      goto out_unlock;
>>     @@ -424,13 +424,13 @@ void intel_dmc_wl_put(struct intel_display *di=
splay, i915_reg_t reg)
>>              struct intel_dmc_wl *wl =3D &display->wl;
>>              unsigned long flags;
>>     =20
>>     +        spin_lock_irqsave(&wl->lock, flags);
>>     +
>>              if (!wl->initialized)
>>     -                return;
>>     +                goto out_unlock;
>>     =20
>>              if (!__intel_dmc_wl_supported(display))
>>     -                return;
>>     -
>>     -        spin_lock_irqsave(&wl->lock, flags);
>>     +                goto out_unlock;
>>     =20
>>              if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(r=
eg, wl->dc_state))
>>                      goto out_unlock;
>
>I think this is the simplest solution.
>
>
>> >  wakelock.
>> >=20
>> > Ugh... I don't like the latter very much... But, with those provided, =
I
>> > believe we should be safe.
>> >=20
>> > Thoughts?
>
>I don't think it's a huge problem to initialize the spinlock even for
>HW that doesn't use it.  Yeah, it's a bit of wasteful in terms of
>resources, but I think it's worth it because of the reduced complexity
>of the implementation.

Okay. Let's go with this solution then.

So, to unblock this series, I decided to send v4 without this and the
other patches related to using HAS_DMC() in HAS_DMC_WAKELOCK(). I'll
send those in a new series.

--
Gustavo Sousa

>
>
>> > > > The only exception of functions that can be called before initiali=
zation
>> > > > are intel_dmc_wl_get() and intel_dmc_wl_put(), so we bail before
>> > > > calling __intel_dmc_wl_supported() if not initialized.
>> > > >=20
>> > > > An alternative solution would be to revise MMIO-related stuff in t=
he
>> > > > whole driver initialization sequence, but that would possibly come=
 with
>> > > > the cost of some added ordering dependencies and complexity to the
>> > > > source code.
>> > >=20
>> > > I think this can be kept out of the commit message.  It's not very
>> > > clear what you mean and it sounds much more complex than the solutio=
n
>> > > you implemented.  Unless race can really be an issue here, but then =
the
>> > > whole commit message should be changed to an eventual more complex
>> > > solution.
>> >=20
>> > I meant that we would need to revise the initialization code and find
>> > the correct place to put the DMC Wakelock software initialization call=
.
>> > That might also come with changes in some places where we do probe the
>> > hardware for info:
>> >=20
>> >  - We need our initialization to happen before
>> >    intel_display_device_info_runtime_init(), because we want to check
>> >    HAS_DMC().
>> >=20
>> >  - Currently, __intel_display_device_info_runtime_init() is using
>> >    intel_re_read(), which in turn uses
>> >    intel_dmc_wl_get()/intel_dmc_wl_put().
>> >=20
>> >  - The alternative solution to using the "initialized" flag would be t=
o
>> >    make sure that function does not use the MMIO functions that take
>> >    the DMC wakelock path.
>> >=20
>> >  - However, __intel_display_device_info_runtime_init() is not necessar=
y
>> >    the only function that would need to be changed, but rather
>> >    basically everything that does MMIO before the initialization!
>> >=20
>> > I hope it is clearer now :-)
>
>Definitely clearer, but I still think it may not be worth it.  The
>spinlock solution is very simple and clean, IMHO.  We already have the
>spinlock for other stuff, so it aligns well with the existing code.
>
>--
>Cheers,
>Luca.
