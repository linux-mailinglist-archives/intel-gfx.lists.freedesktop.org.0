Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E748994421
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 11:23:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B961B10E4B2;
	Tue,  8 Oct 2024 09:23:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EnFXP7s2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3089510E4B2
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 09:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728379382; x=1759915382;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=XSzVHpZcGj5S09A78smc+UcPj9UNcgO7ECs6gxGkLEU=;
 b=EnFXP7s2olVhuZdh5gRU2PGC0Hah69WS4OLIcmvX79tkj5RrmFuSdCw3
 Sbcjx55b9ETXzw9QwjiCUjyXPZ8qjM50447PBogV2+mixqXrlF8ikpXlO
 +6/q7HvbEaUGPOLeUtZmmAT+NM7pan0BhfA2i5JinTEu4okdD+D1h4pB8
 Nc6ptxOW6AfOiEhyLU35rx6WsAHXZ2j8Jq19D7MrSA4euJMkQF+XnHjQn
 FEsxcFPI2LpNwjxk7OXKT+2sM7PomiGMfZjQXCqUrUd+53phRNSVlwqKW
 i+ecnPv8GphKK7+CT7R5Gmw1jli+Gh/QBx4SATZ3pp0bTUTFdI+U3ypta A==;
X-CSE-ConnectionGUID: s/YktlqRT/CV4MoO6ig+6Q==
X-CSE-MsgGUID: Z6wLsjpjQl2wIyzyyhXeCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="31345100"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="31345100"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 02:23:02 -0700
X-CSE-ConnectionGUID: aKlRr6OcQVWcGHrpnq2wVg==
X-CSE-MsgGUID: xwDUg9izQFO83Vr3LJ0MOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="75453003"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 02:22:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 02:22:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 02:22:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 02:22:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 02:22:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bEFQ0JoaW6aPP+oUOM7UjqKQ6SZjPlkWhl8ANfSjJEDCfbYbqEYa9JaQHdq0ED3rmL0NVbMUiZyRb1CfFMg+WR+xyCOIsMS9SjyOduBVfIM61k1XyDbT1kqcsG/ghsmxXKOcugRathZ0c+LHyp14XFee8a4ExJnP/7xirfyjjt2FoViTQq+L0ryxYS5ZbkG9yxLa9/rLkomp3k1n7Jcu2JEBqVoTK0xu7ih4Dmqife4iuCp1p6CBHmIWEpPB5cWHMuHLVU9Tn6sd/YWZbO64SmHPmQCX7VXt25bauYgf1/+TDJk0Xmq0akuyQwhKOGoHKvK/31sFdWer+nkzlg8fdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yeSNjo6D8+5Sgm4GKVQpenXsiVIXmvtYQHB59cumIf4=;
 b=ofVa0UFSekqHx0QJuB/TnoL9RtpeeL0ML3qzJaKBKzFqbAn5NhFLsPD6XdTg5MLs/fE1IK7FLAH0T/X61zg+ZHXVniBEJrloHTdfGlqB+KdA4ZpiKi0IT679c9+TeRcmmvyUTYvSwSTR4aEO3c+/G4miVYPRg8MPGR4jOSVjykFX9w1YYIrGSNJFN5JoEih855p+W2Rd6V3Q/cYd6ttTJldIHQejvAu8uR/BoTmLvsF1jc5o4MgRxhRqbQDWopkMazzUF7I207e4EWCZDuZIPhWhji8+X09pRyLM/mR+Htu+kUvi88a8Z8b5JF4Q1+aT0Q3lFB/d/xzwRhmHKmu84w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS0PR11MB7801.namprd11.prod.outlook.com (2603:10b6:8:f2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Tue, 8 Oct
 2024 09:22:53 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%6]) with mapi id 15.20.8048.013; Tue, 8 Oct 2024
 09:22:53 +0000
