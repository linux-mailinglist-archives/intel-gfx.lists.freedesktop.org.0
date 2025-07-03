Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3B5AF6CDE
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 10:28:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BA3A10E167;
	Thu,  3 Jul 2025 08:28:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="elbKaMK6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E716610E167;
 Thu,  3 Jul 2025 08:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751531320; x=1783067320;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oopVDK4pmqhmOjMxjyWvHTzuw1/UzaGBLBMwPd0j5fs=;
 b=elbKaMK6ZVDBrLjffnceV8XD18C8SQglDFe0d+WIMl+jxd8Dn3vff4nK
 MGpckW7j9dfmHbtO2GXLex5oqvlTPpE1PDA4wBk6SGQeI+3FTgyzv7/X+
 Y82jYAWcIwEvW+y9XNhhGpS3vHcBD/y2h6fH5EDyZYKRxifaQ2sbG0EBQ
 QwVLfc4fWyilOoo8ggpKHlG6AcFWkTZALMOMjRntPVs1FrJqIAFUt+pht
 hgbwq0In14iB3yoyJA2Lmr1tTQ274xYaNkYUb1SwzksDuLtDhZvpeEYrl
 lRgnmXes0y8RO1gtp6Uwhn5abxOMJCi/U7nxOIV4GfEUh+P03+QvVk23h A==;
X-CSE-ConnectionGUID: NkJ1L8eKS/O+7aVaradW/Q==
X-CSE-MsgGUID: OO1CsD6HS3G8YJFUhXtb8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="71417295"
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; d="scan'208";a="71417295"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 01:28:40 -0700
X-CSE-ConnectionGUID: 7y2yo9iARLO1OatJdDUzZQ==
X-CSE-MsgGUID: uXGM9abPTEiTD5IYTWhmCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; d="scan'208";a="159815839"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 01:28:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 01:28:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 01:28:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 01:28:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CcJxweyAsXFc2Z209KLR1tIHYlFmDyUkxSq8jfMRUntp2GWl8IJW6cdD6vmrlY5QCwRWDAtWc0pE7ZzemHPZu+XMm0skSYFHckWZyEnTLAhbmB1BZrDIBaPpD/20Ny3dKVnj6MNY4uV5usZU6OeBdbl3RBHwd1qsH/+BSi7U5RBYtIrq3SCik/8UwUBG9fM62mktU74gCq/tsRgOvKjtjhfLCg6NMBeDMnf3elfj8PAGO4x2MGnsddcfLjfwgvisL7zP8ealruYY/vD1lJIwlNVKKMw3eW9etxRzwhjRUedy6l6ldhn0U8uU3Dt+U2udg3pV/BXZWiXJ1nIOR12QJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/MWb1viIY2rCNNXtBVIykAlZ6tg+QndDLuhTNpuDCJ8=;
 b=JWf+U368x6cG/7jg1PZOHfjxmy+ziEb2DcVXcFuWVY/Boqela34i5+A95DIij+/7PVtmQzs19i+3lC0c5RO9Y/3lsqGHYxmwhcMpV7zr8D985Tklis3CtS3w5DXcyRNzcpOCzgIJuFxNZ9hY+jwSOyA3TzkdmQhemNY0WZHxv0J0rG5yu2hKRA7WOx6akA/NPGJIenm82EEhGqB+sh8sPU5D6zNvYeuYNY8Xd0unPVqqjqK2d7k/crAcMS/PI4jsbTM3WR2DKXa+IbGB8eElNsdcNlBf5lYLKiFS7EhTxtoDR3LdXkIYcSqjq+uGNl/fb/GIyVs/mmvP7sc2OQy/Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DM6PR11MB4673.namprd11.prod.outlook.com (2603:10b6:5:2a4::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Thu, 3 Jul
 2025 08:28:22 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a%6]) with mapi id 15.20.8880.034; Thu, 3 Jul 2025
 08:28:22 +0000
