Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKQfC08Y5mkprgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:13:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6314C42A87F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:13:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7B5B10E56B;
	Mon, 20 Apr 2026 12:13:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S5Db/Kcp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B4A10E568;
 Mon, 20 Apr 2026 12:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776687180; x=1808223180;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UQ3ILBi6XsT0k0NuwbvArfyuh3gXYM2jP2OcLlT3dOU=;
 b=S5Db/KcpHZ3vQWADJ6wvTMtHd3uLeCe5SkH59RHWNgtwZjtdHPvHQktv
 GmCXa0kgzX7auP9VfLHhwCgm0BbEakKVzmffZ7Xm33YZ4VuSPISulbS9q
 MGzUCoVqZgMdr8RwiRJag8QvJ2hmWQ8AJK6Xyu+7MYhWRqZd2F5XhJilo
 kK51v2hmvcpfQ8PJUv6GYf1ST/H16YIaTxHZi/w7l/onKkswzYRAn/JKN
 /vK9U0vHczP1mhLb9WX3ggk4pPbSMqXauYWqSpHN0B6hhUfetP9qNe1gv
 stSNKlGJSScSyXYgB5nqQL7P/sRnYHX4r5Imp6Y92uyfapYkO3ecuRq41 Q==;
X-CSE-ConnectionGUID: ILIl7G7vSUiwHzRl5JfyxA==
X-CSE-MsgGUID: MVqhX28LTlS285DXjchpYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="89067330"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="89067330"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:12:59 -0700
X-CSE-ConnectionGUID: HA0WFh/2TUiQr6nMsTvG0Q==
X-CSE-MsgGUID: 1ICkDGpkSOy/31T0uoloZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="230667698"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:12:59 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 05:12:58 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 05:12:58 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 05:12:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kQFF2VvMB5kz4DOsi6d5jF+VQKjDd1nBLDUtOGZxs/gup0wn3UzuqJyGL+VeYcv1On0mTgfeUtwbNEmmXqfJ0RyHb50UPmyefiEe5gQK6HNOQEizlaCxedqT238mCcjvAuJvmKBbNV0EyvV+LtWG9+NvmR5YRbke2QypnFmYyi/+2XEYFsST4iu7jmnJfCHLEiXzJHfhiDqKxtO5gN2OWlpzHOaIW2nlneD6pFqHQdUkkHM8PvO4knYCg/s9tSszSAoqa6WYfY8RaQI9YxFgN0+jnDk/LvnzIsqdoJZ5Go17AgrifBww1SVXc26ttQe4NWS5V7Rz0pTQMVinlKvl1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5BVn3d+0i2QTOCDtIMmu5QXuf3G148yRxlH5zl/Cjw8=;
 b=Gttmhi9U0x45pOmpWkCi9o395TNcC6roq4PnpfiA7YvUw2PFXCErtCQ72zU88Y6m78aj3cz6iRufNmsZaiVrv0IpZXU5imDWUEmyX0d3jHCCmkjtpDrXLXR5XRfE7MgQpOtmi5BVJ4EeWsHQ9Xfd2XJNbIOoUWlcJ7DvozvvI0CBpAYcX4zd3/pKpZ6IWvPHl7wp25enXhdrA4R0o6dizDNCSkG0qz+u4Kcqey2NR3WKPCiLahODS7Q92Z7wNdUMWHedTbO0Cwf4K3rFiFRBbn9643cX98n/foaDeyIUIBhkg1QrXWYy3RfL0ovTiWGR8VFuAcl+0MeL1Vc0D4VYtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DM4PR11MB6503.namprd11.prod.outlook.com (2603:10b6:8:8c::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.15; Mon, 20 Apr 2026 12:12:54 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9846.007; Mon, 20 Apr 2026
 12:12:54 +0000
Message-ID: <6711459a-a282-4bac-9f9e-6bcab2456a7a@intel.com>
Date: Mon, 20 Apr 2026 17:42:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/19] drm/i915/display: Fix HAS_DC3CO() and add DC3CO
 trigger enum
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-7-dibin.moolakadan.subrahmanian@intel.com>
 <DM4PR11MB63603F0F4D3138FCEC27730FF4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM4PR11MB63603F0F4D3138FCEC27730FF4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0176.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::17) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DM4PR11MB6503:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ce391f0-234c-4f88-eb43-08de9ed6264d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: fMZ13H1sJHytc/qJCPbZiCLUQwYQj4H2Fk6jKD1KMOOMIl/6+gKxFMT0J8KJj0QmkN/UYRWsap2BLy9d4s/FBSp0q++x7r1NXQme1hY+plyEiLfBnaTTHifdnbOlDXG6dlbFLz6AbfEQ3onUCW9VZ72phKrk3HYV3AX0UbhTWFGZyO4iWNRvDar/FrTBL+22H5BE5AJCPH3xBa6pZOSZym2ZEvJvc7b1N2RCwpEWsf917HQbKueV+w+eoyhTNPxJJYuFwrqaOdLd5s0lf4OHzivlHLeKfii5l4ChTazMCy2MCjtB63ofSOlITOnFUffhQNYiQtQT1XsgFw/WfaejiNzslEwyLbBkJIeK2PJG5uHvu7l/dDzfdIEiacgWHmjwI3OkQ3W6wvAU1O0SddDQXxpZ8AGoSq40W0pXI3H7kqsqUtSmUuMg7t/bXawWQ5XF5rQkuA6unMV1HNkpMK3KJEeR8tSsjibv0D+9Sy9XtPChLgkjxusd3AF8XxYz02R7xkDFWx4c+JQwmOGiC3003b2QRYPvUUpacDwVhODE7jt9qb14EROg+pPZmKiyPFjj2gY9mLRbLOHWFLQWNDtAy0rA1/wBTaL5J3tz/YhgN69emto52n3yKFQ0Os3AKbl4G4oKMkQF5Fiekk8DxMrk9S2IC+DPLGFI8kPkvAhrrs7w2BTPNmuUncyGWGuX7+h+bac5mDtYDyipX3VWXIEAU4qMvVX1C/wB0uOASty2kac=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmZnY09Yd21leDFuTGUreWtxanMvUU5SMWJ5UmQ3ODc5R0hxYUZjT1ZPUzFW?=
 =?utf-8?B?T3lEdm03MGdCRDh3cERwT0dSbmU2Rm9SUmdHMDIwT2pmaEx2ZktESFk5NlpD?=
 =?utf-8?B?dTQ0TCtuQndpdE9MQUNESVpOVm5IZjNXTENEQVRUb0x0YTV1THQ5aDhhQ0pQ?=
 =?utf-8?B?eGc2NE5HODFvSFJ0eHdhZ0FnZk9hcnlsYWJVbnFueEpXUnR5UnBNOXhxd095?=
 =?utf-8?B?ME5LU25vV0V0NHlYY0NEWUJzeHpoMXd3eEZXamxTd1k2WEx3d09POUlYaXJu?=
 =?utf-8?B?NEdqczdWM3M2Qm5jSzFJZk1kdytLTXJudDB2bFR5U0xhak9TazJLeXQ0MzRL?=
 =?utf-8?B?U3NXT0ZNVFQyaDdNNWV3aFZYdXNFMDdrdkoyQmZnRkdKVGl5TGZzQUFKbWp4?=
 =?utf-8?B?UW01cE15bnlGVzBiQzZYRytXclYyK2tYbnhqMEJScnpRR3pJcjZqSVJ4WHJL?=
 =?utf-8?B?c3hXSnNyOGw5VHBHQjB3YjZtSUkrSUZRaE40SDlNcUh0OTBiclNYZDBZZmVr?=
 =?utf-8?B?eFA3VnlFcGhZR1VVb0pLeTBzTW0vU0w0WDBQVHVRcG55SVRrMW92SUF5L1My?=
 =?utf-8?B?RCswOU42WENiZlpLVStIa3VVY3RQdEhqT2hvUUJNMzZ0cEVYbmdMSGJwaEZ4?=
 =?utf-8?B?Q24rYnFacjl1SFFIdFZRamZabWVGM1hoOFk1VkxMY2c1L0ZSWlFvV2V5azhv?=
 =?utf-8?B?Qmk3d2NISGl2WE5TdEMwckh0WE5Jb1RkcUhXWEVTUG54dUg1emJyQysvM0c2?=
 =?utf-8?B?N1l3MVRuTnU3TTlzK3V6emlkVXR2S0VyWXBjNEVtanBveERBaGw2UHhyakNJ?=
 =?utf-8?B?MlA4dTNoU2d1TmI3WUZ4eUNRckIxVVF0b3dia2RpS0xSRXI3c1V6cEtlRkhX?=
 =?utf-8?B?WG9hcjl2UTAwa05xSUh2MGZVZEpDS3Y2c2JlMXFEV2xmek9LaURRVUpnelY0?=
 =?utf-8?B?ZjUrbEpNVDlrN254aDBOdCszbThIK2h5TXFyRm1RSWlhbWt1Ly9uWkgvUWpG?=
 =?utf-8?B?V0E1Rzg0NVpaazI5cFB1WGtuK0tEOHZYakxiUmtCWHU0V0todlRlckw5c1M0?=
 =?utf-8?B?RlhjRU1tL2xVNDFSVUtsV0tiRHcwOHEzWmdvWkI0WTUzWU9pSHQvYkVxYTh4?=
 =?utf-8?B?andidndTQW92ZlBKRHVhdmJrQmR0UThLcjNDdjRxalpXTytQUnV1RjFxcWtD?=
 =?utf-8?B?MVFPTC9YcytJTGRqY0ZEaTFWWVF1Q21TRFk3ZnJVQ1FZSmhJWm9TZ2thMTZQ?=
 =?utf-8?B?UldiV0d4bXNOK1JibHl6QWRXQ0JjWU5TNE5IZnVhbUY0c1BiVDJZKzQ4WFVQ?=
 =?utf-8?B?NEhwK20rU3pWcnBZV002R0FRK2c0UjFVZXJhWVFlV2xNVVUzRkVKd1FNTkJP?=
 =?utf-8?B?TEcwaFBTMUxOVFBVdlhJK1NKYmdlV21NSVNSMkhHcDd3UmZOc3hwd0orMGVF?=
 =?utf-8?B?enNscFVsb0dua2RMU3dPeDI0cEF6RXM5SHo4MkNrQmhXb2pRNmVNV3ZYRDQ1?=
 =?utf-8?B?ZTkwOXdkVERXRFBSYXJPeEE2RVJxdDRZZTcyZ00yVGYwSEgwWE1JR1lCM2hx?=
 =?utf-8?B?UWVYaUl1SEJsWTBMaFpNTG10RWZPNTVkMGoya0s0R1BSM2xRdzdEMlJ6QlN1?=
 =?utf-8?B?TWN5Mm1IOUFwZTVvT052Y0JHdmpSS2g5YmZLTFJkYjkvR3FVZkx5YTZ6OW9p?=
 =?utf-8?B?ejNjSHh0emxwUGR6UGo0a1VrZmthTFlJQzNKUjE0SHVzZUFXZkxLaDFCUXpL?=
 =?utf-8?B?UnYxSmlNV1Fzam5JazdlNzFMTndLTDNaZTZNbGE0RWxFMmF5RjBvVmVtQjVw?=
 =?utf-8?B?cjF6NThLSXREckVVdklyT2VuRW16dHNpTU52SkMzejFxNHhLMTdEanJYanA3?=
 =?utf-8?B?U25oWFNBbVVsM1o0S29BWmdNNXMwMVJKOVYvd29RRHIrVzdYaTYrWFgzMWxa?=
 =?utf-8?B?SXNvUUQxYXUwVjFoeW01eThsY1FhWHBpMGo1RGFEUEJFNEwvRkNkbnFyOEJO?=
 =?utf-8?B?Q0R6elF4MDI2VDRHbU9jbDRybW1EVXkrR0NpQ3o4OW5qallFY3RwZHZyVHh0?=
 =?utf-8?B?bnp1UWZwbTJxc0g0MG1tYmV3ekVuNitITzk4RGNRU3F4Y3R0bWhiWFo5NUF1?=
 =?utf-8?B?d2c1cUtTbFVlcWxMZmRlRWNYQkJQZHk1OVVMVmh1TS9Ka3JRKy9IUjJPNHJa?=
 =?utf-8?B?cS92bW1adnFBNzlUN21XWGt2Nk91UTc2bEVlUjhVMEFYSzFzNkFjaDltV25U?=
 =?utf-8?B?KzJDZER4WGdaeXdNcG9YMGhKSGJORFd6eXdNbVJ4SjNZMlUvWERPaUUvQWhF?=
 =?utf-8?B?dHhmRzFwbi9qSndaN24xeUFsS3V1N2N2U0Q3bTUyOXdHUC9WZ3VJYjE5UkJh?=
 =?utf-8?Q?gbkn8ASWQOsA9XHFDWSC0a1G5Za0BIwwpRvQXQn90lcna?=
