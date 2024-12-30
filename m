Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3B39FEA26
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 19:55:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B76D10E578;
	Mon, 30 Dec 2024 18:55:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C9Gvm7vM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D2A810E578
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2024 18:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735584939; x=1767120939;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Fv5yiYOYYov72VhpCwVEkfymMHHysILWUgsk/JBIyGw=;
 b=C9Gvm7vMLaalIcSQimOnJib2z9sWQV4drm+zWHPxeY1fOe218tNd9qyu
 k8KaFO+dCmd3AoqvgSm87P4IKqFMx8NiXvHG0g+sz/y+YZXa8JpwT2IEN
 2swKK6YXmqzMZWZrVeA7PZoRh+vKEBrS6lHivP27KSCAoPVYSUa6UYIpw
 Y2vEZk5xCsIhGAWGd5N1yDiCnmHEx+TTTwmIXmdqQKLXQ3NcbpLuZXjjx
 SrEJjbc/xzOoUV5JC64WTwXxniJ5JMKhoRiPoF/7wXNJGTfsorPse6Wwz
 ip8BeDEFi4UbdIWEhLo60T64eZNLalitld4UmtaToRPNnDmrHYbfLgdSL w==;
X-CSE-ConnectionGUID: X8UXUIlLS8ytRmkNHqRl1A==
X-CSE-MsgGUID: AefewOhnRG22VU4n3hqDMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="36098158"
X-IronPort-AV: E=Sophos;i="6.12,277,1728975600"; d="scan'208";a="36098158"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 10:55:38 -0800
X-CSE-ConnectionGUID: 0mFp+0aJTY2YOdhHnQu6sA==
X-CSE-MsgGUID: 6ZhX1PPCScyQvFyUFJCjPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101352196"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Dec 2024 10:55:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 30 Dec 2024 10:55:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 30 Dec 2024 10:55:37 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 30 Dec 2024 10:55:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bVL4WXlMx2rheYD5UeojMGi+wliqOB/pbG+chFEnK7cgWe5CgoE1EPpUbMubdRgfSU8LnXDy/YQAGEL9TEeEea3j09/YUn/AhLaNfcz5S0043QjuwBqSH9cTB4qwMLKkaauUikaT18UXRAia4XDGIMmrZN4R9CPrAILK4PqICaGhXDDWwwVL/ymgDsQ+aStsv3Vluw4Y8dfGSez3fKx+Wyg6xReJPBBFJlUINHZnbMnuDjg4nv/rHlhmUj8h31j1jsRaRKW8G9FgD+1Fjsk8fxP0yl7G9LX4IxzNW2vllaGxzLx7/a6EbPeMjtGQZ8yHzMjQdr+kkilTgVDdWJDTvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CHufn0LRr4f5LJgLEayiI4BaTSzc/veNItWZg2T1xiY=;
 b=M8IxZvcNrun8EZUo9Dn9OfPs0sA7Evxl2TGtFY37YCo8TA0kihDw/xaKM5A/zHIESw/gbpeLlU1vWtjXWStIq3QBX6w4yExdzSHG3QmWi8GmAJGxCoFrSrdEIxO8bxUMrFGb72LnSWJ/2VvLJplQblM9z1jxIL+ne6+ePceKXxKzSUlJKXRoZao0AStPs4zFmMy5q4/cU6FI57mZ2OPO8c5xUqGOfOZSU67T87lnnnZzxVV4O+xfoOwT7/BbeqGmzpNMrPsCZvuLnH45pminy6NUtNO8z37pSdrixEVNdfhk0mlqhXUCwldfxSUlueWP4DSTluUP+62vhsg5upreNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 IA1PR11MB7919.namprd11.prod.outlook.com (2603:10b6:208:3fa::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.19; Mon, 30 Dec
 2024 18:55:31 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17%5]) with mapi id 15.20.8293.020; Mon, 30 Dec 2024
 18:55:30 +0000
Message-ID: <e77be6da-6d7c-4a95-af14-d29d14c7c93c@intel.com>
Date: Tue, 31 Dec 2024 00:25:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Remove deadcode
To: <intel-gfx@lists.freedesktop.org>
References: <20241222174751.222975-1-linux@treblig.org>
 <add92c9e-a5d1-4dc7-91fb-0eacd93b5a49@ursulin.net>
