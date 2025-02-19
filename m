Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00351A3BE4E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 13:38:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7374F10E29F;
	Wed, 19 Feb 2025 12:38:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PmQe6aH9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7479F10E29F;
 Wed, 19 Feb 2025 12:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739968726; x=1771504726;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=knKjlkd2Nnd1yuvhfPCyK9go+Z0eKMhCzRzz+rbbLEY=;
 b=PmQe6aH9faMOtwmJ6B1OAX33T073rnCWwUGLpr1tPFldQbuu5zSuqhgt
 3fIJlkNafGRYDgO0DJ3qy8iCopbb5JI5Z+Ia7qVXLbHJBe4223xdgJRHQ
 JXqiOCZo51sRwOIrJ+IJX2hZAy6nZ8HyChD8ppz/x5K4Hpvvsfv7dn3E1
 t+ju3z2/+eC53F01p3YED2bbO2gxfKc134lfYTaauYqrM5+kF0mKGHuL2
 dkkqk7N3NUV2NLqLRAbVHwjEq+sqbuA1jB/f3nKgjntZu9+9hhNT/6ULN
 a8Ctan0MccSnEV6xFKQqNwQKZQWVrYIkS2n6KABFj+B2rIEySUWZXobuQ A==;
X-CSE-ConnectionGUID: z3JmUatHRKeVPkY6cd4Qeg==
X-CSE-MsgGUID: p0HI1Ek7S22ahkBYwexJvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="28298152"
X-IronPort-AV: E=Sophos;i="6.13,298,1732608000"; d="scan'208";a="28298152"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 04:38:46 -0800
X-CSE-ConnectionGUID: 5lpQu9/8QhGfw3knjqzFTA==
X-CSE-MsgGUID: XFxHgaXpRz60HhR/JH9+cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="119638811"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 04:38:46 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 19 Feb 2025 04:38:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Feb 2025 04:38:45 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 04:38:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p5+xJKoU8aEExuf69QmqixBhI3shAUCWY0MCfwV0VXpBSbBGHzJTaFuTwFfH0pRVBToGcEY8l0UR6U4NYGCQUSnBYDsIBQh0MhcRA18TIoADMUfrtOe12FRpAin5BupaeLh5TNI/tVIEyPaoGaXpsPFjUtBv0peYMjFMArPFLS0Bxf/KhMWxDdzNTW20/f8mHjY+/7X2H621lTtuTQ+TiBrGp4oDdZUVjaZLbVofcuMOyYXahdS0M95Nlop1huhrH7vrLtzB8yr9wPm9L4sy2tmZzbqo6YXlVkzemHEtmc3gtBHPNjniPbzouu9M1Enz6wkq2zlk3VWH6JxZsrYaNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ddeNUv6j8d6UBRUXZhztJX4GzJFwbTCQ38MkSRLMO+0=;
 b=vGDpUHnbmtqtshz/AlvyWVIqhBlFtCzfLhH9biT55cmY/icT34MdTByjBg3pdy3JMcGMZ/2NIcBzIf1SFbWH5JxWt1FYeZIymlXV6FyREn0zjp0wSyE9QFqqPmeDL0NtftjLrvJ6I+QKVG+6AqMQXNNrJBTzKQa8iKMnVVm5IAyv+8nbrmFrtVr+JvO/0KOOGez8AqveWdeKvcUGalGcTT8g6ml897bXtiFD7tmxQCPIEk698hpqP8cYB/QXoT2N84JFbrFglz2TRfXOLsPE1GzRjhAL2UZz7sq7DpP7AVFIfHi5RNj68rVu0pUXm21z5jIOd7vLPJ/RkEBfTVR/BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8345.namprd11.prod.outlook.com (2603:10b6:a03:53c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Wed, 19 Feb
 2025 12:38:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8466.013; Wed, 19 Feb 2025
 12:38:15 +0000
Message-ID: <46f07257-8b03-4f41-ba8f-6da74ff9a9d5@intel.com>
Date: Wed, 19 Feb 2025 18:08:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/19] drm/i915/vrr: Use crtc_vtotal for vmin
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-7-ankit.k.nautiyal@intel.com>
 <Z7N7NHKqNrHpSH4g@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z7N7NHKqNrHpSH4g@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0004.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8345:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a027936-602f-48f1-ba71-08dd50e247c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V09IYnViQTVUL0RlaTdRa1BOT3BnMUJmRStkd3FrMVVWVXdYL2pKdEt2b0lw?=
 =?utf-8?B?aXcyb1VWUkIwdDBSelJUWEF0eUR4bTBaejdJTGwzSDE1TXVaa2tNM1VuQ0ZW?=
 =?utf-8?B?RFdtMUJJbkFPM0Q0enp4SllBbUQ5RGU3UkVjK1c2M1NMR1Y2MGRtbWxFL1lF?=
 =?utf-8?B?a0RuRUE1MkJPSS8rcVphOFdlU0hNelB5bDI5TXEyRlU1bGVSczY5OFJXd000?=
 =?utf-8?B?MjZmcnc5N0lXazVHZjFVK2pJYmdHWklaenlsOTZGZ0Exa0R4UjhYckFZV0FC?=
 =?utf-8?B?cU1WYzVrYys5bkN4WmI5QW9td2JGTm1hUjhKQmZwdGNNSkF0TGZTVXYzdTI5?=
 =?utf-8?B?SndZc2FYR3kvWWdUTkpqcGFya3dRWkhzZExxc281R2xrVkJEc0UvbkdtbnIy?=
 =?utf-8?B?VFBuTDlZSTV6OUZYOVFrQS9Temp3OHphbFcwcFc1NTBMTGIvMzRRTmZnS3Zk?=
 =?utf-8?B?eFRFYjBJOTQ3NDRHT3RpOTJVVGZtcXB2VzhRa2oycVVqTHFxZThia0dNMTZS?=
 =?utf-8?B?Z3IxbW9kMzFtK0ZHbzlHaDdVV3lpRkpyK1hVQVBiRm1ya1FFSHhzQkkxQzhS?=
 =?utf-8?B?N2NYRXptbUc1RGNVaEtZT05vci9FVzgxKzZMREFISnhobFhXeWNRL0xlR3lU?=
 =?utf-8?B?eW1IVkV3bDZpbS8vME9IdktIRkhQTDhxa1lPb3Jzb3BITUVXcmVoazhINFl1?=
 =?utf-8?B?Z3lHWnJaaDNtYTNuaUVkSjNkK1RRbWxrK3JEUHNoNlZRcUtVZFF2djBwK0ZH?=
 =?utf-8?B?VWFIU0dDdGdHcVZzUlBOa3loaFVwaGFyWjIvV1lZdXFZMWNvWlJJTXV2cUdl?=
 =?utf-8?B?TDlDSHl2TFFBN096NU5wQUJ0RjQ2SWYxUW4wclhxcU9tZ0hIMGxnRVRBM2Qr?=
 =?utf-8?B?eHRlUHVEUnhSMmhLZlcrTUs1cW9XV3NHbSttUWtGQk9LdDRLTFFEdzJGaEhp?=
 =?utf-8?B?ZXYvdmlsSkoyVG9aeFVtOEkxUjJOY2xqb0UxN0VoODN3UndSeWZZbGZSZXdx?=
 =?utf-8?B?dU5kK2x5Rlp6SUFXZ3BkOGVLL09ZcElHbE11bEFsVlJwdGZuTUtZbC8xRjk0?=
 =?utf-8?B?TURrcHZEZDd0OWx2Qk94WjY1UkhObmhtRUxGL1V3ak5lMGdBMTdNelBiR3U3?=
 =?utf-8?B?ZEl5dzJtblQ4cldaZ0l2azY3dDVPQWpEbDZPZ2hITElQU1ZiazFMeGkxRWs3?=
 =?utf-8?B?UWplNFZmdExCRE53eVRYb0lGeWxvUkM4azFHN1VtSVAzMk5zZXl2amxpSUpB?=
 =?utf-8?B?NkxMWFUyZXFqL1NGK1NrM1lmckVpaWw4OTVneGlzM0Nka2gwelJna3NPUmkw?=
 =?utf-8?B?OFVibkliSVhCL3pHUXRDZXdDR25DUFRiRVlJMkJRL3p6T05KY2pNNVZma0Zi?=
 =?utf-8?B?a0RRNm05Q3RYbkFwaVZha1NZL3oxc2ZKNGhXb0JYOFBEZjVKYkhZdC80dVFm?=
 =?utf-8?B?aFQvc2dDQUZ4WDZIcWJZUkpDMTlvVzRlR0h6Zm10a2lPL0x2a0laSzAydVEx?=
 =?utf-8?B?TnVZdnJPN1ZTSkdDbFpFcmVXNjlLNTJBd2VzNi9WNGdZYnZVMXkwYmxJSVB1?=
 =?utf-8?B?aFVzWXJPdUlZckRzWVFocGVDK3lrMXZFOEZUV2xWWmtTRVFYSlQ3OXI5Z0ta?=
 =?utf-8?B?WXJidzNNQ0kzbEVETTJyOGVJakdzVUttMFo1RE92Mkl3K2RnVGw1aFR3YnBk?=
 =?utf-8?B?cklqN0FCeHFmOGZ2YlVwMWNvd205MzhjZmR2cCszcS9pK0Q1UWRQTHkwaEdh?=
 =?utf-8?B?emk0ZHM3Z1Q1NjVlYlE5Q0NjOGJ4enYydzFPeGxYaU42azFXek5MMEpvb2JX?=
 =?utf-8?B?NHdNNGw1V2Q1T01iNUJ3Q3lBOE1MVUwzMHQvTzN5WE1sYkRRUHVjamlBYmFJ?=
 =?utf-8?Q?PC7UYhqGpoRIL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?am9KeHZmWnppREx6b3UyQXFiY211bVJTMHVRblZ1Y2ZlbTRYbDdOSlptYmxx?=
 =?utf-8?B?SnZqTnlBa0dOY3BsR2YrY2ZWaktBNVJEWnNUK1ZNamRCMXNVQno5dFlqVWhr?=
 =?utf-8?B?OVdNdGI5MW9TcUJYQ1lwMmd6T3MwQmt2Smczd0M0T21tV0ZHZm54QUpFalUy?=
 =?utf-8?B?NEF4VitGY0czb3UzKzRPRGNxZUtZUEoyaHpPejViU0g1RzVjL1FoNTlIK3Ix?=
 =?utf-8?B?Q1RXbS8ycEVJTkE5RkN1dGRIN1ZFNnFkZThGN2tUWmlrbm16TTdRSUtHWGpG?=
 =?utf-8?B?bjg1U0xKUy8zbUFDS1Z5NzRPQ1JkWktaRG5ZNmQ0aGlvNkc3ZTJHR3RTL3py?=
 =?utf-8?B?S2dlbUdZZjQ3VmdYUm1KSHZNZHJqUGhTV28vQ2swbE1xa0JSTUY2L3JMT1N6?=
 =?utf-8?B?dHl2QmZVbWNQSkk5NEthQlVSTTdoZWpFVjV2ZmRhNERLcDJLZHgycW16d05Y?=
 =?utf-8?B?QU5zK0VsMVdaYlo5bFBCSG55YUxHbytuSThoSDJXb0phOWpqaVF2UnpsYmFG?=
 =?utf-8?B?cXBPQ1JucGRlWWpSTFZHaUJjV3B2SGl2a3hvVU85Yjkvd0FaUVI1eThEc0l3?=
 =?utf-8?B?ekFTNEpmRUM5WE9XS3ZXQVRCa253NWl0U0dndWhZY0pjb0dTYXp4RHJmbFkw?=
 =?utf-8?B?ZGVuRDQxY3c3RndRUDZTamVCZEY0Vlc1TGw4bmw4RE9GMEh0VjdIVmQ3UWdQ?=
 =?utf-8?B?Zy9zVThLTGxiaWVIbWRVQityenhIQWM2Qi9GT3N0Sk45YnFkcnpWNlU4dDRu?=
 =?utf-8?B?M1YyaHRJNVJuTEw0cy8wU2VVSlA0NU8zbk04UkdzVHRRNklmUFNBdFlabHRx?=
 =?utf-8?B?clIvRmE0aGFhREhRMHJaa3NtVmJFbk9OSFpOY05yNXJVMk1KSEpUa2Nrcnl6?=
 =?utf-8?B?NkVyaWNWWE1kSXNIMVpxcnZxejB0amJvRlhsdXhEZ0ovUkxxblM1Qnc0Tnd6?=
 =?utf-8?B?bmxSV3ZyL3drT21ja0pSOHBZczZ0WUUyUE44TEVVQk1GVlZteXpIMDYwT0RX?=
 =?utf-8?B?dW5BL3JqQ1dpalEySjR6dXp5cEZsck9RL3NsSVJaeHlKNlU1QjhOclYzRGxa?=
 =?utf-8?B?a2NUaEw1cld0dnNVUTVkdkdZZ2ZNZzZNdXU0UGpLeWNGK3c3THFTYnkvdzFM?=
 =?utf-8?B?Z0d4NjlIOENieTlDaXhjQ2V3RllLSVJjSG9PV09uaDdwQlZ3Qm0vUTRDY0h3?=
 =?utf-8?B?WHpmcXc3VWN6SkhUSGVxMVQ1S2FDdmtpdTlkeHZaUjRMaDRCaDU2MHI1VnRo?=
 =?utf-8?B?WjZIaTcyMS8xcHpKYkZtd0cyVE1Sd1V2eHRvMC9CYkFPdDVBOTZqTmVOSU5S?=
 =?utf-8?B?dVFtdGd2KzVHeTVyMGhlVVhDNk5Md0d5dFRoQlNFcG5BR1RNVEhzLytVdkNx?=
 =?utf-8?B?NHI0R1J2NWJubFdFVWdMdVh3aFplMkVsWVNEU2RFY3ZSbkc4M0dhZ0tXa2tC?=
 =?utf-8?B?OXZkM2k1QTB0WnFTcnY2L2tNNGx6VEFRMURBc3NvZVZPQmtLaDBuT2NGTVpJ?=
 =?utf-8?B?ZGlhaGo5b1JNTVhCMlBpcXpJVExCSjA1dzRRRWt6V1RqTlh0bnFUV1J6QVFF?=
 =?utf-8?B?NTFyQjc1TUpsVEVUUk4zM0NPOWxURU1ENkdwN2d2Z3pjdzNObC9TeVFnVUNo?=
 =?utf-8?B?TytOQmpaQ0UwdUd6YXRjR2J4bXZ0UEVtYlNUZm5lZ0ZOcEhyZ3p1S3N4cklv?=
 =?utf-8?B?UkZsWlA5UTNNOXR6Rzh3SFB3V0NtbDRSUnM4dEp6Vk12N3lldGFuSkp5Slhj?=
 =?utf-8?B?c3U4eFBOR3d6MlFyYXFVQUtObFMyb0tlRjZJMlROb3V2Uk5YbVMrZzNZNDk0?=
 =?utf-8?B?NGR4MlJmdkZSemI5RmQvN2NTYkpxdWdNR293b2FBdW9ULzVqMHB3RTFBS3Zh?=
 =?utf-8?B?Um5QdERoZ2FTVHBTSjlVbFR5blYrWTdZeTFmQjNlZzlyRHUvdkwzVEloUVI1?=
 =?utf-8?B?Q2dyaHovR0tOdFhpMFRYa0V3N2NBNUNMQjhYRHc4d1BpL3pqSm04ZEhnelR5?=
 =?utf-8?B?bmU1RFdWSko2U2ZZRWtaSUdqbEtxK09Qc1NLN0I2KzlZVm9sK1JaL25RN0d3?=
 =?utf-8?B?MWVEWW52NU5CVzQ5c1dJS1N2ejl2bmF3bm1kbUJhbTBSaXVJazVlc1RRWFlr?=
 =?utf-8?B?Y0xJcmtNcGVaa0F5T3BHRXlzSmdqdU5qVEJkRmxGNzd0ekYySXhNeXk5b3pY?=
 =?utf-8?B?V3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a027936-602f-48f1-ba71-08dd50e247c7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 12:38:15.6983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hg2k4uNH4MNv95taipIxrLOyM8V+rmSlxFqyvJ0xd9PwgMOiRb4nmPeaYOWxEQwre9RN1KgirslrWwt1yn6p/3UHd9A1FTDI1hmOgQ3RYWY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8345
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


