Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF475B84E2B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 15:42:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C7E410E8BF;
	Thu, 18 Sep 2025 13:42:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b0G94hfe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C4D610E8BE;
 Thu, 18 Sep 2025 13:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758202972; x=1789738972;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=aRcoe/gyqstsQh+I1VMbbuqbKjKifVOwqPFTLl0XXUQ=;
 b=b0G94hfedBPPLhULtDeOPkCLkwrTG7nIYklmpfXBN0plWUwq2jfrq079
 9C1//xg3YHFLIYIWvNEpfQUL44BtRrSBhTaZihQbt0QQR5XMnDZA1B+8h
 DoaR8kHLW5o10h1ejbh4+BhEoi3jIGplLEfz2HseuK1RsYgUgqAg4hNGJ
 J0cNMHv/JaE/L07KsRNj9eWMa8+boiIjMkk/JSYNrcR4mhOs5EjUUgsn1
 yZYbrToMDHZ/OEpJW0tb1TNAWRLuk/p1boX2X6aGoLA4Y5oKF3j4R3XVV
 dkEWMQVs4R+yWgNUwr6161Fd7WDmcw3whn1KyM9pPL8N1wNRM0HZbFoM4 w==;
X-CSE-ConnectionGUID: aioskYAeQc6OcBbezmkbAA==
X-CSE-MsgGUID: mFUPtclIRVa0GYZaBVLKJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60682169"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208,217";a="60682169"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 06:42:52 -0700
X-CSE-ConnectionGUID: 65bnWQhURvecYBG8dvmoOA==
X-CSE-MsgGUID: B7SueOYjQlmdGyuqRH26qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; 
 d="scan'208,217";a="206337281"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 06:42:51 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 06:42:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 06:42:50 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.9) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 06:42:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SwLD2gB88LhcF2svYBGsLG7W8RcixYNcpX46Lw3Pqmp6QD6sAxgfSxmwA4ZhmS/WyNjfcujsUoPWvdZRv6U8U9236k532tDtX9lmWQ31nZlVQe8xggWh2g1MoKpVRtMP3Gz/K9O1z6LDIdc+5ziCFy69BV408/vUctZvceGj1QsnYTworSiQE/j7zeOzZsLflCSpOI0thrBNl7yzDWOQBkYNKIUccRrsggwnh6DCfd+nQkeXw7VODe2Mr1d8Wi/vfIi1hNTWhEQaFEwXh7jEbaNNZdHwWN9h5LLOKP2iQPhrEuMBvTQg/Q8RFH5KHXYrqgHpu2+YFPkiaJcljMjTnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9fGyCl8/9iioCPzCRjxLi7Xz0cjVU6o7WbgCu4svF00=;
 b=mROqAdtj+wpdmV78IOU2Oi6J1AQxauphyExQ8MluN4DPU4VV7DwP9CVRh8TstNwI6ig8ItYG74Q3Ugz1I3Pg7s7fSp8NxpWkhCVZUY5e2gRIu3LdE6Z8gSCeYCfIs6rnSPY2mo3BvvH2NnnFk6ja11JMol9RZX/Anl1LqrXX4mdpZNjfGw3yZdMUwI/jeL5tvL8npiF9mLBuUdQ5Ra7zp3VSJ/R/3HzhjATasbjRjD8P/kDpNVBHKVljSYOpBiNKl7wtAQN7Bsf95E7qpuz4btM2dl3IpPZke2/0SSCm7QFSeoOvBpryk7rNsUOQSj/BEPx5P1guEWKi0lvbSk4Png==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6034.namprd11.prod.outlook.com (2603:10b6:208:375::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 13:42:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.020; Thu, 18 Sep 2025
 13:42:47 +0000
Content-Type: multipart/alternative;
 boundary="------------ZitnqUs6Yl3US7JmbelPvJeO"
Message-ID: <b29061f7-230e-43be-8e2d-1c3d51752f63@intel.com>
Date: Thu, 18 Sep 2025 19:12:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] drm/i915/vrr: Move the TGL SCL manging of
 vmin/vmax/flipline deeper
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
 <20250917203446.14374-6-ville.syrjala@linux.intel.com>
 <79e9f1d5-0e23-4f2a-8961-925e1adc2788@intel.com> <aMv3uG3NnKPSpJE4@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMv3uG3NnKPSpJE4@intel.com>
