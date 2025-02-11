Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19258A3066B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 09:54:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCF7310E44C;
	Tue, 11 Feb 2025 08:54:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LPfPzEex";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B41E310E44A;
 Tue, 11 Feb 2025 08:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739264061; x=1770800061;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9gEULlDu/nSOEyv2w7SN+oCzhsSXa4hPA04FnPrua7s=;
 b=LPfPzEex/G6wRvYu8CgQ6FNGazTb1YUwJsdrRl8ncYka7EbOo8hVgDQY
 BVSg/kvlHqcCi19SXIfAQIA8IrOXFRNUN/J91pOqhCM/igD6ua8ACnDDH
 2SyZpun1YfojeE+K/vevp1vzsI4vvLbwnOxQS0wR/X1UF5lmsnH2iwdwQ
 x3Vma69IGoC7VWnvehNY+jxNP8ZywvnGGXf7pH89LBOJMEOv4KV3FRkEh
 RdQ0zqtXvFTuIUe28MNtXJDqZ45vqcON5QQvLt2SAqESGvfAxpVPrzDp/
 gCfmihO18dSRILOM28PoB7OWPltXGbkD2DOD4OphSsB0XIWnpnBL7g9jD w==;
X-CSE-ConnectionGUID: gpuHaLISRNmIpwZavNjA5g==
X-CSE-MsgGUID: LxPasES1S8SxNOG4AHfTgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39892382"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="39892382"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 00:54:21 -0800
X-CSE-ConnectionGUID: Gl5/Jr1QTqaGSLmAcH8Lfw==
X-CSE-MsgGUID: mhSK3WrAQqOlalyieRRqtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="117530756"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 00:54:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 00:54:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 00:54:19 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 00:54:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d/DbJrooTGA1lm4BumH+4StjBaBQJj8CL8c4H4tyiu+7/I9JiKom8O9Ro9pVwM33Qh5Rrbf23JbRtg9D/SHGWbk2a3Wb/3QLBF87tyGVueGIn64vmZT5IXV2VzS2uiUkEg88VJdZ4UJpoR9beo0n5RdkHARp/HoPicJOOc8F6DvnPFVhw9er4uT+ul5IjEQ7kbK2XHL+3M6xQDDU8rtNWdkcqt0/g1lohvubn1sdp5lqbb5o4G65lGo4vdlqhAHhciBiIsA6kkJvyjvVDvdvJaSZ5PcrSYsoIdnx+Qfq8FmRj7GBu1uzphzCmg14UFJh4I0RDOB6hOLSUJdgwQZwRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xOG6I5HT/9JSC4AQsd3cl/0t/ejKoGlUpcuI1EbwLd0=;
 b=k6I2ajbZpTu8+ITm6iuuqc5rNdB69uWmkckT2lpcGy0IGSRUNTAiTVhv2RJErDG4Jr4m4BHPPAMdsVp6pF88yF3ZaV07UfbiVv2jycTKJeC3EcWAF5VYoU5r7c/sGVlk8FY9FmJ7/x1VVmDaQE26cLKd2TJggKKJEqm7rEA6w0ChEG7dAcvXAKpO59/euRuasaeSWO02wv8yVhGzaGldEOVYOm0AqKCfJycs8yCwAkx0iThV+ar/owopBVNy9CH8DP7e/Ps/LL/7YRDDvKF+j8CnKYyYr3hEt7w0rUSvQ1VYbRT/XJHao7IQPEe27Tk8rfgFE5i4JDPMlENrbpqWZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB6737.namprd11.prod.outlook.com (2603:10b6:303:20d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.16; Tue, 11 Feb
 2025 08:54:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 08:54:16 +0000
Message-ID: <82199e99-7be5-4d4f-aaa5-2797ad66e849@intel.com>
Date: Tue, 11 Feb 2025 14:24:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/8] drm/i915/dsb: Decode DSB error interrupts
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
 <20250207223159.14132-9-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250207223159.14132-9-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0085.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB6737:EE_