Date: Tue, 8 Oct 2024 09:22:43 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Subject: [PATCH] drm/i915: move segment iterator to match current offset
Message-ID: <quw77kz25yey6pnli7dabf2zuwhfycgil5aajhgmz5f3cxxawz@s4qvuuluu42m>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DUZPR01CA0231.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::12) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS0PR11MB7801:EE_
X-MS-Office365-Filtering-Correlation-Id: 73af2de3-9ef7-40f2-2813-08dce77ac917
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d1R2NmhwU1gvOFM2eGdEQ1JpOTFQOFVDYVJRczUvUlVkcnNnS0tLekNpZmdE?=
 =?utf-8?B?RFZGK1ZwT29nRlIyNG5qbVZOR1UxUFV2UXNBcWlmT1NZTURDb2kxWkQ3TDRw?=
 =?utf-8?B?V2I1Q2YvUG1jS0ZIN1h2dndQVUIrb0dHVjIwYnNRTG94L2hRZHR0ejh1R3Fy?=
 =?utf-8?B?ano2aEtBbUxMckc3NUlYUU13bytYVmQ1aXVFREJtakVINW9wYk1Wci9KUjM1?=
 =?utf-8?B?MXpGOEk3YkVEd3AyaDhKNnROSUlTYTgwckprczFqUGdDU0tkVmpyUnNTRk9K?=
 =?utf-8?B?aHJibHl2ajZQUms4UFNIV1F0ZGM2OVdYNkc4YlNHenlJWm1JcFBBTkFJNGlD?=
 =?utf-8?B?S0d6dTFpV3plenVVbGNJcmtuL3U4WUJTSnBJNGFITGlueUw0bWVCeHgrOFdL?=
 =?utf-8?B?MkhYb3IvNjNycUVRbjFXVVVIZGNERzU3N1RYRnhDelk0TTlFNHdETEtHanhk?=
 =?utf-8?B?ZGY3Sk1WNHJMa1Y0enZiVGh6V3BaTFJWTW5UYkNZelAwenU3eXNEZE81S1lq?=
 =?utf-8?B?bWw1L3hlOGdhaUxWdUp2UlI2SXM0U1Noa2gyZ3V2NTVCYlBhV0xtYkMvYnJh?=
 =?utf-8?B?N0tFcFFzbVN3ZVhuRjEyQlZiZTJMdy9hZHRCWElyajd0KzNoWjg5VW0waFdp?=
 =?utf-8?B?ZDFPSzBpZWFFUDRWWU9INHhyQmRtcjhib0RmT1ZDQ29sQUwrWTFmc1dCYlMv?=
 =?utf-8?B?N2R5c1ZqcDlMY0VWR3l5MnBtMCtYbTlMTmJJQlBjY05URGVsbFY0WWhna2li?=
 =?utf-8?B?aWxsNER6R3dyVmcySVY2M2RHMkNVckJxS2VFNTI0WVhoK0dLYTBPN2JTeE00?=
 =?utf-8?B?RW55NWE3YmtvTzRXbSsvbHU5M29WS3pTcERrR3N4WDlPd1BSdExWeTRYNWwx?=
 =?utf-8?B?bGs3a2pjNWF4VWJKTG56UkVLWWJ1VFRFanVZbi95aDRTcWJBaGNIditXNlpP?=
 =?utf-8?B?Q0ZJczJZZ1pBUmV1VmU0SFRmSkptaGFzR2YyMGtPMnJUcHZyQ3lwa3RLaTV2?=
 =?utf-8?B?TzZkRDh0WkRWVG5IVDZKNlAxT29BY0hWWWVjVXNIODVIN1pObHpQZitLamVl?=
 =?utf-8?B?SHQ5eDhYdmtPRFlzZ0Z3MnpYSVdIemdZYThnWWhqWHZ5cGhEVmhyOXgrVnZZ?=
 =?utf-8?B?S3Y0YXgxUUpqZnVNNnlXbWlMbHJDOStMa3JQSXByVUhMTklnQlMwWTZaSDB3?=
 =?utf-8?B?K1JwanN4SjlZRWdPeEVqU1dERlNMOVViKzJHbnV0ZE5ScktWOFgySTlDSFBS?=
 =?utf-8?B?dzlQUmFpREQyWnREd29uaGRhTmxqSmlOQUtabkFNeDAvUzBrMFZsQ0haTkJu?=
 =?utf-8?B?NDZRMWY5VkVYaDl6ZDBLYytqdlZiVW00UmdJYzdndGc0a0FBWHpXTGNNa3ZP?=
 =?utf-8?B?VWZQMFRyamM2eG5pUXVnMHFoUVZHcHVLUDJNTmlYeVNqcTRzZkhqTVY5R1U4?=
 =?utf-8?B?YjZXZ3cwVTVhbVNpMXhlZmxFSzJOc1JiZGFFWWR5d3ZvVnY4YTRIZUpYYUU4?=
 =?utf-8?B?cXltaHllcXJSRnVmTVJoVzNuMVJMRklpOTBTb1pOeEYzcmZVUTV5VDliaVpY?=
 =?utf-8?B?dXU1V05aQWVGdGpmLzBpMS9iMXJxWlZhNkdoRlUrRGhTbkdpaGpjclZCWDAr?=
 =?utf-8?B?RHFISWFac28ybTNhZHRhbERTMkRsdTFuR3FIb3pQaE9KYmRiU1NDcjhHVE01?=
 =?utf-8?Q?jq1+v2gCzEylLvgeOg70?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDQvaURTZkhkWFEwVlBCMXV0UHcyMkpOT3plOHNOVHJvWnZHQkZVN29uMjhK?=
 =?utf-8?B?TVNsK2p3cHd1NDRNcVUwQW5vc0hEUzUreTh2L2dhVld0S0xuOWQ0Q2c5M1ho?=
 =?utf-8?B?bnNKcWRYb0VtL1ZqZUlJUEVPR1BOWVhISUFHdWNwNHVwbHRwMm1aQ01VZWQr?=
 =?utf-8?B?K0ZDSHNzMzI3Sm05RVo1YVhpWkRvYjFScDl3dEcxR1JzcU1SbmViRjhTS3lF?=
 =?utf-8?B?OTY5bjIrcEdzZUdTK2I4cXJ4RGRSMUhBV0V6cytsN3BJMzJYaG5jWjlOc1hO?=
 =?utf-8?B?Q1REQmZLV09VQnRNNXNjTEZIUEkwaE5wVnk0ZXR5ZzZ3cjY5djRnRjJ6Mlpm?=
 =?utf-8?B?dWZ6UERXclIrQUtNcXlycjRKSDBDTThKQVhkRGFHdVhybm9qS1o5VzE4U1ox?=
 =?utf-8?B?THFNVEcvTGZOY0dSbi9tMXdZbXVqOU5jR3h4UHY1YTZhekhWM0tycFVVdlFF?=
 =?utf-8?B?dlU0RU53alAwbEJQNjVnMWVhVFA3dXhBN3JIcjRkajM4emVFZHJ2eDlSb1hG?=
 =?utf-8?B?VzdadktaclNua2FzRFdQQjF0M1RuMzFXdGRQcFZXemprcUFjR1lGSUlZU2pF?=
 =?utf-8?B?UmRCNU5pemljVmtzWFpnTGtvNUR6ZzRqeEhLd3ZRNUN5MHphUTBXOUxDQ2dZ?=
 =?utf-8?B?QVRCeW5QcWw4aVhkV0ZxV3R0aFh5U3NVV0hHVWZxMVg0VkxMaFZsUUhHUWdn?=
 =?utf-8?B?QTlmMWFJbXc2UnozSnU0cEFLSXZmb0UzWnJzd2IyTEIxM2JaOU8xMmFNTnZ3?=
 =?utf-8?B?aERYMDdEbWlTWjgyWUN5SkE4N2hFOFhyK0w0ZVp5cUhEV0F2dXc1NmVpbGsy?=
 =?utf-8?B?T0pMV1Y2SGdzOUNOTjhFOWltZkEzYVhpaHhOcUtzSzJDSmJpNVlyZTlKRjlY?=
 =?utf-8?B?a3ZhYkpqbTJKVS82Y3ozcnJ0MmhRTUljVEc3VjV4TFBKOEg5YnYwTTJRWkdJ?=
 =?utf-8?B?YnErYlFFMkRDNjhtdzFZN2tlZmF2TStGY2JSbDEzaTdoYnBYN2F6cC9xdmtG?=
 =?utf-8?B?Y0dSa0lVa3ZPOUVtQlEwd2ovbmNrcmt4dFFyTlcvODJJS3NuM0NORHRVVEx2?=
 =?utf-8?B?cXBwNFNqVTNORWpaOEpFWDhYV0lyVlo2SjJ0aGJxM1NOSXFicmY2bCtxejNa?=
 =?utf-8?B?WTh5VzRPcDRHZWFoa0RxWDFWSS91TVRaNDVKKzkzcG5sY1A3R2tRSFh2cnAy?=
 =?utf-8?B?U3NMMlIyYmthcVVsL3g4M3hxbE1OcVZ0ZlhZOVJNRnZ0SGhuMkhVdmdvdi9x?=
 =?utf-8?B?eEpkS2NScnpZNHFkKzlOOG40SlBvaEV0VGd0YW0rYzhqejhhN3BmbmxSSExS?=
 =?utf-8?B?WnFUQ0FhaXQ2ekd5ZE9qRlhGSUd6eWlkS3BGWWdHdWk1dndCUEg5Qkg2c1RS?=
 =?utf-8?B?VWRJWUlCSlY4dUlnUTVVOGZsRzhuem1rclNrTXgzYTRncS8zbUt1eGhXMDdF?=
 =?utf-8?B?eHJjM0NGWWNQNFgzYXQ0MmFVMnA1OEVuT1N1ZjBtSFpiT3lRQml2MURNTTla?=
 =?utf-8?B?RHRiUTBSYXJYamR2UmxsM3pYbS9ydmNCWFhIU0dFTTZ1NDgrN0Q0ODR1cmIy?=
 =?utf-8?B?RndwemsvNUVVWTcwTWMvRWxGVFFZRFdKR2o5MmtSdGxkUnNLQkRRM1NmYkRN?=
 =?utf-8?B?M0VoM3MzRWlZaGtEcUFoUmVsTyszNGZoY0laWUxza01Ka0xoVTg4S3poa1Yr?=
 =?utf-8?B?VVRuMTFLSGZ1ZXlTWk93UzZPY0VaV3hMelE0bUhoaFZPOVQ1emMvRUg1b1dB?=
 =?utf-8?B?TGt4YlprKzBQMEVvbGloaTdOcDFzalVRSlFXemJibkJhUS9pYTlrS2h1RVZO?=
 =?utf-8?B?dUcvUCtYNFZIV2ovdVNQOFo5U2V3VVFqNklOdVNLbzRZRGEwU2tjMEU4eTlN?=
 =?utf-8?B?c0ZzRkRFd3dIQlFKUUJ1NGZxUXZNaFB5Nk8zbzNQSjRrNi9qRXRVbUNMOGl4?=
 =?utf-8?B?MU9vbkEvdjdHVjdXeHRsMnEvZHozZ0diVjJCcGxrWTVybU1wd1V4OUl0TWpq?=
 =?utf-8?B?bEhycm5FVHJDTWJmU0g2bW1tMzFLd1Q5cG02U0JBbExGbzFiWVIrTCtZYTVR?=
 =?utf-8?B?dHFYbThYdnZIRXdRTzYwRlp5M3JYLzZzNUZNdmZLeW1hOVFmY1YwUVlMOG9u?=
 =?utf-8?B?TzVhUDFPYmpUWElXY3dRbTRrYUR5b0RiUTNYb0Q2S3NNSm1xS3pMYTA5Q2di?=
 =?utf-8?B?dmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 73af2de3-9ef7-40f2-2813-08dce77ac917
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2024 09:22:53.7004 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d6MOQrQWrnKxQOS8TpMRe5+qvysQ9JTzoefgrAlmWLwZD171ztimkuQJb/Ad4Vd8LKQofqWlU+lbB14kNNoUYJs4BeOep/wGGs9HnW/AgsE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7801
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

