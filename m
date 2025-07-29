Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE03B14F4E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 16:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06A3B10E210;
	Tue, 29 Jul 2025 14:34:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KmzEuE1I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A8810E064;
 Tue, 29 Jul 2025 14:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753799672; x=1785335672;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ztrx5gBTe5NVQhgzu0qoZCJigdkY9GtztCS/hkjzyfk=;
 b=KmzEuE1IAcwVsxkq0nUW6CvYOX4x/loYsH+C9OwgSWWHBG3PvMnhtdfX
 F/phPc0mB66lUwjd9WnCQCoGkoPmAb7Bfk5r7oDKn4n5B6kpW4DQUSCtD
 b5XbgagvOy41qAplpYen3FZO9oKwtIKamLrF03YbmtqL7tQEspjTPpPVL
 KNV0Oc9mR+wTz1LkK0ra1WciaXwDcl2hXmJ4i4s9pObNkXDXKdyWOHBCl
 43OG/N9ou2hXS/zuB1G0L+/XJiMEc6CuteglKJGWMV/JdRYwzQk4i09az
 fKGMXqZ//fbAK27ffNHeegF7fS6zSv0T24o13/iWbcVBBEae5ItGDtyhm g==;
X-CSE-ConnectionGUID: q3TN2K7jTzaK+0C/n5m/aA==
X-CSE-MsgGUID: 3ur12rXvSdSjspNLcyYKcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="55958610"
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="55958610"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 07:34:30 -0700
X-CSE-ConnectionGUID: 75A5WrhMSYK6pIMLyvjteQ==
X-CSE-MsgGUID: fNmt1N3sTXKy7sCDab8Uwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="162295119"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 07:34:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 07:34:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 07:34:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.43)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 07:34:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DUHSEXDh/EstBPLlqq8Eh7h4rbWEXPIB0WHDrs6WKRTsX6iU0Z1AIFdwpuT8Xjt7qPHoznQc9kiUTLEsnSy47Y7xJSdlNKjsV0H1iM9XCnaNWp5377gdX88qvg+CJCs4UpGj2EqAkQo3zhL9bImk8ZmN2h9l5crpG0Cz30y5ZhZa9z8k32kwFcwnGB5e1i+481406d62RTBgnkXf2oWvHhyT5UXEYitTfxCE4XZ7yCS2/dJtSyR6g70iNzpCeRisgRaSFtn/xstvk7d9shT2GjJ8M/kDxaS1b6B18SA90SpXwd7ixHens03D1ilrfasw4f45NwjXzp9vRtjHuJ9ogQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rUwcH0AP066rRXsjRoVrCquf5CYFPhvq6mGB8Zb+9N0=;
 b=x18rdkkUBNwy47EmsE5OF8HXUc8yXrU6hEnJ+aVXZjtS47FsI5O5HeGHQcCppIjFSHtEuTNCEYFpyk/MHTg7BKNXotTi0CYupltYVwiPp7FNGXuC3hiyznXDoWcWYLq69lwRiq/ZAc3R/j38cmuonLzbMbIUhOi6P5LO2goW5hFnZt1tdQF8+RY95Cxnlgu4d3JA3RU2U8tXFbSYW7Vu4jWVZOYwh/VEZRdUkgknjgCVHf8zfYoNJSz8IDrhy745lVnJnkNf68Ra348jxjP6sJKr75c4XgocfZTBVDB2Mggic/Radn5F6j5tuB6Pcsc6c2sk2E4UIm8yanW4ka8Tcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7175.namprd11.prod.outlook.com (2603:10b6:208:419::5)
 by PH7PR11MB8276.namprd11.prod.outlook.com (2603:10b6:510:1af::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.24; Tue, 29 Jul
 2025 14:34:27 +0000
Received: from IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::21c:1228:5006:c7ed]) by IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::21c:1228:5006:c7ed%4]) with mapi id 15.20.8964.025; Tue, 29 Jul 2025
 14:34:26 +0000