X-MS-Exchange-AntiSpam-MessageData-1: 66MRVRDKpJ40Xg==
X-Exchange-RoutingPolicyChecked: k3RwXmEboyI1T4eiIwW0SuT6vVUAwAKJXKkcUTOTmC7jLwndPei4GSfo+ok2784FvRU9n3k6S1PLHeBfdMY43TH6xf17c6l1xMZDdtcB7DFhI47XyLUspJN6ajfwmMUiGKApaFIjD98ZcY/SayuH884xsifGWY9lt3NzDH7KcUel1Bps8k8N2YnbmDTsQRm83QKItWrYwS32ra2VVxNEByF+gocfTh2RUyMrV/M9Q2OeT4u1faodds6l+i46JIBssE4+nK2g+EKr5O6jyRUBkVCUGJq6kTY0zSjbFEccJxDlq/qRQ3pBrtMYjNLMJa6cC9DIEK4By84wZnDlDRKJtg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ce391f0-234c-4f88-eb43-08de9ed6264d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2026 12:12:53.9137 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VWpUymxY1H55lljkCCUiY+8G1cEjhp8w3MnFkjoXw+Gs9fc72tJzeC1705+thh/FLiC4TFHgd3DJzDMJFQKs41s78nl2YhZUsnpPxadI7D9Fqz4SK3yuXs1JB5LdJndc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6503
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
X-Rspamd-Queue-Id: 6314C42A87F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 14-04-2026 02:46, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Thursday, March 26, 2026 10:46 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH 06/19] drm/i915/display: Fix HAS_DC3CO() and add DC3CO
>> trigger enum
> HAS_DC3CO has not been introduced as part of this series so no fix as such.
> Sync with CMTG series to finalize a common macro.
>> Fix HAS_DC3CO() based on display version and introduce an enum to track
>> DC3CO enabling triggers.
>>
>> BSpec: 75253
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   .../gpu/drm/i915/display/intel_display_device.h   |  2 +-
>>   .../gpu/drm/i915/display/intel_display_power.h    | 15 +++++++++++++++
>>   2 files changed, 16 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
>> b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 35e06fcf794d..002fe0ce951a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -189,7 +189,7 @@ struct intel_display_platforms {
>>   #define HAS_LRR(__display)		(DISPLAY_VER(__display) >= 12)
>>   #define HAS_LSPCON(__display)		(IS_DISPLAY_VER(__display, 9,
>> 10))
>>   #define HAS_LT_PHY(__display)		((__display)->platform.novalake)
>> -#define HAS_DC3CO(__display)		((__display)->platform.novalake)
>> +#define HAS_DC3CO(__display)		(DISPLAY_VER(__display) >= 35)
> This is the trigger for CI build failure. Fix it.

