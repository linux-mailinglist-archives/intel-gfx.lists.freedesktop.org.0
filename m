Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D309192E3BD
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 11:50:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F6B10E9F2;
	Thu, 11 Jul 2024 09:50:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kc/n4YNw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF2B10E9F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 09:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720691430; x=1752227430;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q6NpXffSUCRizFWZ5HH3+/Wu2NDwIt0F5mNrzJFE+RM=;
 b=Kc/n4YNwC9jmnOm94ZhndDGNBnwj3qTOpa675+5S7ojofVvJd9gwikTR
 oS313HiqZAIHBkRf+tn7GWLlz0ZT3TvSLRABFWIKGA4xPTs5j4uStt4af
 eOSSuuBmxsKKj/z6eKEdVt9k8a8FA46OgZEkrdghwuT8ME/FpPWYZFnHk
 3Af7J4GAquc7Z4lDDYccIasy5O5cvchfbwveLCiWplP4NXUa7jheiTAWF
 VxPshXDnfAN0N+3NpoVGVeEbiQaWe9sRDbhXdrGYwHjg6ZrlVnID+LtuQ
 wzDnSZXQ9IIBoqNAaKFX2ZQXuq7GlcanIpKj7bvioFQK/Bv8e7/Tuxzj6 A==;
X-CSE-ConnectionGUID: 3pBI1tWDQFO4r0LPA4mToQ==
X-CSE-MsgGUID: e5TB619JSfOcPRsGCS+0yA==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="18200958"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="18200958"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 02:50:30 -0700
X-CSE-ConnectionGUID: XBMht2iLRW+LuuCzzeAKiQ==
X-CSE-MsgGUID: bVetUrmjQM+fGv3bL9yl+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="48946357"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jul 2024 02:50:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 02:50:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 11 Jul 2024 02:50:29 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 11 Jul 2024 02:50:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q2OTgF4I0U/rLeCvRCoFzilGnKRoAqp/WlC9o+QM06hm5lrU+515YadtxvXolY/TvF73uiiH5JpwRdISSjMvzSltwjPEP4nBgegkIGWZB3YrlSx6QBpYRPyF6rXqBjun7/5ogrJZ7IdLudDJqMkmC7MG1emDpj2pS6cNjWuOjyPd8Ex1n5i2zfeX4Sq9RN9iDFdilb9Sm6xfl+Mp+7aI4H2ctJKvGKrFVecl4Jh4SK8Kanewx7wberKlOS2OJV861nHrk+ygbjuLqbbcTeYQRaNenSGGs2CEibk1qzWVOSKOM9orifXWwxUW/tNtPQIJELGMrrsS9hASc8eIsUmOJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J+mr/luJS5KHJdhBmehmUCCAFqQgEhf5Eg22QZMoSoU=;
 b=QG3Yg5JxYv58s3FMMO3SdCoz+u3S83IZae2H5ac/FUAwlTTKVFP/sXmdJ0IIecZEzMICFSkuwY3AdQb1qJvisrTJu+RJTtb+nnbPlu/riZQ0gKnktzwZQm18A9KQ2vwJzkWhAylLnbcjals1zSKX7pyZe7QkHkWdMmLgE7zSxgohDlKrqxH5sW2E9VSLNm0niIw32PTqKCLre3G953sm830Ijepjr+GdF6yv8Futs/m1camLa/rMhoiIMIXebYVUzirypr2Gq4WqaH5iyY9Oczc4EjLHcajLybNIEjS7mdXuIC60vr8RKpD7E/x0tax1eKL5ZNkamOLRWaYTFImSQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7934.namprd11.prod.outlook.com (2603:10b6:208:40d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Thu, 11 Jul
 2024 09:50:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7762.016; Thu, 11 Jul 2024
 09:50:27 +0000
Message-ID: <676ba993-1800-412f-9120-289ab0545847@intel.com>
Date: Thu, 11 Jul 2024 15:20:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] drm/i915/dp: Dump the LTTPR PHY descriptors
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20240708190029.271247-1-imre.deak@intel.com>
 <20240708190029.271247-7-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240708190029.271247-7-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0111.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7934:EE_
