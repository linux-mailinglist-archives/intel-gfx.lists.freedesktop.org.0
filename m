Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0E9AHU4W5mnCrQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:04:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFBC42A676
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECAAA10E225;
	Mon, 20 Apr 2026 12:04:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vlzz6Ca6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA28410E225;
 Mon, 20 Apr 2026 12:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776686667; x=1808222667;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B0eFINVOOGDzbcGIbOw+X+IT2XeFVZV1F57n7YmnIeM=;
 b=Vlzz6Ca6lgptlVZKpTHUvYaY/t1CBBcHwa18dVVvWimVhwli8UHl1R2E
 axSb4BqmalN2pDJ09Lc5ZQTq4KtWy9QKB3aAzZPQV9QaD2aGzZVJi04Kc
 g1lfXjL8GSf9Ula2mQqbl4mpkDY0wfBK51DNc4GU8FgwQ7uOwb7PJXNbo
 sUCTuKrMY1i1yUGMFuAr6DsPjXbVqaBuVU8eYG1XWJo3Qnx0MBGq1oQ7t
 hhuOJAYnpYaALWy3gBLWXBoXCNu1CygmtxK/QKhOAFq9hZ4hcx8ejdzPd
 u6HFa2Jqk/VGRA7VvIZTawxfSd94hle19L1WZThk2xx1+JTAUofS7RAPK Q==;
X-CSE-ConnectionGUID: i9XknbNFTZerYsefi5csVA==
X-CSE-MsgGUID: s5gDpY3BRdKH9VqFVM11Dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="88673035"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="88673035"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:04:27 -0700
X-CSE-ConnectionGUID: u6LUZwYuSuyjA83LDKyn2w==
X-CSE-MsgGUID: an5lRlBPRnubYvwjkcvgMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="235707032"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:04:26 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 05:04:25 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 05:04:25 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.14) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 05:04:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ltnRok8fNkFpQOgeT+z11F97tICYJw9uWf0MnaP5slnFCsOrdHJSjiHpdRmmwzN/GJfUbU2PKtZKu4p76OnLvJK7OY91PPaHFSqqmT0UbGdQrB0/HX7dyzWSJju+pH5g5vehDf4ThoZOh+EOECfJG5AZLJU8XRlOC91pkko+pLaejkrPkfL6aOYvzKBz6VgbvK5O83c4Hp6m66xayDNvxcxqp1w1e8eH07Rn4kW7N+ODxPShUs+ivWCBA6d6vkI0DHG8F35VBT5xvzaeeqeXV8iNVUhVqtVscehGeDJI/LlsIIAFoyw4UgYm0wG1O9HGo+8LnQiIvb24iTariuoJ2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sljzNyy8FJgjDYhLydJIJ4R+VTx27xG/rtHPGMzk2EQ=;
 b=kDz74QTIzZSLs0Zs/Ms6ZEDPhu4acr4EvouVN/DSxqfEBviy+dW1tMPXW0lrLCexcgTTsR/eirn0JFzezlr+d2zMRXraDPcnwUeANX8YiH/xFL7GY/d4gu6JO0O/Yphz9INGOYBIS735aZQQHHqpLWsrU8VKPwK2DosaoGEU3ZObtUA2bMNMe2tbgvYqFo32MsBNMZ8R6DYSpc7xSRJaa6wQN94KRgofN7q0QRwtw7xroGx/pFGFYVIaWzEdmwNoLQsGJsRyamTj72Xh61We2zDVYyz6c6JkgD98gMEqJJcOxERnS643J71znfWwyX5IOnW568FbPnVCsaIkyL8GYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by CY5PR11MB6391.namprd11.prod.outlook.com (2603:10b6:930:38::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Mon, 20 Apr
 2026 12:04:16 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9846.007; Mon, 20 Apr 2026
 12:04:16 +0000
Message-ID: <47bfbdfd-01c3-4c06-bdc9-8f4952b3c4d1@intel.com>
Date: Mon, 20 Apr 2026 17:34:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/19] drm/i915/display: Replace DC_STATE_EN_DC3CO with
 DC_STATE_EN_UPTO_DC3CO
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-3-dibin.moolakadan.subrahmanian@intel.com>
 <DM4PR11MB6360296B6EF73FB67AB242D6F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM4PR11MB6360296B6EF73FB67AB242D6F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0116.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a7::15) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|CY5PR11MB6391:EE_
