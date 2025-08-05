Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C17B1B7D7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 17:58:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5C410E6BA;
	Tue,  5 Aug 2025 15:58:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TKI9pmwz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D131A10E6B9;
 Tue,  5 Aug 2025 15:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754409505; x=1785945505;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=voPXh0gcFdxAyGZYHC2tSL+f/o6wLU/2FxucDYlVdAM=;
 b=TKI9pmwz0We4Q2JHu9+gVs9ch1IZrfpwSEaN8br6Le5LzuVqSxzy/svP
 f1V4xcpVl4pcnR4L21t/jDiso42qJitMmW3oBOZkVl9ibnQJvdiJLTpY+
 J/VnbGRvhJTRSgymYVMVJVkKTDHpklwBx1lFXuy0T9WP5xhFj1MduY0nL
 +Umy/o64BzaSYcgFzQbVCPBMbazkmLHKAIQaoT9L2qnI6mDf6LLaxa30i
 cGXdJ894IUMWEUB1TpsuUXSumt4Q6MfzDLWrBqgE62XAysMClN5Z0+/qK
 rhV5QyHnpzKNMRwSsdfg+EadbkiBrnHsOshC4l9ds7jWq3Bhamju4/cXj Q==;
X-CSE-ConnectionGUID: lYXq0dbBSvS1NylbGs8QyA==
X-CSE-MsgGUID: L+6Pwt5LSJucVqXEM5Pp/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56787507"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56787507"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 08:58:23 -0700
X-CSE-ConnectionGUID: mJUhHExSR/mARkFRkM86iQ==
X-CSE-MsgGUID: poROgeLIRT+RJEfgeAlH+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="195496110"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 08:58:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 08:58:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 08:58:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 08:58:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EygW2t74iA9aPYtcm1DvAQRIsJLHVUhgPWcnoJtDSJPBjOkjz97ceR6r4mmzQlGl7qY4kdFLBS2FcgCdt5XqJyyoJFkGypIRFrkaB5SaS7yyTo/jmxl4ivnuNBsEYxBgKjfDQ9MUJoDPzb/Q8MKM9kHpkkWMAOCgGCIcYsw/hNsb6URmZYnJTYBESgrQN9UKHl+iqlIZkDmzrXrhXQ1PXvism4f7Xsb8lYf8H3ILSO4o245dNiAIHDDg1Zz1AQikyjbC7ahRiq2lSH4aOKpHNF3ruJCS5sDAsqoMKwosz26+6NXEivhkkCKM9+Lvu2tsbvIvEeDCNMTqlJUuzcI1OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7qjsE/VIyYWtO+eCBpNI/EKEGgbjzxuXJ6ijKUgQuqs=;
 b=mG82dLCzFD5S3lw6A2y1JqovAu8A/ZR+Favuc50SeyXHTt1tLWfxO5os8TqtI0glOzcFGrDwZHANIsJwkL6fiEdnclmKuhTg9N4r2uQDKe2owP512tgWO6U2fPnVen0zJrPdfclRtAX6CTF4n05s6vErc9Be8q8ZON2FnIDWoMYImGps4Mk/leUXHjkJqRZVElws/Wl6UjuV2051syges/jlrt2JTAJJJx7HA3uJXSvY1QcOK21sIkN5VWT7Ko2cjNCcCS6/Tv72V6kWPW/dyOR35EymVbmCWsPrtAZpR69o1lskm/9hBVkvOibJfCuRiPvtdUeOnb0dL8nU8meYNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7778.namprd11.prod.outlook.com (2603:10b6:930:76::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Tue, 5 Aug
 2025 15:58:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Tue, 5 Aug 2025
 15:58:17 +0000
Message-ID: <86e0e940-4fc9-4465-a583-ad89b7162990@intel.com>
Date: Tue, 5 Aug 2025 21:28:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/13] drm/i915/skl_watermark: Add bounds check for scaler
 array access
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
 <20250805132016.1250202-3-ankit.k.nautiyal@intel.com>
 <bc9fd888b7a7572c7861c9ed3bdb0af9151f11d5@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <bc9fd888b7a7572c7861c9ed3bdb0af9151f11d5@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0020.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::36) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7778:EE_