Message-ID: <73db4cd8-1c5d-4500-811f-2a74e14be7f3@intel.com>
Date: Tue, 29 Jul 2025 20:04:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] drm/i915/display: Optimize panel power-on wait time
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <arun.r.murthy@intel.com>
References: <20250728051237.2322256-1-dibin.moolakadan.subrahmanian@intel.com>
 <018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com>
 <22f5e747-a7d9-4c7e-a132-3a64cd52e6a4@intel.com>
 <ca3b32f7b594383d07476efd84ac40dadfa34f08@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <ca3b32f7b594383d07476efd84ac40dadfa34f08@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0101.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::11) To IA1PR11MB7175.namprd11.prod.outlook.com
 (2603:10b6:208:419::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7175:EE_|PH7PR11MB8276:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ecec2a4-be34-4ce3-6e56-08ddcead04f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a1pJcjdJSElqTWRYQ0w3U3JLdUdyaHVsdWZkRlZMdEVvR2hWNWlnNjJlZll5?=
 =?utf-8?B?MlMrSnZuRWJaRlJtenRkS1RWWVpQajlPYldKa1A2aHh1bUxaakdkdHlob0pX?=
 =?utf-8?B?SU9MQXRwT3BqNFl1dUpGK01VaWJaVWRxMVpqck1zT0p3SlVUL1M0Z0xMM1Rk?=
 =?utf-8?B?bjY4VnA0Ny9Ibk1wdmVJU2VzbHQ4RHdIY3plNzdxNENweURKdmpIQzMvbUhx?=
 =?utf-8?B?WWZ5bUJqbWFldmlFQ29qY0FsaXY3a2VVQ3JMN3o0SlhyM3ExR1NXUTRMS0Zz?=
 =?utf-8?B?MEZTdDVmNG9GUGVEWFRKQ1ZGVnVwNndYZndFdXhEU1FrME5LN1VKUlRISXE4?=
 =?utf-8?B?TjNuWUVqcks1bDdoZmRMRUc3UHhMSEpsakFucWR6Mlh1QzVONWZXUGRmd25R?=
 =?utf-8?B?Z0F5R2hwbTZwN0pGNDRvTzlNMEdDeExQRVNldzRTa2R1ZlhHckNUc09YSDRK?=
 =?utf-8?B?L0VoaFJVb2Y0VkhPOVp5Vmp1bUEwdmtLOUJOWGc0Njc0YjZuKzVKTU5aZGdm?=
 =?utf-8?B?WHpEMnkrSjdSMzJVUHlibU9XOXN3VDdsbmNXQ1k2N29HQUt4THkyRkxSbnFV?=
 =?utf-8?B?d2FwYWJvS0lCSlFyRHlYZ05vRm13aVNtcTJ2ZkZ6dWxEdHNrOWRCRU0zUXZT?=
 =?utf-8?B?elRqaEtvLzR5ckVzbmh3R1NlM20vdlFFQjFEVFl0cExndHBNWVVlTTJzdUFE?=
 =?utf-8?B?QmtYMWpES1ZIbkgweitIcHpoUUQzaWZKQUtxRzMrd3VUMzY4eVBpY29uV1V4?=
 =?utf-8?B?WHQ3bU9YeElWVHpXUlVEZy9sYlFRekpCWGpxZ1UrTk5ja3UxUGdzZFczcHBU?=
 =?utf-8?B?RDRqbldISTV5a0pITTgyWlZodDhRTFpDc2VJRTZMdE9xczRtWnhBOFcrT1NT?=
 =?utf-8?B?d3dMcmpyVDJJUnI0SjlWUUI0VER0bTB6c2ZHZEpCeGZGSHdWOGZvVVlVaFk4?=
 =?utf-8?B?NVFCV0g0NjE0U0YrWTFza1Rxcm5ibDMybWJVVTB3TmhTQ0N0Y3dPOFEyQmRs?=
 =?utf-8?B?dFRwcW1Gc0NuRlp0Q0lRenR6WlBybVJZK01hbWswZGpTWlRXUjBScDVuekZi?=
 =?utf-8?B?UERQaEV3Wm43SmxhU3EyMWl6WTgyN1c0V1hEVlQzV0VSNHQzMHhpOFIyQlhU?=
 =?utf-8?B?TmdVU0wxZzUwZTdBeitsRzVvQU5kckpQd3lFME1jWXlSQkF6UGh6dWY2ZG15?=
 =?utf-8?B?ZGtuWHJaVnBVaTNuVktoWjFxQzcvL0ZVRHNrRlhrYndiZ0Y5Y1MvRVdXWnZa?=
 =?utf-8?B?bE9tSUpWZ1dnWVk3eDlNaVNwVHhyQW83LzBxNjFRb1BPcFRyR3Bac29ZZWJy?=
 =?utf-8?B?Q1NzN3N3eFhuZ0RURHBmYjNLcG0zNHl6RU94eDVpQ0xVMTVNRXA1UUR3akg1?=
 =?utf-8?B?cUhxOElLaXp2S3dLcURZd3dOdlprUkpaN01Db3RteWExcDRZUDQ5b2xBdTV6?=
 =?utf-8?B?b1p5SmR5SXJtNkZIMUNtc2RhYnFjc2RPeXNYZ3dyaTIzVEhxVlo4d2F6UVNR?=
 =?utf-8?B?TXZPaDlvMS9nN0VMVVhFTi9KSDZVdEczTjN3bTV5SnNkbEVxeHd1bGtjeEVC?=
 =?utf-8?B?MzBKc0Q5WFJ3NitDZHFmamc5YnZ4eGdKaDNpQzZsZHJYL1lYQTdGaTRDeEJz?=
 =?utf-8?B?SVpycUVHV21VZ21zbkw2OVA1VGdqaDc0NlhhNnBRdDJiclNaZHMvVVdBbGxs?=
 =?utf-8?B?aUtXa1JHSGFpTmVMWTlHMndFS1Fuay9MTHhSU1ZTeS9PaGl3blBXUzJLTE40?=
 =?utf-8?B?UW1HNW9pRGRCakpCU0VXdGJUU1NUdkRobVlOc3ZGU0Jaem5pSWFDYytSMm5y?=
 =?utf-8?B?RHVzSmJobVJBMHdIblo0ZUk1RzFPYUNSQVBqcDllWVBuZE85YUE5ZXMvUXlU?=
 =?utf-8?B?clVRbE9OQzZDU3RDZGlPTHY2cHVFQ29wcmRMOFppZU9LZGc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2M2czUxNUNHMHV6ZWxPaHNmazVXaEl2OWJUUDloUDNBS3RrcldsQjlkSkwv?=
 =?utf-8?B?ZHZnUlcxQlhqYW0vdVR5Y1dGQVVqakNrdWk3Z2twSFY3dC93Rk81N2xvUVpD?=
 =?utf-8?B?U1Z0eXkwblJoam9FQm5kL2VjY0drbjh3ZGNRYTVCR3kzcVpqZVI2bUZRb01a?=
 =?utf-8?B?R0NXU3hUYkNqSW4xS0tLKzhteXVPV3poa0xoUktLTWRrd2wxcGU2ak1DbDJx?=
 =?utf-8?B?aWIzM0ZsNEt1ZXNIcGxTQ2UxbFFscUY3aGpvSDZVRVhzbGR6UUdiT1pTdmJi?=
 =?utf-8?B?K1ZCWWtUWENtWTE1c0twWkhiOUk0ai80bHN2MDU2cG4vSVB6M1ZWNHBWMjJF?=
 =?utf-8?B?WGlQWDNsc3AwZHMrYjNRTThUMGRnK1JOQ0tQWktEb1dlTUpiY2M2NUdBKzJ2?=
 =?utf-8?B?OENRZEdDN21wUGxLRlJRb01SRDJ0UyszYVRTMXBvd1ZYZzFCUEIyNHlScFJr?=
 =?utf-8?B?S2JyUy84YlFVWmJPcWpXbGFmdkcyeGJ1UTVhTHJWWHRieHFpY3M4ZWxqNmZl?=
 =?utf-8?B?V0RnSStVQ2w5YTRCVm9VSG5zcVdYOVZvQlhCVU0rOE15MkhDUTZHRkMrVTZD?=
 =?utf-8?B?cVNNZU9RZXNTQjNhQkJLNWdRbURlTFRFZjFrSG83c2cwaFlKZlZQdkhhMGlk?=
 =?utf-8?B?eUpSMVhWQVVSSEZGNk5CSHJEKzVnWmREMUNWLzlLeElnS2ZubUx0WTFEa0hC?=
 =?utf-8?B?K1FZYnVvd2hqSnR3RmJqME00bDhYZ0xZSnVRRFRpU09Yc09uTS9URVJyV0RP?=
 =?utf-8?B?WFFod09GYmJOVHJ5V2dsRStYek0rU2NOTHQ1OFYwTnhOa28vR1dERFk1ZS95?=
 =?utf-8?B?cEJuSFJTb2NvWEpsMkFRUC9McHVXeE5PclAwSndUaE9ldWJqVGJRSzR2QURi?=
 =?utf-8?B?aEtFQnBXdVVRNC81T3oyNHRueE5PeFVkbUY5QytERURwWU93VjViZHBJVGY2?=
 =?utf-8?B?bVNkYmJ4cmI0YVJmd3cyUHNzZURUUm1MVENua0JZZG4ramR2aE93ZGJ4M3B0?=
 =?utf-8?B?YjQ4ZUNCSzg4bk1FOTFYbnVwSHc0V0pyV2ZpcFFBZWVlMXFlY2FQNVBnRUdz?=
 =?utf-8?B?S0tnckt5UHZobTJkM0JpNnpPOFArcTNSYkdjU29kZGtyTGdaVEJyMWdicncz?=
 =?utf-8?B?bU05RitFVDBST3pFSHZIenJMbnJPdWE2SFMwWkJWNEQ5bkxwSlNYa0xYUVht?=
 =?utf-8?B?S0xFUzJhSWFmbEdsU2FrN3pWcjlQUE1LQ3dlTWJUckxMa3kySWJhdGRlek44?=
 =?utf-8?B?VHJFSkVVZTNuaVAvYWYzcklWS2RXTkgraTBFR3BvRzc3SFJ6dVVCQnFOK0FB?=
 =?utf-8?B?T2dNL3RBZnpYdU80NWNkYXFBdTBYVTg1SWE5MXVIN1JvTkoyVUVEQi9DRFBD?=
 =?utf-8?B?TDM5WHFwb3c1aEJzTDg4N1RacDBOOUcyVG9PWGpabDQxOFZLWFh6d0JXUy9N?=
 =?utf-8?B?RGRqeUQ0TXJmZ2JMcjhnbisyaW5GeGdLM3A0ZXhXdXVRTTVxczJkSTJnVUZC?=
 =?utf-8?B?LzdRS1hOYXpHNWUvMlg5TXNKVlp4eTBrWHZZWDFCWE5MT21aSVpCV1doaTVC?=
 =?utf-8?B?bFY0WCszTE9WcHY1U29VT1B4cWFSa0RZUCszdGdseUs1QnJqUEc0UThKMVZU?=
 =?utf-8?B?eWlNT2FmMmhwVHhGWHd5cGJQbld2dkJsUlV2NlF2WUJMZE9qMUtDWTZyUU5t?=
 =?utf-8?B?cWw2eEtKaFdlbUlKaGV3NWt5cktBN0FZbTJSekFyM296eVR5bWVpWjNaeGRp?=
 =?utf-8?B?QjdvdmVWR01XMHVxMEVmMmJwQm1VSVUwUkdzL05OSkNSNDJmSkFsdFgrL3B3?=
 =?utf-8?B?dDVDUXFFUTRxWjZDWENtWDVRZlNiWjVNc0ptYWZrZjhxcCtGUHNZWTZQeHJH?=
 =?utf-8?B?QTNqSVdRaFlySGh6M0IwSGdkVHFBZ04zbTdqZ3FCYndGUU1CU2FxLzhKZTJM?=
 =?utf-8?B?QkQ0Z0xWYnhhMktGNDdHdmwrM0xqVVR0N3FCdm1naWpWclgwRHF5elNZd3ZN?=
 =?utf-8?B?b0pGL3RYWWdLYmJvMWRDcC91VE9icGdmOEF3VXUwajZnN0Z5MXNMcXM0Mit3?=
 =?utf-8?B?L3V5Q3NSdUgySkFLSGlVVzFhSzVkRDU5ZEp1L0l6b3N3d05jNXNSdmtKR21k?=
 =?utf-8?B?K2NZTkVLaSttYVU0d2NTdmJIVzdrZ0hKQkgwcTJFdkRlVW9Bc2pTYlEvV0VM?=
 =?utf-8?Q?MZb0eaO7chfc2zlbcyRnyRevFM+cf+v7PTL1I06NlGN6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ecec2a4-be34-4ce3-6e56-08ddcead04f5
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2025 14:34:26.8118 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mg3qka7SmkBQ7USmNayi+IczrW50qiQWBv0Ejjc+I+pZiB4x/PgyuCIhnsS3MmWVB0rxvpM718jA7AZZjHnPyS5y+30iY6TD80qLY5qNGzYVrR6Nb5gifTFJHYc123my
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8276
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

On 29-07-2025 18:57, Jani Nikula wrote:
> On Tue, 29 Jul 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>> On 29-07-2025 13:47, Jani Nikula wrote:
>>> On Mon, 28 Jul 2025, Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com> wrote:
>>>>    The current wait_panel_status() uses intel_de_wait() with a long timeout
>>>>    (5000ms), which is suboptimal on Xe platforms where the underlying
>>>>    xe_mmio_wait32() employs an exponential backoff strategy. This leads
>>>>    to unnecessary delays during resume or power-on  when the panel becomes
>>>>    ready earlier than the full timeout.
>>> It's not about the timeout, it's about the exponentially increasing poll
>>> delay.
>>>
>>>>    This patch replaces intel_de_wait() with read_poll_timeout() +
>>>>    intel_de_read() to actively poll the register at given interval and exit
>>>>    early when panel is ready, improving resume latency
>>> Please do not say "this patch" in commit messages. Just use the
>>> imperative "Replace ...".
>>>
>>> The commit messages is unnecessarily indented with a space.
>> will correct this.
>>
>>>> Changes in v2:
>>>>    Replaced  two-phase intel_de_wait() with  read_poll_timeout()
>>>>    + intel_de_read()
>>>>
>>>> Changes in v3:
>>>>    - Add poll_interval_ms argument  'wait_panel_status' function.
>>>>    - Modify 'wait_panel_status' callers with proper poll interval
>>>>
>>>> Changes in v4:
>>>>    - Change 'wait_panel_off' poll interval to 10ms
>>>>
>>>> Signed-off-by: Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_pps.c | 41 +++++++++++++++++-------
>>>>    1 file changed, 30 insertions(+), 11 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
>>>> index b64d0b30f5b1..56ef835fc2eb 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>>>> @@ -22,6 +22,7 @@
>>>>    #include "intel_pps.h"
>>>>    #include "intel_pps_regs.h"
>>>>    #include "intel_quirks.h"
>>>> +#include <linux/iopoll.h>
>>> Please look at how includes are ordered in every single file in i915.
>> will correct this.
>>
>>>>    static void vlv_steal_power_sequencer(struct intel_display *display,
>>>>    				      enum pipe pipe);
>>>> @@ -600,14 +601,18 @@ void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
>>>>    #define IDLE_CYCLE_MASK		(PP_ON | PP_SEQUENCE_MASK | PP_CYCLE_DELAY_ACTIVE | PP_SEQUENCE_STATE_MASK)
>>>>    #define IDLE_CYCLE_VALUE	(0     | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_OFF_IDLE)
>>>>    
>>>> +#define PANEL_MAXIMUM_ON_TIME_MS		(5000)
>>> The name of the macro is misleading. For single-use things, maybe better
>>> to just keep the value inline as it were.
>>>
>>> Side note, the parenthesis are superfluous here.
>> will correct this.
>>
>>>> +
>>>>    static void intel_pps_verify_state(struct intel_dp *intel_dp);
>>>>    
>>>>    static void wait_panel_status(struct intel_dp *intel_dp,
>>>> -			      u32 mask, u32 value)
>>>> +			      u32 mask, u32 value, int poll_interval_ms)
>>> Can we not add the extra parameter please? Can we have a meaningful
>>> default instead? 10 ms? Is the 1 ms poll interval really required?
>> Motive behind adding new parameter is to adjust the poll time based on case.
>> Currently each call is taking different time to complete as below
>> for panel power off time   - 82 ms
>> for panel power cycle      - 0.074 ms
>> for panel power on         -  327 ms
>>
>> Making default poll interval 10ms will  increase panel power cycle time  to 10ms
> It's still opening a can of worms. The 5 second timeout is relevant for
> all cases either, so you'd have to pass *both*. And it's not so simple
> anymore.
>
> BR,
> Jani.