X-ClientProxiedBy: MA5PR01CA0002.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:174::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6034:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b366502-0632-4a78-2b6a-08ddf6b940bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|8096899003; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cVNhVy9LTXBIT3JQTlh5amg2d2dZQlltT1BFeTRwZTlnTlMyUGtQQ2NPdUhr?=
 =?utf-8?B?VTB4eHUwb2VyWUcrMGZES0tOWitPTlhXbmtkcEhBT01VejYrTXVvcHkva1Nn?=
 =?utf-8?B?cC9xSUl3Zkg5cmFxdW1tb1JTaHVZcDRVczlXSmdGSjhwU2xDbkhsdGJSOVNG?=
 =?utf-8?B?RHQvN25tL2FjWTltdWxKa2hKOVJIRlNxcDYvSVNHVUN6cTgyRGNRaVI3TU1J?=
 =?utf-8?B?Uy9iZjY4cTRNUG5WOEJVYmtqWWlkWU5wYzhJdW9EUHpZc0JDK0YwMk1LclM3?=
 =?utf-8?B?VVZsWEJ4dGdBWE93Zk53dnlKTE15NjZVWUtwOVpxNFFQaEExVmo4MG45cmZj?=
 =?utf-8?B?S1lCUWM4WHZqTTdFL3dxTlYyNFBLNjRza2R6N1lBUkxXS0hNYUVQNmVodTRD?=
 =?utf-8?B?Y0tMMEQrUTNEMWwyMWRXVlBYOURteHU4d1RqeE4xRUtvb0k0RDZ2OGQrZ20v?=
 =?utf-8?B?M3ZlS2ZubE9CNDVsUnVWS3BsR2RDZ2dldW5pbklvYTU5SDJUSFpoQUUyMHZm?=
 =?utf-8?B?TC94dmRtVnNjZ0FWeVZiUWxDNm1uOWQ0WXplekg4QzhqUjgvQjhnNlNMTFFv?=
 =?utf-8?B?eTR1dG5tQzlnV3ZoSlM0WHF2c0lhVUFMQ3pEWldTT2FCMHUwNlV0UVhqc1lj?=
 =?utf-8?B?M2tlYXcvQlFrQUFZQlBZdWJmU3h3czM5a1ZUR0FXRHlRWlFNSWlIR3J4bHRR?=
 =?utf-8?B?dFpXYVVpVlZjbHh3NTRQc1p1TFZtN2VMRTRYZjdIMVVoV24weGNEL05iVVpX?=
 =?utf-8?B?ZzEvMkFmWmFHMHFvemJTb3BpdC9SZEV5dWg1M1hsc0xpT2VWdURBODdraUlx?=
 =?utf-8?B?SjdzQ1JXQmtpSUt4Q2RUMnR6MWF1NURaTFVyQUgzQ3E0alJxVjVVdUJjRkZu?=
 =?utf-8?B?dVY3OG9CMmY0RXNkSmJtc3hEY3h4aG01NjJvZDFRMWdlRU5FMjJjcFFzbUtC?=
 =?utf-8?B?N0xpR2RRc0htc2Q2SkpQUiszMDNrdTUyNGl3VWtIdjNrRUI4K0lkN3VKdi80?=
 =?utf-8?B?cWlNSnkyb2E3WVJrYzcrTWVxRmlxcXFjSlFjNDdwVTFQektSRERlRDI3cTMr?=
 =?utf-8?B?Q0hqeERHdVNBdUVPQkhyM2ZpMmhnY09reGxtQVhkcEdqbE03ZUlwcXRqVVp2?=
 =?utf-8?B?V1VkYi90VmVSeEtnSERhY3RodGxDOUxLZlVQeVNaZXluMlI3NFliSGZtREtN?=
 =?utf-8?B?cXhtQ001Sm0vcUk4SGZYdTlRbU93dkFKTC9NcnpOVlc3eDFqVnpSMlFKM01q?=
 =?utf-8?B?eGRFelRIQ2laaXFGMmVVZGMxVDRYT3lFcE5EK0xDSDl4T0dzc05tUVkwWDNy?=
 =?utf-8?B?dzVMYXY2eTY3Vm9NWFRyUmZoSzEzbWZoOFZkWDdKemY2eWVSdFozd0REa2lS?=
 =?utf-8?B?N1RYdzBBTm4zQnNKRVhrYXEybHA0S2x3Q0lEQ1FjNFkyUFpOZU9IK2l2Qk4r?=
 =?utf-8?B?M2h0MWJaSWlYZXhxOUxLMmp3cmNtdkRlQnRIZVY3bVdScEFwMDZjM1czVVJk?=
 =?utf-8?B?S0UwU0lmU0FvY1dmbXZXdWdXMnRXZHptSjF6dzcyQkE0bnBmdksrdE5NR0Yr?=
 =?utf-8?B?RVhDaE5CR3doa0o0UUZuVjZUZ3JvVW9iYnE0N21oQjNzRUw2NWlGZWVVNTIy?=
 =?utf-8?B?TGtYUVFkRXI3TUM3a0JKR3IwRUJnM0Z2UmFnMHd0OUlzYUhoeTQwUjJIc1hm?=
 =?utf-8?B?QTVvTWx0YjVjT3ZnNURIcm5MRkhxZkVudXhPeno4MVZUTWxjNG8rSW9CMDVZ?=
 =?utf-8?B?Y0VFUy9QUVMrbTZyNEJTYm9DZzdCd3d5TlFZTzFvQWtPR1R4dVJiUytSQ0po?=
 =?utf-8?B?NG93OTM0Snl5SnRzNitQN0JwMG9nVVk3T3RtMFRpbmJZQjBRc0F1OHorSitP?=
 =?utf-8?B?TnM2Y2E1ZGEzN2lFaHkyUkUvMFB6S0Y1Ry92dXlsdU1wNFhDbXFvR3grQUxr?=
 =?utf-8?Q?5hHCsPoJlbU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(8096899003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RWNGcE1aa04vbGJ3Zm9xMlN2OGtETXdtOHdjUnVnQ3M0eTFiMUZOaXpzTU9F?=
 =?utf-8?B?eGo1SXQ4b0cvNkV0WENOTXhncXBQdnp5NXdyZHhETWtCYVpTTWtMR1BXSFFI?=
 =?utf-8?B?a3M2WXJsYmViK1cySndmWThWNkJiZ01RTUhuL1lCMXo4VzVWbnBaeW5nYjVK?=
 =?utf-8?B?L24xUnVHTnVLbXpsbjZMUEhtWUh0MUJDS2N0OHkrdFRlTmZOazRJaFA1UXFR?=
 =?utf-8?B?UUxhd2QzL3FISEtHc1dzak5LQWZpSncxQW1ONE1BU2NVZjhoOHRDT2JXWmV1?=
 =?utf-8?B?WjRhWDlNSjVMcXNqR2pYNVA1ZmF4QjFqdmNQSk56QUpoMExyYmpWdHYzTkRm?=
 =?utf-8?B?WG1nVlJrRCtPbG5SZWRGOTJmQXBlV1F0NFRhUW5ZQUhZQkxySkFkMUFKdkJL?=
 =?utf-8?B?Ym5IOU0zMXVDaUNRRTVFRGRkbDA5dnRYenBiSlNhUTAzZGdVcUozMVdOQi8r?=
 =?utf-8?B?cTZRMEVvYy9MdG9DWmFxWjJZaGhHb0ErUDBjQUQzTytKM2dQTDhrMkNzM3Vv?=
 =?utf-8?B?cXVuUWhFVlgzeUdZWGIxQ1RlTFk3K1FUdldobkVRdnB4aWljRlI1TkZ6NkFR?=
 =?utf-8?B?UXU2WjhpVU5ReVhkbXl3N3dMOHZnVWlCREFyc2M1S2VzSExNZGtUVytqeWdk?=
 =?utf-8?B?bkpRcmFVZlU3bWFTVnJrNzUxL0xzU3dFR1N0dnpJSzZGaVo3cDVDOURmRXY1?=
 =?utf-8?B?WFlSaFJmMjQ5aGJaVzZoWFlpV1lrVHhZZEJVZllrRE1QejhVczZxcEpvbHRP?=
 =?utf-8?B?ZmNvN3dta01JYXVlMU95VERaR1Z2RE9sZGpJaStWOW9RcW1aTVdUNld5b0Zl?=
 =?utf-8?B?MEdXYWgvUFFBOWFQNXFsTTlva1ZrNmhXTGh5REdDR1c3cCtWNU9XRXNoN2ZP?=
 =?utf-8?B?RGpGRmpxUlBPN0dBZ3VvUlZCQXVCNXNRclhPVkkzSENnakc3Rm9DSElwSWsz?=
 =?utf-8?B?eStHbzdRbGhLOHMzOUJsZ3g2bGNWS0RxcVM1NUF1aHVLSU9MMkQzWjNJU2Jt?=
 =?utf-8?B?ekpSajVDV0FnQitaYlF1QkZSWXkvdlZWQlA1dVlucklkWGVlMWgzNG1vZ2hP?=
 =?utf-8?B?WTAvRE5HVkttME9QT3ZoZC8wSndEeVA3ZjA1SFFNT1A2ZlUzSi9YSWdrQU5I?=
 =?utf-8?B?SVFJNXBKR1BpVXg1YXlFdzhqYmFNaGlKMFVXaVQxRUZOYTErR3JsUkVyZjND?=
 =?utf-8?B?SitqNnZwdzdXRzBJV2VVSjVKTktuellYK0N4YXVsQnNMRVhQT3l3eE52bEJS?=
 =?utf-8?B?d3dUdmJOVDl5WDBQWWQ3N29remdXaGJPdnZKM3FaSzc0cjIwWXI5bHVoeTZG?=
 =?utf-8?B?bEYwU3hKMDUvTkwzUnp2dk96ajBYVVhxNklBR1NYYld6d2tTaDU4K01qUm1Y?=
 =?utf-8?B?aGtQdWJOalNlam1xRDd1aXBmdzZ5RFdvbXQrK3AyVFpHZjVBb081N0Z6eFR5?=
 =?utf-8?B?elYwQ2tzUWdSQjhLd2twa3g3U3pGT2huQUtwYjJKb3c4MzVBWHByME93VnV1?=
 =?utf-8?B?Vm8yeXlraUNDV0xoL3NzTi9TZURodUNlSE9QTElGcy91c3k4TjNGMGF6MldH?=
 =?utf-8?B?NFBXRi9rcjd3REtsNHZydW95NDZLK0Nlb0tvWUhzc20xMnFsMHB1MkJuSVBr?=
 =?utf-8?B?TG9VRDBNdFpQbHUrQVVXM3l6MTZhekNYcjBLUlJzV1FZUDdPMG9WQnE0Tk5M?=
 =?utf-8?B?MmQySnRJL2g4a1BvY0RmMUZDMVZWNVdpamljOHhLUnMyL24yeFJMVGxENnBa?=
 =?utf-8?B?aGRYVTFOd2Y5OEYva0xjRGtOMnFPQnNCbHNMMFA2Nk1vUXVwRmdzeGJTOWxJ?=
 =?utf-8?B?NWZ0bXA5N3BJeE9xWThFWWZrKzMzTjgwdERReFlMbXpNcHF1aE9IamRodWR4?=
 =?utf-8?B?WG5aQ2JOQ1YvL0pIR1BJbGxYVHZVUm9lUXFpM2xuangxdlBxcUZySjg5UStV?=
 =?utf-8?B?QTV3UkZLV2o0RWplRzAxSjNibE9yaGFjaFVWT0FJLzJONGZ4Q0MweTV3UCtG?=
 =?utf-8?B?RndhTGpLdnNuR0wxM2V6Ujc0cDFjMmE0aGhMQkwzZjd2NFBZTG5yM0UyUnZ1?=
 =?utf-8?B?d1VmZFhvaXpjZkIzb0g1RFF2NlBBZVhqVVd6NlVUOFBSY2xPVUF5S0RscjRr?=
 =?utf-8?B?NFdvMzIyamhwQytqT3p6U1lZaVk5NzZhVTV3RUorTnJaMHlseFpGUXFCb2ND?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b366502-0632-4a78-2b6a-08ddf6b940bd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 13:42:47.3088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AfRhHen8DyHCxuPsl9ANLL43sJ4IuYmZIByntksbAz8EsIYRHeYDkaCfgbVMRvB0F70m/lapB8WiPTFytZE+MPPwKEBYrQchuwsVoJzP2Mg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6034
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

--------------ZitnqUs6Yl3US7JmbelPvJeO
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 9/18/2025 5:44 PM, Ville Syrjälä wrote:
> On Thu, Sep 18, 2025 at 03:03:02PM +0530, Nautiyal, Ankit K wrote:
>> On 9/18/2025 2:04 AM, Ville Syrjala wrote:
>>> From: Ville Syrjälä<ville.syrjala@linux.intel.com>
>>>
>>> Currently our crtc_state->vrr.{vmin.vmax,flipline} are mangled on
>>> TGL to account for the SCL delay (the hardware requires this mangling
>>> or the actual vtotals will become incorrect).
>> Please correct me if I am wrong:
>>
>> For display < 13  VRR hardware inserts one extra scanline just after
>> vactive. So we need to have flipline, vmax, vmin vtotal shifted by 1.
>> This is computed in intel_vrr_extra_vblank_delay()
> vmin/vmax/flipline stay put, but we need to account for that extra
> scanline when calculating the guadband/pipeline_full.
>
>> For display < 13 hardware expects flipline >= vmin (so we add flipline +
>> 1, not related to vblank delay.
>>
>> For some platforms intel_psr_min_vblank_delay() of 1 is required so that
>> moves the vblank start with this amount. we can account for this delay
>> by intel_vrr_real_vblank_delay().
> That 1 scaline is just the minimum size for SCL. And once we start
> tracking the SCL explicitly then AFAICS pretty much all
> intel_vrr_real_vblank_delay() calls can just be replaced with
> crtc_state->set_context_latency.
>
>> So for the SCL delay mentioned here should'nt we
>> use intel_vrr_extra_vblank_delay() in the computation below?
> I think we should be able to get rid of intel_vrr_extra_vblank_delay()
> for the most part. As state we just need to account for it when
> calculating the guardband/pipeline_full.

Hmm do you mean something like below:

void intel_vrr_compute_scl(struct intel_crtc_state *crtc_state)
{
         struct intel_display *display = to_intel_display(crtc_state);
         int scl = 0; /*lines before delayed vblank */

         if (!HAS_DSB(display))
                 return 0;

         /*Account for 1 scanline thing for ICL/TGL */
         scl = intel_vrr_extra_vblank_delay(display);

         scl = max(scl, intel_psr_min_vblank_delay(crtc_state));

         crtc_state->vrr.set_context_latency = scl;
}

And then in place of intel_vrr_real_vblank_delay() we can use the 
crtc_state->vrr.set_context_latency.

Regards,

Ankit


>
>>
>> Regards,
>>
>> Ankit
>>
>>
>>
>>> Unfortunately this
>>> means that one can't simply use these values directly in many places,
>>> and instead we always have to go through functions that undo the
>>> damage first. This is all rather fragile.
>>>
>>> Simplify our lives a bit by hiding this mangling deeper inside
>>> the low level VRR code, leaving the number stored in the crtc
>>> state actually something that humans can use.
>>>
>>> This does introduce a dependdency as intel_vrr_get_config()
>>> will now need to know the SCL value, which is read out in
>>> intel_get_transcoder_timings(). I suppose we could simply
>>> duplicate the SCL readout in both places should this become
>>> a real hinderance. For now just leave a note around the
>>> intel_get_transcoder_timings() call to remind us.
>>>
>>> Signed-off-by: Ville Syrjälä<ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_display.c |  4 ++
>>>    drivers/gpu/drm/i915/display/intel_vrr.c     | 76 +++++++++++---------
>>>    2 files changed, 47 insertions(+), 33 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index f4124c79bc83..18b9baa96241 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -3901,6 +3901,10 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>>>    		pipe_config->framestart_delay = 1;
>>>    	}
>>>    
>>> +	/*
>>> +	 * intel_vrr_get_config() depends on TRANS_SET_CONTEXT_LATENCY
>>> +	 * readout done by intel_get_transcoder_timings().
>>> +	 */
>>>    	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
>>>    	    DISPLAY_VER(display) >= 11)
>>>    		intel_get_transcoder_timings(crtc, pipe_config);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index 71fb64c92165..71a985d00604 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -156,25 +156,13 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
>>>    
>>>    int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
>>>    {
>>> -	struct intel_display *display = to_intel_display(crtc_state);
>>> -
>>>    	/* Min vblank actually determined by flipline */
>>> -	if (DISPLAY_VER(display) >= 13)
>>> -		return intel_vrr_vmin_flipline(crtc_state);
>>> -	else
>>> -		return intel_vrr_vmin_flipline(crtc_state) +
>>> -			intel_vrr_real_vblank_delay(crtc_state);
>>> +	return intel_vrr_vmin_flipline(crtc_state);
>>>    }
>>>    
>>>    int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
>>>    {
>>> -	struct intel_display *display = to_intel_display(crtc_state);
>>> -
>>> -	if (DISPLAY_VER(display) >= 13)
>>> -		return crtc_state->vrr.vmax;
>>> -	else
>>> -		return crtc_state->vrr.vmax +
>>> -			intel_vrr_real_vblank_delay(crtc_state);
>>> +	return crtc_state->vrr.vmax;
>>>    }
>>>    
>>>    int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
>>> @@ -258,6 +246,21 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>>>    	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>>    }
>>>    
>>> +static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
>>> +			      int value)
>>> +{
>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>> +
>>> +	/*
>>> +	 * On TGL vmin/vmax/flipline also need to be
>>> +	 * adjusted by the SCL to maintain correct vtotals.
>>> +	 */
>>> +	if (DISPLAY_VER(display) >= 13)
>>> +		return value;
>>> +	else
>>> +		return value - intel_vrr_real_vblank_delay(crtc_state);
>>> +}
>>> +
>>>    /*
>>>     * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
>>>     * Vtotal value.
>>> @@ -265,14 +268,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>>>    static
>>>    int intel_vrr_fixed_rr_hw_vtotal(const struct intel_crtc_state *crtc_state)
>>>    {
>>> -	struct intel_display *display = to_intel_display(crtc_state);
>>> -	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
>>> -
>>> -	if (DISPLAY_VER(display) >= 13)
>>> -		return crtc_vtotal;
>>> -	else
>>> -		return crtc_vtotal -
>>> -			intel_vrr_real_vblank_delay(crtc_state);
>>> +	return intel_vrr_hw_value(crtc_state, crtc_state->hw.adjusted_mode.crtc_vtotal);
>>>    }
>>>    
>>>    static
>>> @@ -441,14 +437,6 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>>>    		crtc_state->vrr.pipeline_full =
>>>    			intel_vrr_guardband_to_pipeline_full(crtc_state,
>>>    							     crtc_state->vrr.guardband);
>>> -
>>> -		/*
>>> -		 * vmin/vmax/flipline also need to be adjusted by
>>> -		 * the vblank delay to maintain correct vtotals.
>>> -		 */
>>> -		crtc_state->vrr.vmin -= intel_vrr_real_vblank_delay(crtc_state);
>>> -		crtc_state->vrr.vmax -= intel_vrr_real_vblank_delay(crtc_state);
>>> -		crtc_state->vrr.flipline -= intel_vrr_real_vblank_delay(crtc_state);
>>>    	}
>>>    }
>>>    
>>> @@ -607,6 +595,21 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
>>>    			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>>>    }
>>>    
>>> +static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmin);
>>> +}
>>> +
>>> +static int intel_vrr_hw_vmax(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmax);
>>> +}
>>> +
>>> +static int intel_vrr_hw_flipline(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.flipline);
>>> +}
>>> +
>>>    void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>>    {
>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>> @@ -616,11 +619,11 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>>    		return;
>>>    
>>>    	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>>> -		       crtc_state->vrr.vmin - 1);
>>> +		       intel_vrr_hw_vmin(crtc_state) - 1);
>>>    	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>>> -		       crtc_state->vrr.vmax - 1);
>>> +		       intel_vrr_hw_vmax(crtc_state) - 1);
>>>    	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>>> -		       crtc_state->vrr.flipline - 1);
>>> +		       intel_vrr_hw_flipline(crtc_state) - 1);
>>>    
>>>    	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>>    		       TRANS_PUSH_EN);
>>> @@ -754,6 +757,13 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>>    		crtc_state->vrr.vmin = intel_de_read(display,
>>>    						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>>>    
>>> +		if (DISPLAY_VER(display) < 13) {
>>> +			/* undo what intel_vrr_hw_value() does when writing the values */
>>> +			crtc_state->vrr.flipline += intel_vrr_real_vblank_delay(crtc_state);
>>> +			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
>>> +			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
>>> +		}
>>> +
>>>    		/*
>>>    		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
>>>    		 * bits are not filled. Since for these platforms TRAN_VMIN is always
--------------ZitnqUs6Yl3US7JmbelPvJeO
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/18/2025 5:44 PM, Ville Syrjälä
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:aMv3uG3NnKPSpJE4@intel.com">
      <pre wrap="" class="moz-quote-pre">On Thu, Sep 18, 2025 at 03:03:02PM +0530, Nautiyal, Ankit K wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
On 9/18/2025 2:04 AM, Ville Syrjala wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">From: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>

Currently our crtc_state-&gt;vrr.{vmin.vmax,flipline} are mangled on
TGL to account for the SCL delay (the hardware requires this mangling
or the actual vtotals will become incorrect).
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">
Please correct me if I am wrong:

For display &lt; 13&nbsp; VRR hardware inserts one extra scanline just after 
vactive. So we need to have flipline, vmax, vmin vtotal shifted by 1. 
This is computed in intel_vrr_extra_vblank_delay()
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
vmin/vmax/flipline stay put, but we need to account for that extra
scanline when calculating the guadband/pipeline_full.

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
For display &lt; 13 hardware expects flipline &gt;= vmin (so we add flipline + 
1, not related to vblank delay.

For some platforms intel_psr_min_vblank_delay() of 1 is required so that 
moves the vblank start with this amount. we can account for this delay 
by intel_vrr_real_vblank_delay().
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
That 1 scaline is just the minimum size for SCL. And once we start
tracking the SCL explicitly then AFAICS pretty much all
intel_vrr_real_vblank_delay() calls can just be replaced with
crtc_state-&gt;set_context_latency.

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
So for the SCL delay mentioned here should'nt we 
use&nbsp;intel_vrr_extra_vblank_delay() in the computation below?
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
I think we should be able to get rid of intel_vrr_extra_vblank_delay()
for the most part. As state we just need to account for it when
calculating the guardband/pipeline_full.</pre>
    </blockquote>
    <p>Hmm do you mean something like below:</p>
    <p>void intel_vrr_compute_scl(struct intel_crtc_state *crtc_state)<br>
      {<br>
      &nbsp; &nbsp; &nbsp; &nbsp; struct intel_display *display =
      to_intel_display(crtc_state);<br>
      &nbsp; &nbsp; &nbsp; &nbsp; int scl = 0; /*lines before delayed vblank */<br>
      <br>
      &nbsp; &nbsp; &nbsp; &nbsp; if (!HAS_DSB(display))<br>
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return 0;<br>
      <br>
    </p>
    <p>&nbsp; &nbsp; &nbsp; &nbsp; /*Account for 1 scanline thing for ICL/TGL */<br>
      &nbsp; &nbsp; &nbsp; &nbsp; scl = intel_vrr_extra_vblank_delay(display);<br>
      <br>
      &nbsp; &nbsp; &nbsp; &nbsp; scl = max(scl, intel_psr_min_vblank_delay(crtc_state));<br>
      <br>
      &nbsp; &nbsp; &nbsp; &nbsp; crtc_state-&gt;vrr.set_context_latency = scl;<br>
      }<br>
      <br>
    </p>
    <p>And then in place of&nbsp;<span style="white-space: pre-wrap">intel_vrr_real_vblank_delay() we can use the crtc_state-&gt;vrr.set_context_latency.</span></p>
    <p><span style="white-space: pre-wrap">Regards,</span></p>
    <p><span style="white-space: pre-wrap">Ankit</span></p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:aMv3uG3NnKPSpJE4@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">

