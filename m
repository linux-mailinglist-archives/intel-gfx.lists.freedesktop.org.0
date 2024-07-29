Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8006893FB50
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 18:35:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08B7A10E24A;
	Mon, 29 Jul 2024 16:35:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DcMjEbuy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A92210E24A;
 Mon, 29 Jul 2024 16:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722270945; x=1753806945;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BhnS4/mW685aeilNdeVv2BjxZZsQ8CAG9PK/ZobByKc=;
 b=DcMjEbuy5BYJBizEPUY9X6htA4t1NAHJ7s506YTM6HydojRKkIrI0gk5
 rkZKHofcrS3gqqsmhynaA8GbhQa0NRHJHyIWtbQcgAZ/awb2BwCHt+EBm
 gTmZYWLtprDiQpZFTVBx0JJfisyXOryVxTHETwrOQup7X74z7EkB+hy2S
 dp4r32KtSxAKdRfF5FQRYB5DRixtBOLAcOY3DI0Fh9i59c39WxmYaEeEd
 dSZ8HpLlAaFtxIvPOgtXFyNS9IyhuOqHY7goZ3TBoEAZNNq0LDzJGmq3J
 aC59qswnFP/NUwamLm2iH87fE11xwYCx4J415diVqCM3PIaBIG0FVdapJ w==;
X-CSE-ConnectionGUID: bH8qnEe5S820Iq1aFxbdug==
X-CSE-MsgGUID: WAFKMCkPSAy1J5jXLOV8fA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="20186744"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="20186744"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 09:35:26 -0700
X-CSE-ConnectionGUID: jsbKwSdzT82dMPz8ZaJiMw==
X-CSE-MsgGUID: yBiMybvLRQW4WYwHVaMvNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53757335"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 09:35:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 09:35:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 09:35:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 09:35:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 09:35:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GcZzdUAcXfpPaoEHRXyUmHRz/nDmvkdkUJiyaXTSsm/usgjCoDY+MF7/KXIvpR66uM2l3kqAAsKsh00SoiaDwlI5I0iGO7mQK6MkDm03Om1VlE0na8Pq/8ejFwnGVpsWJ0P8EriNAra3y6NXrU0E7lkCKZtte7CdOxN2yGRalhbIwr+PS8LZGKIVRE9WyD7gAVNBjBS7OeEaU8i1b1pC7HlXYz6hc0fjMNjhCXys09uAMO3M6g796YABmgiUFjbkCc63UOvp3EhH/vvowKo4ZoLnnpjCpXdKhQ/4biWfmNo0mV1n4v/wdU9ioFk/A4Sk9kzstJD1rAAJFR7ilZizGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8lnPyKVQ32X/WcQcpAQcVWDmeDAN4yFuciswEUgOkkk=;
 b=AcBXhcYhaDqJLU145eq858bgpyH5Qjq1V7NAnJYq5vgta5F2uFF52+MlYy8TcnpCXgB4HEdn+1UI+LZ8PpoZ2uzu8CiGsZFa6N56TuIFmxFJKRoYxng0Kxk5329aO2dHMHxzPlAtM6EqU3poeHyC+/RMhvUhnfq5AE+s9klyF+Yns54gj/2j+Q8Btjwm6wdrlGBgiH6EgJ8s4LmYz6sKg4as+WH8TO4N1DPWq2olei5HzSVpcn34OFrUQ0nko52EA/TkOalTZu9wR+lBfWAtfNG0sYYhSjov08XShWL1gU8Te6phi7rLNccQJK6WA1+XinonT4Tlh7WMTkUW57xj3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Mon, 29 Jul
 2024 16:35:21 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%5]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 16:35:21 +0000
