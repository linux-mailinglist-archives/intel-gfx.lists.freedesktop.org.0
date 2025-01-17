Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E44A155DA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 18:37:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2889110EB54;
	Fri, 17 Jan 2025 17:37:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="INiroCmT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 113A510EB55
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2025 17:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737135468; x=1768671468;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Wswut/NDwuUXLowPeEhRs/DAf2/9uAaLHr5I5yIukVY=;
 b=INiroCmTNiXAyVEvgz+14ye3LD0B7PwKvuaUgvfrh77f6jusE9GyRUWo
 UOSX8AjHNS/1rLWF4w2gZTRkX7PTZp97FmvNL1mv95QlRbRO9maGvVqIc
 ypILyHaQTVQrT8TOsd1QqfK4LM4lGemgm+C+3KXRAghNVlKxGoagdK93M
 oEdLQV+NTSCHqIiU9KtTLfEfkAkxbV+rzuIPeIBPZpUMuzZEnmnRfQwTK
 MYAsMsWGZ+r8Ruq41467pq6e9ZVeKw/g/YznJ/1rsn+HPT9JnaSfdNREs
 YIFP/uQlNihB8MY3R9U0wfGZK47VGknyIaitp4sH6krk5ppDqQjyuwxlD w==;
X-CSE-ConnectionGUID: mx/YXZhcRlOwYvqBZoQa+w==
X-CSE-MsgGUID: iNUZG1ReQYGvLP0pgOuFuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37732771"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="37732771"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 09:37:47 -0800
X-CSE-ConnectionGUID: zODFeDuVQeegY2mV8swwbw==
X-CSE-MsgGUID: LYMz6r02QQ+doGYUZ9uBIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106745546"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 09:37:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 09:37:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 09:37:47 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 09:37:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O1X6I0A/oKn9Uv7Ul8JAxmYqEb9incKXsQEyfkaXP847stvUkNVHzbeYynwY47+VXOaGo+vwiHunhDc1hh2s4wY4pymP0s9FlybVLqk186zeOfyexI30Ejeb+czVbtscr6dTQXEYp8UoJqQ3EG6kZA4dYSBsrt5qkVMJieEqgygUkldJQSv/soLEwV4U2hzjF4YPGzCDMXHyIn7tfgPT7w1GoZBCLnuWugXUSXR3/MaPyVuw3J2w59lZXIDSXTwBD7CFlhJlR8OX+GcfEoODzlpqmhcqFowJDY0zL3CRW4dGIEmkQnjnBQg88+JYVO3af44pQyj4IBGW9hwl3CAIHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nz2B5Cx3KDpS54dS2trTUIh4IOhcs1B/XMwyp4q1d/g=;
 b=XqKMJgjZTz9UT97CrOX+rt4zvlbgbo27L8FRlNI6wuC58DTA/nGt64HH9VjS2oZpUrU4hvCQakS1AcJyGMKoTsaVLX37rXZ/VuQNTiCmD/68pxX0gF/pmU3fjm6r/1e00dUHZlcD4FpsTt5jNo+6Gqq5bCw1Imeg1qLHYNaeq71pDbr2OkLlU81HuoxeQSn8rd4PuhHMhQqcIJdQhm281sANh7Wfd8BIj95Ndn2Y5Y92UmcOuh3A5CnSzF818qNIFZKSBAtKKJGqy1g61NNnG/UgGC4MxjZ6glaSeoD5FLW9yWOehCXjw3XDy3OB7Kdo6UPoc4O5pLnSyKSBNr5lyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by SJ2PR11MB8538.namprd11.prod.outlook.com (2603:10b6:a03:578::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Fri, 17 Jan
 2025 17:37:44 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 17:37:44 +0000
Date: Fri, 17 Jan 2025 18:37:38 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 6/8] drm/i915/soc: fix typos in i915/soc files
Message-ID: <pc5ar2pedygsuqkisot4txjymlb4blo6beqcgh7rwtdiqm7o3z@cabhymr5n7n2>
References: <20250113184318.2549653-1-nitin.r.gote@intel.com>
 <20250113184318.2549653-7-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250113184318.2549653-7-nitin.r.gote@intel.com>
X-ClientProxiedBy: VE1PR03CA0053.eurprd03.prod.outlook.com
 (2603:10a6:803:118::42) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|SJ2PR11MB8538:EE_