Message-ID: <91eb3ff6-1b47-4ca3-acb3-566a97eb6d35@intel.com>
Date: Thu, 3 Jul 2025 13:58:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Optimize panel power-on wait time
To: Jani Nikula <jani.nikula@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <arun.r.murthy@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20250630122339.3007880-1-dibin.moolakadan.subrahmanian@intel.com>
 <b5a84286f9729e9d92e08596bfbeb4e9c77f6dc1@intel.com>
 <w22u6gjs6uuzfkksxrp6cjlkli2jzanqodb7ukyptlsv4a2kvk@kni4djwoeefx>
 <fe44d12c701c3d410de6e0ebc1f08bae2eec10a1@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <fe44d12c701c3d410de6e0ebc1f08bae2eec10a1@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0035.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::6) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DM6PR11MB4673:EE_
X-MS-Office365-Filtering-Correlation-Id: b63e9536-3cce-45ae-88c2-08ddba0b925b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUFnZGRlQ2FBVkJOUE96REd5RjhuaG9tSFV3bk1sWitTdUZFbUo1bHBhbGdE?=
 =?utf-8?B?UEsrMkprYnl6NVhVUDhjK2RzTW4yUXAzT3NEeFNzVlFwWUVLQ2hrMDZYVEhv?=
 =?utf-8?B?VEtucFRaMm5oOEhmLzJuWVFZb3VsdTlNMEM3MnVldzFHV0R4WXcwcFQ3TkM0?=
 =?utf-8?B?VUc3WXh6TFNld1lqVEtTRTh4ZFhtOEV6OHlmR25NR3gzRGtqVXZzVVF1NXBK?=
 =?utf-8?B?ekxPM2twL0ZsYUlTUzd4UFdZcXlMMXR3Wlh2MHN2Ky9YandOYWFXZEFYcmpM?=
 =?utf-8?B?VTg2M2hwNnpHRHFoN1J4Uk5iMVc5N0tLdytFOEduU0I4dEVLZGhIVDllcmxQ?=
 =?utf-8?B?QmxQRGZ4NmZZc0JmZnpUL0Fjak9zNHNUMnI3MEVNWHBLT2lnSnQ1Z2psMnRk?=
 =?utf-8?B?M2FNdHFCS0ovUjViNUFFYjhlWHVoSDZLUEVzaDQzUDdSQ20rWnMzMG5hRzUw?=
 =?utf-8?B?eWxYUkV3STM4MGxNcW5qenpyY0xNSkRkNG5Pc3BWNll4bmNPUWhKZ2dnbWpE?=
 =?utf-8?B?M1Vhc0ozTkVlU3N1NVhTa3d0YUZKYStiMjJOSTB6MjBiWTlrSzRrb0pTQ1gw?=
 =?utf-8?B?SExDd0kyaTk2RUZuRHZaUWV6S0M3ZW4wSTJDYjVSaUxoMHkySVNqdHFoZGtn?=
 =?utf-8?B?dkhEbndNVWQrcXFaOTRFdjUvcXhSR1lVaWlZSVJ0Z1dlR3FxcEdScXU5M0hp?=
 =?utf-8?B?dG1EUlY5c1BYVkMyMkV0SnlFTFlha2xMWjNvL0wxNCt1U1ovakVnd2ZEUlY0?=
 =?utf-8?B?K0JPcE9RQUxBNE5kUzQ0Y1F3VHFDRGlDVi9ndG9UeVVkMExZUXNCYnA0Y0tX?=
 =?utf-8?B?M05QRUtXdzNuT0NWM0JFUFdtSDVsTExKb1hVL2NCVHJXT0RqSm5ZazBGSDYr?=
 =?utf-8?B?SGtUdGgvTUxIWXgvWkU0N005ZDNxMWF5UGIzb0owQVFJbElJNUk1SnFTeDBY?=
 =?utf-8?B?N2dYbXQ2WURIWmlaVkhlWXd1Mmd5cDV5YVJWZ3F5ckxpeDR5WnVuVGFtdXF6?=
 =?utf-8?B?Uk80dHQ5Sncyc2RRN0tUTERTc3NOQXV2Zi9JTDhqYUthcituNDVUdjNxQlBI?=
 =?utf-8?B?czliM3NnMFVidkE5MnYvSm50WE9xejIreFJXalBvaUI4blZsYmFnMjJUd1Fv?=
 =?utf-8?B?d0lPcmNyV3ppZkc2SlBZVFQ5YVV4UzZTdFg5c0d1V3orbDBUMERBTkxYeXBO?=
 =?utf-8?B?bG1QQzA2Um5iY3VMTTNuUmE4RWJCS2JtZ21ndG5hY1hsenVkRnYwWkVjYXhE?=
 =?utf-8?B?MUFQc05Ba3hHenBCV2lONlFoSEJUMllpZEJrbjNqNThQRWVDeUZDeFN6ZEFy?=
 =?utf-8?B?RERpTmJvM2xYNVJCcVpIRG5RaFk2aUdzdVR5SnY3cVpVQVRzTFF0NUlsOHd1?=
 =?utf-8?B?dTZ1aUF6dWZpenZmRGVhZXBUR0V6N1BndUMvUnp4RlF2ZDhJV2g0a2tLdlFs?=
 =?utf-8?B?S0xqVHcxcCtLb3FkaDRDWU13aVA4ZXZrLzRpRE8xa0F1bTJ4RDgzK0lJOEpr?=
 =?utf-8?B?c1I3RkkwMnhtOWM0Z1RZc3NoZktNVURqakZ4eUR0SnFvVWFVRWtIYXhDMHVN?=
 =?utf-8?B?NXFOb0VKZEtCN2JSMU9NR1I5OHJzbW93dU9FOGkxQUR0OS9ib1N6WE1ITUJK?=
 =?utf-8?B?eXpkMUltakhGYUlEaGVxa3dJSmhhdWdFWENtOXR3Zjd4Tkc2WGFRcUljcDFj?=
 =?utf-8?B?eXVGYWMrY0xLdmh0VFVkMlR3MW9Sc1ErK2pPaVZlR2ZqUm1nblU5b09RQkE3?=
 =?utf-8?B?QXlRTGYrU0NQR0wwOHdCNXBwVXJuSk80Y1pKcWtGcWIvKysySHRVck00bG52?=
 =?utf-8?B?Q3RaMnNTMjlIZWhMSldxWDF6L0lVb05IMTVXeEg1YisrUmlsTjYrbGhyelZO?=
 =?utf-8?B?cXZmUGFBQkc2TjgrdnRDTXFlL0xYYW9hSWhMb3p6R2lNYlBrdlkwRlc5OTNj?=
 =?utf-8?Q?Fave4QXM6iI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bk1LcDY3djVmakRjbXk1VEc1eHlRK1JYQ1JQckVXeXR3TXJzZmhtRVFZUVI5?=
 =?utf-8?B?NVFoUUJpUDBSRVJTRzNqa0N6WlAveVlXRFlUaktqd3RNZ0tWVEFNTzhUUy9G?=
 =?utf-8?B?OXJaYm9VdkozNVVPczVEck5EMDFwQXozejRhMlp2d2hhQm4vYXBRRXp5ZFpF?=
 =?utf-8?B?UjkwZG5JTzdaSkFhYWhHSlZUdG1PZ1VCc2gzNzZObmtTczF0OVQ1WHdMc0xF?=
 =?utf-8?B?K1AvMktjVUpuZUw1VWsrSnZzcGVWSWZCeG84bEtVeC94azVIb00veXAxL28z?=
 =?utf-8?B?YVdITlZUVk5zRndFR294K3ZaeDd2aW5zQUFNdWJVZjdFTnVNTno1VEpWc1dO?=
 =?utf-8?B?dVovaWRHMnBIL2J2SUVxZDlVWnk4OS9zdDdDTFo3ckdpOFBnTmFaaUtRby9o?=
 =?utf-8?B?ais4L1RtVi85VVRLRytXTDFyTW55dHR3MTl1MTc0UUhkbUxwaXBnU0wxMlRQ?=
 =?utf-8?B?c2RQQ1g2bE9GL2VBcVErZWRkY20zcm1pMmdzQnV1MWUzU0JXY2M0RDJDb1pm?=
 =?utf-8?B?b0F4b1RyTWZYRWFBMC94Skk2L09qSllMV01kb1FJbnc1UWkvNnpPWENNWmh0?=
 =?utf-8?B?NDd1aHlNNHBiQ0NLQ1d5WnYxZHZRdWhTb1hhbk9ucGxrakRPcWg0aklXMHpv?=
 =?utf-8?B?Q0Q3WnFFbFFaYytFck5yWC9XZ1YwdjVNRU5vNVQwUmQzUXJXOEdXcUZpSkEy?=
 =?utf-8?B?bk1DR3Ird05hYkdjeDl4ZnpsUU5wZ2xhaDE4SzNGaFlJRjE3QUZ0dm1KU0JO?=
 =?utf-8?B?UzZSa0JzTitGNG90Ulcxck94VjRPR3o4aElNbktnczU1SG9ZOXA5VitEWFRS?=
 =?utf-8?B?UHY3OUxwNVdBeFJSUWRkZ1JKWkVkdVdBTEJidWdkTEd0Wk9Gd3U5Y0Q1TzJP?=
 =?utf-8?B?bmVsRXdEN2VNUENWUGJWbkU4SjNUZUJvNFRlcFd3cm9jUUg1V00wZWE3cWkx?=
 =?utf-8?B?ZkNscW1iUklBd05VOFFseTZSSkxwWmllMU0zcGtQdDBRc0Z6MkJYQlFqYkNB?=
 =?utf-8?B?U1hybUhmMzBRemZpYUxGcVQwUWZ3cUcxbjBBZ3lSbUp5VGFGQkpPWjdNU1Rq?=
 =?utf-8?B?V3puMWs0Z0R4M2FPL2x2NlJIWGl5QXNlcnV2OTgyN2ZLTVdKZGdxM1N3L1RV?=
 =?utf-8?B?WThUUU5Bd1ZoVUVJSVdsMFhkbmYyb0R1ZmR3UnE4SEg5cVR0d0h4cjZBZXVR?=
 =?utf-8?B?LzhWNG9sc1A2LzhManE5Q0RDdUFVVVl1ZkE1L3NNM3FCejBSd3Fud01DQkkw?=
 =?utf-8?B?cFh1K3lCdVFkbTFNWTFiOXFpVUdhdWdLWXluMyt5L3kwUTg0eEFWblNHR2cv?=
 =?utf-8?B?QUU1emEzZk9COUN1enF4eUxNeVVyQkZjMnE4dUdNaFMzUkZmNkN4ZEUzb3B2?=
 =?utf-8?B?alpEVit6OHl0ZUNSY0s3bUdlUk9hWlZ1Y2gzWDRuVnc1ZVJWS1cvNWNkbnY5?=
 =?utf-8?B?QjFnMjluVWtDdXp5M1hSZkQydFVKdHlpN3RoUnhiREp0Q2dtd3Rzb1V1U2hj?=
 =?utf-8?B?eEtYVGFiWU14Q2ZTTFFpcElPZXU3SmhwS3BJazBXbXRxUXNoUFZTVm51eG81?=
 =?utf-8?B?YzhiMUtzNVJCNXFnV3FlbVpBVU1PRGFiVndjRWhWc0FJSDRNNm5ZdWt6YU1q?=
 =?utf-8?B?NTNCT3g1QnFGRzIwS2FUcHYrTms1TTNDSnN5Z0lkM0ZZVXRrclFVWmJsdlhN?=
 =?utf-8?B?dXpnTm1NaUR3K1dvdmovMkNaZURYWG1hU0ZmcDdDODNsMEQ1WU5kT3pQYUpu?=
 =?utf-8?B?Vm91U3V5NU1VUmg2ZHBCZFNjVlFzbXVlc0dxaW5seVB4Y0UrNThmTkhQNXVV?=
 =?utf-8?B?emlIYkpyYS9tSTd2M2VkblFtL2Fqem5vemREQ3hnZEtmNGN1UHJiWDNLalFR?=
 =?utf-8?B?OFdza0pMcit0aC9uRi8xMnZ0WittWksxWEdNYzhiRng2azVjdjNXRzZQSHpl?=
 =?utf-8?B?MDZqUXFpM0Zub1l4TTdzbFpOMUZPSi82WmJxY2gxMVY4bElWb0xBaGlMNXRm?=
 =?utf-8?B?SytBeUtkWE05S2hWdC93cXBNTnR2S3BjeEYvcEExSTVFekNuMW9WSmJHSzkr?=
 =?utf-8?B?VXVYMjFwUkNLOTVCTkxuVzdPaUhuQXJtdmNxQXoyMUtEa1l1Q1hmeVhpRklv?=
 =?utf-8?B?RGh1WmFnVjlPbHRMMHZMeFkxNVRxRkNocHJrd3pJay9RZWJ6UUpVQ0RSOTFk?=
 =?utf-8?Q?2SJ6jXW7xr8coX2seVA7aABB02d5rXdBJrWHgHQ8rR0j?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b63e9536-3cce-45ae-88c2-08ddba0b925b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 08:28:22.3853 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I7TqoKcTrEHOa3gP92R3/ttxmQmNnJMtzh9DX/+vNqNxdn8yu4NdyY9x3b4kIw+jL3ahfINLmGwjpx6YbML5OJ5+TYBEy2V5hXAf1DXqFMaW8iwBA/LpWy5DqT8lf9My
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4673
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


