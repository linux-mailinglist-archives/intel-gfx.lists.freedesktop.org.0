Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 727849C4D7F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 04:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6772410E215;
	Tue, 12 Nov 2024 03:54:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gWRLxsHq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B18910E215;
 Tue, 12 Nov 2024 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731383693; x=1762919693;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A7VzPTrtpzdkl/Ju2Ivp2CRvT1L72Y3YscSm+onXRYc=;
 b=gWRLxsHqDAxmhUiGflr+A/hH+yfB6hI6XsWOQ2AtsjTkDzv7a5YGaIpI
 PG/953vbPM617B4aaOZVLmu73wooqrVt9/jeNN3BmygJf6eM3usf6Magh
 qYUpbtiNUIcj8HjpOsNBnhprXrCHOa3Baa8KXQTXmedshatnYpNTiCYrI
 EGlMc/+CTBkw8l37ZQToTr1itactrPJxBVXhOsprE0rtUUwgtC70iWExg
 ImXa6XujixgO3SbFl1jy4JjyaaAaZy+F3yX60Iit8rrdY2GjD/SuYMky5
 FthmJVqTyNAxBPxeB/MX/107u3oQkgAJQYP2EBRQMhzaZKUYtkL6B9by2 Q==;
X-CSE-ConnectionGUID: kgrJDRJuTd+KxmKlc+TvZQ==
X-CSE-MsgGUID: fpgKAYh6S8a8652dBjZOXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="31077002"
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="31077002"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 19:54:53 -0800
X-CSE-ConnectionGUID: VdzeIuIORDeDQ4BvoZ1iVw==
X-CSE-MsgGUID: mmTW3yZ1S0uGgQlmrWUe0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="118167491"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 19:54:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 19:54:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 19:54:51 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 19:54:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cfxGau3/r1y+IaFDImouwXyv+bYUapAmv4yPcC2ILdo/ncDtG0OC4yn3hcde6FqACVGgDdrbFJP0/eenZLbBdb+oB2V4HtlC+emOar6IOKu0nf30j4g/OaocDLJzSJD20v9GkQcgSCG7QwD0gl07Wy9jvcqprsRpV3iok57qqEGIYkNwO+Md1jwFzx1B1C1cU/zq2mYaxhI/xkrQNO9CJm7HsJn9+AdrLIgjl7QgaVUa02OQjbNkQKEP8b6sG3MFO5YOD2wYY4diqNdGUtk6LhHTWIcKKArYzPNkIzAOSjbCSFcoOvQzi+dC/bSVX0bgRsAVF381WGvKzUtFzzarRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u/4UDST4YuyeZyrguGqCqk8mD5teFDcpHWsCY2s9b44=;
 b=apWMhnv3CkMZ+iMPnm/CIIcWeeeL6cpmqySrWym/OukOwZ2olkG2eD1OmmaTwmrPtaPjk7V29XL0w/zXXi+PyRvJGlZ47JR4KS/dOijwTV/WNaeeysW0T2ncviLdm6kNYsEAQdrzkZkv4ky7L2dBendeSdvGcFefkOTKAanh2ISY1SdPvSOhvFrXv/2pK6bIaw+U6QVWYH5+1Q6ES/4aNW3iGCqbHAk3jllNudcaUIcGfb2qgZMZdpKMUk000DwaXOkMXH8BOYkRsSxNg2ozSIOmOpknA/0SMLRaxesWKo7u6tNECCLav6urhAzkxuit5HCmeP+Y2GoEtX3/jck7bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by SA2PR11MB5066.namprd11.prod.outlook.com (2603:10b6:806:110::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Tue, 12 Nov
 2024 03:54:47 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff%5]) with mapi id 15.20.8137.027; Tue, 12 Nov 2024
 03:54:47 +0000
Message-ID: <99590a86-939e-4cd6-9973-580d00cc88d0@intel.com>
Date: Tue, 12 Nov 2024 09:24:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/23] drm/i915/vrr: Refactor VRR Timing Computation
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Golani,
 Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
 <20241111091221.2992818-2-ankit.k.nautiyal@intel.com>
 <IA1PR11MB64676835BA32BDC582DF93E9E3582@IA1PR11MB6467.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <IA1PR11MB64676835BA32BDC582DF93E9E3582@IA1PR11MB6467.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0031.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::20) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|SA2PR11MB5066:EE_