X-MS-Office365-Filtering-Correlation-Id: e701c96d-4127-46f8-9453-08ddd438e490
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZlNqbU55NkYwK252LzloRWhrdm94a05yZEFHdkJ0M056Si9TZW9uOGVhc0Vs?=
 =?utf-8?B?TEhtK1VHdEVNOWxHOVcwdlArL2wySlNrdVFuUVVuellnLzE5Nnk0STJBR2JN?=
 =?utf-8?B?TWpSRXpwL0pKQ3V5Q0NGcWdwaG81Um5PRzBjZGxTN3hXWDdaQkxNQm5VbmVa?=
 =?utf-8?B?UVkxd1Q0K2JBMXcwek1FTFNJRGoyb2cxc0VDWXA4RU4vQnlkaTliQVYwZCtP?=
 =?utf-8?B?V3NuWCtDMnBCQngrOHViNTR2MHBKYklhaTJWY0Y1WlNmZHFPaEhBdFdrcjNE?=
 =?utf-8?B?TFdCckFaU1lXaXcyQmpHR3gzOGtwRzJMUVd0dnRtVWJMMlhsN3dzaFZRWXVi?=
 =?utf-8?B?NGxlN2NBcWVVS1dQOVhDWlV6anR5WnVPYjFMcGZPaHp3V2o4TTdTSmZJNDNp?=
 =?utf-8?B?OUdzd3Rxa0pzSzhVOWFQeEZGZU5KYnZTRXRWSWRQbmhlcTRqRUJxZ3VvcU9L?=
 =?utf-8?B?SEF5V2dDdE1PSkVFY2daU1NKM3VjQXM4OUR2VVVYekI4WEhCSnZod292Zlo0?=
 =?utf-8?B?ZUdLUHVOQktCYWdsL3Z5YXVyeUlVU1Y4WURxRHZZMjhXellQQS9ZSXpTUHNj?=
 =?utf-8?B?dEJQbEtqcmwzaENyVUFYdEV4UWM5cUt2YjhLQUFCNFhFLy9ZQVkrTTkxYUsv?=
 =?utf-8?B?cXVUR1NqNGJoajFjUmtBNzZRdDVlUWY3cjE5Y0JmUW1MWFh3NG5Ia2V5cmZL?=
 =?utf-8?B?aG1vckkyRmVmKzh1eFlYNU9ZcStKeHNkN0k3NGdZbU0wb01DOUd6eGZ2UWds?=
 =?utf-8?B?Q05qT3F3cHY3bDRTcmNlcTFHdkxlbWZKM0c2dDhQNlEyK1dINGh0Sjl5dllP?=
 =?utf-8?B?UlZ0dStDbkxndVMxeUpNSVN3SkJxQjdlcWcwS1FTeFBUWndCcUxzRGdsdGp2?=
 =?utf-8?B?cUpmVGdta0MrazBJZjlWY0J2UkRZMWdPSWtuTlBzYTFId0QzUnN1djNjeEhC?=
 =?utf-8?B?M3paa215Z25QVTY3N0JpNjIzS2FYemRYSHJQZE9Ea3p4QmlIZG5vejZkSVJT?=
 =?utf-8?B?UnpZZ1pGalEwRXdiaXZVNHhqUys3VUF3MENnUFdxTWxLNkRtdm9EMkMxTlF6?=
 =?utf-8?B?Y2VOSCtIazRiUGpJYUtOUjhvNWZ2VkRyVHF6bjRFNytJb2U5cDNTb2JBc2hC?=
 =?utf-8?B?bjRvS3laQWdPT0d4dlMrTlgvMm9YMndUaFB6ZnhuV0hXbFpuWkFZV2cxOE9L?=
 =?utf-8?B?eEppeEJDNVBoUjVYN010blZmK29CQmFVWmxxVU9BS3hXeWF0QVc5UEprNHJ0?=
 =?utf-8?B?WEdlYUpRUys0UUtjTGhXNkQrWXJQZGduNjBuWWpLajhRYXZOYkRTdHo0Q2pk?=
 =?utf-8?B?QWtuVDhsY0Nrbm5iblpmemk3UzZKbnY0alpoalZmVkJvSXpQTG9zU21PWms0?=
 =?utf-8?B?VmE2TmpmZmw2ejRVdWFzQkFRQllyNmJMaU9iek02ZDFBUGtiMG5iNUtMbHRZ?=
 =?utf-8?B?L3B1TVIxQ3dPUGNHZXhNKysxZ2ZPR3VaR3FSamRMZjFKNlVoU1hkYTF0dk9F?=
 =?utf-8?B?RWZ2L2hjUlA4YldKelE1UXg1cGFOcDZKRWJ5aWxCZGxLOXBoV0NmQWFYNWVJ?=
 =?utf-8?B?NUlrNnYyQTVXaFRpbENpcm92aFV5aHIzb0hDRGV3WHUxOEhWYUV0NEY1dzBa?=
 =?utf-8?B?S1ZpMFlCZzJxNzN3SVRZeFNuMTVxc3dvb3I2Sm42SUtOV1pGY0Z3eDMxQUZW?=
 =?utf-8?B?QU5zZFdkTEp1L3liRmt4UnNzNG4xNVhEaWRLcVh2SURkN1ZOd0tiQmVVWTBv?=
 =?utf-8?B?czBaYzBzTCtXS01JOGdSV3h0Ym5MNkhqUGlRWldTR2VCUUZYZ2JqeXp2SXcr?=
 =?utf-8?B?SWgvdVFtRXF2WXdEU0tkOXZnUkZPTXV5RGFhbzIwaVF6VWZvVGdXSksyQ25G?=
 =?utf-8?B?QVc4cVlXN3hiSHM5YTcxMlFCaEljbk9xU1JKMTRpM3I0UnM0bVMvSjZyUUhm?=
 =?utf-8?Q?GnKGFZjOtHA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUpPWHhsNVduR1BYRXNGbmlpaWdsYlJhaHBuYldTMU1lbkp4ejkxSjNROHJX?=
 =?utf-8?B?dEpqUEV0RjNTVUovWjZZUzQwWXVYd2doNmNKdUZLMHo0MytsaTBydm1KR3g3?=
 =?utf-8?B?N2I0Tlh1R255S2xpYVo3UHVEVk51YmMzc3Z3QmxMYmJVRVhXZTYwUjZGSWRr?=
 =?utf-8?B?a2VXaEdEekZpZ1ZSUGExRmlRTjJGWG9zWWNaSGpWZWlEYzNRZUVtRUxmWnZ2?=
 =?utf-8?B?RzFvdG0zb2p6SlJRbkc3WUFlUWZhMFQ0bnZOei9vK1FMWWFQb0t1VGEvZmpi?=
 =?utf-8?B?cHdIZWg1bGJ3UlgvaU1UeE50eU5qeGhQRENIWE8zRVRhUldDdWRCSnpEU1pt?=
 =?utf-8?B?K241VWtmMHVQai9CU3RuRlZGc0NneEdoUUMwNXdpWER1MTF6L0x6ckhTN3dV?=
 =?utf-8?B?YTFTVjdWSWVFdkRYWkdtL21LSUJuK2s0VmJSaG1ybFVSVmZ6VldnQXgyN0I3?=
 =?utf-8?B?clZJeC82Tmg4d1FXN08rYkxxcTRnZWNWZ0RIRkgwOEhCSVprbGdjbjdWRndL?=
 =?utf-8?B?WHJEcFZhS2hMSW01dEVDaHZHM3dJMW8rSThrR3NIZ0x4N28ra3MyaC9TR0t0?=
 =?utf-8?B?MlJ5akhqb0hDMEZqdC9BdGJzdzJxb09NMW12MkFJa3ZTMTRmMVQ1V0tBSjk1?=
 =?utf-8?B?Q1paWExNeDRleWRZOUlQZ29VMVE2Zmk3NHcva3pDYm1LTU9HdFl3M2taUmlW?=
 =?utf-8?B?RGdXWTBQTTc0WmJYWDBJMGRnV0ZYdFpDcG0rbEk0K0lhU1N4cG5QcnMwTmN6?=
 =?utf-8?B?RkpwSm93N3EwUmoxaXJoU1Q0Z0pxeFZrcHMwcFZHZDU4Y2FseXBPRUNmc0J0?=
 =?utf-8?B?LzlaRXp4THprMEhFdkFDSEdpZFRGdnJiOWZOakp0WFlHTEs4cy9TTnh4LzVa?=
 =?utf-8?B?QU54NlRiWitxcldGRWpJRkU5bGhSK1l3VXcxdlczKzE5UHVYclVvZGhiNitz?=
 =?utf-8?B?K1IzVElCczVxdldwakxwYUIyZ0pkSmFsclJEMlJoOEV3ZlRNZzNIaWZPVnIr?=
 =?utf-8?B?dmR3TXhZcTN6OGZFNWVQUEdFM2V0dXJUV3FieVdMU1dZVjl2bGFCSmU1emVU?=
 =?utf-8?B?UHdwbkRYbUlLNU9kakUrY21ydjBpcExWR2ZMZXU0WTY3YlhNWVhFeFhuMXV5?=
 =?utf-8?B?SUIyU0tOekQvV2pMdHV3c1lLZEJEVVloTUdvMlc0YTQrcHFCY1l0RVNmWG9U?=
 =?utf-8?B?cDJtNkpyaWs0U1kvbnlBMTZsMitSaEhLeVhGMzF5bjd6Y0tzT1NjNDdMVW5W?=
 =?utf-8?B?V0F2UTdaZFJIMjgvZmVWMDJlYUlEUll6N3IvSnhVRjJTcDBHdUlsTUhZWVFJ?=
 =?utf-8?B?NjViRFIvQm9CNFFmdUpvS1hwdjZwSXJhSjEwYW0zOUVtMW1icnFOSzBNcEZN?=
 =?utf-8?B?SlU2TnRSVXZENzhURklMMmRkWUNmSDFDdDRYWUlzR0VsQU5SeW9Rc0RjZFpt?=
 =?utf-8?B?ejF6NnY0VFk2SUpDemJ6MzRlVW16SkdHSmJZclhtTnBSTjBIM0hPVmhMbit3?=
 =?utf-8?B?bkx4dUtRRkJ6OTJEQ1dTd1VHbmRsWldQQVRrQmtLMm1HSmNoUkRLZGFzalll?=
 =?utf-8?B?NVRjb0xFYWJ6UGYyZktVeUs0bmtpNk9qTHdhRkZ6bllWd09LWnlzT3pTb3N2?=
 =?utf-8?B?TUNxMlAyZWd1MFV6cjJVdDA3NjNkcE4xQmZHNjdmUTkvQjVzc200NVVjS2Jh?=
 =?utf-8?B?VVh0eER2aUc2VmFaOUV2aVFoY2VjMURSK2dHYXNBZ0gvZVdCY3F4UVNleDY4?=
 =?utf-8?B?VkZqUENBclZaNWVvYnRyNlZ4UHJvTVBYMGdreG9BMDBDK3ZBVGI2TjZ5ZzQ0?=
 =?utf-8?B?NXlJTWUwNGxPdjRQRWhpL1BGK2UxcUdqTGJaakRmTWJzZmR4dEFSZmdycXZp?=
 =?utf-8?B?OXIzalp0KzhMUm1jc0c0UlBOMExLcVhiL1EvSUFLZkZiVVpRa0VndWcwSkIv?=
 =?utf-8?B?M0lSeE5WOGJ0ZEs2YXJWQm1kOEhSVDVKOTJabkFtWDU4MllydWVnTEx2b2Jm?=
 =?utf-8?B?RVYvalpRM0RwR2toNVdRdHpXRlhtczczRmdJLzRhemRocVdOTGsyaHRwbXV1?=
 =?utf-8?B?RERIQjkvOTljTXNsQ1lIeURpeHNuVG1mR2poNHlEb0FHM0ZEODJYVTRFdGJ3?=
 =?utf-8?B?Wi9iZ1o0SW9KWFBzU01jNjNGdnhGSWhyRENKUDV5N2tQQlphTHpZOGUvUTA2?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e701c96d-4127-46f8-9453-08ddd438e490
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 15:58:17.7450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u1/1/GZ1RvHTViVMTHDrIaA+f+R50qzVQ+KUxplOxZMzlX2PF1rtY0zv0hZ4XCfGqlQSwgaHR+pZfvYMWGfKRgSc0r2K7/8WOCBXQP+P3u8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7778
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


