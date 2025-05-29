Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC93AC812A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 May 2025 18:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F209D10E75A;
	Thu, 29 May 2025 16:47:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IXXtV8zx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B647610E745
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 May 2025 16:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748537247; x=1780073247;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BSp3NRRwGWN65q7lv/BhDij2QVgDBQ9MGK558ojke7c=;
 b=IXXtV8zxZV03Q/Z6kBZriQBKoggkDphrbELDpCp7qXM5xcsHEc7zvn6W
 sm4LRf4nvUap91ezprBJFGRMaT/LaB+VblAE1f4zlk90PBt0zfVtPB48u
 qcNxUzVz/SlxebUxGS000NhKwFnePbiDwMWexYAuh0TdBGOhkGCrPkDiK
 Ank3tliYd4CCbwejwEV1jnGxPX5rk8gH/4b9JoadIwisPoKPXrL6j81lp
 7MAYaj6k42RZB0u8/F/XrQreXz2ezam8pgc8m4yNY7EC9XsGqpMJlkrF/
 SaTAeULjZ2NLaNd9FcxhejCGi95xHJY69bLRmQDnnOkK8NbOOAZvSuO1s w==;
X-CSE-ConnectionGUID: KmLjuCNUSQ6VDaf7cuXmNQ==
X-CSE-MsgGUID: dtZnL8PbRP65TNf4vu1+vQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11448"; a="50497462"
X-IronPort-AV: E=Sophos;i="6.16,193,1744095600"; d="scan'208";a="50497462"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 09:47:27 -0700
X-CSE-ConnectionGUID: ply8xXi+Syiu1VN9aiqygw==
X-CSE-MsgGUID: hAKqjJz2Ty6Vuc83zQ6UVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,193,1744095600"; d="scan'208";a="148767717"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 09:47:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 09:47:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 09:47:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.82)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 09:47:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S5+OWAniON8Vyb9gxMOcm7w69ZvQsKsC9qPmbJtt8WNJ4cvul9O93QStzF8pQbELaYaQch10EIxzsTwlVIvdsvth5sQabEn5SGgalzngl2JcXc3mh/qX93W2FpOd74dWT4WYtSvMIvsVozcqg3Cwcl2AhsYsbN3y/yXIHLf+Qem/U39DeWe1gpWcKmNMURmuDBLnsb8FQawQv/3OijXNnYJ5x+T4vF7pPsrwnXUE8vzQYayJ0WzMvhDYWYQ1IEg6FExyJwr100fu8Wn6F8u5v/fwOHxrBePVDl+u6VggFjtLR1r22+zd9iYI3TNgBjq/wZ8y+6CCySiyJJjq8MjAzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M+2gne+6m/Mpdyux+TynA5GODmqpJORGU74f5P6WuOY=;
 b=Yjp8NXOiGRsY+NmbswxTEH8FJyREJ0jH8V3gdPOPSGrxR4mFAJM1hylJ6xGdmOIH5O8kWxvt3bt3kqJddT4ojChzakS67eBYkZpntOfjxqeFiIyAXgXcVDhw6uwNZTStGw7DDx5EKe935xJbeT+ir5aToHGUxvxcBe7WvA0oB6zoM3YkSa5qLsmy+noUQb9CXyoPZHxFH0MHR+p3k3NU7ZY00ewXcy8FtlT6lzbMnovK9qtac/wm5VVogBJsie2xgskpkmlSJigrwQRmc+YsYEhtzFOI7q6026X1XWGFhHwS2ryMZXzmUSWRuT0DzBzDC5Ywh5QBMaXzXDwdJdMLBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by SJ0PR11MB5769.namprd11.prod.outlook.com (2603:10b6:a03:420::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Thu, 29 May
 2025 16:47:09 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%6]) with mapi id 15.20.8769.025; Thu, 29 May 2025
 16:47:09 +0000
Message-ID: <1aebdabd-1096-4fa1-8582-625de0c7e9a9@intel.com>
Date: Thu, 29 May 2025 09:47:05 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/guc: Handle race condition where wakeref
 count drops below 0