X-MS-Office365-Filtering-Correlation-Id: 6bff1ae2-e8dd-4995-9fd5-08de9ed4f22c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: sEWxmh0/hEWqwNZU0Db4mgwdAark8F/Tr+j7TR1BN+MWQiOPg/vs1L/z6NcnJhs3dfqq/C+i3uw64L8oCjagnA3UVsO+pOACTa+CYijoJOEJ2MMlyZWKmvrMGsneSotlrxnS2ZC8fEQ9dZKj/XaKmZthKA329J0cQY7zP0Nhz24h5crscpJauJCJF6YlJPdv2THAYWMH9xuctoa06qtBFsfIYdcvayC2ShzjlmEwaHMrDYwQopbt6gnociAMoYG5cP6YB9RTYA+FXDeeZIbK8qbT/6wrjk6BkLdfjI/ERXI3i67Pf6Gceyoki22w3avOoj9yqEwytmxo4MhCdZGBO04FVdCK9VHL36XHsm8cUpArITG+wLUetapeSMnVSC7bGTOM5CvIyUf/93FiemF1VSC7swndfYFvJV/jQKipThaExqoOb1va9v8RgNlgCDQyBgLOmkZr4UAs8iXI5233d0rYkOSjf8RkuhQbxlYz5XRFRNU3npIrJA3/Ofabfra5CkAMoH3pCUjP0WmBhw3ZNcqOuL6sXKsQNoLBf+P4a0lS4c6E06rLuBKUy3RuS6xsZAQZMPIDEKxlUpizyvorG4iKzKnH+0eTj0MYF2mKSsY77oKbUHGs15/3c+QTZSxN1mgLEfR6FrhLPmt66KDf1C+7TmBDXkm335RxuB6rha/vuAII1q8qWYeKZEAnltVHi2LP/8MPUlYl5Q234ET261iMUqWvDgKdxDnTX0GueXQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmVjekdkNWNza3R3RWpHOEM2a1VNTUNoT0dQKzNkSlBCWklzQ2d2ZnJLZERk?=
 =?utf-8?B?RFlISE4rRWRCWFRRam40RExHUHc3aEUxY2lRMnV3YkJFSmUwcThvbUgxNnBJ?=
 =?utf-8?B?ZGd6RTFwdEZDdHd0QjNTMkxEZGFWajI0MXlrYm9CY1JqSDk4bHR4cVY2Mkdp?=
 =?utf-8?B?MTFvKy9rbUZuZERDOE43TUJVT0Y3UWwrRnpFdlBCQVFVY3hBTTIxaVFFbG0r?=
 =?utf-8?B?K3YzbmVLdk8vdkZsODRHbEpvdzhjbzNBZGJINXo5OFRsd3p4N1N2eWJ2MGFT?=
 =?utf-8?B?RktQbE1DV0dkYlNjUmZGQzQ2bTBkeWFMRXdMTDR3ZHlQUXlKYzlVQW16SW9K?=
 =?utf-8?B?ZHRxSDNyVVdtK3k5bGhUSGx0amJrUUw0dlVpMWV6L1A2d1dMTm16dHlDbUtR?=
 =?utf-8?B?bnNSWUUyODVpam5KWVcvaW1vb3JmYmpreVYxczJKT09VRUNxY2EyTkpJVmo3?=
 =?utf-8?B?N3JadTJSVTRnOEE2TXRuZmpPeXQ4NkVBWlNCVHp2SEhFMkRxcHdHakZvQ2Zm?=
 =?utf-8?B?dlBncEtxV2MyNmVMMy9tdWtTekxpZzYvZHJ5eHVncUdFRkZLZTI4dHNCUXFU?=
 =?utf-8?B?clN0ck9tbkkraFlxb1kyVWh2WmtZN0xDb3U1ay9UUkJ5TzkrQmRyTW5lQTl1?=
 =?utf-8?B?YW5uV0Z3ZFc5MG5vazluR2ZiWGVhSVUrMmR3K25meGdWNXg5RWxaVmpEVGNP?=
 =?utf-8?B?TkhaT1ZueWI2WmNSZ1hVY3YyRWcxZHhvV2N5d1NwQ2NEWVcrQktkd08xR0R3?=
 =?utf-8?B?allKb3RoaU1uTnN1NTdpcEZKVDBpTlczSXdxeVBBKzd6QmVpRkVqalpCYmxC?=
 =?utf-8?B?S1NoejlUOEczaEhaeG85QmNUaklTUktVRlF6RVpEcWpiVGVYZ3FFb29hNnc3?=
 =?utf-8?B?ei9LS2F1UnM3My9DSWx1MzhBYy9saGVmOGdTVkMyRE5qcUFXekY3TXFrM2Zr?=
 =?utf-8?B?aEltMmNUaS9qSXA1enhkQnJnUXZ6NnVqekN6QVRTVERPZmpCcDBHVEk0akZt?=
 =?utf-8?B?MGdvTE55Rkx3MmZtRkFvazlzejNuWmR3UmNsYlVhNnphemNrbGZhZFhSUW5l?=
 =?utf-8?B?NHE1Q3pKdHpkTFFmZkFVekd0TGhISGJxajRiMW5xUEhzUlFxVE95bXVlUEs4?=
 =?utf-8?B?YjI2Si9KM0Rud2hPcFBFU0JPKy8wTFl3QUhqVjNPM2x6akovbXNZNjhSa0hO?=
 =?utf-8?B?THVsWm9FR2tsd05UOVZabHQwaTZOUzNkTm9kb1JkODgwU2Rhd2dGcGJYNG9p?=
 =?utf-8?B?eE05cFpUV0dXeEdXWG10eVdWQksvbFVqYjJQTU55QVM0UFBLUVJ0VDlVQ2d6?=
 =?utf-8?B?Q0pTdHZUYVdRSEVSOGZtUXROdDNPM2Q2bUxKVUlNK1QyTk8raXgyODl4Rmhu?=
 =?utf-8?B?TnBrUzU1dlRwcVhGb0hXcFdSaFplU0l5U2hhdlZHcjhaYUcvYVlnYXBFeExO?=
 =?utf-8?B?TVoxWVZiamJFMk5yOUhhMjlidmtuc2JrZjdxcEYyNWJBZmFIRFdTbkVzUkN2?=
 =?utf-8?B?S3BvclkxcEZGREY0bnU0dFVWWHRtVENHMktPQnJyNSs3K09LU2liY2pwc2tT?=
 =?utf-8?B?MjE0M3Nla0JVa1pjQ24zYXp4NmFTeDliVUZ0d3hPRDR6UHlCMjNjWE00c2hH?=
 =?utf-8?B?WG13MjFsdHZRZHptNTZZcmZnbXFveFpiZnpicFZOZnhrNXVSUjJ2dGk5UEtz?=
 =?utf-8?B?SXE1ZDk0ZEpIQTY5N3FHcis5cjlEczJHZ2g0eEZUVDBxYSthTlhvWjBZNXFT?=
 =?utf-8?B?dkxYTlMvc3lyK1ZJaTllUVFIZ3dXU01Ja2lwdlFDeDNqNGgxdDlvQk01TFdK?=
 =?utf-8?B?ekVNWjF3V21oYlpXZjVnUFFkelltN0JxVXBjMFRIWUVVd2hjQ0s3Tmphbkxz?=
 =?utf-8?B?N1VtakJvU0dEOWdGZSsyMmRyTGZONG9aWnp2Rm40VlZiZDNoSW4vZVNnRXhW?=
 =?utf-8?B?TUowWDgzRXY3bEJtKzd5M3gxU1pLWGlpZE5mSGd4c25tLzc4RVlyZ0wxNXB6?=
 =?utf-8?B?MFppT2puUjZsTlBORzZDa3piWlZ3MkhXaUJOaGQyYjB4dVU4UE5jMDhzVGs0?=
 =?utf-8?B?cXRCY1BCQVl5R25LVHNmWmxTMkVzcjlBdkZTYVdrTjBISTAwWVc1VUVqVlRJ?=
 =?utf-8?B?enFDbWZ4S0xmbTJLMmdnVDBWdWx4L3BhbmNHQXpwdTYvUTY5WldLSnhDVmlv?=
 =?utf-8?B?ZzZ0aGEwWkphamZ2SEJ4NXpvSzdlWkpuekNZRWZCcFc3bEFJdFlDSXJWTHlo?=
 =?utf-8?B?TzB2cHl0Yk4vZm9WSVArQTVmRDRpZ3ViWk9GYVp2cmVTUHdqQnJBWmhXTDRH?=
 =?utf-8?B?am5YdzBmV3kwSWF1Y0ozV3d6WWEvNVBHbk9LZUdMWG5WY2ZlV0gxZXpaZHZ4?=
 =?utf-8?Q?mtw86iAYvwBzBmnfxhsNqBKVQgf8wZWnBfyqIxMR/dwBZ?=