On 8/5/2025 7:25 PM, Jani Nikula wrote:
> On Tue, 05 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Ensure num_scaler_users does not exceed the size of scaler_state->scalers[]
>> before accessing scaler parameters in dsc_prefill_latency.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/skl_watermark.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index 5a120c1f66f4..9d52727b81b1 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -2191,7 +2191,8 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
>>   
>>   	if (!crtc_state->dsc.compression_enable ||
>>   	    !num_scaler_users ||
>> -	    num_scaler_users > crtc->num_scalers)
>> +	    num_scaler_users > crtc->num_scalers ||
>> +	    num_scaler_users > ARRAY_SIZE(scaler_state->scalers))
> Currently this can't happen. crtc->num_scalers is initialized from
> num_scalers[pipe] member of display runtime data, which gets initialized
> in __intel_display_device_info_runtime_init().
>
> The only way this could happen is if some platform gains more scalers
> per pipe than SKL_NUM_SCALERS. But if that happens, we really want to
> fail loudly instead of silently falling back to dsc_prefill_latency,
> right?
>
> I'd rather see
>
> 	drm_WARN_ON(display->drm, crtc->num_scalers > SKL_NUM_SCALERS);
>
> in intel_crtc_init() than this change.


Thanks for the clarification. My initial concern was that we're indexing 
into scaler_state->scalers[] using num_scaler_users,
so I added the bounds check to avoid potential out-of-bounds access. But 
I agree with your point to handle this in crtc_init(),

where num_scalers are set.  I'll drop this change, and add a separate 
patch to check crtc->num_scalers in intel_crtc_init().

Regards,

Ankit

>
>>   		return dsc_prefill_latency;
>>   
>>   	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
