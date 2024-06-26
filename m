Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5BF9177F5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 07:18:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1554C10E759;
	Wed, 26 Jun 2024 05:17:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dNLV09Do";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3531210E759;
 Wed, 26 Jun 2024 05:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719379075; x=1750915075;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=oDEVyFO5yUnw8PVJ/P+1SUkMlq5LmKw69fzIK7+rr9w=;
 b=dNLV09Do/MwLmLjPMRHrFWjxKyhqCzLX4RQ8Lvtwnl8TBi6FDjh21H4I
 iZeqxIMPkV6C89/96L8yRLSuNv0ZGdqAHz2zanVMl7ZcRbuqMdR1oxal6
 Dr98U2rJLipjlRUttOgZj+wiK0euIWvaki7I8gbTvBjfbMCikvSeT8hQa
 cVsp0GRUhuude+d+57PHUF/EjJz6VJHp8JphiXUDWLg6UgbYd2Cj56Zjp
 g3IyGl1svHLKI8z/qSOXO/8LSuXzy7yNa0qdVcmOPaG4cr8nb4xdsI/Jo
 DLXTTJ2fUEVHcVSzyC9ozh+pjw5AO+Sr/1HJgU3EHwiw3CrQY7PmNQU2b g==;
X-CSE-ConnectionGUID: BIsiOqO2R0eYiZNtoE0Tyg==
X-CSE-MsgGUID: yXqCgL4vSkGZnzdKks7fxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="16111982"
X-IronPort-AV: E=Sophos;i="6.08,265,1712646000"; d="scan'208,217";a="16111982"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 22:17:54 -0700
X-CSE-ConnectionGUID: fe2bSw0gTEukNZXnEX8P4w==
X-CSE-MsgGUID: xk7ixxKRRzGpEZ43E4UcZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,265,1712646000"; d="scan'208,217";a="43992210"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jun 2024 22:17:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Jun 2024 22:17:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 25 Jun 2024 22:17:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 25 Jun 2024 22:17:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XR2CjZy2HqPayr378BbKDoVA+T4WZahRMjDOammK7JapKFE1yg7c34g8Rx4bjErJBrEBTXnrpcSFjCmUwEq98KhLjFZthDEKR97q+jFvSjOpd9nPTsabvsaKJYzInD36JxLa+qTlzwosqTLxpGgHc+fEBDA1PAjxyxsOsf0WHB/4pVaw2RpNELw6aN/yFCsFnl1Rqjnz99m7hV0OSzjD07kR66yQJmitziP0aZeZIOA0sM5nnKuUnx8yDwx+HQ0LW352qEdwUELASRF96LPVuTYtDtAFcMz97p672m2FQCpJrvmY2lQ6OUoulX30/xG8IVqP57SVBZLr+Ag43RFt+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=29jme2IXJM/wg1fb/N7AigcW2K+GR+DUmumFKJX89tk=;
 b=LTNBlk/aB9ro4+vSJsleXFoe1f2vfivv7WW5UqEW0tCHxvEqLATQX+Av2UwtJJroi5Srb3O07Zdpk1ri01wllmqF08zYbQQTc349xGZh9Zg+GglLweCWeQo1cdL5vC7ITpQ69ciBIj5hGOahVWJJwEfxQ+Wl4mNup2HKm51kqnZznI8qsm1p/4VbGexXD3pKvVkrwZHNQsE2COa4kWYvFOV4bC+BBWdiQUeez/9jSiKRgszZJ+u9zqh8VpUp3BHEFaJ74zq85Mf5fbZf7TRjZ9A6uD7+YyezWY6NeZByTF823PoGNo8DFTLayYtaHAPUB5r/04ZcoHTGcLkn7Yf5gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by SJ0PR11MB4783.namprd11.prod.outlook.com (2603:10b6:a03:2af::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Wed, 26 Jun
 2024 05:17:46 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3%4]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 05:17:46 +0000
Content-Type: multipart/alternative;
 boundary="------------F0B9bIbBRB9nBLKxsgc0OmXa"
