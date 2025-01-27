Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C190A1D714
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 14:44:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3869710E519;
	Mon, 27 Jan 2025 13:44:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TWiorq0C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAAAC10E531
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 13:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737985487; x=1769521487;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=i48kooaeAnZbCWydu9q7PPu5dNgumdVpV5v9BNGyy6A=;
 b=TWiorq0Cinde+9JmXZgcgJgt7OELimpEx5ab64S07IQncPevpwA7XK1U
 Wi0ABHZrsZw29EndTU63Umz9sjCVB5wQwtPCa21mCoQ9eNxUr+rjG1TIm
 EWSNwzba9yWIWLBIUUmOjYPV5CFZkuZDxBEgbrYFUPzgYrvDzftRCl5zo
 R0tDVOEEKLwHq+ltPvm+FxPARfP2LJWLKODtTbs7uqIEVEJf7/iVcbpZu
 ySQArJAogYCnHxN9Ytj6XvAAqTIEHI1uN56knEAkN9ii0DX5tCcvhRDDT
 9K5uAmX+gogs3azq0O8bj8xsJsOiKjPucLJzgv5j/ZWxHaMd5tBQ9scjO Q==;
X-CSE-ConnectionGUID: R8yDJufWRyaFub7phxO0Vg==
X-CSE-MsgGUID: caG96nHfTc20u10Mou2FGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="37697297"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="37697297"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 05:44:46 -0800
X-CSE-ConnectionGUID: bVuGYF54S+qtO9jO6/uQkg==
X-CSE-MsgGUID: 7pitWbeBSl6nQ8YQdZuf4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="113474239"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 05:44:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 05:44:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 05:44:46 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 05:44:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iTv0Qs/R5YiP5ZntEaXXR6tTK/xenX7thNN5dI1Y2bTzcTskEm0BCfVNEzWCHC4yspvjLJGeDTe4Cwz710b56z+iqpS4Wg/krZLYGu7YnZeOpMf/mPuyDZ5y6tPHpyG+AM82DPpmikmKKV9716VVDcTiwdGhIeOv+iUFi4UJJRmXc1zZ5Y8DjBKB0997Ml0bwk8aI1Fn9TjhNcyLRg7YUec/shdRlk0MHw9CBXYhKxaXQo2jprc8/hGCntcMpsakltCGG+EBg5pDU6LqFInBr1KRoLmc0faYhe060/alPPDe/1njgFuESi/w+7dEpV02yweu0M7/7vxMeip+2kYQPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XpySUC4hD62VJaNQzuADJqmDG5tjTelaJBDIdV1tnx8=;
 b=aG6IIBBvE+71YqJcGuVMFYQ3lalhQ0cFJqIi/XtIELNKrqlXos6tLBdiqkep78/Bd0en0vNuc43+gJD+yx5CUy98B2KvSw5DSKh8xS/yMZYz9sA8XJR4nj2dgsDMZHv+63TpdtrvGMKLqef+Lyp5EP+eVgHEWlGVnAStbqFIEMMZ4O7AKX4p50PdiImuJGtPCQWstMixO0L5sl3AIwErN8ecC+tQ3Hs5LTocsGFMOiReVCHtRkMC3o8ifzcRj8EQm+OOCbysjhCpgHidlSWkdXquOmqXASujq97fbAm3GYkyJ3wtTan5uHvwInRlJIn/NfxNn1FZRQNnMwX1iCj6xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA2PR11MB4826.namprd11.prod.outlook.com (2603:10b6:806:11c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 13:44:42 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 13:44:42 +0000
Date: Mon, 27 Jan 2025 13:44:33 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <chris.p.wilson@intel.com>,
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v2] Revert "drm/i915/gt: Log reason for setting
 TAINT_WARN at reset"