I assume any of the above 3 cases should not pass maximum timeout of 5 seconds, so
wanted to keep the same maximum timeout currently present for wait_panel_status().

>
>>
>>>>    {
>>>>    	struct intel_display *display = to_intel_display(intel_dp);
>>>>    	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>>>    	i915_reg_t pp_stat_reg, pp_ctrl_reg;
>>>> +	int ret;
>>>> +	u32 reg_val;
>>> Nitpick, usually just "val".
>> will correct this.
>>>>    	lockdep_assert_held(&display->pps.mutex);
>>>>    
>>>> @@ -624,14 +629,27 @@ static void wait_panel_status(struct intel_dp *intel_dp,
>>>>    		    intel_de_read(display, pp_stat_reg),
>>>>    		    intel_de_read(display, pp_ctrl_reg));
>>>>    
>>>> -	if (intel_de_wait(display, pp_stat_reg, mask, value, 5000))
>>>> -		drm_err(display->drm,
>>>> -			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
>>>> -			dig_port->base.base.base.id, dig_port->base.base.name,
>>>> -			pps_name(intel_dp),
>>>> -			intel_de_read(display, pp_stat_reg),
>>>> -			intel_de_read(display, pp_ctrl_reg));
>>>> +	if (poll_interval_ms <= 0)
>>>> +		poll_interval_ms = 1; //if <0 is passed go with 1ms
>>> Without the parameter, we could get rid of checks like this.
>>>
>>> The comment just duplicates what the code already says.
>>>
>>> Also, we don't use // comments.
>> will correct this.
>>>> +
>>>> +	ret = read_poll_timeout(intel_de_read, reg_val,
>>>> +				((reg_val & mask) == value),
>>>> +				(poll_interval_ms * 1000),  // poll intervell
>>>> +				(PANEL_MAXIMUM_ON_TIME_MS * 1000),  // total timeout (us)
>>>> +				true,
>>>> +				display, pp_stat_reg);
>>> The outer parenthesis in the parameters are superfluous.
>>>
>>> The comments are useless (and have a typo too).
>>>
>>>> +
>>>> +	if (ret == 0)
>>>> +		goto panel_wait_complete;
>>> We do use goto in kernel, but primarily for error handling. Please use
>>>
>>> 	if (ret)
>>>
>>> here, and the whole drm_err() thing remains unchanged, and doesn't
>>> become part of the patch...
>>>
>> will correct this.
>>
>>>>    
>>>> +	drm_err(display->drm,
>>>> +		"dibin [ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
>>> ...and it'll be easier to notice you've left your name in the debug
>>> logs. Oops.
>>>> +		dig_port->base.base.base.id, dig_port->base.base.name,
>>>> +		pps_name(intel_dp),
>>>> +		intel_de_read(display, pp_stat_reg),
>>>> +		intel_de_read(display, pp_ctrl_reg));
>>>> +
>>>> +panel_wait_complete:
>>>>    	drm_dbg_kms(display->drm, "Wait complete\n");
>>>>    }
>>>>    
>>>> @@ -644,7 +662,8 @@ static void wait_panel_on(struct intel_dp *intel_dp)
>>>>    		    "[ENCODER:%d:%s] %s wait for panel power on\n",
>>>>    		    dig_port->base.base.base.id, dig_port->base.base.name,
>>>>    		    pps_name(intel_dp));
>>>> -	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
>>>> +
>>>> +	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE, 20);
>>>>    }
>>>>    
>>>>    static void wait_panel_off(struct intel_dp *intel_dp)
>>>> @@ -656,7 +675,7 @@ static void wait_panel_off(struct intel_dp *intel_dp)
>>>>    		    "[ENCODER:%d:%s] %s wait for panel power off time\n",
>>>>    		    dig_port->base.base.base.id, dig_port->base.base.name,
>>>>    		    pps_name(intel_dp));
>>>> -	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
>>>> +	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE, 10);
>>>>    }
>>>>    
>>>>    static void wait_panel_power_cycle(struct intel_dp *intel_dp)
>>>> @@ -683,7 +702,7 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
>>>>    	if (remaining)
>>>>    		wait_remaining_ms_from_jiffies(jiffies, remaining);
>>>>    
>>>> -	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
>>>> +	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE, 1);
>>>>    }
>>>>    
>>>>    void intel_pps_wait_power_cycle(struct intel_dp *intel_dp)
