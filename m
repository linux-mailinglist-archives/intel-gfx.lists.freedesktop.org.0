Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2116AA008C6
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:39:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8BF610E893;
	Fri,  3 Jan 2025 11:39:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RCfGMyhh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 044F710E893
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735904342; x=1767440342;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=z0RE7f4SPOh8lHUmWaPPyZuKTtRdXwj5bIVs2gKsJ3s=;
 b=RCfGMyhh262TkrOd62rH/gwIWg7x+RZUWPZokbxcdpYX31XDGYFHJClS
 oT6y/kcNwO/vjkPqJ1Wz6rjLN5EZbbJjHftMm9WnrFyQk+sa65olRJCFl
 NLBXZeIsCOmL0/Bamixp5sN640DqjcCAv1hZBLxn5AdkhEUxK/ZiY4ScI
 HHdqu6nKJsMigjjB/6VNSYeGZE/I4u13lGrwLGpxs3NL4IsJ/m2QKm/gj
 T75NniqSEd0RiWLKcgJvhGS1McGWzMrIhoo1LZlg41AuhiWO7mHRnlxkl
 iVseROc/5ixeYzH4YHhi4E73bPXFc82iDwfcWT+OEApCT9gYXi9l9HER9 A==;
X-CSE-ConnectionGUID: yc00LWfFRCGb9OBqZgFP+g==
X-CSE-MsgGUID: RoJ999DoTUW3zLNMpJw18A==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="53696208"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="53696208"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:39:02 -0800
X-CSE-ConnectionGUID: GQzqEoPAQfOreHkapABjrw==
X-CSE-MsgGUID: wHgAywRuTWGyFEem5YX0+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106824856"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:39:01 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:39:00 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:39:00 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:39:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xATkb2HcrKF9UZajDjD00U3ovskcwVjk0GghoMryNi9MCFIKoi8yviOF9HpoAla1Oh6FFbTWpOB6daGjtHS8vfqevsvEvgL0x5aigguTdWJh/DT9sj0i0blaYkYktLRKeEufDwWL6BLJ0OcqhA8aHdQ7mB/K74oFJPa4+UDZTTKxBoa7ev/nQ9h6TsbFR6jnA9vmtPxgaCXRA1JnBTCDj9dtCWWtX78JJD3DlFOmyAeYXtXBuOqQ6vaH+EIUbviqSikd7f62YvduLm5NmTrWbrKCrwQxnh+0SqnniGGsKFDWSoc67lrSqswZv0LuPp1CSKThljyrCmX5vJgjdQhHtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B+Wa9e6HKM2Mz3bMDu3BvQcX5st3/xVsKV0m38wX7vE=;
 b=FiSwEfAjuY4fQjZ+9fPnPyyTkGdr3BhFAZLhJ7/wQ9CftC2VDQR5oolaNomV2e9XxWEHJAuNjjzpPNxWsKR64vVKKR6i644jr2u3H+lULCNreLEzapcEkWSzVwBAp9IY9E12CxTxzc3X9urq/o3rYsjnEBik0pouzqdHzePWt02DZWA1eCU4DubGV2eCqwGW63VbQYUictRJHyGZQWVRiRQyjXtfVK4a+eaT+jLHggTbgX+gViVg9o0mKOZFAuABZQPfo7sS7o85kXyX4hHRBCpBW45AXxw6DKdOOwMlaZfNtTtR/2kq6h6NwJidhX6WWwk9HmEnjPtsjLfo5KQdGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.12; Fri, 3 Jan 2025 11:38:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:38:55 +0000