On 2/17/2025 11:38 PM, Ville Syrjälä wrote:
> On Fri, Feb 14, 2025 at 05:41:16PM +0530, Ankit Nautiyal wrote:
>> To have fixed refresh rate with VRR timing generator the
>> guardband/pipeline full can't be programmed on the fly. So we need to
>> ensure that the values satisfy both the fixed and variable refresh
>> rates.
>>
>> Since we compute these value based on vmin, lets set the vmin to
>> crtc_vtotal for both fixed and variable timings instead of using the
>> current refresh rate based approach. This way the guardband remains
>> sufficient for both cases.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 34 +++++++++++++++++-------
>>   1 file changed, 25 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index efa2aa284285..3bcf2a026ad3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -246,18 +246,34 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>   }
>>   
>> +/*
>> + * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
>> + * Vtotal value.
>> + */
>>   static
>> -int intel_vrr_compute_vmin(struct intel_connector *connector,
>> -			   struct drm_display_mode *adjusted_mode)
>> +int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
>>   {
>> -	int vmin;
>> -	const struct drm_display_info *info = &connector->base.display_info;
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
>>   
>> -	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
>> -			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
>> -	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
>> +	if (DISPLAY_VER(display) >= 13)
>> +		return crtc_vtotal;
>> +	else
>> +		return crtc_vtotal -
>> +			intel_vrr_real_vblank_delay(crtc_state);
>> +}
>>   
>> -	return vmin;
>> +static
>> +int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
>> +{
>> +	/*
>> +	 * To make fixed rr and vrr work seamless the guardband/pipeline full
>> +	 * should be set such that it satisfies both the fixed and variable
>> +	 * timings.
>> +	 * For this set the vmin as crtc_vtotal. With this we never need to
>> +	 * change anything to do with the guardband.
>> +	 */
>> +	return intel_vrr_fixed_rr_vtotal(crtc_state);
> We don't have the vblank delay dialed in at this point. So this
> needs to be just the normal vtotal wihtout any adjustments.

Indeed. Will make the changes without the adjustments.

Regards,

Ankit

>
>>   }
>>   
>>   static
>> @@ -305,7 +321,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	if (HAS_LRR(display))
>>   		crtc_state->update_lrr = true;
>>   
>> -	vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
>> +	vmin = intel_vrr_compute_vmin(crtc_state);
>>   	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
>>   
>>   	if (vmin >= vmax)
>> -- 
>> 2.45.2