Commit 255fc1703e42 ("drm/i915/gem: Calculate object page offset for
partial memory mapping") introduced a new offset that affects
r.sgt.curr value. This field is used in remap_sg() function, in
set_pte_at() call and changing its value causes page table entry to
also be affected (see set_ptes() description).
Example:
 1) upon entering remap_sg() r.sgt.curr could have already been changed to
  a value equal to or greater than r.sgt.max,
 2) set_pte_at() uses r.sgt.curr to map a page entry from another segment
  to the current one,
 3) r->sgt pointer is moved to the next entry returned from __sg_iter()
  only once,
 3) the memory of the mismapped page might become unavailabe (accessing
  some addresses causes -EFAULT).

This patch moves current r->sgt pointer as many segments, as initial
r.sgt.curr is still larger than r.sgt.max.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/i915_mm.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index f5c97a620962..9a140840214b 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -51,10 +51,22 @@ static inline unsigned long sgt_pfn(const struct remap_pfn *r)
 static int remap_sg(pte_t *pte, unsigned long addr, void *data)
 {
 	struct remap_pfn *r = data;
+	unsigned int sgt_offset;
 
 	if (GEM_WARN_ON(!r->sgt.sgp))
 		return -EINVAL;
 
+	if (r->sgt.curr == r->sgt.max) {
+		r->sgt = __sgt_iter(__sg_next(r->sgt.sgp), use_dma(r->iobase));
+	} else if (r->sgt.curr > r->sgt.max) {
+		sgt_offset = r->sgt.curr;
+		while (sgt_offset >= r->sgt.max) {
+			sgt_offset -= r->sgt.max;
+			r->sgt = __sgt_iter(__sg_next(r->sgt.sgp), use_dma(r->iobase));
+		}
+		r->sgt.curr = sgt_offset;
+	}
+
 	/* Special PTE are not associated with any struct page */
 	set_pte_at(r->mm, addr, pte,
 		   pte_mkspecial(pfn_pte(sgt_pfn(r), r->prot)));
-- 
2.43.0