Message-ID: <e0b9256d-45f8-49ee-88d2-aa7ee1eb1e73@intel.com>
Date: Fri, 3 Jan 2025 17:08:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/18] drm/i915: Consolidate intel_pre_commit_crtc_state()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-11-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-11-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0094.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6544:EE_
X-MS-Office365-Filtering-Correlation-Id: 820da331-1658-4559-86f2-08dd2beb342f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d1pOTStUQzEwVzdpdkxFd1NoeVVqb04vUUVaY1FPcFVNbmhXSVlyTUxVQ2pp?=
 =?utf-8?B?V1diS3hhaXFJTGduZWVuZGpyeXJHYlpydFI5KzVIRzZqeDY0amhUVWl3Sm5V?=
 =?utf-8?B?bThPY3FUeTBrUVNTU0puNkxFclVQa3dzODd2UXZVK3VDYUVrYWN0RXl2WWMw?=
 =?utf-8?B?OHkrZ1FmTHFYejVuR05nSldwOHJBeGtUQ1E2VkhwdGludG1OWGQ2QjQ4eFMx?=
 =?utf-8?B?SDhrTGVYZHdNbkpra1BjOTNXRzZyUWU0K1VJbk5JQlRuWjlSamJYbFhOaXFk?=
 =?utf-8?B?N2ZBYmx3ZG5rUjJRb0tKQkoyRnNOZ0E4VUptem1Halo4NVFHVUxCSWZBbEwr?=
 =?utf-8?B?d2FEREVCMnVVeTZHNzlhMEhWcVlZQXpoVUJqaG9vdlF5L2V5UlFtYXp5Q3Bt?=
 =?utf-8?B?ajVYV245cEVRRVVJNm9DbU9ranhGazJoNUZNVlBiNUxYQXdxZXp1dWZIUDRY?=
 =?utf-8?B?NnlKemRCdHNzRmEvdlJ3Rll4VnFvWTVYVjk4MlhNdUNaNXpQSHZnakRUV0pP?=
 =?utf-8?B?b28xTGVSMzBwRGpMRU0xUFBuVmFRd1NhT3lWcEROZE9kZnVSMFNkYmxDZE5K?=
 =?utf-8?B?T1dxNStzazY3Z3VUc1ExS2JoL2dTa1h1bFdzakN2amMrL3cyMm41YVhzM3o1?=
 =?utf-8?B?L2ZJUzd2Tm5maDZ6dllGdmx5N3pXKzYxRk5VM1czVGIxNDJXb2R0MHY3cnJw?=
 =?utf-8?B?ekZPbHJVNThWdWRnK1BtTG54T2hySDRvb0xkVlBiNWo2eU02Zk5OcXFHSG5W?=
 =?utf-8?B?d0lOMWN5UEh1RFgwV3k5OWpOTWtVR1NxM2hRWTQ4YkJydHd5VTZoeEg2ak5S?=
 =?utf-8?B?NklRM1d0bTF6b0EwaG9SdHVYc2I0V2ZWWFlHd0FEN2JubWQyb3BTYWlGWlEy?=
 =?utf-8?B?QkRJVlk0NEpTN3RvL1ZZZS9EM1hENFVtOVdCdWFnZ0hoeTZSajVZNDVCZmpQ?=
 =?utf-8?B?R1VCcVFGbEdCZ0VpOFkwV01xelhPN2xhNC9JQlBodnRZeVkrdlExL012NjdN?=
 =?utf-8?B?YnFJaHd3RkJlZVk5WjVJY0FzN2ZTUUlIelYvZHUrSTZNWFJSOVRoVWYwbUow?=
 =?utf-8?B?UDZQeXZCRWE5T0ZoWXJQYVFadENDTjZvbmphZjRuVXNPMU1pMWJCMkNsSi80?=
 =?utf-8?B?VGtVc3ArcWVXODV3OHpUcUdjZmQwV3NqSXJFN05kOGxtK2xHTVhFRXFWTG1Z?=
 =?utf-8?B?bklGclBqK0FhTFRoZkVDUTFMS1JRVTMzT3BUSG40M0lZRm1COVJLbFpvbGY3?=
 =?utf-8?B?a0JmbjdSYUR0enR5L2RLWGVOcUI4NVdGaURXWHRuVUhnakV2VnBJNVI3UWN5?=
 =?utf-8?B?MlQ0Wm1RdytxYmZ6cUd2OXlXd3I1MGNiRjUxQ1NyK1liZmdZSnZPT0IwZVpN?=
 =?utf-8?B?UG5PNmRIcWFXN01OTU5rTDhEeEF0dFhETngvOUR6OWZQWW4walVvOEpLSDVD?=
 =?utf-8?B?UlU2UFBqZnJGRUhuSWl4RkJWTmhSMVE3bUhPWDd3N0VZWm5EYjlpVEFiUlVt?=
 =?utf-8?B?WGw4NmRNVzhsSzF5UVpqcVArRFZnQ3pDVEk0SU8rZmlPWUh0WHFPZ2lsWnF0?=
 =?utf-8?B?aEI5Q0paaTNFY3Z1UUVmUU9XTHE4UEFHVytRRWxqdElRUEdEVXJVd0M3YUpp?=
 =?utf-8?B?SllvQW5WZFNFMTRiWHhNM2hPd2FuZS80Q00rQnZhUmdBUHo5MWhlVkpKbkV0?=
 =?utf-8?B?dElrL1RjODVLRU5Ca1k1ZmpWWXplSkNQR3pqV0RrcXk5ZnBNTmpQSVMrcXl0?=
 =?utf-8?B?RjFDM3VCL1pSMjdNVkxYeW53b1p6WmNWSGF4UUFLb2VIK3h2b0NnVkd1ckF1?=
 =?utf-8?B?aUJ3REo1Y1FKeE9qRHZ1M1IwTC9ZeFZSNW5SUG5hV1EzSFVqMUduV1Rua3Nv?=
 =?utf-8?Q?+wwWqObnthavS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUlxdnFvcHR4V0RQWG5CakZJY3ZVT3luWWhlWWV1L2V0OVIvYUlLajRBQ2d5?=
 =?utf-8?B?RTloMEg4UTc3UVYvdVlZWE5YU0lQbml4Ymd2NnZSTjFnRkE0Uk1JYWRzakpr?=
 =?utf-8?B?R2RqQ3Bja01IYzVJQURWcUMzK0ZFcG8xSFhoMnIyUGxBeXkvcmtGdUJRUGN3?=
 =?utf-8?B?RVpWYTRxNlB4WjFaQURHM1U4cUxtS21xc0Q1K3dNUTZRaFF5d1d5NXI3K3do?=
 =?utf-8?B?WDhmVmtySFlHcDFWTERZbTBESzgxeWhIQlJCdjUwYVlqaTBJa2t2Uk9iY0ll?=
 =?utf-8?B?Rzg4TnhoNGFsU0dDcWFMaW5lWXp5TWZEYlRieEZFSEZYZWxoWWpGV3Y0UEVX?=
 =?utf-8?B?dzN6cDBwVHBJOFl5L0dCNjhlV01FOGdCVWdyM3FUR3V1bXJjS1g5RlhZMGw3?=
 =?utf-8?B?Ny9VL1RDbHRCVE5RMEdFWi9CQmFDUFV1V0tXeXROMFpWdTlrYVZFdXlPc3hB?=
 =?utf-8?B?cWpGRzVpblBUTFBnQjF3YkMyWFhubXpZUHVxcEpCaTkyMkRoVzRQUXBYMTMr?=
 =?utf-8?B?WnM1Y0VmWjFzUW1rdnNJKzB2YnN0T1NMT3JxSHJ2NVVGSDFjN252KzlsQmFZ?=
 =?utf-8?B?ZndnYTZqdk5oMWdnS2I4dnFGWG5hTkp2WjRJc1hQVUZQUG9mbmNsTWtaN1lR?=
 =?utf-8?B?a1duYXFrN0lBN0pqZzdXS3gvbENnSHRhQm1pdlEyTnFJMjRZN2V1aDlKTUlU?=
 =?utf-8?B?Rzl1emdXeE9CbXo1YWdoY1hNbnd2citYRlEzUVdJOC9DSDNFZDVZWDlTWHVr?=
 =?utf-8?B?M2lUS3JmYkVnWjR6WFNtditEWjNtb3NINW55U0Zja2FnNm05SEVqamE1Y0pz?=
 =?utf-8?B?UVl2aENUSWluL0RVM1dZZGtZb3Ewbm1pUlRKZjlSZjAwSGk3RWV5YkladmI0?=
 =?utf-8?B?MFY4T2F2eEwvUjN3KzNVSEVXZG1IMlhjLzVqMVdPYUZ2YWFCMGhhSzNSb1la?=
 =?utf-8?B?aVdBN2UzLzdzaVhaM1ZQUmZadXFhQmNZL2VzRjROM0poMTdYNmpHVmt6OEdk?=
 =?utf-8?B?TXR2SDExcmhPRUhGbG1wMTZHdXpsTWR0YVlPblQvTm1hM2FBcW9IRVhrbTND?=
 =?utf-8?B?TEx2emg3eGZuYkpudlhEUUlKT0Z5ZHVZMG92dlMwelEzWWUzQ2xJRUgwdjMv?=
 =?utf-8?B?eUg0eW0zSlZnU1FzbUFINkZubEdhSXZ5T3VxZ1lTR01Va0lBcG1qZEwvWktJ?=
 =?utf-8?B?NWRxSDkxVUZkOTFyM2tLNkNhS1FONUc3ekVhdnNVdGpqRmNDNS82VkxWdWIx?=
 =?utf-8?B?bVlFNW5TQlEySlZNTGZQSytBSk1ub0lxRW91WkVzYTlIOUtKbXJxbGlkM3kz?=
 =?utf-8?B?MXhybFc2SmwzS25kQm85UjF0L21pKzd4SDFWbitDdHJMUGJwNzc2WnFTcE9w?=
 =?utf-8?B?UWpFeEZxU2xSTEJYSlV6S0g5L3JvSDdla0VBbG1NTmlmcElCVVVsd21pK2Ny?=
 =?utf-8?B?dXBocURCaWxGL3RrYUNMNDZiYUMrcC9CT2NEeDRTUTFwWll1a3FHRWZXZU5S?=
 =?utf-8?B?UGdzN0kvK2J4ZXh1eWNOdGRycW9ITXJpS2thSUc1N1lpUzlhNjhpa0RJaFlU?=
 =?utf-8?B?cnV3SDU0cEUxRFNmamZPUEk4UFZscUhlOHR2WGdEYmVqWkRqU0ltQTBwSjFW?=
 =?utf-8?B?MVV0WUJHMUtqN0p1ZkROek11ZENScEx4Nzkzc0pGM2pucDJJcmc1RjNEblZq?=
 =?utf-8?B?OGNyaWVuQU13QXhibkdXakt2M2F5REh3THlraXZsUzBaREpOQU10ZlNGSnZs?=
 =?utf-8?B?RndyMVFPQXUwSFJLMlF4dy82S1h6STdQRHFzcDFnN1hQaVNPWU1sU085cVAw?=
 =?utf-8?B?Wks4dFR2ZzR5ME92bGJxWU1heHVPVDB0TTI1TkZ4WXlFTk53MGh4alppdnhH?=
 =?utf-8?B?dStSOFc0YUFxUCt0VzBSVGcwRlVrY1kyQUdtemhuUndmVkcvY3VySHFHTWh1?=
 =?utf-8?B?YTgvcW5YaXovb0RGTGZHMjdnQXNKUnBXSWJGTDRTV2dpU1E2amQ2Snd4MDVI?=
 =?utf-8?B?dE5CbFRoTFdYOHA5RHZCRWpwdkxhZWRCMGpjam41STdZSGNUMllnVkN4eklh?=
 =?utf-8?B?SVl6UlFQZTdIc2c5bWQwRFZRKzh2OXlyY2xsUXdnNS9qd2o5bVFpZUlycHVI?=
 =?utf-8?B?TFAra1NqelFPMjBOc2Mrc2VoOXNCME5SUVpqS1pqc01UaldiMjNGWVhOMW5D?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 820da331-1658-4559-86f2-08dd2beb342f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:38:55.2644 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r6T201Pa0LDFkhn4MTOl/NYkJNKH60EJ1LP8/dI/c30QTjjCFOb0m97gaEtNF2BfHWZ+0cT/hCvARPj6vG+GNTWOWUvizPJnTHfvhbe4aho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6544
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


