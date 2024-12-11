Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFA89EC9CD
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 10:57:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F67F10EAE5;
	Wed, 11 Dec 2024 09:57:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UtfXx800";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0E6510EAE5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 09:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733911066; x=1765447066;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=TLYfhAPYkT7gD4aiG0c+8DYkjoJIZCV3wmeLxoSSJnU=;
 b=UtfXx800Jj5WrD7J6u+Ld5IT3xRUWyu5UDSAfCgaL2zleoujd9RDsH3a
 Yls7pePsZuGwKg8qZuAA3PGx5V91r86ncURV/n3AeDWO3Wo7xmyUv7O+d
 HhtsqpR67+RlN37WUKRftje8B6nRItPNmbzqAwcEr5h5mbd5ms0Wa3ZZu
 SYurJ1lijs8xaa9nZeL2hB4Z4/QBbeM7Jr4xlN+7Dn5UOdO2Iy6AAKhLQ
 GHGbQqDbialW9m53vw0kpRl55/9VciWIHco+orTwWFq9/RHY/M4Ah6ewH
 IaNqZgIFDWKe+ISQDYHqeK8JSQXUbJmAhFlZw7VjjZfACHqba93BluCUf w==;
X-CSE-ConnectionGUID: NdMzDewpQ3mV2CGehdKOOw==
X-CSE-MsgGUID: F2gIjU1iSmiRvW1S7tBCEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="34423671"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="34423671"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 01:57:46 -0800
X-CSE-ConnectionGUID: QcV6CRJ5S62ENutGiu6a+g==
X-CSE-MsgGUID: qO2B/dMoTVy+xUUads6KcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="126579557"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2024 01:57:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Dec 2024 01:57:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Dec 2024 01:57:45 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Dec 2024 01:57:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eV046lz69hcJRUiXnHmFD5e3No7/vo7phkz09TjCrbRnXgxEm5X70AA//Ygm+5ldYhLz17QL0x1J3cJQPJz2c+ljLvQlBQyTJz5n2fkQd/cAVNMfFA00lYRa56V9j1WX9AjHaEauIXPDS1FnVsUQ2OYrajQUmrHqU339xpeWfvSWmhCT0Ord9G1WAGDiGdUiAOWAh28+lExHROxaiIQiYlrrtqfZnTVllYjLxy3YFSDGh1/UxRXNWScD2krLQOUHzQpSPZyef9BRzqFMAzzZ1oynl35ejDL1NXC7N7T+DHmorWsUkZvr7OvWmOozLfxacxSOCUv89tIdRVO99Kpw4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tF+Vi6tqTO8wkt4QbqT2EgkOK8+xVHRxasF6YZSQ8DE=;
 b=RLNJys/B5Dxbj5UrFyDptBjMNdgUz2UcKzT5YNev28RvsXrMFqsMsnCSNNci8oztjD2Z40pIz7U22fnBEoaJ8zQrQYKHQ/eI7IDmPuZqPb98SwM3MQGQj56YM4E9VLsplNus+aP37s9nYT0kj8tSONGPCJewxzIxq6BwJheaU6bK7ATFXvgW6KHzVT5tVecK0w0auT0jkkBu/TTe+keCDWv6S8ybYyxSz59sqzWApW2n9AvuVJjz/RcgeAkzixRCtY6bOeamS2OMbBnOyNPsWxtyrqniqyuS+8ZBId9ok6zoQQ3fdFPUVwpbcGZ5hGJIA2g5WywGevOejeo0s0rTOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CH3PR11MB8188.namprd11.prod.outlook.com (2603:10b6:610:15e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.15; Wed, 11 Dec
 2024 09:57:01 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8230.016; Wed, 11 Dec 2024
 09:57:00 +0000
Date: Wed, 11 Dec 2024 09:56:50 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: [PATCH] drm/i915/display: use IS_ERR_OR_NULL macro on DP tunnel mgr
 creation failure
Message-ID: <fw4bnfdbbolmg5zdzrf7raw5d7vzcxxz3zno3pti6tmnakrnvt@tx3262k6bzfs>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DUZPR01CA0230.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::7) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CH3PR11MB8188:EE_
X-MS-Office365-Filtering-Correlation-Id: eee255e0-610f-42c4-aed6-08dd19ca283f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M3Z0dmZSbTE4L2F5aHBkUWpHbGltS1NqTUJYUGVUNkl6d0xyYkF6bTV1aWdG?=
 =?utf-8?B?WjBFckczS2FNWEZkWVNRSDhDRmJkYXF1VEFFSXNLK3Q2cmFFakp1bnNDTGdm?=
 =?utf-8?B?NUJrNloyb096c1JYQVlvOWtWTjBDMTJVdTB3QUlvRGFudVZpVXpMOGNFSVV6?=
 =?utf-8?B?Wk5WbDgvcHBBajNpb253anBnaDRyeWtwSUZkdXpFTjIyNVBBbmJkbHVlVk83?=
 =?utf-8?B?WlVRSWpGWnVGYkN2YVA4d3lNY09kMkJQdTFzaTYrSFAzbllwN21RWkxHSUNE?=
 =?utf-8?B?Yk5IOTNGeWV6ZkJwMytyK01ac1ZwWEtSRkZXanV4Z3l1UGJFVGVpWVJSWTBv?=
 =?utf-8?B?RWdOOEp0eTJhNHVGM054cFprcmZzUDJ6UEtWSWlrcHh1NSt4MUNUaVNMcUFY?=
 =?utf-8?B?VmtGODFHT1lGaVV4d1B2T2Y5MndWR2NJOThaalM2S0tnUkVzcThsTi9hN1I5?=
 =?utf-8?B?QkEzUkQyK3VjWFFkUXVmLzJhVDJ4ZFJsZGZLWmxUSEhsNXd1SkNVKzRERm0v?=
 =?utf-8?B?SXdzRzc1ZFhOMHpZU3VhNlBwVEtBb3lVbzgrNzhSTmozME9iWGVac3czMWN6?=
 =?utf-8?B?S1lBK2t0amNTK3RBWXEvaU5LVi80YTkzUWdmWDcyLzFBUWpJUnlRelNnQUZO?=
 =?utf-8?B?c0tOSzBJWFZxeDN2MWR0RWN5aU1DMDFYdUVkMVlGdlpPTWxXY1k0VFpIVXVZ?=
 =?utf-8?B?d1ZvbGtmaHJBYnVlTlQrU3J3Y3Z0Ym1PdTJxZFVsR0thRkVaVkZvNW5SN2xP?=
 =?utf-8?B?R1QxTVFJNFRrTGpFczNOYnZZL0J2VFhzWWEyT0Y3TjVTR05USVBNTDkyb0x4?=
 =?utf-8?B?SWFYaWlwNUtXcUpocnJ6L3lUaG5VZFFBZE1hVGpqaFVGTUk5QkJaU0xLNGxi?=
 =?utf-8?B?SUtkNEFzandqVm01TUFweGxRZmFuY0ZYeFRYQnhpUzV2TXNZeU9wcEhZdkE1?=
 =?utf-8?B?aFhwdmE4UnNYYXlOWTIvQzdtanZ2OU5iUER4SHROQzcrd2hpSGgzejBZVFoy?=
 =?utf-8?B?THhRNVFZSlo1YkdDbXo3Y3FwUnhxOEpzUXk2TEZCbUFXeWVWaFhsaFR4Wmt2?=
 =?utf-8?B?d0ZUb09kUXRIQjhELzVlQ3lwb2NMM0ZVQlZvRzRqdFlNM1JyS1lyYjBGUkZo?=
 =?utf-8?B?S2FtUnFmM3pNTlltK3ZaL0FDdXNSRWRkVGpPd2tzM2o3dU5sZStaQUFwVCtr?=
 =?utf-8?B?dDBWTVlGWDltMFFGVzNvU1N3Q3pUQXcvMCs5cmpvOERKcXN1djYwcldFSnJn?=
 =?utf-8?B?VzYwMHRtQ1NhZE1qWWpTSFZ3QysrUVNuRGxHS1J0M1RMSGxZZmpjak5vTzZC?=
 =?utf-8?B?aEdRVkN0ekdUaU1jZHk0bVRKOHB6V1N3Y1Z0Y0w5dk9SY1N2WW5mNHloZDJ1?=
 =?utf-8?B?OU0vRmZLRkhvSVRoTXFKQllnWHVxbGhvNWRuazVkYnM0OXMyeXFRWFB4MDA5?=
 =?utf-8?B?eDY4TWFBMlcxSlMzZ1NIejYxWXVVSyt0L0xJKzVVL2tvenEzTkRqdTU0c1ZC?=
 =?utf-8?B?QXRCRHp1VjRuNk5DZm10VUNLMVozaEJGOW14bVVaMng3M0EvUGxLNGFiR1F3?=
 =?utf-8?B?bDZVcjNPME9PdEhCWS9TbjhKUndBdlJRbWRmVEdYY09Sc1NQdXVSbjBCZldm?=
 =?utf-8?B?NVB0elNwQ0J5OG5KTnAzeTRpWmlBVDE1R2xzbVJzZnJqNll4U2lQelA0Q0dI?=
 =?utf-8?B?OWlLYm04UGd4d21LK0puWEVzMU1jQjFBaTMzakJJNTZVWmpRdDN4aHNBZHpz?=
 =?utf-8?B?TTRpRDBJN0pvMWNYK1lJZis0VnpPY0tIQ0RFcTRlbnE0T0U0MVZLd2pDbkhR?=
 =?utf-8?B?c2tFRm5OakQwT2RWOHlVUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzFZdjlNUXc4WHdYTVE4bFIxbng4STBublA4NysxSzNOT3NiY1JFSS80SlZ2?=
 =?utf-8?B?V0FqYk5FRk81VTNZNzQ1ZXQ2Q1R0TGxVVWxnQzJYMUc1bEtLbWJTeStmWU5h?=
 =?utf-8?B?RHZheXVXQnVYM29lK1MrWUl4MERZclhYTWJuKzJMWkN4NG1MazA1cUxkYlRx?=
 =?utf-8?B?UElIR3dLWTVvVFRmVVgxT0NXdlM5eHFnVDIweHZIRklhSFhvaXE5UzN1bE9I?=
 =?utf-8?B?MkhzVHdiWlBMVmpHMUl0NnVzSUpld2RKUmZnemdpaHRnaXZiNDlnNlhIN1No?=
 =?utf-8?B?RmpHTk5TWEx5QmFXRHAwMDhicEhtMDJMVFhvRGMxa2JqY3RwZWdJQjY1cThq?=
 =?utf-8?B?dURYaEk0ZDZHR2l5S1kvNysrWmJHUUZaaGQzLzJoVE1ZWjJOaGd0WlR3Z0Nw?=
 =?utf-8?B?bC96cS94R1duSlY2b1RNcnlubnBUbm54MVRlSk9QcDNmN29WemI2WTcrd1pJ?=
 =?utf-8?B?cGJNdzdsZXRzV05yOUlxVm96eHhOU2JqTktDNDFkQzByM09pWHhSN1BWNEp3?=
 =?utf-8?B?dU1zUGpSL2xrNGJ1TkREMmpCdVJRNk9DbHg1SWk4WXZVaVhwUGtlSHpNTkdu?=
 =?utf-8?B?QjJZNnpMY1ZQeHI2a3hrU1dNb1Bkb00rWm1ZYyszeXlQdDhEK2JXbGlFcWtE?=
 =?utf-8?B?cFd0ditHQnUwdDNpMFhvS2NyNUZ6elhNRERqZ1BxVitkT241ZXRUVVVGZ1hr?=
 =?utf-8?B?Yitwa2V3NkdpWmhEdG95WVpyTFhwb1JsbmpkdTh2dHFsUzcrMUdxV2RUVTVk?=
 =?utf-8?B?MnE0ZjNid3o0TmczTVBNb2FUenRaSUlsTWZsdWRlN3NJUE1NVFdrLzdVaFRu?=
 =?utf-8?B?MERXc0VVRnpRY1dUeURsOGR2TkNSNzVSVXk1SStXczVHeGdkM2Z3SlY3OXhy?=
 =?utf-8?B?YWZxdjJ1RUs5TGhNU3lBcEZaYUdNai9aMkFzb3FISlhOeTk5RGdZaEdTTUYz?=
 =?utf-8?B?anNESVRQUmY2LzIwSWNkSXZ2ajRxSjZuNXZUZmhKekZvUWRnOFh4Z2d2cXds?=
 =?utf-8?B?dkkxQy85ZGJEcDVIZ0VYMVlpanlIMWltUkpabDBpWHIrQ3FpTDMzUmdhK2ND?=
 =?utf-8?B?bGNaVzBEcmhPbWQ4WkJFQ0I1cXE0OEN5WW9URDJ2cjdRYUJJTkFRdk8zcWpD?=
 =?utf-8?B?ZnFaM3lSaElucnNEMEF2VHlzRDlZTHhtR1U4WlJVeGU0V1ZaWGZRVHZka0d3?=
 =?utf-8?B?MGpoMTVCRnZZT0tmSllKRWZLTFpTTk1HSXYxNXBFb09oRDJ6ZDROK0JaUUl2?=
 =?utf-8?B?Y3hCeE9EQnFhbjJtUG9Zb0tjMXlud0hQMnV4ck0xU01EbmEvcHZ6M2FMek9p?=
 =?utf-8?B?bWhTV3A0NkRVYXM3a2trdVdFNGwzZ0MwU1ZWL2ZCanZUQ04wVEl1K1pQRWtG?=
 =?utf-8?B?Kzh3KzNyQXFBRFVWVXgvTXJkOUFNcjl2ellmalo2VUhxMDdNWHIxakdIeUJG?=
 =?utf-8?B?RkViTzJIRTYzbUY3Nmozc2l1cDlzaUZTTmszc3FkOUoybmxvUjJwTmhEaC95?=
 =?utf-8?B?KzdaanVZbGlvWkRYMW84WUdEWUdJQ1Z4bmhLc2l5VTJyRk95djA4R094bk9k?=
 =?utf-8?B?bFdmT1NnZ0JWWkxPbVFSdzNvOHBoN0pjdmdyVGU5MXV2WWZlNHZvMTNsWHJR?=
 =?utf-8?B?RlMvb3VXZFZNS2h2TG9QVzhja2FwakRxWG5veWMzdHNTTDV3cm9LTnArQkNs?=
 =?utf-8?B?a1pkMEZ0MDNZUm9DZnU1S1RjZkhIdnJPWHd3NGFjUUxKc0pTTER6cDJwWlpZ?=
 =?utf-8?B?ckZRYTNucEhkSm1ncllCZWttdE9UZzJxdkJzZkdieGVvWjhac1ovaGJ6UWds?=
 =?utf-8?B?YXowcGNtUnhuLzNxVWxKNkV6SmU0ZGxXTmQwTGcvbXZrM0hSRGptRjNmQ1Nl?=
 =?utf-8?B?WW42NU9xQ01haEdOeXk4NEcyZ05rZ1BZSGdXaUJJWDJYUXBZMlFBZm85UHF5?=
 =?utf-8?B?U3Q3Wm1jaFhPMTRGcjd6bm1FVWZMTEFaTng4T2lkRlZ1SzZldVZIbS9kK2FW?=
 =?utf-8?B?OGtKRXJKNnlJVFZ3UmJVQlBvN1Jtalg2cTA1NDkzd0kyR29oSVhEbGRaazJU?=
 =?utf-8?B?VDl1OU5CTDZPMktsNnFJODI0ajVrL3hjY2hRZnBGY1FyRldva0FpNk9tYW5m?=
 =?utf-8?B?elpVYmpMTjhkdUxIVVozQXB4MzM0WXJWdFY1TUthNlo3NFFkR1hWTUMrSXVw?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eee255e0-610f-42c4-aed6-08dd19ca283f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2024 09:57:00.7438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DRkpKBqWwi93Tg0AtybhtMuYAOY9WKdq3cLayr2jMOUNZ+K89lvOQHfRL9w3g3UgK6x2EHwb4sXefUVML7ppVrkmL7xX11J1dicOjd4t7qY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8188
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

drm_dp_tunnel_mgr_create() may return NULL on failure, which will not
be caught via IS_ERR(), so replace it with IS_ERR_OR_NULL() macro.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 94198bc04939..6c960416f776 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -793,7 +793,7 @@ int intel_dp_tunnel_mgr_init(struct intel_display *display)
 	drm_connector_list_iter_end(&connector_list_iter);
 
 	tunnel_mgr = drm_dp_tunnel_mgr_create(display->drm, dp_connectors);
-	if (IS_ERR(tunnel_mgr))
+	if (IS_ERR_OR_NULL(tunnel_mgr))
 		return PTR_ERR(tunnel_mgr);
 
 	display->dp_tunnel_mgr = tunnel_mgr;
-- 
2.34.1