X-MS-Office365-Filtering-Correlation-Id: e096ffc5-4098-4f59-5cdf-08dd02cdbfff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Rm1hRkJVanlTU0xBcEU4Q0ttZlZza2gyKzNOd01JZy9PUjh6ZzU0YzA1YzVU?=
 =?utf-8?B?OG1jUGV4VE1UOWtlZXpoenNsQ2QrSDJuSjNuaWVrSzFweVJxdGE2Y0xCV1Fv?=
 =?utf-8?B?azFEcXZiTU96SUN3R05Td2tnYU40cUVmK3RWQ0prM0ZJdW1ZTlUvbW5kT2Uw?=
 =?utf-8?B?bWozc3hDUzlkZlU3a3lGOVJQcWtwVWtJSlF1VFAvNDNkWlNDenh6NmwrcDNm?=
 =?utf-8?B?b2VpNnNSZ2tVOUN3S3RxVUVMZGtiT0VPa1pCTURMZEE2aHBvNUtaUXhQMVFI?=
 =?utf-8?B?KzF1UCtaOTU5eHRKaUdibFVaZWRIMVJZclZuelozZTNQODVoL2F0N0x0VkRj?=
 =?utf-8?B?b2xIZWJQaENQckVKeVpSQ3JSUWRqSXRLUXNYRHMyc3BRL0t1K3dpMEFtN0lx?=
 =?utf-8?B?b0ZHcFlxekFzZFpHWG54S29VU1dOdEJsLzhjYk9YSHJLcGxCbnltM2RxQklX?=
 =?utf-8?B?VWJYQ1NHNEV4bGZHR0ZpblRLQnoxWkMwK0IwVW1zZ09XRVBLaUJoWlVvTjFZ?=
 =?utf-8?B?eWk1a0krMTZORFpFeEl2cmFjMjJLZ0tTcVRnWXFKUUR4SHVuSDdVeEJTalRN?=
 =?utf-8?B?cGFGdXF5UC9oamdSSE1PUUNZOVFlRkp0SWlYWWF5V3l4MjJIMGVOWUdweUwv?=
 =?utf-8?B?M1V3dVFSRENHcWpEemh4aWRjZHZ1dk53UnduM3U0cUw5emNOeE5MaDlxNUxC?=
 =?utf-8?B?ZEt2OUM2WDBqSGJDM2U5b0V4c0luL1FIeG96UUc3OEtMOEJENWVDVUtFZUs3?=
 =?utf-8?B?dEcrQWFpNDVkeEUvYVJGTjdFTlNPUkUvOW92N0FnYXFvSWRZcXg4WDBQSHJV?=
 =?utf-8?B?WWN0Q09wMlAvcUhVQ1dvMXdXYTFZOElramJIL24zQ3JtaTBQZm1xUW9qVTBn?=
 =?utf-8?B?emxhQXVuWkppU0oyVUZ0R3I0RGUzM0Y3b2dmNkJweHpFUVJ0ZlY3YkNNdVhj?=
 =?utf-8?B?U2l2TWl2YnFOdGVnU2c0eStlQXJEV3lPNHE4a21oSDBGU1F1Njc1dlNCN0wz?=
 =?utf-8?B?ZllpZ1FlZG1HT2lQblQyRjE2NXFTUXBlU3ZqdmdWbnVNMWZMdFVFY0RBUWJH?=
 =?utf-8?B?bmF5ZEdmSkY0aTk0bnFQZlV0WmZSblNKYnhvVkkrVVYvQm9DL0d1d3NZc3lF?=
 =?utf-8?B?OUQ4TGxtOWMyd2VkbjExaXcrVzVDVzlTek9VSTFNckZnTThtMEx4d3dpalIy?=
 =?utf-8?B?c0FEa2FmRE52elp4dkp3cTZqdjJYOGg2dUhrWlIwSjZtdlczUm15WHkvQW5I?=
 =?utf-8?B?MFREUVhpTWJqT0RuZW1qV3VCRWpHcERyYzhIMjZZT3k2RTlJSGIzdWhYak9M?=
 =?utf-8?B?bmhSb0VWKzBCT1lCQlpiRnlpZ0VQOWpYM2xxMUFEOW5Bcm5FTllFMHN6UldT?=
 =?utf-8?B?c0hVczVIdnNxTTlJTG5IVjVueVhUTi9VajRUSHNETUpYZW1zTmtYZzRJWmhr?=
 =?utf-8?B?dWF4MERMNnJEREJ1N2NBeTUyY0FFSXQvRFhxZC9nakNqcGVGd1F0OGFSTU1z?=
 =?utf-8?B?enVYNE15RzdxbXhmd2JEREp1VlBsMkdibUVsRC9vYWZDK2lVd3lsemh3bXI2?=
 =?utf-8?B?czUwdndid0RZNjVZRkRwS0JWN2JNamJYU2tZQmRpSDJrYkNwRjFJbGhvTnU4?=
 =?utf-8?B?bHB5T1p2V3dvQ2V5dnMybDAxSFAyMHRQb3E5aDR1bzRFU29iczZWRWJLY3Q4?=
 =?utf-8?B?bUdwQnRGUTB3TzFrZC9zSTlzejhHZTR0TDBOYVQ1S0RoaHFueTllN1VOM05V?=
 =?utf-8?Q?l5LC2kPikWda2lEPb637QMYWmfJ+nBAspgfVpnn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVBjY2lzbUxhTFQ4RUR1cEQxSXh2WFE0UjA1dFMyY2UvRDhuOW56aWpXTDNK?=
 =?utf-8?B?S1VNd0dJZU54SUF0ODUzQlJBMVBpNUp4SFFlRXRMbCtmeTFjc0dWeFg5Yyt5?=
 =?utf-8?B?eUtpbEROZ2k3K1ZhYzNscGdiQXhSS3lzN0gyS1Q5T29PRUVRMXQxbk5IcVJs?=
 =?utf-8?B?a3BpaEs5dlVucGdmZ1RHd3hQZHpxeDdhdUZOdVpxNHZsMVBmSk0vZmtSbWVK?=
 =?utf-8?B?bWFOdldZMlJFQ1pkTTlZSXBORkRNcWYvSFBMNTJWZ3RHbEhJU3liQ1F0OWFE?=
 =?utf-8?B?RmViNXAvcUVtZEZJZEVjK3d3Ui9IdkcwZXl5M3NLd0pxMitPTXdha2VXV2Q5?=
 =?utf-8?B?SGxUWHRFSUlmbkpURnY4WWNDakhWYXZYQjJJSWxEbGFxUXFTSG1mYWpkbExm?=
 =?utf-8?B?ZkhMLy9yUld4VDhyRlN2Q2h2NytXREplQXd2WVBaTHkxNG0yNkRqRnhzUE0y?=
 =?utf-8?B?ekcxcnREdGZjbkFBUllDeGgvMnlsWTFGYlpzYkp2QnF5TWpSd1phTDgzQm5i?=
 =?utf-8?B?TFFWck02OUVwTklBbGg4K1lOQmUxcW5hTmM5Sk9JYWNlblVlUW1Bd0RrSmh1?=
 =?utf-8?B?RTIxL3Z0d1Fkck1rVWhIZExyM0l3QkRHK3lReWl3TUlRdzlJWkxVeWpvZyto?=
 =?utf-8?B?M2UvZURRUVlxd1AyZlRLTDU1dncrdnoyTHFvWUtJYTlTYWUrQ3ZoMVd6RVR6?=
 =?utf-8?B?REtiOU1WUldLb2sxSC9ITGdlNlZzMUV6aklxZ2tUMUdhNlRQYTdFdGFyREQw?=
 =?utf-8?B?VU1qZkIvQ3FUT09NTGVrb25YV201K1g5ZElxM2NZUTY5dS80Nm1mNnN3NTkw?=
 =?utf-8?B?SGdRQjVHdklYWElNdElUMDJnWTRNKzNucFVjY3ZPcUl2UHkxZHp0WHovZnBT?=
 =?utf-8?B?OGpBYnBIU1g4Y3NYM3hLb2JyM21ibEZHYUJidFNMRnlTc3RENFdSTHR0b000?=
 =?utf-8?B?bCtqR24wTWZwbGtZZEdQK0F0WHR4T1dXRWE0TE9ReXg1NlB0a2doTGppV2ZY?=
 =?utf-8?B?SEdHUjUvOEhIZWllRWJtc3FQczhuM2V0MDhQdTVQcFd6YVFCbEsxN09ncVp5?=
 =?utf-8?B?Q3FGQW56VkM3M3VjNXZWSE5JcTZhbGluTkpzYlBZUkdhaWltQ0x3Y0J5NTQz?=
 =?utf-8?B?bk80NTM4dHBLVlJJMVhqcFk2THpHaU9ZZFpJZTRMaTBNZ0hudmNVTUIrYUxh?=
 =?utf-8?B?aTF6Uk9SbldnKzhERVZTd1hPbCtEblpjSmVJREk3N2RScnJvcWNITS9nTlhz?=
 =?utf-8?B?QlA3cnlpUHViWEhNd0RsdlJzZWQ0a0orMnlyQzcxRTRFNVdYVUhSaUVoeHg3?=
 =?utf-8?B?Z1pwUlQwa1U4MDNkUEVhZXJneENVRHUyL0ZZdkZkMDZ2c25YT2dmN3VhSUFG?=
 =?utf-8?B?emV0L3hoZzkycy9EbXdqRXF4bk9JQzdtd0tFZjlZNlJUd25ta2paRnIzb281?=
 =?utf-8?B?WFBOU09tcFViMXZvRlV5bTIyK2RCM2QvbkFBNzBudVd0ZUYwanU2THkyUGtJ?=
 =?utf-8?B?NGtLYXRqaGh0cjFZK2U0cnhpcW54TkJ0VXdSM05tbkJxcmdmb3VHMWxUYUFX?=
 =?utf-8?B?VkJXNnZDOHBWc09Bb3F5eHRTdytmdEtEc2pKNVVPWjRVSVk2MVR5NW9hSG5G?=
 =?utf-8?B?bkhMWDk4Szd6bVQwTjVXMkpxdXlFOURxd1RRVE1UZ1pFOFg5OStTczlrY0hW?=
 =?utf-8?B?M1FCV1pOS0V4R21pSmdjak5KdW9CLys3b08xS1htZ2FSTGdIekd5azQ5NTFI?=
 =?utf-8?B?WTlpVkNadDZUZFgwRmllRnczbnEzOENXOXJZNURTZE9HRnlFaDRtVHZ6Y0Jo?=
 =?utf-8?B?dTdvQm4zaE1hU0srcU1HeEFSYzZ2S0V0SkpjWlR5akhZbTd3eGxIVFhYV1VL?=
 =?utf-8?B?bUJKWUNSbzdwekJhYjhzNHJXYjRLUko4RmFETFpQUUZKR0RJNU5xa2lWazdo?=
 =?utf-8?B?VHhzbDlvMjMwTm9IcFRGSUhUZmh6WkxIMUtUaDVpZ3Erd0hhV2dvMXVtL1k1?=
 =?utf-8?B?VUlKeGdwdTVHS0hCbEFKY28xa0tBbzQ2YjZxejlPZzJXSFlDVEhva3M3TkF4?=
 =?utf-8?B?d0VCTUgzY1hOdUNWYnJzZGMrRFhqWUlISS9pR09aamliNW5uRDJNTExKZVZB?=
 =?utf-8?B?TzJrZkxvd3BkK2o3QkoxcnFYTlp2S09aaStBL1VyVmtaUVBJOW56ZXMrNGVu?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e096ffc5-4098-4f59-5cdf-08dd02cdbfff
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 03:54:47.3905 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ljGCg3AkFxh9bSWiNHG/jwpf0iNFEHCndF/0H0j+gEpuu4yz11vPcZM1e072x1eZjlAyotcEGRmPO0PAOTCs2Lm03RqMNztxZBKhgm/gOZg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5066
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


