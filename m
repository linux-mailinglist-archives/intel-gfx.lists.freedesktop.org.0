Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 882009AF8BC
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 06:05:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7107710E1ED;
	Fri, 25 Oct 2024 04:05:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IGpEOTU8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58CD810E1ED;
 Fri, 25 Oct 2024 04:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729829127; x=1761365127;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KxiOVHRfXvtNenZZslyQ3bcksnvG1xQGNnPLmZ+el1A=;
 b=IGpEOTU8nHkjJpsBXjP/f2NCEeSTMwp1arFYB4mEV6icPfXxsdygqypY
 djdgCVHZpha4+7KoOhqsxxESJZWa3jxnUgh16bwSlo5JIqCoyAJa89ZKu
 6QwgGHpZ/OryU1f73s6lYgoP7Lu2rUWDhcFKsME8WqZRnLGh/XRNXsJCU
 s1UwQr3H6MDV+kmn/9awCVkHOk7SD7zGgwEfSW9qMAHV/RqJD/+8ANo5t
 4ZORgpMQ+Jjl4Gcv7DjCv3FsqZ7ua3wp8dJJJxW2ANL8MNq+CRkrjmh+c
 ohcY8/utYiXt0XwEVhe1UVz035wX/1uMv92/ySY/qBzqaCdQnfukR8Gh6 g==;
X-CSE-ConnectionGUID: kzLODqHRRPKlBofDAywSPw==
X-CSE-MsgGUID: +//y3pLdTtOM9UmK7noRYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29652723"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29652723"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 21:05:26 -0700
X-CSE-ConnectionGUID: U6VKzOj/SUyLlBNxKKWSWA==
X-CSE-MsgGUID: 6ZVytTjATgy7UoprCouZXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80712198"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 21:05:25 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 21:05:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 21:05:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 21:05:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b1Yb0WKcq/3jDYCDYH0qzN51vrTsZW2q5nfqdMfB+Q+4cbOi72TWoNXjnEWOKzN8l4hFd3yDlzBx1BoV/GDc46u/IjbNlfatb8RjUwPRvo9YKn+LaRqWF2iojPDh94TIzFfaludgxHZunogT/4TkRe7aKNgK7UEUwIHy0iaE7sUpgA2H3vYbnNQaDE6hehXIg0sUa+UYY06f/Y8zd6rGtcxe8NXc0bVIUtrm7xKDOb3Ruvz7etCF+Da35WnUr5qz2nn1W6b0leecKIphW070CkXZSWygJcCIeEsrHiYSdI/0pN8HOaVGFKEilG+J8QhBvjvixqCyZg7Vtao9CSsqgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=laoSqroP1iLOBFKxZVqiYv72QPDJZMKD7A2scRWUWPM=;
 b=I9pCPkoCu4whTWGU3NcKJPsncrIt+rNDM1H7MuHhfiq9qSb0V8r5MGWJGRD1qwMqciNNWQ51DxsfbtG5//rWXgztzaxkAZWVRwB50+IfZxyh+hyAl0BA6CMTWPGZyIjB6lv3uodmKuzsyP+LpuYvkThhJ5nyhhtO/LEmfZr9GVl5Yf1LxeU1y14VKd3Ktb9qRTcNnarop/PuZ5GstV2UKi5hyaUvlTXE3YldtHYPrbV184edoE6dmjrfwLUowW7hcHKLIm7CLny80mjUybI8Z5+JqYmXk/Hg4sAxq1Q2zGt7MbiWzDQbxq2Y9+phDpy6yNJ/zCYNX5Aq5s+qd0n7nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB8570.namprd11.prod.outlook.com (2603:10b6:510:2ff::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Fri, 25 Oct
 2024 04:05:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 04:05:22 +0000
Message-ID: <945200c6-667d-46fb-94c9-548a8ef6b20c@intel.com>
Date: Fri, 25 Oct 2024 09:35:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] drm/i915/xe3lpd: Increase resolution for plane to
 support 6k