On 02-07-2025 14:31, Jani Nikula wrote:
> On Tue, 01 Jul 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Tue, Jul 01, 2025 at 12:28:41PM +0300, Jani Nikula wrote:
>>> On Mon, 30 Jun 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>>>>   The current wait_panel_on() uses intel_de_wait() with a long timeout
>>>>   (5000ms), which is suboptimal on Xe platforms where the underlying
>>>>   xe_mmio_wait32() employs an exponential backoff strategy. This leads
>>>>   to unnecessary delays during resume or power-on  when the panel becomes
>>>>   ready earlier than the full timeout.
>>>>
>>>>   This patch splits the total wait time into two pases
>>>>      - First wait for the typical panel-on time(180ms)
>>>>      - If panel is not ready , continue polling in short 20ms intervals
>>>>        until the maximum timeout (5000ms) is reached
>>> I'm *very* reluctant to merge any new custom wait hacks. I'm in the
>>> process of *removing* a plethora of them [1][2][3].
>> good riddance
> Yay!
>
>>> I think the question is, should xe_mmio_wait32() (and the i915
>>> counterpart) and the intel_de_wait*() functions be migrated to an
>>> interface similar to read_poll_timeout(), i.e. provide sleep and timeout
>>> separately, no exponential backoff. And implement the waits using
>>> read_poll_timeout(), or whatever Ville ends up with [4].
>> I saw your patch series and I'm eagerly waiting it to either propagate
>> it in xe or have someone merge such a patch.  I'm not sure about
>> removing the exponential backoff is a good thing overall, but if it's
>> needed then it needs to be justified to add a new function to pair with
>> read_poll_timeout(), not a custom driver function.
> While I'm negative about the patch at hand, the underlying problem is
> very real.
>
> I think at the very least the exponential sleep backoff needs an upper
> bound that's relative to the timeout. Maybe 10-25% of timeout?
>
> With the example case of 5 second timeout, the exponential backoff
> starting from 10 us leads to a dozen polls before reaching 100 ms
> elapsed time, but then polls at approximately 1 s, 2 s, 4 s, and 8 s
> elapsed time. Longer timeouts are of course rare, but they exhibit
> increasingly worse behaviour.
>
> So if what we're waiting takes 2.1 seconds, the next check will be about
> 2 seconds later. Similarly, if it takes 4.1 seconds, the next check will
> be about 4 seconds later, in this case exceeding the timeout by 3
> seconds.
>
> Anyway, if xe_mmio_wait32() remains as it is, with read_poll_timeout()
> it's trivial to do the wait in the intel_de_*() macros, in display side,
> with sleeps and timeouts defined in display. Because for most things the
> really quick fast polls are useless in display.
>
This exponential sleep back-off is causing around 120ms additional  
delay in resume compared to  i915.

how about polling as below , use intel_de_read and read_poll_timeout

     ret = read_poll_timeout(intel_de_read, reg_val,
                     ((reg_val & mask) == value),
                     (20 * 1000),                        // poll every 20ms
                     (PANEL_MAXIMUM_ON_TIME_MS * 1000),  // total 
timeout (us)
                     true,
                     display, pp_stat_reg);

Regards,

Dibin

> BR,
> Jani.

>
>