X-MS-Office365-Filtering-Correlation-Id: 1696d99c-bc09-4302-4842-08dd4a79aa4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YVB6U0FERVdldGpFNkVKWnl4Mjhuc2JEOG1rSDZpWUhEd3R6R0VqM3hxSi9H?=
 =?utf-8?B?QStKVEpCZzBZdGsycGJQMUk4UFRQRy9KKy8vMko5bDF5STUrMEYrazdDaDRL?=
 =?utf-8?B?dzJaVDZMQVI3Z29YZjk4YzE4WlR5VmcwYVZORnk4c3M5OHBxUDhBTCt4czZt?=
 =?utf-8?B?U0xVcVZXY1FIaFVXTFhQb3B3bG5ZdGtjOTYvem9XNmd3ZllMaS9vNjVxUG5C?=
 =?utf-8?B?V0h2b3BJOSs3ZzRZS1FsNlhRWXc2QjVDQjZ2ZTdReXlXTGczRUpBMi9LODNI?=
 =?utf-8?B?U3hCSHZCSHZCSXNkakkxSVpMYVl0cGFtZHVOTjlvdGNHRkpkRjM5T0lER1c4?=
 =?utf-8?B?ZStDM3RlTE5HaEFnUXZtcDUyL1dnWklmbHlWS09JSEtzemNaUFlSeEZvZTln?=
 =?utf-8?B?MU1ibVFiQlJpWlV5ZmN2YlBuT3ducUR3YjhORjVkbE5PUmFzY1N6R2J2REd6?=
 =?utf-8?B?MDQ1QWtDUCtsZ3paZ2dYZis4NytVdGVnVkFrTERLNmlKcVBpQlhjUkZxakNM?=
 =?utf-8?B?bGovMS8yZG1Rb2hWSWdZRnB2ZXhPR2tOZ0JyUVQyLzI5Y3pTOWZOWHJ3dmRV?=
 =?utf-8?B?L2tMaFQwNlBHZFdwdno3OHpzN3VldVdZQ3ZVZ1Jrd2F3Yk1WaEhvYVJxbzg4?=
 =?utf-8?B?WU5uZ1BXOTZ3eTNhUTJUVTl0bUFETENnd0JoUnBnTlZDTFR3V2RNcHZoVi9U?=
 =?utf-8?B?Q0p2U1g2SVB5ZDVYNWt2VWlJSkxQTFgwVjNSU0xoYmhMeE9SZE5KQ2lnMk5x?=
 =?utf-8?B?ajFLb2NQaDFab0dMSURYNzBad3ZkZVFRYWYwQkQ5b2Z4UXFsMGdJb0xLL3RO?=
 =?utf-8?B?Qi9FM05GNWdxTldMaUszSi9PWnJOOUVabWpHVG9VazFNZURCZllnN0h1Q2lJ?=
 =?utf-8?B?TzYrT2NPUHRuZGEvN0xJVU1vUXdFUGI0Zlg3SlRqei81SDd5alJhRWZrd2pq?=
 =?utf-8?B?dGlKRk1SZDFURlJYN04zQUNpVDh0UkVMSnhXVFNzRTkrcjlIZlhvcjdPWG9G?=
 =?utf-8?B?SDVMQnRXQTNPS1IvaW5jWW8wSi9nMS9SbmJPOCs3a0s3ZUs3UnJLRVl5WTZi?=
 =?utf-8?B?RXg2c1NQTTNHSGlMRnNMb3NTN2djMkJqeEJOZmh5YmV2Y1hleGRYRHRxYXdh?=
 =?utf-8?B?TFp6a3hLSGFYdG9wd0VqL05jUXV5TEludnNTRVRDVmxJa0hYOWMzMVhpK0wv?=
 =?utf-8?B?d0Jaam9oZWlGMU1tTW54cWlsQnZ5WUpNdWN2dkVlcUEwOGQvUzE4akRjNTNp?=
 =?utf-8?B?YzRrN0dnOTkxUVlRZCtIamdHK1R0dnRXeWxHWktESmRPenlqaFZWdjJCcEJx?=
 =?utf-8?B?ZTNqYythZ0hiSkRkWWZxVlNGLzhWMlc4MEF3RlJKeEhFZ3NwNS9MUC9jTzY3?=
 =?utf-8?B?QXpEV0szekhFQzhONGRmVE14eVhESHRQem9qTERGUkcvbVNDeGdJOFhhNlpS?=
 =?utf-8?B?amJYMDdyMEdOYXRCeVhpRkQxTit4cXMxK0c5am0yU0lZWFNnMTJCYUVLSzJC?=
 =?utf-8?B?NmhHZHNEbTh5MldrQUtEOWh5RXFiK2gwQWZSTUhhWU5yUkVDWU5QSk1qTmlF?=
 =?utf-8?B?L3FOcXVFanRLbm5ZQjdUWHdrMjJKOWVZYzluR3pNM29pdFJYbWxHU3lwVkcx?=
 =?utf-8?B?ZkdJc0tVVWplTVJ1TUg4MCtwZk0wMG1NdWUxNll3WmsyMHpaK0dzUVhnYTMw?=
 =?utf-8?B?NVFnQ09EaGI5WWhGUmxCUVlJYy9HNEsvTFFTV3h6WFZTTU4zUkU5eWthNFJN?=
 =?utf-8?B?a0lsdVBQKzU5ME8xcjFNbHlTNWJTVlJlYWVMR0lqQkdwTy9VcENrRldJTTc4?=
 =?utf-8?B?UFBtakFtc3liRC9XbHF1Ylp3T1hRLzBieHM2QU1hd1pZUGxXZmg3V0VwL1Nz?=
 =?utf-8?Q?AQb5a9vJ3kusp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QU1GUzRkMktnQjdTUHh0M3ljTmgzMjBEckhMYTB0OWxSdTNxTUxDT05vL0o3?=
 =?utf-8?B?SXZxZEQrZlkrS0M4UWZPb3JlckVtU3VnMTNxUVB2TE10VmF0MVpBbXlHem1X?=
 =?utf-8?B?MkVMTHg1TVRwSHJpQ21oN1pYM0QyWDdkdHlmTFRPS0EybDNhUlFKYzdINGVG?=
 =?utf-8?B?YUZKUFlMZW1LUlU2L0oxNm9JZjB3dHR1RmxjZjEwakJvSkM0QzhHeTFHSmU0?=
 =?utf-8?B?NGdYMkF2TFhab0dzZkVaa0lxMUlHQkZPMUloc1ZpM3poRVdGZ1hGUEhIQmJC?=
 =?utf-8?B?dDdtYmxWK0gzbVBpK3pndTlaRE42S0tvK0hVT25UdmJaYWk0aTZFTkh0YWd1?=
 =?utf-8?B?K3BYekVqbFdIbEJMWnY1RWZheG9jSnhrb2ZSL3BqR1J1dHFSTlorTGpGYzhy?=
 =?utf-8?B?M08zSWdwOTNxNVMvUW9kUktLZG45eEhhZFpicTJVdmlmSWt2R1Jra1hlS05G?=
 =?utf-8?B?MndyRWJ4QlVrdE5PTGFEUk5ybnhiZ3BPTEJsZ2k5U042U21uTmFKVmI1VHdm?=
 =?utf-8?B?ajRtSmVUYVBlUXcxdmNWY0ZIelpUME1ZRjNtUXlpUzl1cCt2YWpkaXo1eHZu?=
 =?utf-8?B?eTU1alBOYVcyN0hjV1EvVHhmOVIyUCs4ZitWMEU1dSs2OHNZRmFmd21iWWdN?=
 =?utf-8?B?OTl4TFpIVHVPU1VZZEcyWHlYNS9vZWRhUHZGZ1J1a0dBWUYrVW1QcGZnVFNB?=
 =?utf-8?B?bnRVNG9NM1NtNW5VUVR6YUZoSldiNkJiRzVDNmk3UlA2Qzl2SFhDV0U5c1RP?=
 =?utf-8?B?YURKc2tJd3M0dGhpRzh1QXFMREpheUhXeWthVGRacGxKcThiMUtvZEdsUGRa?=
 =?utf-8?B?RWQzL244MTZuanhHSWZZK0VCZllTZWZnS2JyNG5xSVJRRkNmc1JBanlGNk01?=
 =?utf-8?B?M1BGdXZsMndreHF4OGdEbldsc2JPbGUwdVFiQWU3QVRTczlIZTZpWUx4ckp4?=
 =?utf-8?B?T0RSbmR3azVCQ1l3c2JaaDJrWnNGYzdsS25zMFV3b2Z2a1krSWZaUTBSTHUx?=
 =?utf-8?B?SW9xZUZzQ29rUzgvd3EvWm1Kemx5bDB1RmI5bVpyY3ZCNS9KeXQ3eC83Q1JO?=
 =?utf-8?B?OW1abnpTTnoweDJVd29YNXZJYjR0RWkvNi90TDhNRGlONnhuUVgyMXlHRExZ?=
 =?utf-8?B?c3BaTDBuR1Fpcm51OStuY2lpQXlvUzBtV09qb25DbFZGWnFZa0VaTTdCcFg1?=
 =?utf-8?B?ZS92SVhZOVRGWkkyRVpmTXJ0RCt6cmpZOXdPaGtMZkVjUmhqZzN0YnluWEZy?=
 =?utf-8?B?bUtYSUMxUTlGbGhUcmpXU3BGV2NiazRwVHhWMERsbkdsMGZTQXlMZDg2WnFp?=
 =?utf-8?B?aUY5THJOaks1dzYzSlZCZGhZZWliY2ZhR1VoWlNTbm1HOE1PaXFCRGN5bStU?=
 =?utf-8?B?UERya1BCREY1cm5sYVdYSmxoeUx2dVFXdGh0S3B4eUlLTE5JUXRxQWZHdGxB?=
 =?utf-8?B?SzJGM3VjbU5JdUxCZ1RJR3JCNVAyNXRIS3RLRXVhU0l2ZmQwMjBhSUVaaitw?=
 =?utf-8?B?QkpoMTZWeU1jUTc2VnlMeHFPNHJ1WkxyQlN0dHFzMmpMcXl5eHdTc1M3b20z?=
 =?utf-8?B?N3ZDaXBVR3Z5Y1VDamZtYUs1cEk4cUlQMFh6bmJwNVpEdDQxYmM1ZXNaQ0pK?=
 =?utf-8?B?eDM3REF3dExNdEh0UndySnFWZERVdHNPTXB1cTZiVVVHc1MzR05hWDdycnZJ?=
 =?utf-8?B?Q3IraSsybitJUFdRUU00dm4raS92dzFkNDIzK0xLeUVMOGtEU0V6dHUyMlZn?=
 =?utf-8?B?R0V2bkxWVDA2UmxKQ2J0djBadkpVQ3QrVjgyS2hiQzlEOHVBUllHeGdmRHlF?=
 =?utf-8?B?cGFsdE1UM21ZYVNBVVVRU0w2Y1F5SkZLbmlpRWZXb3lMNGRpcFBDOE5WQldo?=
 =?utf-8?B?MzVkSHEwdERVd3hJMGF1aFVoTm9OTGxlN2xzelV5U1NTM0hJRnozcnVhUDBn?=
 =?utf-8?B?VUkvVHRmQU9EK3FRbDM3WTFmTGt4Ty9kbTMwdTgvM2I4ekRYSmQvS0JTNTBo?=
 =?utf-8?B?OS9EQjE3M01wYjBxcUJyRkpYMUVUWi8yTmNwN2Z4dS9iMkhBTmZUQlJIWGZ0?=
 =?utf-8?B?Q2RUekNOaXBjT2JjWU9Mek50aFRhdzVDNG9Ka0I0cEpTRVlKSkpWVWIyMFF1?=
 =?utf-8?B?dWRIck1TdVhXdzZvVWRSaHViS0lmeW9kZ3JCRklOeWR2SmNRYStjRitjK1I5?=
 =?utf-8?B?VlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1696d99c-bc09-4302-4842-08dd4a79aa4e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 08:54:16.8477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 14zcvrhpv/F+zoHgh3P6pKIzNE32hoX9x4u+BvjUthJ+e131oHwE64D/nqnluSmk6l5k9t/mXkpkUIwZd2en3T2iO5EByu+oJklSMlOqdF8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6737
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