Message-ID: <pmssrpkgt3mwz3q6ab7wa22aawn5drl77k4we3pfy5ae6mpitk@xadg37ywa66l>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <pynwwza2xyvicokflxc6lduwwrzwoihihaan54ago3m2xzzagu@qva2ue4tydie>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <pynwwza2xyvicokflxc6lduwwrzwoihihaan54ago3m2xzzagu@qva2ue4tydie>
X-ClientProxiedBy: FR0P281CA0143.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::17) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA2PR11MB4826:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c8578c6-79c6-4033-f776-08dd3ed8c08b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a29ZWk9RSlJlYml1MHlNam9ZTitGTlRhVDE4SDM1a3VxL1duVkNodHlrR2hz?=
 =?utf-8?B?UXIvS1NWZ1VzVFRRalhhV0k2TExBY3VwTUVvcVBHNnZ3b2pHZS9TYVY0K00x?=
 =?utf-8?B?dzVTWkFTTXBuNlBDVkgxSGdMWW1DM3FCS2tBSFlnTzQwbi82UHp2TUR0REpR?=
 =?utf-8?B?WkU1YmpiVXlZaStuemtZS0NIUEdEOURIcG1uQ3djMDkxRHRqdUJQcDYyaTlR?=
 =?utf-8?B?RFJhc2o5MTdTbEhHbldGTkxJK1VxMUtEU3drRnpvaXU1TzFYamtYZG5rVml1?=
 =?utf-8?B?NmJqSUtJcmdaMW1RK04yQnVCeGlBZk9EWTdzUlV6WlBKQ3oxNGRvNHNyRUNN?=
 =?utf-8?B?OWJQQWQwcEhLNUxZMkZTanhGdWRjaHJCbHFVVTc1MXVUODk1djIrV0YvQ0pL?=
 =?utf-8?B?cjZJUkFsTGxCNnZ3NG44ckdOVmtjUkFacW1BREIvQmxLT1g5TUdkM3pBc0RB?=
 =?utf-8?B?WnZzbmlJdXM5TDV4dVQ5WC84QW1BSXhVdzVXa2tCcDVYL0ltRVdaMENpaHBI?=
 =?utf-8?B?K3Y3SHZTbEpIc0lyWStXa3VZNWw2dlJuU1dvTGRIYmVPem0rT0w3OWNEMGcv?=
 =?utf-8?B?RHl4U2YzVXZnNkpyUEZ2bWUwd1NybVdDZnBZUjQrNGw0QUgrZFZLdHY5bFZ4?=
 =?utf-8?B?U28vajlra1RXS0h2UjFmZ2J5bzR2VEZJR3QvTkJSb1FVamxEbFV6QTVrYnIy?=
 =?utf-8?B?Uk0wL1UyRnMxbDJhem5tbS9tNldTcmZlUmtxbzJuS3QzYms5YVhJZTBxVFJE?=
 =?utf-8?B?SXcvV0tJWExuTTFnOVgzUmp5d3ZsdWFmOWQ4MHl6T2c2bkhuU2ZncTdUZXFy?=
 =?utf-8?B?TjdiaTIrcXQvbVBFeGlDTytvWUVWRWNDak05b0hTcUVJSC9CRGxqSVRyazNv?=
 =?utf-8?B?NXJkNUtXbS80N1N4aXdxZG5XaDJZODFhcFBxMEZOZk1kbDlySlNDcUpXeWxk?=
 =?utf-8?B?UjA3NUJwMGVZM3pCM0w2Vk5Vc0xIQUN6VFRETDZIWjk4SjVhWTBSUVJsdGNp?=
 =?utf-8?B?SXRQVG5JbnRwQzBLcERENE8vbThkQkhsWnQwT2lvN2ZoczQyVFozZjAwd1BJ?=
 =?utf-8?B?YWhtVFJ0NXlJd3FOd0k3amRmdmh2T1hMa20zbEpSVHVsSlU2UGFJMEFaMmJy?=
 =?utf-8?B?c0ZJNXJwbEFxWnh4OUhaVncrNWJXTXF6L2VTWEsvK1B0UEdkd1pNWHpIOWNB?=
 =?utf-8?B?UlQ1dnNTM0JEbkFZWFBLUWEwRXY5dXU1MXRRTHZOcEp6TFNGcHBtVmc5czha?=
 =?utf-8?B?ZTFpZVNadklNTXR6aERJQTZNR1pIamQvU21IWTJhU1ltY0xMSjVoUTA0ZWQ1?=
 =?utf-8?B?dnV2R1oyd2JrcXNjVWV5QzM4bkF4RzBiUGNEOERFOXRxdDY1eHI5ci8rdFdE?=
 =?utf-8?B?ZUgrdnE0QnRLb3RQMWxMYktyQ3lnYXRsQzc1YkJBRWNsN09aKzVvV1h1anl4?=
 =?utf-8?B?dHBncXZQeGt5V3dmNW52VjI4MVBaQ3VzcjFTcXFOZTRaaWNpMGFoRG1tdkRE?=
 =?utf-8?B?UzljY1U5eTIwM2UwVE5OblBzYlV6RlpqYVp6cEE0YW5BZzdwT0FDT3dZR0dP?=
 =?utf-8?B?bHNSYUJDVlVYK0NhU05ldWRWRWlpMDVzcmRYclhtelFtYzdpN2ZuM3l1S0wv?=
 =?utf-8?B?Q1BPN2s1RmlwT3F0eFUwOXhKR1pweWJPem5WOTRJdFlVeW03WSt2dm5UK2xi?=
 =?utf-8?B?RUpyWFd6QWpWSlNjci9yUjFWdlR0dVdCN242cmxINVU2TDlLSngzb2IyOHNU?=
 =?utf-8?B?YVptT21KTy85N3dnUytCcnovU3FGbkgzMG9vWmxIMjVKTVlhQWNiZDJ0clZn?=
 =?utf-8?B?dUJQSmMrT3prS3RxcWQyMENzUjUxY204dGFML05jSFpsOUROLzRRSFdiTEFp?=
 =?utf-8?Q?uJGl3WHD2xXRb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2t6MS9DWXRqaTBISXJVQ2NGSlNTUVhtSDNmTGhFeEJsRlB2TUp0cExVUk1k?=
 =?utf-8?B?WmRMMWltWWtqMDJRSnkxMWdXM1p4U0lQbGIyd2ZmTkpMLzBneHpQWnZ0RmpF?=
 =?utf-8?B?Y2tpVjlHR2RFK3NzaUdqUElKbXJpcWZLN2pvZk9ObEVhN3lIK1VyTUpIRURK?=
 =?utf-8?B?OC8zQU1mSytRZU9aWnY5N1Vjb1NjYzJreHoralRMeHV4QjlUSjFEWG5HeWtS?=
 =?utf-8?B?ZDM0Ukh6Z3NkUXhyMHdKWnhFZGpOcDc3Z0JOdFozbDQrdkhOR3pBQW8zek5V?=
 =?utf-8?B?YThhV2ZQTjRKUVRQUEI2emZaUkZWcG82L1VOM01EWU5UQVYzazhDRHFKcksw?=
 =?utf-8?B?aFFSbnJKbzRzbWlON1ZpMmQ0MU9kMm5kd1RTUzJkaW5DWVFET3U0bWVWYWFN?=
 =?utf-8?B?L1dBS3BlWWhFc3Z5aktSQWdFdjdKUUJHS3JaN1Z2SFh6RnYrbTBsSFVwS2dL?=
 =?utf-8?B?UXVIUkNvSS9qYTlXd1RBZlJsNjBUVGVJTGtSdWdsLzF2bHlEQjVVUWhDME1M?=
 =?utf-8?B?R1ozRHVvdCt4dXoyVDF4bm1pN0RVanU4YThwQnVWZVd4NkZ1VzJqMmIyYkEx?=
 =?utf-8?B?YklROTNNNjFScXNKZjhJRVB4djFwY0hadHQwaUZBbjB0Rkl2QkhWQWR5Q3VL?=
 =?utf-8?B?YysxN0lXclQ2Z3RHeVRuK0t2SzZaeWxJZEdaTkxsOGt6dlBqVUhnWWlOOTlJ?=
 =?utf-8?B?WW1lZ1ZHRmxqcXVTRGh5amcxbElrNno2OGJJTXVVYXlhMkZaRzh6a3ZnNUN0?=
 =?utf-8?B?eithMTlOQ3VNK0dQTUY1QU5LTVZ1VTUrc1pRNUlSeStnb21Za0RhS252UWVG?=
 =?utf-8?B?bjJSSDlaYTlnVVJLMGREYXlueGkyZWxCWGlMTFlsRkVQWUIxN1AvZzBxRkxr?=
 =?utf-8?B?VVdiU01Xd2U2enlrbEJka0g0WldwOUtoZHZXak9wZmZ0cnU2UG9qZWc0aHNp?=
 =?utf-8?B?aGRKWUZtUGdGYis2Z3NMSzRyMW43bW9pMXBvYXZWSzczcm1wbnZTa0lXRjds?=
 =?utf-8?B?K2ErWmhTbTRXSkVlSGFtZHh0VW9CdnB6VkNxSFhuY0RiNThTRVRvQXFaWm56?=
 =?utf-8?B?WDZMa0J0dUtyZ1NpQUpOSWR6NHpLZzRTd2tDR2FxOVBUNlhuYzB4QTBJTGcr?=
 =?utf-8?B?RzJ4VldoWHV3N3dmNTVZei9IMkZVZEprSU9UcU81MWtVV0NDRUwwUmVUVW5X?=
 =?utf-8?B?VU52UmtWRFBPRVA4aVBqV3h4bW1maDdNd1o2YnlWZ0FnUTRLNW5lR2dId3lL?=
 =?utf-8?B?QzhiOXRyVzBpZ1ZVMlpCai9PckFaNVJJTndjTUd6YjVqMngvTDIwUlZvZm1o?=
 =?utf-8?B?NHdzTkVDaXMycmJrUVZ0MkFHcStDT2w3eCtJb1YzeWhyYktSeTljTUdFRTZr?=
 =?utf-8?B?K3lPWUJZOGpGNHZpYU1oWVZBTTg1Uks3UXBhd0tvMEJQU00xVmNKNnNaNW9P?=
 =?utf-8?B?d1hGV09zNk54M0g2Tmhyd1hoUldWTEh6MDRnd0hLbGpuYTFGdFpHT0RURzY2?=
 =?utf-8?B?WWFibEhobnpweGNxalAwNTc5b3kyZDA4d3cxb0trWDJYMDVkcFZ3bnZEem9a?=
 =?utf-8?B?cnRhOUtMNG5xd0l3VlovcWsxbjJQcFBWMlYyMFRVWFhGWHp6MzFLbTNseUFN?=
 =?utf-8?B?dFluZWV2M3lOVklRSi8xbTJ1bHR4aEhtVjVpNGp6cVRuMTd2cU5Zd0dyS2hS?=
 =?utf-8?B?cTZiZVQrMnhXZ3RZL3MrNi9hVExoeUpLWUlNTWNoNlVyU3AxMS9qVXI5b0tG?=
 =?utf-8?B?b2drazdKNGl6NTFnblJxMG9TUmJ2d3dPR2NySlN6cGxUK0tiSWduVGY1dXVw?=
 =?utf-8?B?bWJnSGxuRHpGZitCNkVJeTQ2WE9xY2liN2kwTzIveFBib0paWG96d01TOGZH?=
 =?utf-8?B?V0VZZm5YdXRWdVkyeGNVK2hJcTd5bklnYmtndEdyTCtQZ2tFdWVPRUt3WVdu?=
 =?utf-8?B?R0Mxd1NkaHBOMTFvbVY3N0IvNUNMenA2M1hXRzJVWU5OV0FyY0Y1Y2pMdjdW?=
 =?utf-8?B?YlNzR3NxcCt5MkoyaEgwaVNQZDc5bTBidmZ4YisyaVo4OFJiYlZzdUJWdmpq?=
 =?utf-8?B?YlQ4ZlhWL09FSW1SRkJwalZxT09MQTdOVERUeWwxMGUrcmthazhUNGJ6eXc5?=
 =?utf-8?B?STRHZnBoT21ueG4xVjhrTWxDK0NvWnVuUGsrM2VFTW0yeW5pYk9SU041WUFY?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c8578c6-79c6-4033-f776-08dd3ed8c08b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 13:44:42.2337 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rcgZUV8zrjE23+sW2Xo0iGWcjIIqdCRTkTEB4YEpYRdaq8rn1lkFwlrO9RWhgs3TfnnicUlGHeQjWxfePdZrLLT2J6ctH8HjbhKjROgxpvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4826
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

Hi Sebastian,

> This reverts commit 835443da6f50d9516b58bba5a4fdf9e563d961c7.
> 
> - turns out that logging with gt_err() causes CI to pick up an error
>   even in intentional error injects,
> - the unintentional (real) errors are already reported correctly by CI,
> - a gt wedge is already being logged without this patch, so we should
>   revert the new message instead of, for example, relaxing the loglevel.
> 
> V2: rephrase commit message

LGTM:
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Krzysztof