X-MS-Office365-Filtering-Correlation-Id: 75a3729d-5f8c-4064-1126-08dd371da64f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V21xcjJ5K0M5djBQTFBzbktZZGNiZzZNV2tvUllPaG1hcXVvQXk1dUhOOFhw?=
 =?utf-8?B?bmVpTkwzT1pkV0NJTk9IK0NBUlZtRkE5UjNOeWNTNDJFcGtzMVNhaTNwRVJ2?=
 =?utf-8?B?dFhqNmtoRGlTNXFlRUlkTzZLeDlqVSs1VWIzMDEvTlNXV0JkeFkvVXd0WHpC?=
 =?utf-8?B?QkxWbjc1bHlkUEFiV3J5L2xnUFZORjBQVzZiUnNMOG1uK3JSeFRnRHdHQVBj?=
 =?utf-8?B?ZEtpRSsxcWNxa0VwZVRyY2o2ekNmRW12R2piV09iOExBTjVHcS9hQnNocXJG?=
 =?utf-8?B?ZitUZ2xab0pNS3BZNnVXVUc1ZlovVUNNRHFWRWFaWkxoRFdieDNVbmEwSE81?=
 =?utf-8?B?WlI5dGdyMTAzZEZxY3FCSTJsVUpvZnBSZkNmNEFQaVpiWGJLMXhzUmcwOHM0?=
 =?utf-8?B?Q0I2TFlOWmtUQVBXNVlyTmlwV041d2V1OVRGT05lTGQzK2xEaDRvU0VqMkFj?=
 =?utf-8?B?ODEwc09CUEJ3cFh1OFhxVHgyczllTTFQT3A3ZFZ1djB0MzVoYnplMTQxQjRN?=
 =?utf-8?B?c3dNb0RzNzJyaUxrb2pIUnI1NTA2eHBFcnNzcWk1SlR6QXZLMG9JNTBpQXo0?=
 =?utf-8?B?Mm8xT0RKQ3krN0U1MXVrZHNESEFzdFg5L2JhZUU5MHJmSWxsRkFyaVFwSThZ?=
 =?utf-8?B?Znh5cjY1RXEvYW9CaFVaQTZ0Z25EbEFyUEZLQ1VIWGdrN25sTXcxMERhRWVI?=
 =?utf-8?B?ZCtjeXFZR3psODNVK3ZJZ3FESWc3TWJCM3hFMTFLcTlQQURvZTF1MkdOd1Iw?=
 =?utf-8?B?b1E1VFRBZEVNNm13bzNkaUxGNEpFL0NZa09QcWtmOHdGekI4UXlpZXk0SDEx?=
 =?utf-8?B?VVJFb0tEUHN0M000TjZXcG5IT1VJYm1NNGhKYnNWSFpCSU5aa2w0bDFvV21X?=
 =?utf-8?B?c1NGaXJFNG4yL0grR0NzVjM1SUp6NGhJaUFGOWJ2RzBxRm9CdHIrTjNIa0Y0?=
 =?utf-8?B?L3JEenZjVHRMMlBHMzJVYU1XRG9uaWlYbm9CVEw2d1R3emtFaTd3VVVhc05B?=
 =?utf-8?B?c29ZNkw0elpPaU5YWkhDN3FkWXFweTNSSDlTWVhBMnZCbTFidTlDOStjT3A4?=
 =?utf-8?B?U2FTOTlHUm5YWlZtMlQ3VGZSVitpV01KR1VDZnR4bWpQV2VsdDBnSUZtd1FK?=
 =?utf-8?B?TUNxWGRNY1FoOGV3U2RaVUpKTlBZYlJrQ2FRSWRIM1FrZWxKRWVCejFWa2pr?=
 =?utf-8?B?SlR3UjZub050V2pDdkRtR0RacnVVWmZBTXowZTNUTHhicFdWTnFYejk3d3Rr?=
 =?utf-8?B?dnI3eGVEVGZ1NzQrajRLTldFUWVSUHpqcndHanNHT2poK1VlRGIvd0xVa0d4?=
 =?utf-8?B?REkzNmQ0T3NBclhpZnVwZTJNQ1llK2hTQ0c5ajhiVFo1ZXdPRVdSQWtzQkRU?=
 =?utf-8?B?RFlZM2RCWmpHNjF3N013cmVHUGtQWFVHeVNpZmhXbHpRdXZMK1lmSGxhRkNM?=
 =?utf-8?B?ZjVhb1Nsc05FOHlEeG9rM3ZQRS9QdHEwQzhueTlKQzFKNzdsOVhjbnNtbU5u?=
 =?utf-8?B?Rjc2S25IWjhVWTgrR0lhMDFIbnZ4c2JmSTR2Ty81U1dIdEE5VFArZ2RmUS9H?=
 =?utf-8?B?RlRPaXh6MXRic3dNNWY2M2FzRy9xYlgySnNsSEZENU1mWGc0aE9RUUVqYVZG?=
 =?utf-8?B?TTBPakpTZlN0QkZ2V2pJQ0h2NTMwUjMrOEErb2ZiZXdMQzR0VGdvSjh1UFQr?=
 =?utf-8?B?Y0s5QitjRWNDOTRSaFd4ZnRFOStaZ0U3Skkzc085bHB0ck1yVndPWWRrVGNa?=
 =?utf-8?B?QlJ5dE5iT1lSZlhWcDlXQnBPbzBFWHR3TmR6OGw4SmYxd1NDc2N5Tm5ncTZD?=
 =?utf-8?B?dXQvWk8yUGhuZXlPdngyRFdZN0lNckpaOWNoclRubHlrMWpreEx6ZEtJdG1W?=
 =?utf-8?Q?w0wROXbgpbNki?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUljRFBoZHFyQTZTVzlPZnRxaUtaTGVjdlRsL2FIRFJoTk52NmxKdHgrMTBj?=
 =?utf-8?B?TWJFa1Q5cHBpZUdkR2dwTVo5TUM0QzY5Z0h1MXN1dDJ3QjR4eU9RQ3p0NjJU?=
 =?utf-8?B?ZVhSc0tZRksyMlRjS1EwTVNCTEZHSUV5aVZiNER2b1RTd3o4NW0rRzZEZUhK?=
 =?utf-8?B?NnF4K0VRS3VPRUJRNXB3ZjY4aWpIWE1kRGlaNk5uc3dPaFhJcWtGQXVtZnpN?=
 =?utf-8?B?RnQvLzY3VHJwSUUwUWRkRkw0WFBBTTFTQjdnY0ZSZWk1dXR2RFd3YjUyZ2Ju?=
 =?utf-8?B?eTBWalZqM20wNHpVdkdrejAzcjh5QmhvL2t4WFJHUitZekxTNTAyeXpBUTZS?=
 =?utf-8?B?Q2dEcm43enE3cUFvbENXanczeTVGY3FiM3N1MlVFQXhOREtUMlIrdnNWd1lP?=
 =?utf-8?B?RlhuZHZIMzI1TjRsdThpZVU4aFdPbCtsc3ZyME5jN29PZVFqNXZXenE0cDZh?=
 =?utf-8?B?Njk5Ukd6MWh6VHJkTzZWYXFQcHhodmorWEpqMitKYnJFNy9jdks2ak1oa1U5?=
 =?utf-8?B?VmdxV0lrVUZmOEUxTUZTWmpibDdDNVpnRGthdldNNEhjcnloQ0FnbUExaWlJ?=
 =?utf-8?B?RklTRkFpeU15ZzRTWjNaaTU3aCs0RWdpbFpVcTdvS0lqbnl4OTcwUXZyZDdP?=
 =?utf-8?B?cGR0UDh2N1BxNGM0NG5FbG1aeTJZMlJLWEhaeTZyWnpJdC9aUEltclBCei9U?=
 =?utf-8?B?OXZsZVJveThieXZrUXQrZTBtYlBGZ093WDhyWGFCc2RWbFprUXhaT1FoY00r?=
 =?utf-8?B?TkNxSTk2bEt4WWpScmhtaTZsakU1S0N6VXkzWXdvM2ZVTWVwWXhpUUdhK1J5?=
 =?utf-8?B?ZG5kdkJaTUQ3d0QvaWx5YWVMbkswZDR4TE5WTGgxRm1vakJyWUZ4QUphbVlM?=
 =?utf-8?B?K2NzUWZoazFMSi9vSm85YjNiaC9IaWZXQWJQOUdsSzFiNzBLU2NOeGpMRG9E?=
 =?utf-8?B?ZDB1TDNacStKcWpVQlhpblJuWUpEeXhjU0crNXAwcit6OE5kMDdrVnFuajNx?=
 =?utf-8?B?OFA4M01SU1lqOEZ3QUNyVXlleUJBQ0hPUEFNR09wMTRCVWUyenozNkpmOHps?=
 =?utf-8?B?OFQwRWVaOVRqQ3lyQWl3dldCREtqaXg2eHRHaXRjaFBlUjRWTHluQW1EWjBY?=
 =?utf-8?B?WG12eE5JcXpDRVFDWC9QekFCNUJPQTZRMTFSeW8zQmFPM05pbmJNek1wekJY?=
 =?utf-8?B?dzJaUjFySDMwZTdrdWhmeDV6RFRQK1FJcDBPODFEN1UwcGJEeUo0VVF0WmFP?=
 =?utf-8?B?a2NHZE5xZW1sUHBlWDJCLzhrUnMvdzVCTGQyT3lHQWdTbUVKQ0RHVktwV0Rt?=
 =?utf-8?B?dkF5ZXhDSGdEL3R3MEN4NGh1SEk4RDJHK3dzMitFL0hpZnB6ZnBpUFpLeUwz?=
 =?utf-8?B?QnNIa3h5UDZqNVlUbnM0bFEyZEpLSHNvTVl1WUg4TmdsbWV0TGhYOUgxVUdi?=
 =?utf-8?B?MFNRcTYyQ3Yyb2UxSXBJZEU4ZENKMVhxK21CMWlqME45Vjl5aHN6czdoUVYx?=
 =?utf-8?B?NHlNZkF5SnNYZFljK1ByMEhJSTR3cW5qWEZOcXJIVVZERzNnWGJOV21rL2w3?=
 =?utf-8?B?U241U2V5UzNPZ1hMVTkySVhja3NOb2E3d3B3akZhVy9jdXlpOXRZOTFDSW4y?=
 =?utf-8?B?Ykk5OTB0NUp5Z1BZWFVmc05abWsxRDZMS01FbThNckJhT0RWTm5mOXlCaktW?=
 =?utf-8?B?T2pYemllY1pCK2JyMFVaTjFCVmtneWMzT3Naa1gzTHN1Z2IraVpRcXMvYW9a?=
 =?utf-8?B?a0MvR0liMTdYTDM4QlgrQmtTUG14Z25PRTZ2ZGpGN2NVYWVqWlplc1lNYUJq?=
 =?utf-8?B?TXZuUXBWaExHZFdkQkl2eTlkLzgrRHd6VWNpUEdQMVlZT0Ztbjk1ZUMrdXFL?=
 =?utf-8?B?VHBGMzE0Q1dhT0lHY0MxWW01T3VxKzlvVElzRlI1djBVemlhM0RpakFQcTRp?=
 =?utf-8?B?cUZTMFhndzFEVTgzOTZxWVBxQmlPdW1Ld1BUUXprNkdmNTA4a3RsNlgyUE12?=
 =?utf-8?B?RVovQWx6Q0lJSmI3UTQxOGwxemdYMWhFVWZLQUNwWEE2ejlLZlpnZ1pTSUFN?=
 =?utf-8?B?dnBrcGw1bXFvMUIzTURoZmVKcWNjdHJLNlBBYTFwbnRVT0NtRWpvdkJKanBr?=
 =?utf-8?B?dHJDZy9YTEx0K0NuMWMwUkVsKzFEeE1ZZnVaMzY3TlplNWVKS3hOR0hWSEhB?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 75a3729d-5f8c-4064-1126-08dd371da64f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 17:37:44.1403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6XMGaoZcvjgOtJRS82pD3SKQqo/iIt332dnPSOh7zwrWhH2J/C8pACl1J+2VOn/SnzH1NjuMXMOQp27wxuFaw0blTWZc7nHuPdCQqapGjxA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8538
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

Hi Nitin,

On 2025-01-14 at 00:13:16 GMT, Nitin Gote wrote:
> Fix all typos in files under drm/i915/soc reported by codespell tool.
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