I will add it as new macro so build will pass and align with CMTG
once CMTG changes are finalized.

>
>>   #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p
>> || DISPLAY_VER(__display) >= 14)
>>   #define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
>>   #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)-
>>> has_overlay)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
>> b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index d616d5d09cbe..3fb45154864e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -131,6 +131,21 @@ struct intel_power_domain_mask {
>>   	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);  };
>>
>> +/*
>> + * DC3CO enabling triggers (bitmask).
>> + * DC3CO may be enabled when at least one of these triggers is active.
>> + * Additional constraints may still apply.
>> + */
>> +enum intel_dc3co_trigger {
>> +	DC3CO_TRIGGER_NONE	     = 0,
>> +	DC3CO_TRIGGER_PSR2	     = BIT(0),
>> +	DC3CO_TRIGGER_LOBF	     = BIT(1),
>> +	DC3CO_TRIGGER_PANEL_REPLAY   = BIT(2),
>> +	DC3CO_TRIGGER_ALL  = DC3CO_TRIGGER_PSR2 |
>> +			     DC3CO_TRIGGER_LOBF |
>> +			     DC3CO_TRIGGER_PANEL_REPLAY,
>> +};
>> +
>>   struct i915_power_domains {
>>   	/*
>>   	 * Power wells needed for initialization at driver init and suspend
>> --
>> 2.43.0