X-MS-Exchange-AntiSpam-MessageData-1: G13cCcLdbBIUNw==
X-Exchange-RoutingPolicyChecked: NUjGk5rCE890jpg/XNJuIMQ0noWRhL0vv7qT2Vtq38T++SAh5xpQvMD46/zZH4zEtDG+W2aSojKLALfWfHJ3Tv0fOlJzO19jZOw47ABjsbDBnza+1Q7GFo/WROVwsRGGgSAmYOrhYN8NvqV+MJ8qoZIgK1cmlgKqSd2+ZQ6SMp8YVPfJOOrO1XSOlKcJJgYdxJGbO5T9gRVN4A0dI4njSjoepu/uTPggJ0urJ7djxTQNWzwU5kspZmg4dIs3dBz6V8tULYvKsEPA/BqNoZBhHyTT3eJBuI2sRGD+epVA5y5Ios4NVG0ZSnTClU0KPfeiAw01zpxvqJbIjZycZR41mQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bff1ae2-e8dd-4995-9fd5-08de9ed4f22c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2026 12:04:16.7965 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: snOPv3C7PJDt+0boSuanXr3hQJeP78YWtBe2CPkuKbJbAG1M4gBt1NkvxAx+3kVz5p7oAWbM0RglRFBggkcvOP8JduRPBNps2zGsq8PMcos7zcwWIaerkqyCWPvQsd1t
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6391
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8AFBC42A676
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 14-04-2026 02:21, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Thursday, March 26, 2026 10:46 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH 02/19] drm/i915/display: Replace DC_STATE_EN_DC3CO with
>> DC_STATE_EN_UPTO_DC3CO
> Nit: Patch header can be re-phrased "Switch DC3Co enable from standalone bit to DC level encoding"
>
> Changes look Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

