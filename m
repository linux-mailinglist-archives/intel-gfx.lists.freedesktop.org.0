Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E71869FACE9
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2024 10:59:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C5F110E23C;
	Mon, 23 Dec 2024 09:59:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nm96KD+T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EDAD10E235;
 Mon, 23 Dec 2024 09:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734947992; x=1766483992;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=W4Aar+iVxsY6k9IYJ0dJVK2Jh9XkPcgSXVEjxsY+QI8=;
 b=Nm96KD+T4Is52D36qXpPn3KAIOM0Xv0LHCCmj5oKzZi9XOqrgAQizw4k
 WWwidOI+vBTCDCnOdDTuY13riO99O9M1hbaFHc41ILIpmGrS/Kwa8D8Rw
 W12NUGL3uDvUnogolOCAJN2TIum1arAW0qjFfpuVxdTrxMJEIhcgv9vhI
 eZ5/AG2I7SSbaaalxyHHAd0sZi2ww9y4xi2brrNoZqTuVK1ztjSgNKpaW
 1qCsjoKMEyJcPorfQxa6QEVDzQDVqx3rmPnu5o0lpl2FNMRMHgmfDOWWm
 7GVDcjfDz85BlRvTq6wLh0JJ/2CnqP1dVBDF6qj/xCzh9aefIOBYejHq1 w==;