Message-ID: <0eaf1bc7-b6a1-4e90-9923-74bace84e42b@intel.com>
Date: Mon, 29 Jul 2024 09:35:17 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t] tests/xe_gt_freq: Avoid RPe usage in subtests
To: "Nilawar, Badal" <badal.nilawar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
References: <20240724165952.1605698-1-vinay.belgaumkar@intel.com>
 <5ee20318-0645-44d4-870a-beb58e6d5939@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <5ee20318-0645-44d4-870a-beb58e6d5939@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0249.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::14) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: dc203dd4-8ce6-4efe-9553-08dcafec704c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjVoZzViMjZ3VU8xTXJMOWp2dSthR3QyNjF5VGhwQXNqaW1RSTU2SjBsZ1dB?=
 =?utf-8?B?SkVZSSs1S0ZlL0lDMno4M2tQaGZ6bitCNG5iMnAwYURlTk9QWWVTbFdzYi9C?=
 =?utf-8?B?TmtDYlNwYnI4bnBMTjlXSkU1NnQyd3d5Z3NNSDk3SHdrZTdrZnU5QTNrbElU?=
 =?utf-8?B?clk1cU4zbnBOemF2MlZ6VHNrWUF5eUtHNjFZb0dXSHNXaWRYTWRsVUZQenJE?=
 =?utf-8?B?SEozV2phNXFBYXFOY1p2NUN4YTdIUmFjWDJsU0xyVk9nMFVidGZyMGlNWmJT?=
 =?utf-8?B?Yzh3TUxubVIyd09UZmlpYk5MMkJEcXFWeXdOcXJPYStKTXNCSjZTTnoyL2Y5?=
 =?utf-8?B?aGRmbVBnaG5ydmQ4dnpyQXJmQVNnQ1hBT0JHZ3QvcFN5bys2Ny9YWStDcHVo?=
 =?utf-8?B?Y3NGR2hneUVERWZwUUthdnJONVIrWmk2Z2hITTU3ZWJrdE5sTVl4UnlMSVhK?=
 =?utf-8?B?dldzaEg2enlvNHZrVmZJemF1b0kxeGppQnltRlNXc2xEZVdlYW1PaGtHY096?=
 =?utf-8?B?STNwcDVOZEp0aUVZaTI1MGxhS21hUm9RdEtTYlJFZUZEdU9iZHp0b291UW5V?=
 =?utf-8?B?dnVaeTdma0FhNVhITXQzNWh1bE5ueUx1YndTWDlTUndqMzE2emR0b0RaR2Rv?=
 =?utf-8?B?RitIemNvWW43VDEzRmtDem41MnN4SWZaUHlxREZNYU9yWEdVWU84NzlrcHpI?=
 =?utf-8?B?ZjdVNFFlMkp1YkhaNlBxcVhsa0JYb0t4QkhERit5aEhSL05TZ3lEVS9JTHFW?=
 =?utf-8?B?NlpqYXpJZFBUalQ4Y3FWYWtFMWRiVW5SL2o0UGlOWjE5NVc1ajdZMlJFdmJl?=
 =?utf-8?B?S1pRaVc1QWp5OG5pZU9RRU5rWWtidTVvMk13eWRyTmhrRzIwK1NMdklHSml0?=
 =?utf-8?B?TXAvRkhQSFA1dUFmZVJ1UUNUWlFpdVlhTzlnOVFrM09zbGUwTTJzdlc5R1NK?=
 =?utf-8?B?Uk1wTHZwOUpiVHZjYzZRanF0azhoRXFQSDFjYUZEVDk2cFRoS0J4b0JoRVdn?=
 =?utf-8?B?NmVBaU5GQTRZNjFwWE42ZEFiYzhPbzZKVmJJbEVKdGdmaDJXWFpzSTRaREk2?=
 =?utf-8?B?MnEzdzRSUGIycTVzclkweUExVUxkaDZOT1pHYXZZS3JRRFRKWU02cnJSTEx1?=
 =?utf-8?B?aHdITnZMTmovZERJRG4yR2Ivd291WEtmOUdYZlNzNFdhUEpHQTJFckdmWGh2?=
 =?utf-8?B?ZnRuMzc2bllRb2gzR2JGcWVOOXZmNUlhL0FmVE15ejZYaHlwY050b3hnMzBt?=
 =?utf-8?B?TCtNZlpuNGhRU0xpZy93YjBJQVpDMXUxZnVaNEJ2ZStUa2hWbkVKeTI5ZHRG?=
 =?utf-8?B?amRqSjFOVGpvMFU1V2FiNzBVcWVpOHdoUmdxU0VEVlVwL25WTkFvamh5LzI2?=
 =?utf-8?B?SFlVWFdsUm9GZlZ4YWR4c3lCd2FmeFdYSDlHQSs1UFR6cW81ZjkwR0NEZEgz?=
 =?utf-8?B?cTA3WjNPSEZiNnNxRXlqZ2FHdTRud0c5WEVXYlIyN1BXbmROY2J1S0tOaWJJ?=
 =?utf-8?B?a2NuQkMxMHI3bld1cWV3NUdoUGlJU1lIbnRsdGN3S05tVGpWYW4rREVRZzhN?=
 =?utf-8?B?MmpvalMwUG9DMEw3VWlUdkdCWWRsVzNTU215elVndThVTU5qRWZrVERDeGln?=
 =?utf-8?B?REVGSGdDQ2x0clNRZFlJT2dzckcxVkUybTBTWEk5UkFNWVNvTGFiNzlwU2ZI?=
 =?utf-8?B?Zys5WDlUUWxSaGFhZTVpS1ZvLytKeGpkYjJsNlNLNmdEY0NWWDVXdzhVQnZ5?=
 =?utf-8?Q?CN5AIBu9amfAjM+ZQc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WU52eVV3aHlwWWN0RGd0SFQxRkdNbnRkM3NIL0xydXFwYWlKUDhhdkJhbzFy?=
 =?utf-8?B?RW9HOUVNQ3hPMWFFN2VLWGxwMTdYNHFIT2Jqc1NETjc1TWdzbzhybGFCdUxI?=
 =?utf-8?B?WnYzOWswU2w4RG9nR3BxQjZIRkozdDdJRFl5dmFuOVAvV2Nqb3NEUi8ybVlE?=
 =?utf-8?B?ZkRGeWlGeEEyTlh1aUN3RGs1Q3krYU5UcGduOVdaWHE5T2xwdkU1ZlpyZDhs?=
 =?utf-8?B?N0R2SEI1c05vZWxaZlZ2Y1VuUFU3K1pJaThIMHZnOFZPaUdXZlg4dkpzTDZZ?=
 =?utf-8?B?TUV6TW15MGduQ3IzMU1IakdPbUg5dERicW9lamRlckZUc2huOXlubFJaYUps?=
 =?utf-8?B?RW05MTFoTnJpSWRlcW5CZXJPY0FVbTAxTzRwMDVyVk1hTTlSVXoyRW5KZUZ2?=
 =?utf-8?B?RHhVVE1xZUpGN1grS3lMcS9EaE9KbUlsYk1hd00veXoyN01BVittbUZiWEpZ?=
 =?utf-8?B?UHY4bS9hSER2Tmt1VkV4NU15Rm9BTmxMSHZnNnp0WGRFQitTNHN1TUZ2MzZQ?=
 =?utf-8?B?cEdhY0pSUnI4ZzQ0NGtndDlsVHhOSnZBN245Y3M0Z3MrSUd4eFFIRUg2Rk91?=
 =?utf-8?B?eFRjVUEyQ2txMkZCMHY0LzlHM01saWI0OXdVSWZrdldlRlEyMlFTemlFU1Qr?=
 =?utf-8?B?UnJQRXdLQzNBRmxOVENqQWlIaWRrWFcyc09Rbm85NUIyRmN6Vkg3aFRHNGd3?=
 =?utf-8?B?OWlDNCtzQndhU2o0OXA4cnk3SUZBRG5qc1V1cEdqZTVkazRWN0Y3ajZGOHFE?=
 =?utf-8?B?eU90VzBOSEk2U2ZHMkpIVjVGZmNMZStqbkpxSk1EbndXSTcwd0RENHpxVW5r?=
 =?utf-8?B?RHVIaU9yckJuZFN6UTJxUmxnb0JaeU1Vd21jV1MyaUMvOEtSSkxqdnRRbXpw?=
 =?utf-8?B?eFZQOXhQWFlqZWFYdzM5eGlYNEp5YlB2SXJEN2xrUWNpZFRodm9DKzVMOTNE?=
 =?utf-8?B?TURvK0xRSjJuMjh0L1FLbmw4a3l2UnJDa3FNeUZlb2FGdndFOXVaQ0E5aUhk?=
 =?utf-8?B?RjlMNlY3RGFkR213TzlmOWsrVFFRYUlYaTc1YXkxQzk4ekdodDJUSDVERnhO?=
 =?utf-8?B?VDBvbWxwSzdzZGR6RE8wcHV4RG4vWUhYTjVUeTVQUFVzaHM4RDVFM01QcEZk?=
 =?utf-8?B?RzdBTVpwMXl2ckJYMFdNaG1KNGF3TlYxR0VYUk5KYzkzZmVTTGgxU1ROK1FL?=
 =?utf-8?B?TDNuL0kwbFAxN3d6K3I1bDdsMktXK2FKOGlGOXRIQktRYUZjeUgwU1pzVy9C?=
 =?utf-8?B?em1WZlFIU0Rwd1hSYitpbFlJQXF1am9HYnY2azhYZW90UUNWcytRYzRTdldu?=
 =?utf-8?B?MkNWR3lmbVFWNlpCYTNxQllPZDBDWWRWczVWQlNJdWNGRTZ4RS9PYW8wRTJn?=
 =?utf-8?B?TVh6aHhXRi83YnhGUkxsS2Q2eEZCbEszWlUwTWhJZytMdzVvZW9BWWhOUEJm?=
 =?utf-8?B?RURBUzlDYXBPbXJHU09lQmY1TGVIVit4SXYrWE9WVmFJMGR6Tlluc2duYkJi?=
 =?utf-8?B?djBKeVhva0pWMzQ0Q1ZxLzRXV1JMYnROMjlXdUk5SnI2ajdDUzJMRVpudU1Z?=
 =?utf-8?B?bnowK1VpaWRZMFZNSFFUdHNjcERIUGcrVUxoTm9YeHJEMzlMZ0dpZjR1OVhj?=
 =?utf-8?B?aDd2WkZHRHJSQ2RTSVR1MVNEd0dvdUdyWmpHTmcxUysvYm1NeXJ2Zm1FSG4v?=
 =?utf-8?B?N1JML3kwMkF5bDN2bG1wTFljU3FncWdMeGRaRGRGaC9qYytlaVF5NTV6eUlJ?=
 =?utf-8?B?emNEVXNiUTN2NkJPbXRQOTZCSEttUG9yMllUU0ZoMlBDWkpDUkVPMUdoZnVu?=
 =?utf-8?B?ZjlWbXVST1lDTVY4L2M1Z0lNZ1V0TWV6c1lLd3dqd1RaUGRhVktVQ2hONWFj?=
 =?utf-8?B?VTl6WVZHQWNDcDZnb1ZIR05BaHAxSzhtYXJob1ZmR3RNTjZ1Tm9jNVNvem5x?=
 =?utf-8?B?MUJRaHV0REZuNlFaWWUwYjBBbHVoUDNkM1pVOThNUHlEVEtUcXpTb01yVmo5?=
 =?utf-8?B?ZEdYQ0JMcHlONm90S0g1L1A2OSs2bDhQdTNoZUZwTlVrbXB1aHdtaEtsTnE4?=
 =?utf-8?B?UVBCR0ZFc0VhdTI2QzNQc0lNYUVrcFh5VDBwbDExN2VCMFVUM3RteFNlSGVl?=
 =?utf-8?B?SDVPR0k4Q1FyVHVtTHNHTFN5TkpkYTI1SENZaGt6Z0tnYi9OU28yQmR3dHpC?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc203dd4-8ce6-4efe-9553-08dcafec704c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 16:35:21.2297 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UslODEvvlf5rvgtGtFlSLQDZkdiJX4tYVNNOHNMFt8oG2kskbpCF20KlJLhls3xzUo+TxjC3uzsTKC78GAPgXI0YqMsYWW3XgCzWR75yyjI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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


