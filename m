Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87230A4FA3E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 10:36:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1128310E264;
	Wed,  5 Mar 2025 09:36:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AoO+TGQD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B85FC10E264;
 Wed,  5 Mar 2025 09:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741167400; x=1772703400;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hlZpxCNLhWuf/Vi0XLI6ZBXMtJ8lxYnPoVM6jE8uryQ=;
 b=AoO+TGQDQ2hsKaRY+dAjB8YqQ4XzU3NTjuic+DTmP5boFD4/28saqXSJ
 CTSeSH7JTPOfeYawQHogHCfVsDBrhP3RkdShMV0pPouktPedAiE3JJbiC
 DhoZKiuA0mfecid+85GL6KGK6wObPj0SLedGSFGoLO+V8aX3l4UxfRAlq
 eMXytvZMd6WjJQAJuNeWc2nFzFKWBEeDDLLWqYXQfDk1dbLccJ1wVIbJT
 8JCPEj8mtelZgBIW7amV7K8FRDkm5/bYVgGjrhMzKLAVv8C2tS8lcRmj1
 a6uf5YLN1Kt/yS4SPCRtIC7T58ktk84Xt5+R3ScncdaLmsxHbCcPinsMp A==;
X-CSE-ConnectionGUID: hWotScxLQEK0UNQXmZvW+g==
X-CSE-MsgGUID: 1TkJNNyPQx6/vKEH7X1W6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42143893"
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="42143893"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 01:36:40 -0800
X-CSE-ConnectionGUID: kEqWdib2RTK2I8fjojBJcA==
X-CSE-MsgGUID: Qr9YzaGLRP6o7pHv7fhFuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="123571008"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 01:36:39 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 01:36:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 01:36:38 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 01:36:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Birvi5v+F9k/FfrqE/bnWHo0LnkJsU0B5IEGpgiFN0wyKqx9sugz2BiTj2OleEKp7fIQN+FqJ9xth5OIoB9s4PxwM1twQzVzUJQUXzcak1LDhYPikcXMSkrANqHUZbMmjClIfYRaxiPsjg3OUARs5NkO7ATzAzM6cNlX+jzhF25P3/wp2feqifFRO8rTFyrCJZUDh7y5CvaygUXYQ6QTcEFCVh4mBW4LKFOtdGv85hMF/8aNwNkAC/GWwqE1YuLrYuDQMqY1g8vrJ8ADOQi4Cn/S1hLuAlpSq3qzTpYD/C41mmiF7ir+1K3dx2B2UvwjVMWt9uMDozSVhtGdaitpHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Y3juIoNN4ZVWzgInrXvE8jQdtcisYZFUla0lIrGQhQ=;
 b=yHAjCs6iy2dDnxWRYytqRIWxwA8QRI4haMO/YDmM7/GISXu/6m67u3jlBNiucDqQng3GvLCiPfJdFx/o0C+sKMdQF1cAZAelkO6TVLh+OzK+gE5msKBM5GGNFViiT8sGqP5/iFpOabNUNt7kRlgni5VsqJqDIreM1f9Ktvb8z5uKBeFTSJFDvaQR9JdxULEfX/yA9rg6JvnCCXrNxBG2GjXc1A7qcG49Px1VJXyidO+NZMzkbzX89sE2Rj0xBjSYVZza5gobL5LUNMgLIB6HcaEksAQsr56CLD1RT2xa4G/uDA5bAZT4MqtrmZZglAZUit5vCBv1TZGTA0Z1NAMCrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4812.namprd11.prod.outlook.com (2603:10b6:806:f8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Wed, 5 Mar
 2025 09:36:07 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Wed, 5 Mar 2025
 09:36:07 +0000
Message-ID: <58fa066e-2af4-42ac-a9d1-b55547c2d2bf@intel.com>
Date: Wed, 5 Mar 2025 15:05:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 19/22] drm/i915/vrr: Allow fixed_rr with pipe joiner
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
 <20250304081948.3177034-20-ankit.k.nautiyal@intel.com>
 <Z8dPjugyQ1dPoNdX@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z8dPjugyQ1dPoNdX@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0018.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4812:EE_