X-CSE-ConnectionGUID: sWIN27MxSeC/5hlmjRM6hA==
X-CSE-MsgGUID: CGoZAv68R7qI3gyMVLDPVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11294"; a="22998985"
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="22998985"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 01:59:52 -0800
X-CSE-ConnectionGUID: lZfceSxJTKOKBHJYJTHfCQ==
X-CSE-MsgGUID: GtGZEjzAQEKLjcO1IHXBTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="99689497"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Dec 2024 01:59:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 23 Dec 2024 01:59:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 23 Dec 2024 01:59:51 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 23 Dec 2024 01:59:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wc/Giq/n3qhRJ5jYU1Bfmwu7ee1i1qpF+3Mv1HkAzPkwMa0emA+fBWAZ4mGOrgopRQEQ/mahMUnSzZcudahXg5EBS8qGwPUd39W3xsHS9fupae8oBU4MKzRPlz3BQScF0mjcPE334TQIAL4EpZ7R6EEZpk2bKlJ++iaRHpXszDeVqYflUolkN2AWMi72ppvVWNC3MBjDqwX6hx07y4Gh1jsKj9zOdMkMfdQrRja6Y3YmlRxwxu0uutwlf1UfDyVq/KbYKkR2v2ctDGwbg3c+uwFrCW29iyAYVaY5kniHpg9XGYbbbISG0sNnMqOk1pPhgvk7Tj+O+BHKMDrPvuWcpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RS7r7c+7lRtgW1oCPT8gUJaDYux1uFibzHPLkJKHobY=;
 b=Q2vQvCOCoe+C+D1oKu03Ts5MCfOKYR5Z84SaScCkppIsE9SXhZpjCe2K/IPjIkWME0kA+w07n4MDEr85hfg5q8lvUvSa2gMyzJyrLnc2e8GP5Yv5rmpN48zsycWLNPBcBObSTAhrcyjbkdtqrrp6geBYsOxiBoNyVedcItBN6SdASQ3n+f830y8XJXiE7I0GLHXcSo08WhesF0cF5JahTHuvumRb55p0GiAumfK9G29sGl9ipkkv4onzsfCiyyqgpmasaB3tdqwsk019rMn/WLUFE3foGbx/Q6EjbNw6RKQQXi76IozXLGE6C5lqn3QCKZL4jpaF6hBAyQSLlcWvjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA0PR11MB4573.namprd11.prod.outlook.com (2603:10b6:806:98::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.16; Mon, 23 Dec
 2024 09:59:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8272.005; Mon, 23 Dec 2024
 09:59:45 +0000
Message-ID: <f2bc27e6-65d4-4007-9510-e6534bfb2e64@intel.com>
Date: Mon, 23 Dec 2024 15:29:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v2 5/6] drm/i915/scaler: Check if vblank is sufficient for
 scaler
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241217180710.1048355-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241217180710.1048355-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0138.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA0PR11MB4573:EE_
X-MS-Office365-Filtering-Correlation-Id: cecdcb62-181d-4fed-07fa-08dd2338874a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZjdiVXFma3VPNldmL0pQeFJRdi96RklEdm9zYWVGZm94cEZKMnZDL3N5WXlS?=
 =?utf-8?B?RG1PL2IwMEx4eDNCM2Nib3RMWG9NODlWQ1JudlJSZkkzL1BzYUxsejlNWTEx?=
 =?utf-8?B?OHFPMWd4QUJ4T0Rjd1NUU3JwaStlNm5TY2tqSVEyR3BYeWlUQytUT3cwVjNt?=
 =?utf-8?B?TjZqVW80KzhVUTZvVjFiWm4vd294Y3ltbHNVYnRMcjYvOXVTSVB3VVhzbUth?=
 =?utf-8?B?MzEzZVRnbm5JdTJPcWNjVjByWndNT2ovQm1jcnBjbUo5bC9ycDcvUmhCMWJK?=
 =?utf-8?B?Q2NUZmc5RWJ0UlJsYmFoakFqRG9YVVNLdysrL0RsN3dQdlhFc2tmelA3TjU4?=
 =?utf-8?B?Z0NiaC9GWjNDSy9FSXVDejNmSE51U3pHT2NOVnhNT2FaZjdNSHpuZFoxbVhH?=
 =?utf-8?B?aXBZQ1I0U2N6djdYYXM4aWxIdFR4cXFFQXI1RWdDeGVIMlZhMWgxMVNPKzhU?=
 =?utf-8?B?bGZpd1pKUlZZMG1OUmxLZHhOZjVPQ2lNVEw3V05xbGNRcjYvcytQTW10ZXJ5?=
 =?utf-8?B?enFIWCt2SlMvOFpLdnhqandCZDQ2emYyRHJDc2VDQjdYRk5UNXpWdmg1WEF5?=
 =?utf-8?B?MGttaENoN0dPbnFlTFh6czVkRE95UWMwV3FvbGdrQjJaa1ZlZzd0R1lnTXJY?=
 =?utf-8?B?eXA2bHdKUC9zaXJGaGEzYzVLV2xmUDNYQkcwQm8wOVNkaHVtQTQzN1VnRGli?=
 =?utf-8?B?ZUc3Nm1uTlQ5dzd0SDkvcVhQeFJPU0lOOHZ6M0pmS0d1MzZ0SHdCWDVHTEs1?=
 =?utf-8?B?TC9WOTFpMjRUQXhEKzhWVFZCT3VoNGRwVW5xdGNuMUtWUDZGRmlYbDE4SmVP?=
 =?utf-8?B?Z2l4V2VGd0JUS2dDK1V5WkVrcXNXejk2L1NkYTVXanZ5R2pRMFoyQ2NlMExy?=
 =?utf-8?B?T2MrOCt1WVBWTWMzTjJtUi9XUjE1eGkxWkY3M1diMmNkZlo3aXE1V3FiN29Y?=
 =?utf-8?B?aFJyYjhTbVVWeC9hZERJc0pWNDFyNjloUmxFUW1kdzJkQjdTNzM5UVZxVmhj?=
 =?utf-8?B?Wk1seFRmRmN0bWxmaVZuR09RanJSK1BsMmVoT3c0eHA2OGFIamVDQjQzV2I2?=
 =?utf-8?B?dUE1RHpaSFg1NXg5bGFvSE5pQ1NNbko1bmc5eUgzaXlyK1VHcC9JOGN0UDBD?=
 =?utf-8?B?ZVpjQVhTYnJGbEliM05JOEtiMUFndHhvOFNFeE5JMXRzdytPaGRaVkEraUxr?=
 =?utf-8?B?RkVpVFpTMnc4cnFDKzErWkZpTVhtU0tCRm9xZDJyUW93ZWFuOTdwU3U2U0pp?=
 =?utf-8?B?blFPWllia3dPMWp4ZGNyRUFNeEthSXA2cDVFc1RoMTFtWVpDbVBMZUZySzdv?=
 =?utf-8?B?ZWFhUU5hcWFZdHVGZGNaMU5aWnB2UVFKT0VhMndSVDZ2RlQ3ajJyQm9mTW1R?=
 =?utf-8?B?bVB2YXE3ck4zWmpNdmgvUmQ0Zjh2ZjAyeFlhaE9oUmFHL1ViUEZQb2tGbmc3?=
 =?utf-8?B?VUtvRnRBTGlRdHd5SWtQb2tMNGJoWmp0OHhYeCtDcGdmU3JxcGpYRmhGY3pP?=
 =?utf-8?B?UXVTdEYxVVYvdWVPQWY0V1h5OCtjeWhnQksvT1QyYkRObHhubUJSd2hVdEhD?=
 =?utf-8?B?V3ovRTBzZ1RTdS9ZUFZzQWdzdjF1UmdxODBhNkdUSkg2Y2hCVFphVnBhRkpW?=
 =?utf-8?B?YUYySnYzRmwvVEg0R1ppUVM1bXUvak9UREVnN1dDZ0NRa1RyUTRqb2FxUmRz?=
 =?utf-8?B?dXNLMndwLzVYaml4dmdpdGltS0JjdFBJVzEvSm1wVS92eDhRRFZtQmhqSXIw?=
 =?utf-8?B?eXZ0RHVkeWFuRFB2bW0xUm5rMndsY3VDOW5SMVk0WW5nb2ljQ3AvSDdqRFVO?=
 =?utf-8?B?bHQxSlRJZ0pMZUpROXM5YnJnNXpvRHN3R0s0TU42aHQwNlVmeEtNNFFDOXpn?=
 =?utf-8?Q?MhFfRyc7RIK+u?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2d0RndMdTMrMUlCNmZDL2YrSk5HR3J6dXBGcWFxaWV3eTNBT1RPNWVObklN?=
 =?utf-8?B?anZXK0kvcTk3Rm9laFRpV0lzczlDdlhENERCcTVOY3FDZDI4OFcwMy83SlFL?=
 =?utf-8?B?WUxnY2h6cU5XVEdkWGRQUDRUNFBUUENpSTZRUnZOYkF2Z082WThHcmZVRnVl?=
 =?utf-8?B?SU0zSlc1aG80Z016MnRLeVc3bXYxcHh4eXdRam1lRUdsaFIvczNVWC9jR3M2?=
 =?utf-8?B?VzFMQUhDS1dpS0NYM3dzTkcvSGdFdXNtVU9UZTVoL1lIVVhLblJLSWR6WTdD?=
 =?utf-8?B?OTBadzFrVmdXeC8wUXM5Ukx5ZHZWR0R5ZEFTRDNDdC95Zmc0WGluUU5KOEFp?=
 =?utf-8?B?TDM2UFRKQzVWRm9STE8xeVQ3T200ZURBSTRVRGlXRVpTZllMQy9TbzlleXpL?=
 =?utf-8?B?K1huUUtPS25pREVBZHJBcXJib2dLMWVTcSthZkt2OGp5bXFnNTJQSDJ2dFJK?=
 =?utf-8?B?ZUZwR1JJWFBRQUtnV1ZpaXpmd05zUHgydXJxdVNXNDVISmhhM3ZWVGdkQ1hP?=
 =?utf-8?B?a1VScURvKytxZkNJem5vTlBFSE0zTG9vaDB3VThQTWxiaWY2dk5YZkZJK25s?=
 =?utf-8?B?K2U2L0VkYUlxSHNlWnFESElpYmpOZGVrT3Zzb2kyalNMQmxudVNhTFNpNkxl?=
 =?utf-8?B?WmQrZEtjRjRFRkhvQnQzaUgwSzJmV0hMQXZXRHFuSDNSalJsci9FTlNuZzJM?=
 =?utf-8?B?cjFhNjNOTTJUZFgyVWhBS0J2M1lXNElCTkxmT2xXaUNqYnowbGl6RmYxNFlU?=
 =?utf-8?B?c2huK0pRdEFRLzZjOXRZOUJDcmx5MDFnZzlmb1dsOU5jSVpQakRxZ0FMSGtv?=
 =?utf-8?B?RnlXbkpBVk1Sdm1FTW92bG84cDkvUU9QaXBFYmJURzR5NDF1L1NNWDFycVIr?=
 =?utf-8?B?cDJSb0psKzBiSGVDaDFsMHg5RnFiREUwK2VLMUV6NFdnTWdNcDdCR28vSnBo?=
 =?utf-8?B?WWhyR0tzd2NvRXRYb2lzY2hMMjloNmpmdERJR3AyWkswU2E5U3prRldMdnIx?=
 =?utf-8?B?bU5aeDZBN3QxQitXRmVTTWVlVTM1WVlrbXdxTWdnNEtlczh2TW9la3pnd1M5?=
 =?utf-8?B?N1RGWG9CdmM0UmdCTmpvTlpaMzBVYTg5blpjT2dYeGorNk9uMS95TysrR2ky?=
 =?utf-8?B?T24xTWJrRXBza21PV1N5c2xRRitSZzNCSUFaeC8zVERjYU1nSCtMSXFrc2Ry?=
 =?utf-8?B?d29uMFRCZUtiOWRwZDN4S3pidXE2NGJlYy9tU1hqNi96T1JLRnhkRFRjemJl?=
 =?utf-8?B?bENCUE5Rd1B2M2wzZUVCNE53ZUNaWkdKU1Y0WTRSMWJETVl0eERRbWRqaHR1?=
 =?utf-8?B?Nkl0Vi9kK0xESmhaNHJDek93SjVaNkw1QkdpQW9oSll5YTM0Y3UzZFkzRFVj?=
 =?utf-8?B?TWRjczZ1MmVPU3ZJaU1iRGFEMURac0NneEZxL0J0eU1xbmR2c0ZmOURMaDMw?=
 =?utf-8?B?TWRNSmlqL2tZZ2M3K0UvekxzVXlNVzQvbVFMa05hRFZmVnFvM1ZhWmF1Sktz?=
 =?utf-8?B?OStmRm1reWlaUlZDQlFwenhFVERLNGtXWjV2YkZoSTFGcFZCaE1Icnc4Wi9N?=
 =?utf-8?B?YnJ3V3JjOEFobktNQXVRUFV6bjQ2Q3ppSmFKN0hTMm9YRWV3NGNQZ2hRTXpW?=
 =?utf-8?B?UFUxZjZJNTMwb1U3UWdITTE1K3AxV0QyTThJYnJqdmVUMVd3VDdXR0lzUHIz?=
 =?utf-8?B?cFRrbGNldys5cm15LzEwRHRtYWZxSm1Lcm9GaWRTbzVsRGRUcVNiWGtrNWRj?=
 =?utf-8?B?SlltbnFucnFFYlYwQXNBKy93K1IzM2l5TnJOQ2V4MlJPbTdGS1ROdUtEWUlD?=
 =?utf-8?B?R2hoeWNxaDFEdjVNYnlSa1NGa0oyT0NlZmdlOE82b2JRL0JNV0hsSlpvODAw?=
 =?utf-8?B?b1EwbnFjMmtvOHBvSkFYYjF5MC9VbGJmZUxESGNXTmRwckd6V2NGWHBRVFhE?=
 =?utf-8?B?UjBmMmYrZHJiVjBOZmNwK2h5Q2FqSldZWGZ3KzJtZjhWU3FnZmNrZFEvOGJm?=
 =?utf-8?B?SVdqeWx5aHVIV1ViTzRUME9wUHNudW9VNHp6NUFTVk5aQVBCTkc2RC8vQlhl?=
 =?utf-8?B?dFlMOUFCUnZybE1ORkdWSjJVa2k2S1ZrMnl0VU1sZlZoaE1ZaHFEU3YxMDNx?=
 =?utf-8?B?SFN3MVlXQlQ3S0RoVTUwVGlmcFpVak13eWRvd3FNeHp1NkVLRzZTVk93a205?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cecdcb62-181d-4fed-07fa-08dd2338874a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2024 09:59:45.5155 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1JrxTiyCb184HD3WLSUfEYA8BYNzhUPbn/wk/fcp5DqfJbqBM/n1z+gczS2aM21QRndEvNVg0GvE7iScL+0zIcY+l6/tFTdzsklAwlUaVg8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4573
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


On 12/17/2024 11:37 PM, Mitul Golani wrote:
> Check if vblank is too short for scaler prefill latency.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 22 ++++++++++++++++++++
>   1 file changed, 22 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index d3506e8ccd9b..a538e2b82c12 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2292,6 +2292,27 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>   	return 0;
>   }
>   
> +static int
> +scaler_prefill_time(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;
> +	int scaler_users = scaler_state->scaler_users;
> +	int count = 0;
> +	int hscale = scaler_state->scalers[0].hscale;
> +	int vscale = scaler_state->scalers[0].vscale;
> +
> +	while (scaler_users) {
> +		count += scaler_users & 1;
> +		scaler_users >>= 1;
> +	}
> +
> +	if (count > 1)
> +		return (4 * crtc_state->linetime * hscale * vscale);

This will not work. We need to take proper precision into account to do 
this calculation.

currently hscale,vscale are left shifted by 16.

Regards,

Ankit

> +	else
> +		return (4 * crtc_state->linetime);
> +}
> +
>   static bool
>   skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   			int wm0_lines, int latency)
> @@ -2302,6 +2323,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	/* FIXME missing scaler and DSC pre-fill time */
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
> +		scaler_prefill_time(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