On 11/11/2024 11:18 PM, Garg, Nemesa wrote:
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ankit
>> Nautiyal
>> Sent: Monday, November 11, 2024 2:42 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: intel-xe@lists.freedesktop.org; jani.nikula@linux.intel.com;
>> ville.syrjala@linux.intel.com; Golani, Mitulkumar Ajitkumar
>> <mitulkumar.ajitkumar.golani@intel.com>
>> Subject: [PATCH 01/23] drm/i915/vrr: Refactor VRR Timing Computation
>>
>> Introduce helper functions to compute timins gfor different mode of operation of
>> VRR timing generator.
>>
> Typo : timing

Thanks for catching this, will fix this in next version.

Regards,

Ankit

>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 115 +++++++++++++++--------
>>   1 file changed, 75 insertions(+), 40 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 19a5d0076bb8..defe346b0261 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -161,6 +161,73 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state,
>> bool video_mode_required)
>>   	return vtotal;
>>   }
>>
>> +static
>> +void intel_vrr_compute_cmrr_timings(struct intel_crtc_state
>> +*crtc_state) {
>> +	crtc_state->vrr.enable = true;
>> +	crtc_state->cmrr.enable = true;
>> +	/*
>> +	 * TODO: Compute precise target refresh rate to determine
>> +	 * if video_mode_required should be true. Currently set to
>> +	 * false due to uncertainty about the precise target
>> +	 * refresh Rate.
>> +	 */
>> +	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
>> +	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
>> +	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>> +	crtc_state->mode_flags |= I915_MODE_FLAG_VRR; }
>> +
>> +static
>> +int intel_vrr_compute_vmin(struct intel_connector *connector,
>> +			   struct drm_display_mode *adjusted_mode) {
>> +	int vmin;
>> +	const struct drm_display_info *info = &connector->base.display_info;
>> +
>> +	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
>> +			    adjusted_mode->crtc_htotal * info-
>>> monitor_range.max_vfreq);
>> +	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
>> +
>> +	return vmin;
>> +}
>> +
>> +static
>> +int intel_vrr_compute_vmax(struct intel_connector *connector,
>> +			   struct drm_display_mode *adjusted_mode) {
>> +	int vmax;
>> +	const struct drm_display_info *info = &connector->base.display_info;
>> +
>> +	vmax = adjusted_mode->crtc_clock * 1000 /
>> +		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
>> +
>> +	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
>> +
>> +	return vmax;
>> +}
>> +
>> +static
>> +void intel_vrr_prepare_vrr_timings(struct intel_crtc_state *crtc_state,
>> +int vmin, int vmax) {
>> +	/*
>> +	 * flipline determines the min vblank length the hardware will
>> +	 * generate, and flipline>=vmin+1, hence we reduce vmin by one
>> +	 * to make sure we can get the actual min vblank length.
>> +	 */
>> +	crtc_state->vrr.vmin = vmin - 1;
>> +	crtc_state->vrr.vmax = vmax;
>> +	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1; }
>> +
>> +static
>> +void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
>> +int vmin, int vmax) {
>> +	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
>> +	crtc_state->vrr.enable = true;
>> +	crtc_state->mode_flags |= I915_MODE_FLAG_VRR; }
>> +
>>   void
>>   intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   			 struct drm_connector_state *conn_state) @@ -171,7
>> +238,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>   	bool is_edp = intel_dp_is_edp(intel_dp);
>>   	struct drm_display_mode *adjusted_mode = &crtc_state-
>>> hw.adjusted_mode;
>> -	const struct drm_display_info *info = &connector->base.display_info;
>>   	int vmin, vmax;
>>
>>   	/*
>> @@ -192,49 +258,18 @@ intel_vrr_compute_config(struct intel_crtc_state
>> *crtc_state,
>>   	if (HAS_LRR(display))
>>   		crtc_state->update_lrr = true;
>>
>> -	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
>> -			    adjusted_mode->crtc_htotal * info-
>>> monitor_range.max_vfreq);
>> -	vmax = adjusted_mode->crtc_clock * 1000 /
>> -		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
>> -
>> -	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
>> -	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
>> +	vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
>> +	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
>>
>>   	if (vmin >= vmax)
>>   		return;
>>
>> -	/*
>> -	 * flipline determines the min vblank length the hardware will
>> -	 * generate, and flipline>=vmin+1, hence we reduce vmin by one
>> -	 * to make sure we can get the actual min vblank length.
>> -	 */
>> -	crtc_state->vrr.vmin = vmin - 1;
>> -	crtc_state->vrr.vmax = vmax;
>> -
>> -	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
>> -
>> -	/*
>> -	 * When panel is VRR capable and userspace has
>> -	 * not enabled adaptive sync mode then Fixed Average
>> -	 * Vtotal mode should be enabled.
>> -	 */
>> -	if (crtc_state->uapi.vrr_enabled) {
>> -		crtc_state->vrr.enable = true;
>> -		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>> -	} else if (is_cmrr_frac_required(crtc_state) && is_edp) {
>> -		crtc_state->vrr.enable = true;
>> -		crtc_state->cmrr.enable = true;
>> -		/*
>> -		 * TODO: Compute precise target refresh rate to determine
>> -		 * if video_mode_required should be true. Currently set to
>> -		 * false due to uncertainty about the precise target
>> -		 * refresh Rate.
>> -		 */
>> -		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
>> -		crtc_state->vrr.vmin = crtc_state->vrr.vmax;
>> -		crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>> -		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>> -	}
>> +	if (crtc_state->uapi.vrr_enabled)
>> +		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
>> +	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>> +		intel_vrr_compute_cmrr_timings(crtc_state);
>> +	else
>> +		intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
>>
>>   	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
>>   		crtc_state->vrr.vsync_start =
>> --
>> 2.45.2