I will update the patch header as suggested.

>> On platforms prior to xe3, DC3CO was controlled via a standalone enable bit.
>> Starting with xe3 DC3CO is encoded as part of the existing
>> DC_STATE_EN_UPTO_DC* field.
>>
>> No functional change, as DC3CO is not enabled on platforms prior to xe3.
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_power.c      | 6 +++---
>>   drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
>>   drivers/gpu/drm/i915/display/intel_display_regs.h       | 2 +-
>>   drivers/gpu/drm/i915/display/intel_dmc_wl.c             | 2 +-
>>   4 files changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
>> b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index ec96b141c74c..0afae5c2f62b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -267,7 +267,7 @@ sanitize_target_dc_state(struct intel_display *display,
>>   	static const u32 states[] = {
>>   		DC_STATE_EN_UPTO_DC6,
>>   		DC_STATE_EN_UPTO_DC5,
>> -		DC_STATE_EN_DC3CO,
>> +		DC_STATE_EN_UPTO_DC3CO,
>>   		DC_STATE_DISABLE,
>>   	};
>>   	int i;
>> @@ -999,10 +999,10 @@ static u32 get_allowed_dc_mask(struct intel_display
>> *display, int enable_dc)
>>
>>   	switch (requested_dc) {
>>   	case 4:
>> -		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6;
>> +		mask |= DC_STATE_EN_UPTO_DC3CO |
>> DC_STATE_EN_UPTO_DC6;
>>   		break;
>>   	case 3:
>> -		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC5;
>> +		mask |= DC_STATE_EN_UPTO_DC3CO |
>> DC_STATE_EN_UPTO_DC5;
>>   		break;
>>   	case 2:
>>   		mask |= DC_STATE_EN_UPTO_DC6;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index 6d5f07f7f590..9a948f5e2164 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -773,7 +773,7 @@ static u32 gen9_dc_mask(struct intel_display *display)
>>   	mask = DC_STATE_EN_UPTO_DC5;
>>
>>   	if (DISPLAY_VER(display) >= 12)
>> -		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
>> +		mask |= DC_STATE_EN_UPTO_DC3CO |
>> DC_STATE_EN_UPTO_DC6
>>   					  | DC_STATE_EN_DC9;
>>   	else if (DISPLAY_VER(display) == 11)
>>   		mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
>> @@ -1023,7 +1023,7 @@ static void bxt_verify_dpio_phy_power_wells(struct
>> intel_display *display)  static bool gen9_dc_off_power_well_enabled(struct
>> intel_display *display,
>>   					   struct i915_power_well *power_well)  {
>> -	return ((intel_de_read(display, DC_STATE_EN) &
>> DC_STATE_EN_DC3CO) == 0 &&
>> +	return ((intel_de_read(display, DC_STATE_EN) &
>> DC_STATE_EN_UPTO_DC3CO)
>> +== 0 &&
>>   		(intel_de_read(display, DC_STATE_EN) &
>> DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);  }
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> index 5838338f495a..d0196d4ad234 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> @@ -3044,13 +3044,13 @@ enum skl_power_gate {
>>   /* GEN9 DC */
>>   #define DC_STATE_EN			_MMIO(0x45504)
>>   #define  DC_STATE_DISABLE		0
>> -#define  DC_STATE_EN_DC3CO		REG_BIT(30)
>>   #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
>>   #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
>>   #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
>>   #define  DC_STATE_EN_UPTO_DC5		(1 << 0)
>>   #define  DC_STATE_EN_DC9		(1 << 3)
>>   #define  DC_STATE_EN_UPTO_DC6		(2 << 0)
>> +#define  DC_STATE_EN_UPTO_DC3CO		(3 << 0)
>>   #define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
>>
>>   #define  DC_STATE_DEBUG                  _MMIO(0x45520)
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> index 73a3101514f3..9f403b7820ab 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -260,7 +260,7 @@ static bool intel_dmc_wl_check_range(struct intel_display
>> *display,
>>   	 * the DMC and requires a DC exit for proper access.
>>   	 */
>>   	switch (dc_state) {
>> -	case DC_STATE_EN_DC3CO:
>> +	case DC_STATE_EN_UPTO_DC3CO:
>>   		ranges = xe3lpd_dc3co_dmc_ranges;
>>   		break;
>>   	case DC_STATE_EN_UPTO_DC5:
>> --
>> 2.43.0