Content-Language: en-US
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
In-Reply-To: <add92c9e-a5d1-4dc7-91fb-0eacd93b5a49@ursulin.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0067.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::7) To DM8PR11MB5624.namprd11.prod.outlook.com
 (2603:10b6:8:35::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5624:EE_|IA1PR11MB7919:EE_
X-MS-Office365-Filtering-Correlation-Id: 8012ee61-8cee-4fa5-1df0-08dd2903884b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N1lIVTBvcjVidUVVN1hTODdoWG9JN3pIVlpwaTkvbFQybDFIOHlsRkxkZmxa?=
 =?utf-8?B?ekFxN3N6a1IvRkR1YjNlR3pKNHVrdXFFQlliWTBKazA4NmErMFJyNFp6NU02?=
 =?utf-8?B?aC8wTzdHOWtTemtTRnRpUGFvVjZ2d0MxUjBaUFNxSzQxTjdYNWIzanZtODFx?=
 =?utf-8?B?eWEwZjg3Q1d4Si8yR1lJUGtXYmhkSVdlOGd1ajkrNmFUK0FxRWtCSi9ROU82?=
 =?utf-8?B?eFh5V0pyM3hCTXAxZXhPMlJsNENIRzRlZm95NmV3VzVSWnRRc2YwcXhmVnNv?=
 =?utf-8?B?VjdJNmg5QkZvSnRKQWZJV2pxeSsyN3lnTjd2ZkMvK3VlSnlKcUlRclBtZE9j?=
 =?utf-8?B?TnFvaVpobFhiL044TVpVellsM3c4WFBOTU1LOVVsdXhBTnBJcU43djEyTTVF?=
 =?utf-8?B?VlY2OWZKdWdTNU5BbHRqSTcyL0Mza1FLVVlGY0REakNVZmpMMWR5R2x4Wndy?=
 =?utf-8?B?TkozRVhVUHRYVUhKaVUzR252T0ovL0hSYWlsSkZEbTRwendnMW5HNEY0MlBO?=
 =?utf-8?B?d3o4MnFTeFE3QVpPSUxlRlBZd1c4cG1CTy9Xa1k5K1hGTllvRVNnYUl0RStU?=
 =?utf-8?B?SVBUN3I4cUYyUG1GTjQvRlFXSW5JNm9rVkxmaTBTeTBuMER4Wm01V2VFTzNO?=
 =?utf-8?B?QXZYODVlWjk5RUU3ckM5cTNld1I2aURVT0c5Y3NwTGlkOE1janNzMVBpQ2hr?=
 =?utf-8?B?V25qV0FGK0pOU1UrTklqMU9IYzRYYS80L1Y5TDJmWVd6ckFDalhyMS9MQ1JM?=
 =?utf-8?B?Y0NnaHVlUXJnaWJFM3BjVjNKVythRlNWQnpld0Nadi9vbEJOanc0Sm1tZDM0?=
 =?utf-8?B?b0lHaUZQRjNnRlExMkJwaXUyeEZnenk5N3diN2MvYlE1R0l4TEVwUGxndTNL?=
 =?utf-8?B?dGlSeEQvNW4yZktPUUg3TTVHZEMxelViNGJaVUFHTW9xMEo4K2lrZDByY1FX?=
 =?utf-8?B?c3dhS0tXUEpONjBKczF3c2R2VmRMSVhnVVpWVkFlVU9FdWR2TXZaTitQV2Qr?=
 =?utf-8?B?S2lyd21kbHRMdGJOSXgxeWlSQUF6SkhQb2FsbTY5a1RpUGlOQW9oR2tkcnVY?=
 =?utf-8?B?ZVNwVktDZWVhMVU3ZjB1b0RsSVFkdXJrS2pMWkZGZVJGQzVkNEE0Sk1WNWRS?=
 =?utf-8?B?ZmU0cTFxdnZGU1BLMmNtcHB6cjArN3E5ZHI0RCttajlPMWgvQ2tlUU0wRmZz?=
 =?utf-8?B?d2ZETVJzRkM2Q0NkNmkrZEFWMzRFS0RZb1dkYjdaTWlJUjY3c0FJcDBjSHZF?=
 =?utf-8?B?a3dnVGdLdXFFWmVhWE9kcE9FYVpFKzJHbnlrSUl6T3crQnlpekFFWjAxVVJi?=
 =?utf-8?B?VUt6dC9OZ1UyT3dieWwwRVhlM3pveEJjcTNOTTJldmJadDMyUUJWMWkvR3lB?=
 =?utf-8?B?SE8zSEZpMXlCQ2FtZTQxWkh1M0hiNWUvL28yMkZMUDl0ckpzVzhVWlRtbDdN?=
 =?utf-8?B?UHBpK2JDZzdZeHVzbDFmZjczZys1ZFdmczE2a1hLSW1ZdnBxOTQrL0JtUGJj?=
 =?utf-8?B?WThPeGdPZVZVSmJSdTdVNkgrNWlUY0gzdlFiYjBwZEVMaCtNdnJlT3ArVm1i?=
 =?utf-8?B?QjdhWGt5N2dFZEEyWjlWYTJ4VDJwNEI0b3Ztc1YrWk5CdjFBbVA4SldsMUly?=
 =?utf-8?B?ZzlPaEZhQmdCK29ERXNnbjg3UFBMWUtkaUhOdkZkTjkxWjRwWC9MSEdDNkRs?=
 =?utf-8?B?RHBpNGhmdzFrZVJSVldJZ25KalQvV1IxZEdSRUp2VnEvMWs5V3hHR29yWEY2?=
 =?utf-8?B?YVlpT2xzRTVnK0xSamVkdXJPNHRFVEFYQUl1cmF4UUtqa0dWTUlWM051RnRv?=
 =?utf-8?B?M1JtNzhZWnNhN0RCRTBwV1lLUGppajVONTBTbldkenVxcGRWK3Z2cUcvZHlU?=
 =?utf-8?Q?1tjoFViayZvXH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clptb3hOVzU0a3dkSnRZVlVtN1BkNUp6bG9iRndOdUJ4NzRxZGNtMnlFS1J0?=
 =?utf-8?B?MXJGSy9ja3pydDNYRWpiVTJaaUdBNG5CZDkzSmVyRHlnVHI1WW5rTXV4Umh6?=
 =?utf-8?B?WnFhdVZwc1BINEF6L1dEVUIxOGNkMDIralZhUFdOQmdUSUxWYzZMZjdmaWIz?=
 =?utf-8?B?VG94andsVDh3dGg4OUZBeHI5bmlRNVNzVW1qTS91VWVoQVRnLzhsZEQ2c0kw?=
 =?utf-8?B?cEhwOXd0WEZKQzZKNXZia2hFSjFUWGpmdUxJVDFLa1FQZTM5Rk50NSt2SUZL?=
 =?utf-8?B?RUVnSFNncUllZ2lxN2RoZDduc0VORWUyQ3RnRWpSN2JTQUtHR1hTL0p2WWpW?=
 =?utf-8?B?ZDFIa1hoQUV3KzVzbzVZaWhuYUJIWkdjWnlCZHFEMmJjaUswcVpWaXBsSkt6?=
 =?utf-8?B?MlltRk4xNysrbWJBVGdnd2xVSjZIS2FKUXczNlhaRmpYTnRFZGhReTBVZG9X?=
 =?utf-8?B?K2pQQ0pyMy9tbUlvNkQ3TmllY3F4ZXJsVFFBVldndW93U0tMT21ZMENOZU5T?=
 =?utf-8?B?VDBVb1NjWmhEZzVvczdNSjJ3d2Z0aTFBa3NVeTJpQjRiMkZVdmNvVDJDYmVU?=
 =?utf-8?B?Vks3U1Z4cGFRWFpDTlduUmVLMU5wME9JKzc4TXc1VzBKOUVERDJHRGE2TE9m?=
 =?utf-8?B?ZU1VQ1hoSmFkRXVzeGZLU3lvOXlsYXFkak9YTmx2TEFreUxRTGVnbjJwazRw?=
 =?utf-8?B?MjY2cVhHVnJwRWlLUyt3aFRTcWxKMnZodVlDM3d1S1YwcDBUTmFkcjhFRTJj?=
 =?utf-8?B?bUdYR1F5QTRacGh4eTE2L09OREVxYXAzNnVzaWFXbWlQenNSNGpBcFJZZ01V?=
 =?utf-8?B?WlNsc0hpMFhuRHNibU5FdlFzR2hKN3FHcjM2STlYVllITUd5eVQwOVpNSzJr?=
 =?utf-8?B?bUhCaG1sR1VDcU16VkQva2N2aFpEQ0hMMVNsSFdqbWo5eFBySWtIRk1vYWhi?=
 =?utf-8?B?ays4eWY3RlBlUmZjbUtvNE1QT3plcnNlV2hlam5aNytENzU0ZC93QjIyWnB5?=
 =?utf-8?B?eElEVjRGVDBGcDYyRjZscVlxVjMzL0lqSmpnSHRNbkd6UDkyQkRLRWc5RHQ2?=
 =?utf-8?B?cDVtUThTMS9UNlVnSDVhSGFML2pyNnBhRjhRRnFuVlJxYjB2V0h6eFNTOEEy?=
 =?utf-8?B?ZDVQK2szbWRCU3A0T3NsbER5ZU1aMmpjNE4vakdSWnRNQ3ZhbHFoaFQ2YlJT?=
 =?utf-8?B?a2VNWWdQVnVRaDQwVzRZY0JKVFkyQlp4WjJnVTNMT292cnF0N2VINEN2cCtK?=
 =?utf-8?B?b1AyYm5IZ3BNa2dpSTlVUjNOVVdtVEovYkNTMXVMM0twQWJEc1hGcjM0Smly?=
 =?utf-8?B?amJVNnd3SnBGcjNJYU1oZEI0Z21DUzlFendsL0g5ZjB0aE9UbEZySVlzNEhB?=
 =?utf-8?B?QmZqNDVIZTgrRVZQeHhidDBxSUNwZTdqMVJ4RTdSR1l5bHZuK29HSC84MTUz?=
 =?utf-8?B?aDV2Vm5wQ3Y0cHQ0UlBYdDRGaFIzREJKSEZXc2tNcGkrVHhGTFI2VlFFNEZN?=
 =?utf-8?B?aTNpZkoreTZtY09od0t5SmRaTXFjVlJpUmUwTEdqeXVpVTB5VTlFbWVsU3JM?=
 =?utf-8?B?NERoeTBCMGhKc2RFcHJscWRBc1NhVlM3Q2I5VFIySDBXVk5UYlJXNU5UNnd3?=
 =?utf-8?B?M3JlTHFNNmx4REF3aVN4dzJGK203Rk84MWJDLzQwakdLT1VxOXZnRnhGMC8y?=
 =?utf-8?B?UGFzLzV1OEhobDdIOFNKbS9rNGVlNEFwem5wcGVyY2l3WFBLQkpIM2VRZ09l?=
 =?utf-8?B?Y1AyUFEyQmhxcWZOUTRMMkdaU2hyOThkTFkvRHRvNkc2Q1lDbHNGbytRTzhH?=
 =?utf-8?B?R24yT2FCUkdwMUlEb3BzeHNEeUY4bUZvZjROR3dUOWFhVmlhT2c3WmttcDJY?=
 =?utf-8?B?eGU5RlJubHE4ZmIvak1hcm9GSXVyUUY3MEUza0QvdG8rQmF6Zi8xcVVXaDhG?=
 =?utf-8?B?OVhxMGwvVlVDQTE2MmE5VjMxd2VMcEZZQlJ2YnBmdjh0MnlFeHNRbGVud3VQ?=
 =?utf-8?B?UURBbmZvUy9lbGZYdi9jaExIQXZWbHc3ejJaaGhDRWM1dldsakhYYzZuK2lV?=
 =?utf-8?B?Z3VSQUlnZjBMbndDczJvdHFodllTV3JGZ1BWSnJNTnhEeTIwY0lBdlBaQmpp?=
 =?utf-8?B?MlRjRW5KckNIOVp1RXVwYWRrWHVXVFhESUIwSHJyaEpVZnVCYlY4VjFBL0JI?=
 =?utf-8?Q?XDclrW3i7kkbEeHOiaI/I08=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8012ee61-8cee-4fa5-1df0-08dd2903884b
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2024 18:55:30.8133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nQvZHmFCr0y1TWCzVIfk7kjv4q6L9pvnTde0pgbyaaoKLAbMldFfcauDoF2teVtZ9TaJTINrMewCsUEbA+jJT0N68WAURPqAOY+V9hURajU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7919
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




On 12/27/2024 5:10 PM, Tvrtko Ursulin wrote:
>
> Hi,
>
> On 22/12/2024 17:47, linux@treblig.org wrote:
>> From: "Dr. David Alan Gilbert" <linux@treblig.org>
>>
>> i915_active_acquire_for_context() was added in 2020 by
>> commit 5d9341370f57 ("drm/i915: Export a preallocate variant of
>> i915_active_acquire()") but has never been used.
>>
>> The last use of __i915_gem_object_is_lmem() was removed in 2021 by
>> commit ff20afc4cee7 ("drm/i915: Update error capture code to avoid using
>> the current vma state")
>>
>> Remove them.
>
> I plan to apply this and your other two dead code removal patches. I 
> needed to re-send to the mailing list first so they get picked up by 
> the CI before I can do that (I guess you are not subscribed to 
> intel-gfx). It should happen in a day or two. Thanks for the cleanup!
>
> Regards,
>
> Tvrtko
>> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_lmem.c | 23 -----------------------
>>   drivers/gpu/drm/i915/gem/i915_gem_lmem.h |  2 --
>>   drivers/gpu/drm/i915/i915_active.c       | 18 ------------------
>>   drivers/gpu/drm/i915/i915_active.h       |  1 -
>>   4 files changed, 44 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
>> index 3198b64ad7db..388f90784d8a 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
>> @@ -52,29 +52,6 @@ bool i915_gem_object_is_lmem(struct 
>> drm_i915_gem_object *obj)
>>                 mr->type == INTEL_MEMORY_STOLEN_LOCAL);
>>   }
>>   -/**
>> - * __i915_gem_object_is_lmem - Whether the object is resident in
>> - * lmem while in the fence signaling critical path.
>> - * @obj: The object to check.
>> - *
>> - * This function is intended to be called from within the fence 
>> signaling
>> - * path where the fence, or a pin, keeps the object from being 
>> migrated. For
>> - * example during gpu reset or similar.
>> - *
>> - * Return: Whether the object is resident in lmem.
>> - */
>> -bool __i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
>> -{
>> -    struct intel_memory_region *mr = READ_ONCE(obj->mm.region);
>> -
>> -#ifdef CONFIG_LOCKDEP
>> -    GEM_WARN_ON(dma_resv_test_signaled(obj->base.resv, 
>> DMA_RESV_USAGE_BOOKKEEP) &&
>> -            i915_gem_object_evictable(obj));
>> -#endif
>> -    return mr && (mr->type == INTEL_MEMORY_LOCAL ||
>> -              mr->type == INTEL_MEMORY_STOLEN_LOCAL);
>> -}
>> -
>>   /**
>>    * __i915_gem_object_create_lmem_with_ps - Create lmem object and 
>> force the
>>    * minimum page size for the backing pages.
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h 
>> b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
>> index 5a7a14e85c3f..ecd8f1a633a1 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
>> @@ -19,8 +19,6 @@ i915_gem_object_lmem_io_map(struct 
>> drm_i915_gem_object *obj,
>>     bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);

Is i915_gem_object_is_lmem() also should be removed?

Regards,
Ravi Kumar V

>>   -bool __i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
>> -
>>   struct drm_i915_gem_object *
>>   i915_gem_object_create_lmem_from_data(struct drm_i915_private *i915,
>>                         const void *data, size_t size);
>> diff --git a/drivers/gpu/drm/i915/i915_active.c 
>> b/drivers/gpu/drm/i915/i915_active.c
>> index 35319228bc51..0dbc4e289300 100644
>> --- a/drivers/gpu/drm/i915/i915_active.c
>> +++ b/drivers/gpu/drm/i915/i915_active.c
>> @@ -527,24 +527,6 @@ int i915_active_acquire(struct i915_active *ref)
>>       return err;
>>   }
>>   -int i915_active_acquire_for_context(struct i915_active *ref, u64 idx)
>> -{
>> -    struct i915_active_fence *active;
>> -    int err;
>> -
>> -    err = i915_active_acquire(ref);
>> -    if (err)
>> -        return err;
>> -
>> -    active = active_instance(ref, idx);
>> -    if (!active) {
>> -        i915_active_release(ref);
>> -        return -ENOMEM;
>> -    }
>> -
>> -    return 0; /* return with active ref */
>> -}
>> -
>>   void i915_active_release(struct i915_active *ref)
>>   {
>>       debug_active_assert(ref);
>> diff --git a/drivers/gpu/drm/i915/i915_active.h 
>> b/drivers/gpu/drm/i915/i915_active.h
>> index 77c676ecc263..821f7c21ea9b 100644
>> --- a/drivers/gpu/drm/i915/i915_active.h
>> +++ b/drivers/gpu/drm/i915/i915_active.h
>> @@ -186,7 +186,6 @@ int i915_request_await_active(struct i915_request 
>> *rq,
>>   #define I915_ACTIVE_AWAIT_BARRIER BIT(2)
>>     int i915_active_acquire(struct i915_active *ref);
>> -int i915_active_acquire_for_context(struct i915_active *ref, u64 idx);
>>   bool i915_active_acquire_if_busy(struct i915_active *ref);
>>     void i915_active_release(struct i915_active *ref);