X-MS-Office365-Filtering-Correlation-Id: f426f841-edf5-47e3-8c5d-08dca18ee45a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WktNak9Mc3Jja21ScEt2a1g0WGpJTzZyU2Y2QmdaSjA5Um83T2xEZ1dveEMr?=
 =?utf-8?B?SzRMR1JxNUcwU0RBbXNwT0J0UG1rZnFkY2dtTXp0MU1hSkJPSTR1b2pISUxM?=
 =?utf-8?B?QkpFN3RSOWNuRGdieWpVZjJaU3RkbE15QkNUR2tsek9qUE43TlRTa3p5V2tK?=
 =?utf-8?B?VFR3SitGbE9rcTZXWTlDOW52K0svZ2ROQzFDdTZpVEJxdEc5VElRUGduWjY1?=
 =?utf-8?B?MlRaTFlNTGphaXI3OWFTMTJKOE11VkQ3S3hscnFlTzFvNE1uandaSllNby9i?=
 =?utf-8?B?d1VNcTYwaDArUmI3OTA1Rk9IZkUyK0NZOGFCWEhSQ2ZBclZhVW11MHozWExC?=
 =?utf-8?B?SEJFckdQbE5hWFdYVG9ES0txamZSdkgwRElXb1ZGWW14QndxR2psVVJlbGFI?=
 =?utf-8?B?NHVJUGIxWHBLYXE2SHFyU25KcUlyRDRBdVJjVE80VmdvWVJPcUpFTXNCQm82?=
 =?utf-8?B?NFlyR29Hck00M0F4SVNkMktZR0lBektVeVc2ellRdENuUzV4NitNR1pMaE5n?=
 =?utf-8?B?RUZlWlhjYzF3djlBZ3BoREZGT3lEbXA4bnl4MkZnNjZwbzQvS21OSzE3OUlY?=
 =?utf-8?B?djNhaFRoZGgxU05FV1VaQ3RNZld2UHFGTUZQRFQvYytteWpTVjM3b2ZKbGN3?=
 =?utf-8?B?ZTROaXZrQ0xqaER4cFlKTnE0U3A4SmxEeUpiLzlEVWVTOUFGeis2V1BudzBF?=
 =?utf-8?B?aHdWRlBlZm1QbWRCcC9xR25VV3l1NFhNT3d6N0JpQWZBM2FsQTIxSEJzc3pk?=
 =?utf-8?B?SktWblIxSnRjUkMvNitEK3p6NUJQbDhLdE5KbHQrRmxMaTVqUlR5OU1CRks2?=
 =?utf-8?B?UnlnTGhrQmUvZEZ5L3puNXZ4bFlpZ2wwYU40UUlkSkp5cElnRXZGYkNydkxa?=
 =?utf-8?B?cDFGM2RWSUs5azB3MmdhTTFKZjN2NC82cjJKcFBRN2hIVXdJVXRZUDdwLzJX?=
 =?utf-8?B?WEczZUhFaWJ5RTZrdXBhbElVZk96OU55NE5ReDVBcDUyckU3cEpxV2dJOWJJ?=
 =?utf-8?B?WUQ4UUZOWG5pMnJKeFE5UTQ3d3M2RklCWXhXakxvMEwyV3o5dktOSisvZ2JJ?=
 =?utf-8?B?dlo5ZjZ5eXFkZTlROGR4OWdEWXRJTjZ6MmI4a0J2a0pxZEsvQVNMaDBKNzl3?=
 =?utf-8?B?SzlhSnhOa3VsNkVHUSt2b3MwOVNZdzBDeWtjRVlxYlIwZGE1U0tXbEw1RkxH?=
 =?utf-8?B?WUJrSTViaVJxcHd2elZRUFNhcEdhYjJMdE1Ydmh5Z1gzVXp4VlpnVU5Oa3NQ?=
 =?utf-8?B?K2h2T2xpb3BBODNFQTJSemZ0UnhMUEoxVmRacWExbllESkJqZ0xjYzhwa3Ix?=
 =?utf-8?B?d2VJcHROQ1VlOGM4bHN0MTFRTDNySm01U0NuZFVoaDZIM0tCQTN3OG1WbzFi?=
 =?utf-8?B?RFR0N0ZxSXU3Qk82MWI4eWJkT2xEYkhkQlZ1MFc4N29xaFZ6K3lNbVlSNE54?=
 =?utf-8?B?dEI5SEE0MkgrSmpJYjI0SFlaOWEwaHYzdU9wSFVFaEJtVGdMdWRKZFZCT3dm?=
 =?utf-8?B?cUlJNys3Q2tUUnN3WFRibnVORGo1OHJSSnVvN1dGeWJyQUd3WjhpeDROb0Yr?=
 =?utf-8?B?Z3E1K2gxYkdKNkl6eVBLd3drWWlxWlEvWUM3VzlseWVWemFmdnBqN3V1eWZH?=
 =?utf-8?B?b0VUTTJXYThwR2Z6RDljdUM1d0tFWUtRcmR4U0J5T0dtSmI1d0JlTjhyb3RM?=
 =?utf-8?B?RTVwd01kVzVVVjQzbG10R1hIK0ZIMG9UOUF1WWJBNXh6dzRzOGhWU3o4TnE5?=
 =?utf-8?B?bFlHQ2ZoZTY4RVFaYXdocys2bW51MlZNNG5hcFdNMUhjdU5JR043WEc4Njli?=
 =?utf-8?B?M2doM3RzbFV0MVlCbjY5QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eS80QnRuMUJrVEEwNThOSFk0TWxpQ24vM21tYTV0eER5dWswdldJMGREaUdy?=
 =?utf-8?B?bmEvY0FVbm0wYzgybXliandsVEUzSjFyTm9UNzR6Y2IwK3F1M3NvdHV6cSt5?=
 =?utf-8?B?RklDOXZKeWRLa0dUbnhrRTFnM3R5c3dnSFMzalBoekhLbmlPMlY2bzZLREN0?=
 =?utf-8?B?SHJLVVZGbjd0dUhjL28weWxXd1hneEEvampybll6b0lVZW12SDZIbVpmb0dw?=
 =?utf-8?B?c2UyNG8yamNkTlFkeUF2SHY4QXpDODJnUWk0ZDZpRVpzZ1hzbDUxaWpMSWNH?=
 =?utf-8?B?YWdQTVE5Z0prNU5VcXMwNE9tSVh5aG4zMDRxMWVKTmpmYkkrZFAwRkMyVWFF?=
 =?utf-8?B?MTBMdEc4d1hDajFDQjZ5RkxvbWVhaEsrdW1GV3JZQjFsZFpJajdUSytTSlQ1?=
 =?utf-8?B?Z0xBbVBQM3Jvd29WM3RvY2xEUXhZbDB4VkdUYmRWV21VTW5POVUyTHJsRjdN?=
 =?utf-8?B?TEtYK0d2Lzd0L3ZFUFNqYzFxTjJVUS9URFJXTUhYQ3pzUVk3OWxhUWY5cWZQ?=
 =?utf-8?B?WVNxVEozaXlaQWNZTnR1N2lJc1owQ1BNSFFxSzZKL1RuaUUvenlxdHJtL2RV?=
 =?utf-8?B?NzlmRlkvNS9aMWtBbjJxNXo3dmt1UlV6bDU4YWtlbXo2R0RyR1UvVkkwcllJ?=
 =?utf-8?B?Z0VzK0tTVysxNXBZaVRhcllzYWNBUVJiL0RaYUxFWkFDeitXeEdTUVgzQXYy?=
 =?utf-8?B?SVJnVkJYaWJ2MWwxRUtuUGF2VXJTTXYzYlBuSXM3djgxZUsxVEh4c3pzWnND?=
 =?utf-8?B?OWVRL29VQUtYNGRjeGRDN2VkT0JCZ1JtYVpHNTZoeGplWVMyVU94eVJlV2JP?=
 =?utf-8?B?WFFFR3RzQ0Z4ZEd1eWxoTlNnVHRpL2VvUzFoRFYvSmswYjFXeHFwN0o5T0dF?=
 =?utf-8?B?QWt6eW5TWkUySnU1cG4ybGdtS09XVHZVUWRwd1BlbWZVd29JRzN5c2JtSVVG?=
 =?utf-8?B?c0xUMEJLLzZYZWx6LzRCNXptZGRnb29QMGlySkg2Y3pkYmZIMmVmRlJFYTFl?=
 =?utf-8?B?eUJiQWZHb3lkUFhrbFNtbTdLZVJmT0FIZWZVUGJBZzZNUTJ1R3IwS0pmOWlt?=
 =?utf-8?B?MWFWUlRSS0lzNlQzT3o0K0I0V1AwVC9FWkFaT090WlZnK0k1WUkzSFEvY3Zy?=
 =?utf-8?B?VlB0blZDRTdTcTNQWDlLWFZIamtHdEU0aDVUNFM1L3d6UVFFZVJBVlZOeCtT?=
 =?utf-8?B?cWtGVCtOeG1iTDc4WE5FWnlkVWFQK2oyem9WYTQzZlVIQ09vZkRlQmtCOXZq?=
 =?utf-8?B?KzhJbXZ6SmdXNUtTOUZlZlFqMSsyc2xQNVY5RFVlNGpIUHFMQWFxL3QvaXJs?=
 =?utf-8?B?cDBtc0I2eHZOT2JyTS9yWG5PcWN1S2s4dnRxTUhITGFxUXY3U0JDSkd3QitR?=
 =?utf-8?B?NzdNbVdkOU9hMys0aUdOWkJ6TzFCV3hsWjVndGVPZ0tqc3BRZkl1VG1QeGl3?=
 =?utf-8?B?Vy85N3Axc25kYjk4NlhqVHhSM3RwVmVGVGNQTXVWaDhUbmNXYWRmdEhjWDdW?=
 =?utf-8?B?cGRBSTROa2RuR01CV2g0N0J4RWlUL2FxeGxNTlhhdDVrUS9JREN0VGMyaEhS?=
 =?utf-8?B?VHhMWHNXYUJPT0c1SGFnQXRwME1lazd3blE4YXg1M1FmWTlwWTZSMzRDcGdr?=
 =?utf-8?B?OFpYK0VOd3hPNjU5a3NXNmlJdTJjbDdwZEorNEo1V3d4OUVnWTdneWR2anE4?=
 =?utf-8?B?bmFIQ1VDWHUrY1pqaFM3V2wxTlRBT2ovaDdiWXVtRERIb29PMVhSTW5UV3Fl?=
 =?utf-8?B?ZTRHVktRK1lBVjF0SGJ0V214ZGlpTXdOYWcyMXgxOW1ERnVEU0o3RThuYU54?=
 =?utf-8?B?Ym1nODBKNTJ3Lzd2T0NWNEYxMlJuQ0h2S2w1c3Z0Qk5SdFhvVDhJaEhQWEZm?=
 =?utf-8?B?aVBCc2lENHFFaUY4UEpOSHhXNC9SenhtWjFYOGZ6RGlGUHIvWW13WTliK2Ir?=
 =?utf-8?B?ZmlYSmJyeFg4U212c215ZDRmSE53dXJKQUlsM0hXazRvWEUrNU8xbDNOMkZI?=
 =?utf-8?B?V2VuZjVuVnpJc3FZeFpNSnZHRHMvVXYvUjUwRW95L0MrZjMyTlZDYzZtNzht?=
 =?utf-8?B?Z3UrbU9BM3VZRnRSL0pua1VmMHkrekZDZmRxMTBrL1EvZHF1QllrRlpBanJX?=
 =?utf-8?B?a2JZeTd6b0hMNkU3OTFCQzR2RUJGQUlXQTV2ZXZ2TjlRSm40NElPMFY0OEM0?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f426f841-edf5-47e3-8c5d-08dca18ee45a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2024 09:50:27.1757 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dYGtwKsCcJJT+DzLwHWIruXx0X0ZrwJIr4CUDWjGLGrQhT+FYEC7ck2E0mNvXrTBYJqrSjGZmoz8GzMqrT2NUpY6SreZ0K0kidZrQtA4FoA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7934
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


On 7/9/2024 12:30 AM, Imre Deak wrote:
> Dump the descriptor of the detected LTTPRs in non-transparent mode to
> help the debugging related to LTTPRs easier.
>
> v2: Use drm_dp_dump_lttpr_desc() instead of the driver specific
>      equivalent.
>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index af0b71bdf1fcf..ab72aa1d664dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -20,6 +20,7 @@
>    * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
>    * IN THE SOFTWARE.
>    */
> +#include <drm/display/drm_dp_helper.h>

nitpick : I wonder if we should leave a line after the license header.

In any case patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>   
>   #include "i915_drv.h"
>   #include "intel_display_types.h"
> @@ -206,8 +207,10 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
>   
>   	lttpr_count = intel_dp_init_lttpr_phys(intel_dp, dpcd);
>   
> -	for (i = 0; i < lttpr_count; i++)
> +	for (i = 0; i < lttpr_count; i++) {
>   		intel_dp_read_lttpr_phy_caps(intel_dp, dpcd, DP_PHY_LTTPR(i));
> +		drm_dp_dump_lttpr_desc(&intel_dp->aux, DP_PHY_LTTPR(i));
> +	}
>   
>   	return lttpr_count;
>   }