On 7/25/2024 10:08 PM, Nilawar, Badal wrote:
> Hi Vinay,
>
> On 24-07-2024 22:29, Vinay Belgaumkar wrote:
>> We are seeing several instances where the RPe, which can be altered by
>> pcode dynamically, is causing subtests to fail randomly. Instead of 
>> relying
>> on it, we can use a mid frequency value for these subtests and avoid 
>> these
>> failures.
>>
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2262
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2256
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/intel/xe_gt_freq.c | 37 +++++++++++++++++++++++++++++--------
>>   1 file changed, 29 insertions(+), 8 deletions(-)
>>
>> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
>> index 93ebb5ed0..442f5658f 100644
>> --- a/tests/intel/xe_gt_freq.c
>> +++ b/tests/intel/xe_gt_freq.c
>> @@ -26,6 +26,9 @@
>>   #include <sys/time.h>
>>     #define MAX_N_EXEC_QUEUES 16
>> +#define GT_FREQUENCY_MULTIPLIER    50
>> +#define GT_FREQUENCY_SCALER    3
>> +#define FREQ_UNIT_MHZ (GT_FREQUENCY_MULTIPLIER / GT_FREQUENCY_SCALER)
>>     /*
>>    * Too many intermediate components and steps before freq is adjusted
>> @@ -70,6 +73,16 @@ static uint32_t get_freq(int fd, int gt_id, const 
>> char *freq_name)
>>       return freq;
>>   }
>>   +static bool within_expected_range(uint32_t freq, uint32_t val)
>> +{
>> +    /*
>> +     * GT Frequencies are requested at units of 16.66 Mhz, so allow
>> +     * that tolerance.
>> +     */
>> +    return (freq <= val + FREQ_UNIT_MHZ) ||
>> +        (freq >= val - FREQ_UNIT_MHZ);
>> +}
>> +
>>   static uint32_t rpe(int fd, int gt_id)
>>   {
>>       return get_freq(fd, gt_id, "rpe");
>> @@ -128,6 +141,8 @@ static void test_freq_basic_api(int fd, int gt_id)
>>   {
>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>>       uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>> +    uint32_t min_freq, max_freq;
>>         /*
>>        * Negative bound tests
>> @@ -142,16 +157,18 @@ static void test_freq_basic_api(int fd, int gt_id)
>>       /* Assert min requests are respected from rp0 to rpn */
>>       igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>>       igt_assert(get_freq(fd, gt_id, "min") == rp0);
>> -    igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>> -    igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
>> +    igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>> +    min_freq = get_freq(fd, gt_id, "min");
>> +    igt_assert(within_expected_range(min_freq, rpmid));
>>       igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>>       igt_assert(get_freq(fd, gt_id, "min") == rpn);
>>         /* Assert max requests are respected from rpn to rp0 */
>>       igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>>       igt_assert(get_freq(fd, gt_id, "max") == rpn);
>> -    igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>> -    igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
>> +    igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>> +    max_freq = get_freq(fd, gt_id, "min");
>> +    igt_assert(within_expected_range(max_freq, rpmid));
>>       igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
>>       igt_assert(get_freq(fd, gt_id, "max") == rp0);
>>   }
>> @@ -168,6 +185,8 @@ static void test_freq_fixed(int fd, int gt_id, 
>> bool gt_idle)
>>   {
>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>>       uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>> +    uint32_t cur_freq, act_freq;
>>         igt_debug("Starting testing fixed request\n");
>>   @@ -190,17 +209,19 @@ static void test_freq_fixed(int fd, int 
>> gt_id, bool gt_idle)
>>           igt_assert(get_freq(fd, gt_id, "act") == rpn);
>>       }
>>   -    igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>> -    igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>> +    igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>> +    igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>>       usleep(ACT_FREQ_LATENCY_US);
>> -    igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
>> +    cur_freq = get_freq(fd, gt_id, "cur");
>> +    igt_assert(within_expected_range(cur_freq, rpmid));
>>         if (gt_idle) {
>>           igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>>                    "GT %d should be in C6\n", gt_id);
>>           igt_assert(get_freq(fd, gt_id, "act") == 0);
>>       } else {
>> -        igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
>> +        act_freq = get_freq(fd, gt_id, "act");
>> +        igt_assert(within_expected_range(act_freq, rpmid));
>>       }
>>         igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>
> We should cover freq range subtests as well.
>
> https://intel-gfx-ci.01.org/tree/intel-xe/xe-1667-9f8e597a1c39d7e316f9479e6f627c15dbc58e1d/shard-lnl-7/igt@xe_gt_freq@freq_range_exec.html 
>

ok, will do.

Thanks,

Vinay.

>
> Regards,
> Badal