Regards,

Ankit



</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">Unfortunately this
means that one can't simply use these values directly in many places,
and instead we always have to go through functions that undo the
damage first. This is all rather fragile.

Simplify our lives a bit by hiding this mangling deeper inside
the low level VRR code, leaving the number stored in the crtc
state actually something that humans can use.

This does introduce a dependdency as intel_vrr_get_config()
will now need to know the SCL value, which is read out in
intel_get_transcoder_timings(). I suppose we could simply
duplicate the SCL readout in both places should this become
a real hinderance. For now just leave a note around the
intel_get_transcoder_timings() call to remind us.

Signed-off-by: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>
---
  drivers/gpu/drm/i915/display/intel_display.c |  4 ++
  drivers/gpu/drm/i915/display/intel_vrr.c     | 76 +++++++++++---------
  2 files changed, 47 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f4124c79bc83..18b9baa96241 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3901,6 +3901,10 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
  		pipe_config-&gt;framestart_delay = 1;
  	}
  
+	/*
+	 * intel_vrr_get_config() depends on TRANS_SET_CONTEXT_LATENCY
+	 * readout done by intel_get_transcoder_timings().
+	 */
  	if (!transcoder_is_dsi(pipe_config-&gt;cpu_transcoder) ||
  	    DISPLAY_VER(display) &gt;= 11)
  		intel_get_transcoder_timings(crtc, pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 71fb64c92165..71a985d00604 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -156,25 +156,13 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
  
  int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
  {
-	struct intel_display *display = to_intel_display(crtc_state);
-
  	/* Min vblank actually determined by flipline */
-	if (DISPLAY_VER(display) &gt;= 13)
-		return intel_vrr_vmin_flipline(crtc_state);
-	else
-		return intel_vrr_vmin_flipline(crtc_state) +
-			intel_vrr_real_vblank_delay(crtc_state);
+	return intel_vrr_vmin_flipline(crtc_state);
  }
  
  int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
  {
-	struct intel_display *display = to_intel_display(crtc_state);
-
-	if (DISPLAY_VER(display) &gt;= 13)
-		return crtc_state-&gt;vrr.vmax;
-	else
-		return crtc_state-&gt;vrr.vmax +
-			intel_vrr_real_vblank_delay(crtc_state);
+	return crtc_state-&gt;vrr.vmax;
  }
  
  int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
@@ -258,6 +246,21 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
  	crtc_state-&gt;mode_flags |= I915_MODE_FLAG_VRR;
  }
  