On 2/8/2025 4:01 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Decode the DSB error interrupts into human readable
> form for easier debugging.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c | 15 ++++++++++++---
>   1 file changed, 12 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index aba57ddfbb92..db69b1c676f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -860,7 +860,16 @@ void intel_dsb_irq_handler(struct intel_display *display,
>   	}
>   
>   	errors = tmp & dsb_error_int_status(display);
> -	if (errors)
> -		drm_err(display->drm, "[CRTC:%d:%s] DSB %d error interrupt: 0x%x\n",
> -			crtc->base.base.id, crtc->base.name, dsb_id, errors);
> +	if (errors & DSB_ATS_FAULT_INT_STATUS)
> +		drm_err(display->drm, "[CRTC:%d:%s] DSB %d ATS fault\n",
> +			crtc->base.base.id, crtc->base.name, dsb_id);
> +	if (errors & DSB_GTT_FAULT_INT_STATUS)
> +		drm_err(display->drm, "[CRTC:%d:%s] DSB %d GTT fault\n",
> +			crtc->base.base.id, crtc->base.name, dsb_id);
> +	if (errors & DSB_RSPTIMEOUT_INT_STATUS)
> +		drm_err(display->drm, "[CRTC:%d:%s] DSB %d response timeout\n",
> +			crtc->base.base.id, crtc->base.name, dsb_id);
> +	if (errors & DSB_POLL_ERR_INT_STATUS)
> +		drm_err(display->drm, "[CRTC:%d:%s] DSB %d poll error\n",
> +			crtc->base.base.id, crtc->base.name, dsb_id);
>   }