Message-ID: <7a614f71-100c-4554-a3bf-93b9c9e0b165@intel.com>
Date: Wed, 26 Jun 2024 10:47:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Skip programming FIA link enable bits for MTL+
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20240625202652.315936-1-gustavo.sousa@intel.com>
Content-Language: en-US
From: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
In-Reply-To: <20240625202652.315936-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: SI1PR02CA0028.apcprd02.prod.outlook.com
 (2603:1096:4:1f4::6) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|SJ0PR11MB4783:EE_
X-MS-Office365-Filtering-Correlation-Id: a95bf0cd-01bf-45ea-dc6b-08dc959f5040
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|376012|1800799022|366014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T0E5Ym5pMDhqQ2wwT1QzN0FibWRkUVJXUzdjTUliRlVJWlcreFFwVlJjd01O?=
 =?utf-8?B?alNOTEdMMjZMVmE1RWk5SThyRzVrdk9abXpxWHhGcEZUWWNIZjhQY2xEWjh4?=
 =?utf-8?B?RE9jdmtZZDJ3WUJ2TE4wb0JSRE9tQ0t3RTlRMnpWK1NQTDArTno3RFVHU05X?=
 =?utf-8?B?L1NrV0t4c05OQWl3dW5Qc2NPa1ZGb1czMENHQzIyejBNRGR0bzM5S2JscW03?=
 =?utf-8?B?NEtCcXFVcGR6L1dDN3JMYjVTZEN1TEZQYUhwNDdMOWw4OWx3NXhJeW1FOW81?=
 =?utf-8?B?T0EwTTIxVWROYUR4Rm5xc3lycU1yVDQ5dmpKYytFNWp1dTQySkdRU3BzZXpq?=
 =?utf-8?B?bjdNSGJZK1BZeHAxU1B4WlZZQTlpb0d1NzdZbExELzRYUUhESEpablBtWFBL?=
 =?utf-8?B?aTI0Z1FiRXEyWWwwTlZ6N0ZVZEF4ampNZjBxM3ZyWVQ3YmpHRXcyNDJOdW9W?=
 =?utf-8?B?UE95QlFDWnlTZlpwdEJHUmZ3MGYvTUZFVVVGaGI4U3pocEJ1eEFsQ09BQXY1?=
 =?utf-8?B?Sk1ES1lWek9pWFcwYWpwQmcwMjltZ21MT202WmhPZ1E0VHBVeHlsWi9iS01x?=
 =?utf-8?B?WlgrOVMxR2hrRmR5enlpdVBIZjdxMm1uNk10ZlFJMWNzNXUrMFZMaHNHK2xS?=
 =?utf-8?B?SUNmYW82aHd1MS94Y2t5L0hGY2hXS2Y1bjE4dTZ0Q3Y2MnFaY05YeW55NUVs?=
 =?utf-8?B?NTNaSERuNVUzcVh3b2dRQWF5ZFVoMUpCUUVvVHI4VDFYZGpZeWFXbzFRclo1?=
 =?utf-8?B?MXlxSVkvSXBVY2xRbURhTjhPVGFEbkk0Z1JodmhqcU4yWGZ5d3JFOW56b0pD?=
 =?utf-8?B?TGdBOVAvbUtoR2FCQy9DUUkvbGVsZHJyN2x4UjJnZ050ZXhKWlNXMXBLb2hW?=
 =?utf-8?B?MFo5aVlPUE11RFNPK3ZrbCt6WGJ0V3ArM0V5Zm9WbEtMTWRYNlV6a3pHeWZv?=
 =?utf-8?B?R3ZZam9zMGdJeUhJUlNmTm9DUmVIZFhKTE1QaWF6djFQRHVuNGZnMWRFQ3Ev?=
 =?utf-8?B?bXlUaHpNd3ZETjcyK1ZCRHBWaWhHRnp1VWJoQ1k3YmhWU0h3R1ZlL0FKWkw1?=
 =?utf-8?B?MnUvUElCYzV6Wm1ydEtpSllMQWZqYlBsdDZ4TmdManRtRkk2S2x6TjE5ZXZJ?=
 =?utf-8?B?TVJkTXJPRFNjdTlmUURXam9CM2dDdHNhMm05VFBRSW82cDMyY1Z5ekpjd2Y5?=
 =?utf-8?B?ODlhTEU5ZTREREFQcVRWSVZQSFcrTzdKbktLdUt2MjNLTXVRZVp6czRzcmlB?=
 =?utf-8?B?Wld5eDNpR0NBTzU1UkNkZ3lsU1NsVm0vTTBFNFRMdmRlV0w4ZXB2cGUrbVlv?=
 =?utf-8?B?Y3B5TlhCd1FzbEpXYktlY2ZzTHVlakJuK1JSRHRDUFY3V0piWWRFMkJJQVdk?=
 =?utf-8?B?cUJaK0NMd2lFSGVvUTE5NFJ1SXZEWkgrSkwwWlpZTG1FWkJNaW9kVjVJVGdC?=
 =?utf-8?B?dnJDUDVhVDdvNXIyYkx1aGNqUmd1NU5vbUlRMHFPTTZMZmovNC94dFgwcXl1?=
 =?utf-8?B?N1kxT3IwanA1OHliZWVRejhtNEZnVlFDWWs0S2plNUR3c1lzZWhkUytocUtk?=
 =?utf-8?B?TW1OcUFyTnRhTFhRTjdIUmo5WVhUY09ERTBCNGhYaGRRYkFPL01tN013MERB?=
 =?utf-8?B?cFQwR1BRRUhBUlpxanZrb0pCSVpjMm5jZVpCTTl2VitlczlScWsxZEVjaGFi?=
 =?utf-8?B?RzQ3M1NHbjNhRnhTbnlsejViQ0FYdS9KVDF3bE1yQjV1eTFwaFFhUjU0TFR5?=
 =?utf-8?B?T3NySWpMQU9BS2p2Y1RSc3plajQ3SzJKekdsTUxBbk5zeXFWOUJHc1FxQm5r?=
 =?utf-8?B?cDNsMndNeE5LWndrdXBxQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(376012)(1800799022)(366014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGFOanRZdmFWQ1V4cXhaZDJmckhCQ3FpVitVKzc0c00ra1ljKzFOSUplVHlq?=
 =?utf-8?B?NHJHdUVodFJpUm8wMFY2bHVoZk1Rak90ejJlSDBLakhDZDZxVkJoenR0WU1B?=
 =?utf-8?B?dk51NkE4Y3NnWlpaWHVGbU1kOVlyNEZ4WGdRRU9xalRVVVMwMU1sMm9aMGg0?=
 =?utf-8?B?Nm5Gc3FCcHhpa0RyOE90N2RRYWVoQ1JMQlYrZTIxNEI3OHNqazd4bEFycUFm?=
 =?utf-8?B?MlQ2Q0tqZnBJYXFzK1lkQUZTV3dxM1Y1MGNnTnQ3M3oxSGpDQXNRUFptTTBr?=
 =?utf-8?B?cC8rK1lWazBjRWdubXFEVzFBem04d2djR2ppZWNUeDlBWG16WkN5MUhHbWtW?=
 =?utf-8?B?bHZXZHZYRG9wSHJEQ1RqaUY3YWN1dWh2MkZpY016TUZKY215MzF5ZysvV2xE?=
 =?utf-8?B?Vmg0WFVYLzJHa01kdUhRMWdxd3V3VkdlR1RLSkJ3cFVVU2U1UC9iOVVnZzFt?=
 =?utf-8?B?RlI2R1pNMEwzeFpPWEpyNzFOdVpjdDBrMm4zamc1NVA5b3BIMTV4K3pvcDRz?=
 =?utf-8?B?L1J0dHZpd2ZHRVBXdVY5eU1nd2s0NlNjTTd0VWZ1V2ROY3llMkY2S2p0N0hi?=
 =?utf-8?B?UnNUemF1SitrRVNUcVFpUXZzbXNCUG9YNktKdGlBOW82RkRhcU1WellGYnFM?=
 =?utf-8?B?M3lQUGgrV2t2QXFONWI1aGowUjJWMk9qYjZ4Q1JGeVJtR0hWdDhiMjVxSkVK?=
 =?utf-8?B?eXM2SGZGb3VuV0tmZUhnMTBvU2NjWEZBbzd6QzVtRFExMjlrVVZnR3NidEZV?=
 =?utf-8?B?aDk5bTAxOENsaXlZazZHWW5HZFoxOHM5dEE5QXdYaERjRVl5Z0taeUJ2SWxx?=
 =?utf-8?B?ZW1HQ2pBTkNGQmROaU85djl0ZzZUdXowbU1BRlVoYVF2dE53WUhBdjdxSDFZ?=
 =?utf-8?B?ZDRVZHRZRTE0MWxpaFhUZm8rMU1qRnh1Q3ZxRGhaK1BSc0N6cjFYREtjNVZh?=
 =?utf-8?B?SG16ZDZZUmpKQ3d6UGpTK3VIcEFhQ0J1eU1tajU3b1hldVpsOCt3U0Yvb2RR?=
 =?utf-8?B?MUZtOG5FM1NOaHdkRU5MMHdkNW5LdFFpTE9QZTJxZE1zWjVQbk45ejQyNG96?=
 =?utf-8?B?Q3NzTmV4SlhaUkFNMWwrcHhycXNGZXpqS05lVFdRZjc0Y3Q1eWI4OUU0WXdW?=
 =?utf-8?B?WGtPSDB2UDZXRmk0VmRpakg5QnJPZXU4MFhkdFdpSXRhWURHcWx2VGZVNENq?=
 =?utf-8?B?Q012V1htYmFUajZkNjdVYUpuTWxEMEQyNHpuWXV6Ymp2akw0Q1ZrUHJZSEVU?=
 =?utf-8?B?V0trVGR5QXZzbFpqWVZXUXA1dVFqcFhpblV4SEFIQnhIZ3RFMXpZTk9rb0Ns?=
 =?utf-8?B?SkxwZEJUWmk3YmZXaURXdElSK2JpVXZTNWp5UysxZGVneHFsMWhFeGt0d3Zu?=
 =?utf-8?B?bUZmamtGWUlOY3JlNXh6QnAxWFRuVEJMdGZWYlRzM2s3cG9WcjRzS1JvcDFi?=
 =?utf-8?B?MVB4dVFoNlFNQmE0eUpKMHFUVlk4VWpvUHQ5RThhU3ErQlZUTllBWm1Wb2pI?=
 =?utf-8?B?UWl5SmR3Mm1UNTA2ZmRLY1dJclpiZDZmNllxQnUxRGVqR2dnNER6ZmhNV3JW?=
 =?utf-8?B?TkdNaVR4YkpETDhFYUJVeHZwc1VYaVRmKzkyc1VlSzlwaTR0ZmpHdWJNeGhF?=
 =?utf-8?B?VkFEbU1SaGVtMTFLc1ozdTBnSlA2QnBVVlFDYkRMWThpZyszd0RIWGVLV2Rv?=
 =?utf-8?B?M0dQc1RPU1ROOVhHaFNvR08wV2NIeWJLT0xGTXdrOG5jcFdWVWZTN1JjYnZq?=
 =?utf-8?B?YVBiaEZOWjRGYndWUDhHU2FMWHpJSHpoNnhiMy9NOEo5emk0U0RZVGRqNmlt?=
 =?utf-8?B?TGJHSVo5MExjTEszeVBRTThJaXZicjVENWJlQ1dZVW0yZ25xRWswOVFSV2xh?=
 =?utf-8?B?UkVuNXc5WVNQT3RhZHgxU2VwYk9iMFQxN0VYREk0SGVkUHJpQUljNFo2S3BL?=
 =?utf-8?B?RTJRTzg4NU5TVlBJd25mNUo1ZDA4TVBGRzY5QllZZTJUSXA0bm9KRlBLbDhO?=
 =?utf-8?B?eWlOMWJIZTQ0RXord3lySS9ZUE5HcERmMEVsRVNMZ3R4MW5ZbnNrM2c4VThR?=
 =?utf-8?B?VVRLMHdRVzF6bkZKVy9xZU5VWXZSU2dUU3FoaXB3emxIS1FsSXQ1ek5XYXdO?=
 =?utf-8?B?V2JwbVpiOTVsSmNNd01rNFBNK3pjUVNtZ2xsSFVrdlV4RzBDbVpWNWE4SkFU?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a95bf0cd-01bf-45ea-dc6b-08dc959f5040
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 05:17:46.1761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +hAoQKgVVfGFQ78NwtjywIj9K3Ji9Ts99FZJ63svJP3FU3pNeE3UTGXJqzB8+iaR7TQX3POp+9APxYVfnN7g7p4kQPLG8UYHmJc6C+CpTWk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4783
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

--------------F0B9bIbBRB9nBLKxsgc0OmXa
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 6/26/2024 01:56, Gustavo Sousa wrote:
> Starting with Xe_LPDP, support for Type-C connections is provided by
> PICA and programming PORT_TX_DFLEXDPMLE1(*) registers is not applicable
> anymore. Those registers don't even exist in recent display IPs. As
> such, skip programming them.
>
> Bspec: 65750, 65448
I guess, we can add the Bspec page (49190) of the last platform which 
contained the reg DFLEXDPMLE, so as to have a better diff view for 
someone reviewing.
> Signed-off-by: Gustavo Sousa<gustavo.sousa@intel.com>
With above comments, LGTM and Reviewed-by: Shekhar Chauhan 
<shekhar.chauhan@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 9887967b2ca5..6f2ee7dbc43b 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -393,6 +393,9 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
>   	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
>   	u32 val;
>   
> +	if (DISPLAY_VER(i915) >= 14)
> +		return;
> +
>   	drm_WARN_ON(&i915->drm,
>   		    lane_reversal && tc->mode != TC_PORT_LEGACY);
>   

-- 
-shekhar

--------------F0B9bIbBRB9nBLKxsgc0OmXa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/26/2024 01:56, Gustavo Sousa
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20240625202652.315936-1-gustavo.sousa@intel.com">
      <pre class="moz-quote-pre" wrap="">Starting with Xe_LPDP, support for Type-C connections is provided by
PICA and programming PORT_TX_DFLEXDPMLE1(*) registers is not applicable
anymore. Those registers don't even exist in recent display IPs. As
such, skip programming them.

Bspec: 65750, 65448</pre>
    </blockquote>
    I guess, we can add the Bspec page (49190) of the last platform
    which contained the reg <span style="white-space: pre-wrap">DFLEXDPMLE, so as to have a better diff view for someone reviewing. </span>
    <blockquote type="cite" cite="mid:20240625202652.315936-1-gustavo.sousa@intel.com">
      <pre class="moz-quote-pre" wrap="">
Signed-off-by: Gustavo Sousa <a class="moz-txt-link-rfc2396E" href="mailto:gustavo.sousa@intel.com">&lt;gustavo.sousa@intel.com&gt;</a></pre>
    </blockquote>
    With above comments, <span style="white-space: pre-wrap">LGTM and 
Reviewed-by: Shekhar Chauhan <a class="moz-txt-link-rfc2396E" href="mailto:shekhar.chauhan@intel.com">&lt;shekhar.chauhan@intel.com&gt;</a>
</span>
    <blockquote type="cite" cite="mid:20240625202652.315936-1-gustavo.sousa@intel.com">
      <pre class="moz-quote-pre" wrap="">
---
 drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 9887967b2ca5..6f2ee7dbc43b 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -393,6 +393,9 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 	bool lane_reversal = dig_port-&gt;saved_port_bits &amp; DDI_BUF_PORT_REVERSAL;
 	u32 val;
 
+	if (DISPLAY_VER(i915) &gt;= 14)
+		return;
+
 	drm_WARN_ON(&amp;i915-&gt;drm,
 		    lane_reversal &amp;&amp; tc-&gt;mode != TC_PORT_LEGACY);
 
</pre>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
-shekhar</pre>
  </body>
</html>

--------------F0B9bIbBRB9nBLKxsgc0OmXa--