X-MS-Office365-Filtering-Correlation-Id: c0485ba2-0a7e-4661-2346-08dd5bc92796
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QkJzdUM2dldqTGRKZkwzTHNTS3hIalRSZUJyMlJkZWVla3MxWDVrWCtaR28z?=
 =?utf-8?B?d0hYeGw5eGN3TVFrM2N6ZHhGYWhxSzVqWHJJVEJ0MHNnd0JadVdZR0pPcXYz?=
 =?utf-8?B?UXRlMUs0NDA1NWZScGFTLzFmKzFQcWtDeDRlSEdJajNOL2M3Njl3WlB2Rm5z?=
 =?utf-8?B?UWpsWHhJTG1JbWRlZmJpWG5ZMzhvTGVzby80UjdHM3BPR1c5aEk4YytvTUxI?=
 =?utf-8?B?TG9pWUpHa0M5d1FHOU45eE5ac1lyOVhWMXlDWkxiS1Q3NDhCcWQzazJkUzRU?=
 =?utf-8?B?aHRFVnI1c0g5djQ0dmlwaEtKcXBmNHpSc2FsSStJaW03czYwdWNEa3RTVkN0?=
 =?utf-8?B?bC9nTDdub083clFyQ29XZkVxK2cyelNnMm9taWF6blVaNGRnd20xQmhBZDdE?=
 =?utf-8?B?RjBzc2JGUmtwOE1oVXp1aUZCd05vS2hNdGJ0cFNUQk9MSVhEbERtSSt5dGtP?=
 =?utf-8?B?VDk4Tk9HYzFVdHV0WkxxYVc3MTc4UXZDdHVYeEZ5L0p1Y1RHYW0ycXRVOG9l?=
 =?utf-8?B?Q1U4bVZFS1NNaDU3dlo5cjZRRzhmZkhDc2s0TmVzVHpaTXpmQll4L2cxa2ta?=
 =?utf-8?B?T0V3bHUyMkJoKzFFYm1LeWpZOTMwdDZMR3AwMHdKOTN1bncwK2JxamJxcExu?=
 =?utf-8?B?ZFdlK1BnM3VpYjltYytJeHpwVjhlU0NPZEk1bzdSWW0yaEhDVmQ0MDJiZGVy?=
 =?utf-8?B?V1FZRElHZ1B0bzhXMVlaU3BvK0tucXZCeER6N29HUDRKOUFPNDVUdUFRQUk2?=
 =?utf-8?B?bjZuSjh4NkdJM3Q1ZVdUMkFQS3lKclh6K2U4VVV0YThYL3plSmxudGZPWnJh?=
 =?utf-8?B?d293eDBZOTJ4RUVpelhCQVlDUlpTcDBoNjBKaFBKaExLdTFRMHE1ZW54YzVD?=
 =?utf-8?B?ZW9iNzFnRXpQYjY1TDBBOERqRjhVYzBPdFJlOE5KL3ZSQXRUOFZqSTkvcHNn?=
 =?utf-8?B?ZjlCZkg2Q2U1Rm9XdVdIdXhiSklHM3JUSUkzYUNxUW9vNmVSb3dGTEc5NVhu?=
 =?utf-8?B?Vm5RMFdrZkY1Q25wVEpsaVFtazlSTHVVQUZvS3NCbnlkNnRXN3ErdzF0a2dw?=
 =?utf-8?B?OHV1NVRyYWtsdURuSzJ2cHRWQVVnbkhycVFKUVkxVnAxOUZtMG8wWTJvRXNk?=
 =?utf-8?B?TFVDOXhLOVZoa2ZscExTalB1eFUzL05TakFwazI4QjB1Z1E2bysraEt3QnFi?=
 =?utf-8?B?bU10eHpIV2FVQ1Jtc2xTQXlUTHR6WVJwSW51ZXpSVkdWekVmVDVQV0lWUVBE?=
 =?utf-8?B?czREUFBxV3VPSEl4SzFMekdvL0RjbTFwamRwUTExUVlDeWVHNlJaTWE1N0dq?=
 =?utf-8?B?a2RTL0Q2ek4yQXlGc25KZjdnNFhKeU5JamZ4a2ZoVWVMNFNNSFgwdkQ0Wmov?=
 =?utf-8?B?R1VJMVM0R0xnOHBnbkNqNng3UFRNN3RnaGV3cldOb2JGa1AzNTdnVmRxWFls?=
 =?utf-8?B?LzVFVGo5VHBFUkE5SFVCN2psUzM5eUFJQkw3a1dEa2lIK1lsd045WS9IOTZ0?=
 =?utf-8?B?S3ZEVjFJOEpaaXpxSnNJM0ZETE16OGJlakxHbXhROEtlaFNaQ3k4eXhOWVd1?=
 =?utf-8?B?VXVRQjNJOXJZMm00WVBMVHdVQU0vcGJHSmEzUFNmTjRyTVFUQXJQNjBPRVdI?=
 =?utf-8?B?SWhKdHdZUTJSdlNSSElMNDhwR1ZnMXc1V0UvY1hweEhiT0hJTFI5bDQ0UURk?=
 =?utf-8?B?ZjZPdVlubW1ZMHVKeUo3SzB3Y1I1Tk5ybVJpenNNTVRyYUJnb01RM0J0Ylln?=
 =?utf-8?B?dVMyMUI5RWh1ekk3bEpnQzQ5S0F1WERpd2FxeGsyZitodXV0MXVoZFFHU3My?=
 =?utf-8?B?OFhnWW1MaWlOMEw0NTBLc0FwVzVORUNlUS9BT29CSkUvRkx6MTNTNXMyRGdW?=
 =?utf-8?Q?LHXtYq9YwYxbe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2ZoZ2huUVRHSEZvUXpqcXBTQ3UxQnhJdkVZSy82OVNsUHN2OGlWNUU1NHJE?=
 =?utf-8?B?RXNmakdWSjBOK0h5Y0FRQVlHaUZJb2JtR2NJMUVSb1JNTXFoZ1RsWmlXU3R6?=
 =?utf-8?B?TGNCZ1JEOEhxcXBSSnp2ZHhHRnlhVGY5TTgvNWVCNlVtR3BYQlIyMzZEUWhI?=
 =?utf-8?B?QkhIZWdTR0JEc1NTNlFwd0sxNWtIUkUzd3lpQUVaejRtQktEcVVGUHFScktO?=
 =?utf-8?B?eTVyZU8xZCttaVhybWkzOE1oMi8yUXhPbVlKM2gwc29RemlxMmNlOVhjQnk1?=
 =?utf-8?B?SW1iaDh0clZnQUtpTitXSDVuc0QxVEpPM0RpOVRmNDZCN2o2emVjb1dDTGZS?=
 =?utf-8?B?N3V3V3EzSHQvY0w1QlI4UVhaL2xhci9ZbmxrSTAvUjF1em5OUFZOb29Hb0kx?=
 =?utf-8?B?dUovcnU0YUJIR2tkQmdkQUUrTHFIWjduOW9FMXRkVFRJY2h6YmNuUTJ0NlJ5?=
 =?utf-8?B?S2VhZjRVdkN3UE1FSTFaQklkM2ZQZnBSWDlwN3RubXVpazRGcHl5UTVyYnEw?=
 =?utf-8?B?ZHNOd040M1h3Zkt5bUlLS291SjltWklKQVVBUGZ6WXhIYUN5Y0wwbmFPdVho?=
 =?utf-8?B?OW5yNUdMTUV1NCtpa2JqenRpeklUYXZDd2prUU9Dc1J3cGMyZ0wwNDQxaExs?=
 =?utf-8?B?QkRhYXhsWERlb2UxSklrOE9nV0gzOEd1M1h4N09KYVRDZFdoa0FodWhUMGlV?=
 =?utf-8?B?cnVqaCszbDZIMWw0TTlZaXVUdkVSTTJtU1hqL0M5SHpDY2laRjZrcloxNC9v?=
 =?utf-8?B?YWdKMUJacmpxbXRjUXFkVkZCZXdKRDUzT2tKY2ljUjQzSVFhNERQNUd4R1VY?=
 =?utf-8?B?b0hnQU1nbE1sdk1LL243RFgxSWtxUEtqN2grYk4rQVZZWVFsc2FldnZTL2hF?=
 =?utf-8?B?bFdqTTFIdmU2RVRxTVVrTG9VREwwTVg2c2RVZ0lONitBc0VWVDl4Y1hwZWhy?=
 =?utf-8?B?NVJET0JXQlIxZVJ3aUxBU1cvRHdWYzhGUWpDanpPNHFpVE15Mi83WDJkdWxE?=
 =?utf-8?B?ZlJ3dVM0VlRjemxwVXcyNDNGUHdSbi9Bem9xSmZvZnk2Rk5kYi9GakR2MHVm?=
 =?utf-8?B?S1ZDRTZLdkNveTRrSGsxUVAya0hENzQ5cmJkaTYxb1Y2VkkzV1QrbHFLaXhC?=
 =?utf-8?B?WVF1TUpHWk1YRUFBTzM0VUt0Q0EraXV0UTUxQWZuK1lnUWYrbmpyalN3YzZl?=
 =?utf-8?B?UGdyVC9ESGE0YTFJdEMySmtDWU90bVE4TFEwZVNSMEc0ZEVKQS9lNlNra00x?=
 =?utf-8?B?WnNWNUkvZFZURVBlUjVpU3AvdUptZzFVdkVUdmpLTG1uYW1TZlltQ2ZaNEdi?=
 =?utf-8?B?QktZUzNRcjkzNlRHMXdiV1JlWnMxOEo5VjE1eWY5a2xFb3ZLVEU5SlRSeWdU?=
 =?utf-8?B?LzN0QUJCNjRLNDFhSWtFeWNEUlJ1QmJ2MHhNc0VuYlJIRFFqZjN0SkR0RUFG?=
 =?utf-8?B?U25MajZ0dnNhbHl4d2xGV1VPdGMySDlnZ085cGVtV2g1R3FnK3Y2L2tPM3hM?=
 =?utf-8?B?M2NCckNqVHQrMHo0ZUdxV3dZbmMvbEJmNExXZnlnYlVpRzgydjlpYW0xYy9S?=
 =?utf-8?B?bEhFZHNVRlFzZUFjcEV3UVI5UmpyVUY2eGxIaDNTRHlPR3liM1lhWlUzVFhV?=
 =?utf-8?B?RWMzQWdBQXpBd1l0U1BIUTBwaG85eHhHbEV6T2g0aklTTUZGYTFObjBkLy9o?=
 =?utf-8?B?RXRvV1ZEOWNoSlVSc21ZM0dkcDE0aUhOWFZmYzBtVXJtMUkrZWh4QnN1K3Vz?=
 =?utf-8?B?bGhJOXY5TTJaQUtEc1U5dWxVbXhSRUtPOUJtdDBrSXhzZVpXbXc0RzBRdkw3?=
 =?utf-8?B?eGFmb0lLYnhUcVY4dWY4Q2h1T1labjB3SDBIdnNwOVdRcXJRajBZMDVYcHBa?=
 =?utf-8?B?aEJkYnBEV3ZFSTZna3NsWmxuL2QxK0h5YlI1TWJ3Y3dPZXFQRk9QTXFBU3ND?=
 =?utf-8?B?Z0pndkV0OGZaT0x3eFJLWUJaMkV4Z01oT2VKakxLL0M2UFBiSU1ucGZoekti?=
 =?utf-8?B?OFVhY1F0L1NTVjhDbzN3S1RnY1p4cDcxZnJleWtET1BOa28wY0FnZGxxc0Uv?=
 =?utf-8?B?ZHBUN0pNQTBRK1IrQTBOVEwxbHJxZjQ1bWdXV1pmUE8wMlhyZkFReWVzTm9i?=
 =?utf-8?B?MjVoYTZ5NlR4NGo3Y0xrNytENTVDaExYOWloSlpOdkhFYjJCQk5ScWdWVmVo?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0485ba2-0a7e-4661-2346-08dd5bc92796
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 09:36:07.0522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pw9indLTMmX61gYi+CMo75MaANCEcl2GGNesR+7uetkA9UP5YF1yss7jc6CHeQIfpEeOlOmf7pOgcTFSLmdNwLzZEAZqf26cHVKJ5QjHoYY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4812
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