+static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
+			      int value)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	/*
+	 * On TGL vmin/vmax/flipline also need to be
+	 * adjusted by the SCL to maintain correct vtotals.
+	 */
+	if (DISPLAY_VER(display) &gt;= 13)
+		return value;
+	else
+		return value - intel_vrr_real_vblank_delay(crtc_state);
+}
+
  /*
   * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
   * Vtotal value.
@@ -265,14 +268,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
  static
  int intel_vrr_fixed_rr_hw_vtotal(const struct intel_crtc_state *crtc_state)
  {
-	struct intel_display *display = to_intel_display(crtc_state);
-	int crtc_vtotal = crtc_state-&gt;hw.adjusted_mode.crtc_vtotal;
-
-	if (DISPLAY_VER(display) &gt;= 13)
-		return crtc_vtotal;
-	else
-		return crtc_vtotal -
-			intel_vrr_real_vblank_delay(crtc_state);
+	return intel_vrr_hw_value(crtc_state, crtc_state-&gt;hw.adjusted_mode.crtc_vtotal);
  }
  
  static
@@ -441,14 +437,6 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
  		crtc_state-&gt;vrr.pipeline_full =
  			intel_vrr_guardband_to_pipeline_full(crtc_state,
  							     crtc_state-&gt;vrr.guardband);
-
-		/*
-		 * vmin/vmax/flipline also need to be adjusted by
-		 * the vblank delay to maintain correct vtotals.
-		 */
-		crtc_state-&gt;vrr.vmin -= intel_vrr_real_vblank_delay(crtc_state);
-		crtc_state-&gt;vrr.vmax -= intel_vrr_real_vblank_delay(crtc_state);
-		crtc_state-&gt;vrr.flipline -= intel_vrr_real_vblank_delay(crtc_state);
  	}
  }
  