To: Matt Roper <matthew.d.roper@intel.com>
CC: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>, Arun R Murthy <arun.r.murthy@intel.com>
References: <20241024035552.94363-1-suraj.kandpal@intel.com>
 <20241024035552.94363-2-suraj.kandpal@intel.com>
 <d0b4e4b8-f6c5-41f7-b1f7-36b06397b852@intel.com>
 <20241024194848.GP4891@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241024194848.GP4891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0022.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB8570:EE_
X-MS-Office365-Filtering-Correlation-Id: cf571bd2-97ee-4ed8-b2d9-08dcf4aa3eed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VW91a2JXekVjTUd0TkZhVTU5MjVGVnNJVVFwZ2pDSU4vVmFnNVlzNnp0T0lR?=
 =?utf-8?B?SGdsbHl6UU9rNlhGY3BEZDhTSitGc2k5Q0NsM1A2bHJLVjZSTnROZmdxS21L?=
 =?utf-8?B?SEdiZHJGUTdBTFplVC9PTkpRRGorVGIwWFZvZDZoamJidTV4QVhjenU5NDB1?=
 =?utf-8?B?T29haUxNNjhPYXBDUTVuaXREVi9TMlp1TUhxTVE3ckdtSElpQ3VUV2taa1po?=
 =?utf-8?B?MkpnMW9TL3hCNHlxOVpuMlE3NmNkUkRDbnRDQklVYU4rbm53R0xUMGJvazlP?=
 =?utf-8?B?RCs3VXFmQ1FTR0FiZy9rT2tkRW5odmwybE0rV3R4dDUyZjY2Rk1hMjFJci9P?=
 =?utf-8?B?N0VVeW9GbFFrYlRjZ2NGQklObDhqQldYajhic0MzRDUzWDFyTFh5a1Nqb21J?=
 =?utf-8?B?WDB6d1pJZFlwTHVpYUx1U3BNR2NZUjAwRmZtQnVKemE4WVNpWEJ5NVdQUW1a?=
 =?utf-8?B?UWZGcjZ0NXVOdkV3bE80Y1ZnZ1g1QnM0Zm1VWlRvZCthK1RZd0hXd1lxbHhl?=
 =?utf-8?B?Y3ZkeVZzYnZ6Wm9oVWdwd2pONWt3N3hPeExtUDVUVzFhWVliVk5FcVprU0Yy?=
 =?utf-8?B?VGVSc0RORmZEZjhsZ243RFIzZzE0WE5ZQ1hRaVluSnBVRmg5NUVZVVRBS28x?=
 =?utf-8?B?Q1RPQXhIbFljQmhVbzB6RlBRNWdCKzc3Q2pyVVFTSzBScW9vWThCdXB2dTFE?=
 =?utf-8?B?OHZCRU9ReUxGVlMvSGY4NTl0OVNyQ3hFcW54QWh5cUdZUEZMLzR3Z0JnVVpQ?=
 =?utf-8?B?eUM4eXFqTGpLcFRQSXdLbSs0dks0cG9FUlJleUpBbWRQVzdFYVBkVThJUnpW?=
 =?utf-8?B?VlQ1amRiamVoT0g0aDFGeDZjbjB0MVd0RWVZc0kxRXcrQnpRdmloUWxvT2U5?=
 =?utf-8?B?a1VDYkRVU0xWZzB5TUVUajB2ZWFyUzZOaklEMmZrNmx2eEEybFVvaUtnaEpa?=
 =?utf-8?B?NXpDdWVkVCs0NDdORDZYbHFBWCtRTktRSWU2YXkxT0JESlpTWUloTCtOMjk4?=
 =?utf-8?B?dDUwUi9BNER0V29ZUzJDa3pSK2lRelMrdXU1bVpVWHRKejRwWkxSaDg2eW9P?=
 =?utf-8?B?SzZpNU1VNEhreUd2elJUVDBoR0hSU0IwT1ZsYm01N293eG1SL1hXZXRFcGtS?=
 =?utf-8?B?RmgySG1UNkZOQnpPS0IxRGNsejFKY1hwT2tHa05RNnBUSVRlRlpyTjdGeHI3?=
 =?utf-8?B?OGNyaTFKV2wvdnVzdDFYZ2szRExpK3dYNzFxcjlPWFg3U1RKQWl2VWhkcTlk?=
 =?utf-8?B?NkhPaUMvajhIVENjZnlLcWlIRmMzVUVyQkt6Vzc5TW1ZY3Z2cHNFeU4rT2xJ?=
 =?utf-8?B?QzlCRlZxai9YankwWlJZeXZ6T3pxeGRnZDB6Nk1GMmdqMlVKVllzWkhadGhL?=
 =?utf-8?B?aTBRMFdLNmpqNXdWeDlVbmUxQ2EvVVRRN0thQnVqbDRLVWhJZFJJdTk3WkhD?=
 =?utf-8?B?QUI0OVpzeGpzVkhYeFI0WkdyUjRZdWtPNmxKZXVsdVhvbzRMR04rdHBtLzd6?=
 =?utf-8?B?R013QXJjV1BzMThLR2VLeGgxeUZ3cmQzdlI1K2VRZERRclZpdmZpQjlITnZz?=
 =?utf-8?B?YndIYmdDYXFkU045SE5IU21tWk13QVJWeEpaMUV2bXAvTVJGd2Jld2V2cGM5?=
 =?utf-8?B?azBObVJQczZGUmtLazlpaUY2QjcrdEpuQTBwSjgxK3ZrbU9DQ213cXI3UTB6?=
 =?utf-8?B?L1crRHhvNkZRQ1FrMTFvMTE5eGFJTWw1UHFNZ1VPWDJCcGowekNxWERVMDla?=
 =?utf-8?Q?nVDXG8Maz4Kdz7E4uc7BCIpn3WeMHi3iFIxLRd9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEdTaTJNdWpsSjJuQi82bDFOL0FVQk9kclYyaW95QWxYUnQva1U3Nnk4cVZM?=
 =?utf-8?B?aDd3SG1jMlV4c05iQk1ZWE1zWFdiV3JpSzRMc3k1dkEvbC9aTXh0Nnc5ajU1?=
 =?utf-8?B?U3VnbWtaNGZRZ1dNc3k4dTEwSUdXeHN6QmNBTU9CK1V0NDFwb1M0N3UweDdL?=
 =?utf-8?B?R0RBUFNwbjM0d0FHRUI0clVpUElIeENQKzcrbG5jdllBanBwb0RoblM0VzJK?=
 =?utf-8?B?cUlDQjREVmFvQUhWYnVReW9QOHZaUnYydlFJajl4ek9PT2h4OGhmQWdqcGFo?=
 =?utf-8?B?aXZRT1hvR2t3c081T1JQbGtiTFpSZk1nTUlDSDQxMXYzQ2tlV0lZNGlHK2F5?=
 =?utf-8?B?SVRKdlF2amJDWUZJcVhYSG5tNGp1ck5STE94YWZIZ0ZZcU14dWI5NHhMeTNS?=
 =?utf-8?B?WlZYU0JGbWVqTDViQnFmTVh6a2syb1h1VzEwL1U0VjdpcFNyYk01K0F5QUdL?=
 =?utf-8?B?TXltVzkxUzZPZUVRdmVzdmhGWVZkMXU0ZzFlRmpYVFo4NWl6YmpHbXBMdElB?=
 =?utf-8?B?YllGdFNIV1puYUpNSEtvc2tZQm9IclljQVpiekVBYklPZzBBWXMvU2c2bmVw?=
 =?utf-8?B?Z214VjBvZTFxN1BmZTdhK08yZjJKWm9zQWhtSnFZNG9XMGYwcTNHMVNKV1ZO?=
 =?utf-8?B?VUZ0TmFvL2RVNlc4UkV2Ymt5YTY3ODFLRE5tUDJKN3RQSWdkOVVJODN2OFpj?=
 =?utf-8?B?UmxHa25rZVVEUGZRSnkwN3ZnaFFtN2RNeHQ3a3lMdkswNTVsZkJRQkNzYkcx?=
 =?utf-8?B?dFpiWDZtbnZ4VVFOZnFSbjdxOFdZb0ZmSWhkUkh6Mmo1L1dZRjVJc0pseUkv?=
 =?utf-8?B?VUlaRjVDKzNjQ3g3UTdreGpGbXNPM2krQzQ3cE9hT3A2cGtkdEorRFY5UW5T?=
 =?utf-8?B?UjlkWGl3RTZBSlc1alVLVENmTDg5azQwVjg5Rk9GMGpUaC9WeWszakFjd3FO?=
 =?utf-8?B?UnlQbjBGTFZ4cHdhYXNnYVZ2Z0dRZW51SkRBb2FXa2dmbWVqemJqdUErZlZn?=
 =?utf-8?B?dDJ3ekZZQ3BkUmxhK082b2xuOTJjWkdGVXkram5VajRwM09tYjE3MU1oemlF?=
 =?utf-8?B?NnNJaGYyZmlSbVR6dGdnSitpdlRoTVd1cERtaStiVk5FL3ByK0ttV3crdU5N?=
 =?utf-8?B?WHR2cFQ4WVEwZGhrUTM4VURGQTQya1A0ekswNVdCUzJhdFZrZStyelJRYjBL?=
 =?utf-8?B?TVZaQ2kwRUFkdUd5QmlEeWpuQXI0d0Mvdkd5TUR1MUhybkpWTnlLY2dLdUV6?=
 =?utf-8?B?b3luRm9Ucmhwdy9OTi95NnpwVEpidDVHM1JTS3YxNDVUbDZZc3hGL2FnSHNy?=
 =?utf-8?B?c214NlBiN0lFazlWZTg3eXdGb2RuZnJQcFhuUzhJRjllbW1mQ1hrblNKM0cy?=
 =?utf-8?B?d2MwVUNtUVErbS9OSmwwQ3pacjQ5WFBUTmprUG5DWHBnTVlkN3lzMnZ6dTlY?=
 =?utf-8?B?Mzlibk0wdnpTbDcrVVB0RjBZcVQ1aXdJMmhudnVCQmt4eEMrTTNLaG9Uc1lN?=
 =?utf-8?B?RERraHhPbldiN0F6MUpsQTdSMXBvL1Jjcjg2bVVZN0RPNkVtRHhzeGtra0Vw?=
 =?utf-8?B?TEZHdGhncmdmaTFVMGZGMkJqMjJwTlQ1V29rSnEzdSt1b3hzMTZoQUdiVWJl?=
 =?utf-8?B?b1dOWWZzdEN6dGIzcDBPd0FGOExndk8xNzBqSDBJOENBUnpNV0dKaXkxQmkx?=
 =?utf-8?B?M1JES0hmdVBBNFprNGdrc2xyeUI4UlVnQ2QvTitacXd1azRaY09tU21GODRU?=
 =?utf-8?B?YmZMN0VUY1BaMEFaYUU0ajFlSFBQVXdCWDkzdnZmdG85UHlyYUNIVVQ4OEJ0?=
 =?utf-8?B?RW03RkpXN2NMTlhZUzhKR0F4T2loYjBobGpMemJ4aGVsR3oxZHgwSUF6T0E1?=
 =?utf-8?B?ZytGdktpUkhOR3pkWndsZTZGVUxVMGtjOEJHRlJEYTJTdVdaNUptcko3MFVa?=
 =?utf-8?B?VUpzSlV2dTN1cStPWjFvZ29laXZoY0xQWUd4YzJ3ZmhINHpoWTFNRjZlWmQx?=
 =?utf-8?B?TFZCc1B6bHphTDhyVEg0WFdlOStnUmVOcXhRVytsM2JkUmh6TFhxMTh4NXpI?=
 =?utf-8?B?NmpNd2tvS3FmOUR0OFhOTTRxVUt3eXkvOWc2U2NDWDlJelVzNkJ4TWhueEdv?=
 =?utf-8?B?TUhuYlRGZC96cFlPdlFJM2o4MXZYTi81QVJWdXROeW5iaWlaWlQreVFlOUhG?=
 =?utf-8?B?b2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf571bd2-97ee-4ed8-b2d9-08dcf4aa3eed
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 04:05:22.1096 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l3dKPSJM9WabMuewAeuPfs57x2bNn+5kCFC1TXZnDXNYVUSwNzjxCpTHsV7xr8FkBIpuLtb6VKNlLgwsAfxIn8qZAa1udC5IIrNSrkBBG8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8570
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