On 3/5/2025 12:37 AM, Ville Syrjälä wrote:
> On Tue, Mar 04, 2025 at 01:49:45PM +0530, Ankit Nautiyal wrote:
>> VRR with joiner is currently disabled as it still needs some work to
>> correctly sequence the primary and secondary transcoders. However, we can
>> still use VRR Timing generator in fixed refresh rate for joiner and since
>> it just need to program vrr timings once and does not involve changing
>> timings on the fly. We still need to skip the VRR and LRR for joiner.
>>
>> To achieve this set vrr.in_range to 0 for joiner case, so that we do not
>> try VRR and LRR for the joiner case.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 38 +++++++++++++++++++-----
>>   1 file changed, 31 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 0dfe6220ff4a..2b6d022434d2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -292,6 +292,9 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>>   	if (!intel_vrr_possible(crtc_state))
>>   		return;
>>   
>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		return;
> I don't think this gets called on the secondary crtc anyway.
>
>> +
>>   	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>>   		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
>>   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> @@ -349,19 +352,23 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	if (!HAS_VRR(display))
>>   		return;
>>   
>> -	/*
>> -	 * FIXME all joined pipes share the same transcoder.
>> -	 * Need to account for that during VRR toggle/push/etc.
>> -	 */
>> -	if (crtc_state->joiner_pipes)
>> -		return;
>> -
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>>   		return;
>>   
>>   	crtc_state->vrr.in_range =
>>   		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
>>   
>> +	/*
>> +	 * Allow fixed refresh rate with VRR Timing Generator.
>> +	 * For now set the vrr.in_range to 0, to allow fixed_rr but skip actual
>> +	 * VRR and LRR.
>> +	 * #TODO For actual VRR with joiner, we need to figure out how to
>> +	 * correctly sequence transcoder level stuff vs. pipe level stuff
>> +	 * in the commit.
>> +	 */
>> +	if (crtc_state->joiner_pipes)
>> +		crtc_state->vrr.in_range = 0;
>> +
>>   	vmin = intel_vrr_compute_vmin(crtc_state);
>>   
>>   	if (crtc_state->vrr.in_range) {
>> @@ -448,6 +455,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   
>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		return;
> Also shouldn't get called on the secondary.
>
>>   	/*
>>   	 * This bit seems to have two meanings depending on the platform:
>>   	 * TGL: generate VRR "safe window" for DSB vblank waits
>> @@ -486,6 +495,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>>   	if (!crtc_state->vrr.enable)
>>   		return;
>>   
>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		return;
>> +
>>   	if (dsb)
>>   		intel_dsb_nonpost_start(dsb);
>>   
>> @@ -560,6 +572,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>   	if (!crtc_state->vrr.enable)
>>   		return;
>>   
>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		return;
>> +
>>   	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>>   		       crtc_state->vrr.vmin - 1);
>>   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> @@ -590,6 +605,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   	if (!old_crtc_state->vrr.enable)
>>   		return;
>>   
>> +	if (intel_crtc_is_joiner_secondary(old_crtc_state))
>> +		return;
> All thosea three cases should be impossible on account of
> vrr.enable==false.
>
>> +
>>   	if (!intel_vrr_always_use_vrr_tg(display)) {
>>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>   			       trans_vrr_ctl(old_crtc_state));
>> @@ -613,6 +631,9 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>>   	if (!intel_vrr_possible(crtc_state))
>>   		return;
>>   
>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		return;
>> +
>>   	if (!intel_vrr_always_use_vrr_tg(display)) {
>>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>   			       trans_vrr_ctl(crtc_state));
>> @@ -637,6 +658,9 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>>   	if (!intel_vrr_possible(crtc_state))
>>   		return;
>>   
>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		return;
> And these two again shouldn't be called on the secondary crtc.
>
> So I think you should be able to drop all the
> intel_crtc_is_joiner_secondary() checks from this patch.

Got it. Will drop the secondary check in the next version.


Thanks Ville for the catching the issues, review comments and suggestions.

Will figure out the fix for the warn on and do the suggested changes in 
next version.


Regards,

Ankit


>
>> +
>>   	if (!intel_vrr_always_use_vrr_tg(display)) {
>>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>   			       trans_vrr_ctl(crtc_state));
>> -- 
>> 2.45.2