To: Jesus Narvaez <jesus.narvaez@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: Alan Previn <alan.previn.teres.alexis@intel.com>, Anshuman Gupta
 <anshuman.gupta@intel.com>, Mousumi Jana <mousumi.jana@intel.com>, "Rodrigo
 Vivi" <rodrigo.vivi@intel.com>, Matt Roper <matthew.d.roper@intel.com>
References: <20250528230551.1855177-1-jesus.narvaez@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20250528230551.1855177-1-jesus.narvaez@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YT3PR01CA0047.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:82::11) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|SJ0PR11MB5769:EE_
X-MS-Office365-Filtering-Correlation-Id: ef3fe5a9-68db-496f-dc37-08dd9ed073b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y21hMmgxZ1JZZTZiOEF1REhRR1dFRGRCZFJJUUJ0L3d4V0ZrVllBelJ2dDhX?=
 =?utf-8?B?cllNUzJNVDljMytaNzE3bzlqdGRndU5pRDJ2RFFkRkhHcUttbEd3NHNiZTRG?=
 =?utf-8?B?dHBra0grMHJBMnp1b0JLbUFUV2FnazFhdjVEYU4xTk5UYVg5QmU1QWRWMDhJ?=
 =?utf-8?B?Si93OW5BYkpFOFJWNHFpSHk0dnc1OFRpVmUxS1pVa0dOT3dZU1lMaFoyZC9s?=
 =?utf-8?B?RHpxMGZLKzhtcThFL2x3MWRKRnNXOWNDUVA5a0gxamNCaTkzK3ZtZkpFcnFz?=
 =?utf-8?B?cnpZcDdoaWFhaUNWMzJHTXFTd2thN0Q5N3J4T2pGUlBXRkNjczVTaWRoWVl6?=
 =?utf-8?B?RXBNaUtsNm13djNsRkdBZFVHSDUxRUJXejZoWG1HY2hhVmFOby9JTXNPZWhn?=
 =?utf-8?B?eSt3SmVXR3F4cE1Ud05HMUJQNnBGZ1BVQTNLbGpDR2pBTUI1Sjl4RWppa0ZB?=
 =?utf-8?B?eGdzVFVxWW82NFJ1VlU2NS9UVVhMazZoVmlQaThxRklrUmZBS1puQ0JZNWxl?=
 =?utf-8?B?OW9TREJIRG1ab3BYbEcwN0Iza2F5cWV3NnQzREFuRmJkejdPbndPSm0yeStz?=
 =?utf-8?B?cDhNYlhkMXJpVEx3SEJlL2kzYURheDlORVo4ZVdndjJyeS8zNzlpeXZ6QS9J?=
 =?utf-8?B?UmpXa3pmbFNiWE1QTzgyd3MveGlyaWJLdXhWTmFsS3pWOGNwWGhPeWd0R0sr?=
 =?utf-8?B?MzJHaE9vdW51QXhTMVNlTGxyL25FejRFYkNHTHRBVUFmRnlrVDl5UUhUazRl?=
 =?utf-8?B?eFFGRy9Bcmp5bjVvNVgvcis3d0d5T2QrRHBLVHdwMWM4VzErL29saWhVOFhZ?=
 =?utf-8?B?MUM4Y0gvUFY3NzVNMjJ4Q3hKSWZ3MjhwM2xIK042dGRaL2t4MnpTVHNZU3la?=
 =?utf-8?B?OEZpUUYxM3o2dU53bitjZGY4M3IvaGUxeHBGUDd6eU9TbDgzalBpSlhnRkc4?=
 =?utf-8?B?U2R5TGZ3ZlRsd1RGemZZeGJQNUxDRkFvL2JxSmU1NnZsMWkvRUlTWVNVSVBm?=
 =?utf-8?B?WkNHeTQ3OXREWlZWZEczYXJuMEVxcWJ3dXIvcnczUWdVbWVVR2h5RXdWcGZK?=
 =?utf-8?B?OXVKY1BaZjNLOVVTc2ErYzR5YTBSUkw0V1N3STFlV2hEOHRvRUVyR0lZdS9i?=
 =?utf-8?B?YVVrenY4TlZaTmxJMC9NdlRnaFk2WTg2V2lLalJvWDlZMHhoM2lsNXovZitD?=
 =?utf-8?B?RjMrbW5xVHZGWTdaK2lRZEppNzhWVEU1R3FzVnByTmdya01sMFJXK3FqM09T?=
 =?utf-8?B?SVFVaG1VZ0tZQkNpWHJ2WWJjcEt3UW9lMHdsSzF1RlhWZ1hTMHdmR0VWbjh1?=
 =?utf-8?B?NkZTbTF1K2p3L0k1N2lUSXlxejFEMkJQTzYyNzRzSzN6bFJ2YW9kQ0x2Q29C?=
 =?utf-8?B?UGlZQlhmcy95bVNGTCs1SjBUSDFncS93dVlJZzV6WU0zaGdiVUxHMyttUzQy?=
 =?utf-8?B?VVUzY0FYb1FSSjZzSjJiMUZESDJXSmMzUHJFT3NxVDRkNXZsRzVoNHBnQWs0?=
 =?utf-8?B?eVJRTmlvRzdmOEh6WktVVjUzVFd6cVVkS2dxTktzWjllQU0wcGx0UzJuaUU4?=
 =?utf-8?B?dUljaGRrVGVFamJkWXF3NlFtT0RqWXZlaWpjcVNjL2pxNUNFeXNNSXg0Y05y?=
 =?utf-8?B?V0R3QVFnLzg4bjB6cnhwWGlCR0w1Skd3WU5pUkdBS2ZQQlhJK3NLaE8vd29z?=
 =?utf-8?B?bzhOZU9keUQ4UmJzRm1ISUh2bHJRZzdKSWh5RVM0WGFUOGdkQ0xQSFVPMnNN?=
 =?utf-8?B?a0p4RWtGcERaY0dQZjBMVG1LYmNESWZkWlJHam1Cb1YxMDNJT3BFcUYwQ0d2?=
 =?utf-8?B?SG55WnZpT0VnQUx2ZXBUaFZUSTdzcHlZWFZhWUVXMXJNVUh6eFlJU1lOUXR2?=
 =?utf-8?B?Q0tFdGVDMThudUZXa2NJaStkZDQxT0hFWDRNRHhXejVGUDIwOXZxYm14R05h?=
 =?utf-8?Q?i58xURBJFBk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SURiWVM0MEkrUXhuRXJTaGs1L2E1SzBQeTlHVFAzS0crV3kxbjRFQkFvUVk5?=
 =?utf-8?B?UDhCUzFnYm5vaHI3aTRKajlmME5DWDFMSU96dSsrUnZpb3VBS3QzUmhDZUhY?=
 =?utf-8?B?a2Q3aXBwOHdDV1lFNUFQemx0cTYxeDlTZmd0Sm5id0V4bmd2bkU1Rm5iRnJj?=
 =?utf-8?B?dG1MbG51V0dOY3RBbisvL3R1ejVUdUlmV1hDMFlHY1h0WnpvWGNXdU5GdEFi?=
 =?utf-8?B?VlJPaHpSc21NaERVNWhkRlRWeFRCdTFJOUpMSWUxcnVYbWY2NzhpNkUxM3Jk?=
 =?utf-8?B?dEJkeGtYU2s2N2JrZ29IUHNaWWgra1IzaWJEMHdDckVyR3FJU1VPeWM2dmk4?=
 =?utf-8?B?bE5Fd2l4ay9CVzlleUY0eEhxUzZHS01sS0FyMnpCdm45dVl3RUQ1eC80VUNN?=
 =?utf-8?B?WE81UHlOdE4zbmZyaXIwSGd6b0oxUXhqN0FFeDNyTnVFUVhpRGU1Nk9Ibm4w?=
 =?utf-8?B?NHdOc0ljTzhXSkc3U2VFa1FpdEZvNWt6bVE3ZnM4Mk5rbDRGOFQxVUpKdW1x?=
 =?utf-8?B?eHY1cjZRRW02Z013VU9pV25LZW4wcHVGQVFKV1BhVlpzSXlXLzVaamQ3bS9i?=
 =?utf-8?B?anBpTFNsbmhFTEJnR3h3bXVQT09IeUdLVVhXYml3dUJIVlF3b1YwcGMwTVVq?=
 =?utf-8?B?dHhzRy9YZ051V3VIV3pNVDZ4QUljTmNJUnkwNXdSSk1NUVl4R2lzOUttVkgw?=
 =?utf-8?B?VnV4RFRjWWQrRytUWHcvYjZieGlqR3paTE1mOGpya1dMN1g0TTJoMk4va1pi?=
 =?utf-8?B?YWN2dmV2NzJTaWg5Y0dzcW95KzFhQ0VUaHBqa2U3QjBmNnhrZ25KWHBvN0pr?=
 =?utf-8?B?ZldEelg0RXp6S3Nuc3BBbXBXclFFaCtCMko4U2dlZHR0TUt2RlJuVHNXK1Ra?=
 =?utf-8?B?TkN4ZE95aURMSXJLVHh3djZtTTBNclVYalVXbG5DblAyQ1NNbHNPcWM4ekFy?=
 =?utf-8?B?UWF2RkVoVVV1U3hPN0ZzWjNxRkJSbExwUHIrRkhQaUU3R2lCNGlDK2R6WHk1?=
 =?utf-8?B?WUhyUzlFVkVkSjBya1FhVWxDS2FLanZoQlZmM3hZVTdUTlpIWFZEQzdhR281?=
 =?utf-8?B?UkFKNWxIUndVWUw1d3ZNZDV2YnhRWDBTWnplYXRZdVppWlF5Z1A2bUtmZVhk?=
 =?utf-8?B?TzlHQ2d2eTJ4dnl6K2NGVVpiV084VE5kbGJoMkN1cEprTWExSmFybXhDMEtY?=
 =?utf-8?B?NWNnc1Q4MUZ0QmdtY0NTQ0UrbkJnKzMzK1EycmdKK3hibFd3T2QxVElhS1V2?=
 =?utf-8?B?MEM3UjkxVTFTWE1VOEZZM21GTndGOVNjVlFpZGVNM2IwTDJmZGdhOWNzeVM0?=
 =?utf-8?B?ejR4SEVUTjM2eUFaZjZEWjlwanBkU1YzSlJDV0dETktGeE1YMGkyWTlWTmZW?=
 =?utf-8?B?VDNYeHlLRFl0OEdCQjg3SVh4WTg1VktoZHJLSE1lay9QNzNWdWd6UGhtZkFw?=
 =?utf-8?B?MXZnL0QxbzJvQ3dFK1NsS3QvWWN3cHZwR1B0T2NTWGtnTXBrbGgvMGNRRy8w?=
 =?utf-8?B?dWo4a2VjSlVYM25vcUw0K0w4UVArdmJEMnZNN0pMUk5CbjlxdlpCOW4zRGYr?=
 =?utf-8?B?SjY3KzZWZmJkYk8zS0NtZTk3bFZ5OHVzeWw2Qm5YTDEwNWxTSkl6V04yMGFv?=
 =?utf-8?B?WVU4MFFDaytBV3BjQm9CbWt1UW8rV0JPeUdLM2hJME50OXRzcnptMnhIdzht?=
 =?utf-8?B?TGR6SXZXME5nd2lGd0VEZ2xDTGlnNEc2U2NmTmhNSDZTcGNwSkd3N1hCdDU2?=
 =?utf-8?B?ckZtT0ZGeFVjdjlUdmtYV0xCUitKWTdPZGthLy85VFBTc0x4ZW02ditCOGhx?=
 =?utf-8?B?MXRYK2hYZ0U4bGRiRisxeDZsQ0tSeEJmMVphZlJmNEVQcUVZZnI5R245R3dY?=
 =?utf-8?B?M3JPQjI3RjBDaWxyblhncVdxTmczaXYxeitMa0RGYXpxVWlrSThENU5PUDM2?=
 =?utf-8?B?bGhBSVArNGtHNXM0SUduM3JKTDIxSlFnMFl2VDVHZWlJVUczdHhpVEtRL3lH?=
 =?utf-8?B?c0g0aDhQbm9RVVdjSnIzMkJKdXRQSWhIaklVY1NGOWFJMWJ3SGFRRFV5dEN3?=
 =?utf-8?B?Vys5VjAvRkRzUzFaRVJTSDNYTWZIT29TNWJqelFZV0d4dHVNZXI5ZDVDM3Mx?=
 =?utf-8?B?VnB3WFBiT3V5aDNvVld2MmdFVUxLdGJzVnpjVUJEMVRRR1VUWmJXbURwMkVJ?=
 =?utf-8?Q?WkFviNhXy9F9FMn8ZG0ut8Q=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef3fe5a9-68db-496f-dc37-08dd9ed073b0
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2025 16:47:08.9975 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ph0SlLRwIlYYJYMZPVHFDHhpAUT2OMwJoej4tEik6LZzvE4b4s6vL+YBEJTsZogAqOz5N8Nmhoy2D0oD0eRUHXtd0TCxk2RspsdkmYcGG5s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5769
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