On 10/25/2024 1:18 AM, Matt Roper wrote:
> On Thu, Oct 24, 2024 at 05:16:51PM +0530, Nautiyal, Ankit K wrote:
>> On 10/24/2024 9:25 AM, Suraj Kandpal wrote:
>>> DISPLAY_VER >= 30 onwards CRTC can now support 6k resolution.
>>> Increase pipe and plane max width and height to reflect this
>> Only max width is changed.
>>
>>> increase in resolution.
>>>
>>> --v2
>>> -Take care of the subsampling scenario sooner rather than later [Matt]
>>>
>>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_display.c     |  5 ++++-
>>>    .../gpu/drm/i915/display/skl_universal_plane.c   | 16 +++++++++++++++-
>>>    2 files changed, 19 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index e1f6255e918b..37bac53f996e 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -8432,7 +8432,10 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>>>    	 * plane so let's not advertize modes that are
>>>    	 * too big for that.
>>>    	 */
>>> -	if (DISPLAY_VER(dev_priv) >= 11) {
>>> +	if (DISPLAY_VER(dev_priv) >= 30) {
>>> +		plane_width_max = 6144 * num_joined_pipes;
>>> +		plane_height_max = 4096;
>> plane_height_max is not changed, should be 4320.

It was based on what was coded for last platform, as this platform did 
not change the max height.

But I realize that the older platform itself is not fully correct, 
thanks for pointing this out.


> Where do you see that documented?  At least on bspec 68858 it says
>
>          Unjoined pipe source size, plane size, and pipe active size
>          maximum vertical 4096.
>
> and based on bspec 49199, that restriction goes back to at least gen12.
> So it looks like we might have a bug on older platforms that needs to be
> fixed.
>
> When using the joiner the vertical limit goes up to 4320 (on Xe1
> platforms) or 4800 (on Xe2/Xe3 platforms).

I agree, as you mentioned above, we need to have max_height based on 
num_of_joined pipes:

// For Xe2 and beyond
max_height = num_joined_pipes == 1 ? 4096 : 4800;

// For Xe
max_height = num_joined_pipes == 1 ? 4096 : 4320;

Regards,

Ankit


>
>
> Matt
>
>> Otherwise looks good to me. With the above fixed:
>>
>> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>
>>
>>> +	} else if (DISPLAY_VER(dev_priv) >= 11) {
>>>    		plane_width_max = 5120 * num_joined_pipes;
>>>    		plane_height_max = 4320;
>>>    	} else {
>>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>> index 9207b7e96974..b3660c71e499 100644
>>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>> @@ -432,6 +432,16 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
>>>    	}
>>>    }
>>> +static int xe3_plane_max_width(const struct drm_framebuffer *fb,
>>> +			       int color_plane,
>>> +			       unsigned int rotation)
>>> +{
>>> +	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
>>> +		return 4096;
>>> +	else
>>> +		return 6144;
>>> +}
>>> +
>>>    static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
>>>    				   int color_plane,
>>>    				   unsigned int rotation)
>>> @@ -2511,7 +2521,11 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>>>    	intel_fbc_add_plane(skl_plane_fbc(dev_priv, pipe, plane_id), plane);
>>> -	if (DISPLAY_VER(dev_priv) >= 11) {
>>> +	if (DISPLAY_VER(dev_priv) >= 30) {
>>> +		plane->max_width = xe3_plane_max_width;
>>> +		plane->max_height = icl_plane_max_height;
>>> +		plane->min_cdclk = icl_plane_min_cdclk;
>>> +	} else if (DISPLAY_VER(dev_priv) >= 11) {
>>>    		plane->min_width = icl_plane_min_width;
>>>    		if (icl_is_hdr_plane(dev_priv, plane_id))
>>>    			plane->max_width = icl_hdr_plane_max_width;