@@ -607,6 +595,21 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
  			       EMP_AS_SDP_DB_TL(crtc_state-&gt;vrr.vsync_start));
  }
  
+static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_hw_value(crtc_state, crtc_state-&gt;vrr.vmin);
+}
+
+static int intel_vrr_hw_vmax(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_hw_value(crtc_state, crtc_state-&gt;vrr.vmax);
+}
+
+static int intel_vrr_hw_flipline(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_hw_value(crtc_state, crtc_state-&gt;vrr.flipline);
+}
+
  void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
  {
  	struct intel_display *display = to_intel_display(crtc_state);
@@ -616,11 +619,11 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
  		return;
  
  	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
-		       crtc_state-&gt;vrr.vmin - 1);
+		       intel_vrr_hw_vmin(crtc_state) - 1);
  	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
-		       crtc_state-&gt;vrr.vmax - 1);
+		       intel_vrr_hw_vmax(crtc_state) - 1);
  	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
-		       crtc_state-&gt;vrr.flipline - 1);
+		       intel_vrr_hw_flipline(crtc_state) - 1);
  
  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
  		       TRANS_PUSH_EN);
@@ -754,6 +757,13 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
  		crtc_state-&gt;vrr.vmin = intel_de_read(display,
  						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
  
+		if (DISPLAY_VER(display) &lt; 13) {
+			/* undo what intel_vrr_hw_value() does when writing the values */
+			crtc_state-&gt;vrr.flipline += intel_vrr_real_vblank_delay(crtc_state);
+			crtc_state-&gt;vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
+			crtc_state-&gt;vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
+		}
+
  		/*
  		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
  		 * bits are not filled. Since for these platforms TRAN_VMIN is always
</pre>
        </blockquote>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------ZitnqUs6Yl3US7JmbelPvJeO--