On 5/28/2025 4:05 PM, Jesus Narvaez wrote:
> There is a rare race condition when preparing for a reset where
> guc_lrc_desc_unpin() could be in the process of deregistering a context
> while a different thread is scrubbing outstanding contexts and it alters
> the context state and does a wakeref put. Then, if there is a failure
> with deregister_context(), a second wakeref put could occur. As a result
> the wakeref count could drop below 0 and fail an INTEL_WAKEREF_BUG_ON()
> check.
>
> Therefore if there is a failure with deregister_context(), undo the
> context state changes and do a wakeref put only if the context was set
> to be destroyed earlier.
>
> v2: Expand comment to better explain change. (Daniele)
> v3: Removed addition to the original comment. (Daniele)
>
> Fixes: 2f2cc53b5fe7 ("drm/i915/guc: Close deregister-context race against CT-loss")
> Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Mousumi Jana <mousumi.jana@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Reviewed-by: Daniele Ceraolo Spurio 
<daniele.ceraolospurio@intel.com>

Daniele

> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c   | 17 ++++++++++++++---
>   1 file changed, 14 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 108331a69995..127316d2c8aa 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -3443,18 +3443,29 @@ static inline int guc_lrc_desc_unpin(struct intel_context *ce)
>   	 * GuC is active, lets destroy this context, but at this point we can still be racing
>   	 * with suspend, so we undo everything if the H2G fails in deregister_context so
>   	 * that GuC reset will find this context during clean up.
> +	 *
> +	 * There is a race condition where the reset code could have altered
> +	 * this context's state and done a wakeref put before we try to
> +	 * deregister it here. So check if the context is still set to be
> +	 * destroyed before undoing earlier changes, to avoid two wakeref puts
> +	 * on the same context.
>   	 */
>   	ret = deregister_context(ce, ce->guc_id.id);
>   	if (ret) {
> +		bool pending_destroyed;
>   		spin_lock_irqsave(&ce->guc_state.lock, flags);
> -		set_context_registered(ce);
> -		clr_context_destroyed(ce);
> +		pending_destroyed = context_destroyed(ce);
> +		if (pending_destroyed) {
> +			set_context_registered(ce);
> +			clr_context_destroyed(ce);
> +		}
>   		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>   		/*
>   		 * As gt-pm is awake at function entry, intel_wakeref_put_async merely decrements
>   		 * the wakeref immediately but per function spec usage call this after unlock.
>   		 */
> -		intel_wakeref_put_async(&gt->wakeref);
> +		if (pending_destroyed)
> +			intel_wakeref_put_async(&gt->wakeref);
>   	}
>   
>   	return ret;