On 12/11/2024 2:39 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> We have approximately two copies of pre_commit_crtc_state(),
> one in the DSB code, the other in the vblank evasion code.
> Combine them into one. The slight difference between the two
> is that vblank evasion doesn't have a full atomic state (when
> called from the legacy cursor code), so it gets the old and
> new crtc state passed in by hand.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c    | 37 +++++++-------------
>   drivers/gpu/drm/i915/display/intel_vblank.c | 38 +++++++++++++++------
>   drivers/gpu/drm/i915/display/intel_vblank.h |  5 +++
>   3 files changed, 45 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index d755825edb35..673f75703785 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -109,25 +109,6 @@ static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
>   	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
>   }
>   
> -static const struct intel_crtc_state *
> -pre_commit_crtc_state(struct intel_atomic_state *state,
> -		      struct intel_crtc *crtc)
> -{
> -	const struct intel_crtc_state *old_crtc_state =
> -		intel_atomic_get_old_crtc_state(state, crtc);
> -	const struct intel_crtc_state *new_crtc_state =
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -
> -	/*
> -	 * During fastsets/etc. the transcoder is still
> -	 * running with the old timings at this point.
> -	 */
> -	if (intel_crtc_needs_modeset(new_crtc_state))
> -		return new_crtc_state;
> -	else
> -		return old_crtc_state;
> -}
> -
>   static int dsb_vblank_delay(const struct intel_crtc_state *crtc_state)
>   {
>   	return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
> @@ -136,7 +117,8 @@ static int dsb_vblank_delay(const struct intel_crtc_state *crtc_state)
>   static int dsb_vtotal(struct intel_atomic_state *state,
>   		      struct intel_crtc *crtc)
>   {
> -	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
> +	const struct intel_crtc_state *crtc_state =
> +		intel_pre_commit_crtc_state(state, crtc);
>   
>   	if (pre_commit_is_vrr_active(state, crtc))
>   		return intel_vrr_vmax_vtotal(crtc_state);
> @@ -147,7 +129,8 @@ static int dsb_vtotal(struct intel_atomic_state *state,
>   static int dsb_dewake_scanline_start(struct intel_atomic_state *state,
>   				     struct intel_crtc *crtc)
>   {
> -	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
> +	const struct intel_crtc_state *crtc_state =
> +		intel_pre_commit_crtc_state(state, crtc);
>   	struct drm_i915_private *i915 = to_i915(state->base.dev);
>   	unsigned int latency = skl_watermark_max_latency(i915, 0);
>   
> @@ -158,7 +141,8 @@ static int dsb_dewake_scanline_start(struct intel_atomic_state *state,
>   static int dsb_dewake_scanline_end(struct intel_atomic_state *state,
>   				   struct intel_crtc *crtc)
>   {
> -	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
> +	const struct intel_crtc_state *crtc_state =
> +		intel_pre_commit_crtc_state(state, crtc);
>   
>   	return intel_mode_vdisplay(&crtc_state->hw.adjusted_mode);
>   }
> @@ -166,7 +150,8 @@ static int dsb_dewake_scanline_end(struct intel_atomic_state *state,
>   static int dsb_scanline_to_hw(struct intel_atomic_state *state,
>   			      struct intel_crtc *crtc, int scanline)
>   {
> -	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
> +	const struct intel_crtc_state *crtc_state =
> +		intel_pre_commit_crtc_state(state, crtc);
>   	int vtotal = dsb_vtotal(state, crtc);
>   
>   	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
> @@ -531,7 +516,8 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>   			    struct intel_dsb *dsb)
>   {
>   	struct intel_crtc *crtc = dsb->crtc;
> -	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
> +	const struct intel_crtc_state *crtc_state =
> +		intel_pre_commit_crtc_state(state, crtc);
>   	/* FIXME calibrate sensibly */
>   	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 20);
>   	int vblank_delay = dsb_vblank_delay(crtc_state);
> @@ -623,7 +609,8 @@ void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
>   				 struct intel_dsb *dsb)
>   {
>   	struct intel_crtc *crtc = dsb->crtc;
> -	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
> +	const struct intel_crtc_state *crtc_state =
> +		intel_pre_commit_crtc_state(state, crtc);
>   	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
>   					     dsb_vblank_delay(crtc_state)) + 1;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index ee33a49d9873..3cf3cff0687a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -602,6 +602,32 @@ int intel_mode_vblank_delay(const struct drm_display_mode *mode)
>   	return intel_mode_vblank_start(mode) - intel_mode_vdisplay(mode);
>   }
>   
> +static const struct intel_crtc_state *
> +pre_commit_crtc_state(const struct intel_crtc_state *old_crtc_state,
> +		      const struct intel_crtc_state *new_crtc_state)
> +{
> +	/*
> +	 * During fastsets/etc. the transcoder is still
> +	 * running with the old timings at this point.
> +	 */
> +	if (intel_crtc_needs_modeset(new_crtc_state))
> +		return new_crtc_state;
> +	else
> +		return old_crtc_state;
> +}
> +
> +const struct intel_crtc_state *
> +intel_pre_commit_crtc_state(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *old_crtc_state =
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	const struct intel_crtc_state *new_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	return pre_commit_crtc_state(old_crtc_state, new_crtc_state);
> +}
> +
>   void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>   			     const struct intel_crtc_state *new_crtc_state,
>   			     struct intel_vblank_evade_ctx *evade)
> @@ -617,16 +643,8 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>   				  display->platform.cherryview) &&
>   		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
>   
> -	/*
> -	 * During fastsets/etc. the transcoder is still
> -	 * running with the old timings at this point.
> -	 *
> -	 * TODO: maybe just use the active timings here?
> -	 */
> -	if (intel_crtc_needs_modeset(new_crtc_state))
> -		crtc_state = new_crtc_state;
> -	else
> -		crtc_state = old_crtc_state;
> +	/* TODO: maybe just use the active timings here? */
> +	crtc_state = pre_commit_crtc_state(old_crtc_state, new_crtc_state);
>   
>   	adjusted_mode = &crtc_state->hw.adjusted_mode;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
> index 12c8e1f829a4..21fbb08d61d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> @@ -11,6 +11,7 @@
>   
>   struct drm_crtc;
>   struct drm_display_mode;
> +struct intel_atomic_state;
>   struct intel_crtc;
>   struct intel_crtc_state;
>   
> @@ -43,4 +44,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>   				      bool vrr_enable);
>   int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state);
>   
> +const struct intel_crtc_state *
> +intel_pre_commit_crtc_state(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc);
> +
>   #endif /* __INTEL_VBLANK_H__ */
