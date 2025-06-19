Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13706AE0477
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 13:57:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A03310E9FA;
	Thu, 19 Jun 2025 11:57:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UjV34vX1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 997F110E00A;
 Thu, 19 Jun 2025 11:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750334221; x=1781870221;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y/ZOH8pcFx2+daB1TW14twvXJEIT1N3ehidfPWy0wOo=;
 b=UjV34vX1knYCmX/h5L8ZLBotruu0FfZw4CB40Qi+F/dS9GbbcUTE8B/T
 dZeL3Ci60pR4I8kU5NJG0ruAYb0tP8eNY8PCdFaJ7C1UZ4hPmwEjrLkP1
 byPsHtPnuGtCYKeR57H8fgVx5YsrdtBaejyfl/YcqAQ8+8kNVRR/MPvcm
 AlVKS3D91vA6GzESSDt1cSaO863R1p9fRHwCJq5s67LMoMcVVUltakEgK
 CDz5wWxMfiPmTHcPcO1+f5pDd/JcOPgQPgmaog5NyMgAEV1xR04TJkYi7
 P2dJaeBylYrt0/4spD2+Bk5JYEV/L64aKf6Ql7VVsECCbLk+weAq6ul7f Q==;
X-CSE-ConnectionGUID: bIW7u1MQQRu4Pt4tiUP9BQ==
X-CSE-MsgGUID: gVqocHKbQOW25vEowg8MKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52675725"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="52675725"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 04:57:00 -0700
X-CSE-ConnectionGUID: Zs1O0uFWS9KOjFOLIl6E0g==
X-CSE-MsgGUID: 8ocD7VmIQtincTQ4xM84vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="187844434"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 04:57:00 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 04:56:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 19 Jun 2025 04:56:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.66) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 04:56:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i5OmrUDln96VBRbgZcguCWWbPoZfA6aza9IiOwS8vTSa20Wa60UYciPsYN/g7QKayGuVNJ119LViGC+wLA/S+CJIOZB5W2zJUB1OrEWHI9x3jMVS2dgU47+8wEzHzt4p++lCI7cAO6gqqIMp8+GVLSCRAqjTnKD0Z4lcxE7/tImA8luzoKWbvzus4b03zagxM+qbWFOUiH2XErEO/PMIcW7VApeRNUHSSlAvKkfDX1pm9hOPehIH7Fi0p1Sbou2bBevBnNBDcIN3HCDh1ivW89uAUA0xWNYfayYoSyjAEM7c/wufi/sldIBcQQ4LOyRKQlRVs/QEVPVblB35IftvuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ALuySnhcUvs6u8s+wzsOAZ2rJ3qgWHzLBsSA3qTLypo=;
 b=yEHutW5h0y2Wi6SnEMNN76h5uX3F4zIgfTSqbzMluxyd63PJcsA5u4KQsSXxFsAGnwLXN7wPByQLvH23mHG348IxD1uJWZcsfc9Y/jgvPjS1r0ZmQCytcF22xFnUbloy68Rrz1BE7YRY2kKrwRD/3UAYfAKmWAybjVJmxcKZNaAZdC579SvCdE7NLo9tC6cfijv3JQat4kq3z1vMxXrFBNpiPu2Qj17XcLSd6V9edKKOa6gg5Q6RJi0l4TV35iEUPUGLoq8YIuMIOM8jQ1o/qbOP7IT8I2j6q22qwTZTldA43EPyecvODNJQoFdcVAu92qvre8NFrA5bwzUuPLRXyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5878.namprd11.prod.outlook.com (2603:10b6:510:14c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 19 Jun
 2025 11:56:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8857.016; Thu, 19 Jun 2025
 11:56:57 +0000
Message-ID: <e2d8f3bd-112d-4e5a-9e6e-9a394b62d797@intel.com>
Date: Thu, 19 Jun 2025 17:26:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Fixes in snps-phy HDMI PLL algorithm
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <stable@vger.kernel.org>
References: <20250618130951.1596587-1-ankit.k.nautiyal@intel.com>
 <2e0169d6e2d533e4b0175937961d91ae8da4799e@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <2e0169d6e2d533e4b0175937961d91ae8da4799e@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0071.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5878:EE_
X-MS-Office365-Filtering-Correlation-Id: e7265d01-98b3-4c2f-3dd1-08ddaf2861b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c25rUWppOEI0aHdkaC9WZWc0dWRBVkVUd2g4TzVrRStXajFEcXNCUHU1dnU5?=
 =?utf-8?B?WS9VZmhGT1dYVm95U2tXdVQxK1dwUVZDMWlYT2pEOW15WC9kb0FPbmxKQ0M3?=
 =?utf-8?B?UER3TXhBS2VkRkhlRUVYM3JhUjZYWHJ4a1ZoSkZQbHFwei9ZOWpNWWcvd0JF?=
 =?utf-8?B?VFN6cW4wenlzdVdpd3NBWnFOTHJQUGpHZ0ZQajJ0aHZqUitsRmRGM1hBaFRN?=
 =?utf-8?B?Z2VhUUsvc1FJdDV6SkFJbm9wbGhRVU9TVnV6eHBOYjAzV2JWdmo5ZDZ2Qlc5?=
 =?utf-8?B?OGc0Rk1rWCtZRmRsUTVOVWhuYUdSSkk0YTBkZm9FSDVjeFp3eWJTNGRrZFNk?=
 =?utf-8?B?ckZ4Rkg0TVVHTkc4Y05FRkJXZlJmNS8zZTlRZ25LQ3k0anh4bC9BVDk3Q2Vr?=
 =?utf-8?B?TngvVzE4eEtKMFVJYU4xMDNlL1Q1MDd4Rk15dGh3L2FGNE93akhETi9OalM5?=
 =?utf-8?B?NU5GcHk5ZS8vZUxuWGZaNDVkSjFjOW1OdTBEWWVTQkI3eGtaK0Z0MXRKNk4z?=
 =?utf-8?B?eDhPSXFtU2RXdUZ4T1hCaVR2dzhoV0s2SGZOVFBHUndPSUJUMzBZNXNhZStk?=
 =?utf-8?B?YW10Y1dya3UvRENNa1JDd21MVTloYWtpRXp0aFRTZnVyRWYwV1lJVzVISVVW?=
 =?utf-8?B?MHJZeEZTeUlBVVdtNUZZc0I3V1hhTmU5TUdVNXI3Y3V5M0hHZWVSZVlOZU9J?=
 =?utf-8?B?a2ZZY2gxcjVhMGc0V3lidm9rRUk0SFh0eFZZOVdxNXMxbG1UQVltbmxVWllC?=
 =?utf-8?B?eUs3Qmw2NHN5RTNCZ0kxQy82ejRLeVZ4SkdrYU9tT1NVTXg1SHlQSmFTZy9H?=
 =?utf-8?B?T0VCbTJWbHFOczZmVk1EK3A1K083OExvdkVMNkRlSGQxdGhjcndGdGpQcmw5?=
 =?utf-8?B?TDRodHQvOEMrVXROdFF4RlRrNjRHYmRMUXU2ajRxWXdSQUNJR0dzRDNFblV6?=
 =?utf-8?B?alFJTmo2b3pNWVJ5MVhnaGJCbWhWSjk5VFR6RXJyTWNJUEUyQTl6dWhhSEl1?=
 =?utf-8?B?cEc1T001T2l6WGh2alNMazNGMlIydnJTeHpHd2NVeW82bjZMaGQ0bUZIMUx1?=
 =?utf-8?B?OXoyem9Qa1BtYUpoQVh5Z2UxbHVwOEtBTlRGdDJUSUovWGxEWm5tUVphbndm?=
 =?utf-8?B?SWpac00rKzVkTnZSUFFRZUVyUDFpRUpWQWlUS0tVZTlCUURRamVBeUwwb3da?=
 =?utf-8?B?dTI2TjZ4SEloR0ZiY1FmOWdsRzQxQWtCN3dRUWM0cE9WaElrRjBFbGZuc29S?=
 =?utf-8?B?Q1hlbXZ6Y2p1ckhsKzdwMjRsTU83N29nOGRKNHZVbkZuWEZDamF3bkNSSlhw?=
 =?utf-8?B?b1VvdkVRNy9YQmhQdVRZb2x3YVdCM3RzVk14RUxwdk1kZ0Q4NVNLUXo0bEZQ?=
 =?utf-8?B?bHpNWWZ2THhtSENnYzQrWmV1VnVxTEx2c01kZnV4YmxEVFNpaHFkODRUUmNG?=
 =?utf-8?B?MlBVV2VWSHl6YkRaLzBPNkRMMnJJSVUrTjBhY3JlbjFNa3NXMVg5MUFwYTJo?=
 =?utf-8?B?MkQwaG1Ja0kvWEMyWGF4dmZRRDBpcXJDb0NEVW9QK2hHTEMzbFMzT3ZzRnFn?=
 =?utf-8?B?YXhLUzFaa0lhRUFodEtjd29USHowQnpSM0tTVjQ2cXVpcFFwTW5SSU1vempL?=
 =?utf-8?B?OVBJTWtySVZHZjlaMnhxR1dvenN1eGUzcFp6U3dEejF5NVZDeEt3dFRCWndk?=
 =?utf-8?B?MFlNWUFwOXI3eElEa00wYlJiajluNGV6bUFSanFYK2UzVG45Vit1cVlycHN5?=
 =?utf-8?B?aElnMFJUam5mU0RrTVBqdXRVWExaQ3lJcm1iUTZQTWw0RTJ0a1F2Z2tFR0ZV?=
 =?utf-8?B?TFM4RGJGTjlndnpEYTQxMzl3NTdKeXlzQ01wc25GWXNicUFsWlF4SVpxVlh2?=
 =?utf-8?B?NzV6bHpJaWpULzlRYVBXUmVJeHB1N0NFRXFSQlNTY0FFL0I1NkhOSXFuZE5S?=
 =?utf-8?Q?hy6snF9so7s=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1Jva0hwR3krckVacC8vbWVLQjF0VVRBdnZZbFo5NUJ2d0VNbGhteVpoeHd2?=
 =?utf-8?B?c20rSzdFMmtCNkNsSE5SNHlwTnNtd0VRT3c2eGtuRlVMbTlzMEV2YVJYZWhX?=
 =?utf-8?B?dVE2MFZ2YkpHYS93ZUkrTDlwMXJXb3pQc1p1dTY1bnZPWjhxQ2dONXhTNUFk?=
 =?utf-8?B?aFJCTHllOU9RUTFCTGNvcFpYR1F2dGgzbmM5VmJXUW8zMHlSM3hMNnZIZE0r?=
 =?utf-8?B?eUdoT1Rjakt2OEV4dlZPVGFMdUE4d2pXV3M0TlBYSjRKc1ZtNlFGQzdRY3ps?=
 =?utf-8?B?RXJFNzFMK0p2WVNjOXVYaDduMzEyb01GNWM5blI4YmZTeWErdDdJWFc1cjlq?=
 =?utf-8?B?YVg5Y3diWlgrQVhQcUN4aTFvK3FLUE53VHpYMFhYVHl4TzV4bVRxZ0didnR5?=
 =?utf-8?B?cGhEWXJ5cFAzQ0x0T2dmUEFuVnA5akcySjBvNndsVXB5RWF6NUlrVDk2YXd4?=
 =?utf-8?B?a2pEQ3dKQ3haSzNOenR3SWpCMUFPQUR6dE5NeHcrRDAvcU0xTVhyZ0RTVWJD?=
 =?utf-8?B?K3daQ2tlZkc3YmpuSi85Ty9UREVEZzBLbzcrNFVoV1ZhOXFpNktWcjZwUVhK?=
 =?utf-8?B?VkIyajMwNjZlb3o1SzRXTHRlVU52VWVwbHFFSUdLZFhoMXczcTlZZ1lyTk9S?=
 =?utf-8?B?czlwakp3N3BpMXBIQnNDaWpXcm94YTZsUXlvSk1KUjBocHpQRUxycXYrNVZ3?=
 =?utf-8?B?dm96OGZsdnphQzBUdVNyOWg3b0FWVzYwWXlCMVg3OGVZdDQ4VDZKNFR4cWh1?=
 =?utf-8?B?SzQ2R29yWVNKb0FNZUFiOVNMQlRkUWNhK0Q1QlN6QUxZc2lSbHVqQ0UyMUtv?=
 =?utf-8?B?R2dkS3hMUktXL0hmdUdXZ2lzUWxyMUdKWEpHYVgyTmxJY2wvcUNJeW5Nd00w?=
 =?utf-8?B?Q1h0S29iOHhoaEtEbTBFVXQwcUlwNFFNNEdKejI5TlR2dnNWckJqMHREbm1v?=
 =?utf-8?B?RzFMNTQ1NWp2c1dMK2RyanhQQzNGSDFoUXFOSk0zTUQvWTJFMTRjakNaMUsw?=
 =?utf-8?B?RFh2MHlyYVVDQlB3bmNuOWszSkRpcGFEMjd4TFBsUXR0YjQ0RGloZmJrQklV?=
 =?utf-8?B?WXJneVM3TzFjc0s4UUJIMjBESldZVko2VG43OTdETndwS003Z3NrMzQ3SVdB?=
 =?utf-8?B?K2Jvc2tzc1VPM1oydUZ4OVkvSFRrTXNiK1hOMkVNdGVTSllKbjNkNzBPaGZx?=
 =?utf-8?B?Vm5FRnZlVnZhZ0xIQThKdVArYUUxQkdIZG5RMlJ6Zlg1cVFDM0pPN3hjVnNk?=
 =?utf-8?B?ZDBFVnF1NitDNkJJUmRQcGR3Sktwa25KdDVhOWtCMUxjWVdoMVVHcWhBSzJq?=
 =?utf-8?B?UXZYc21WY0tvZldkMUt1NDBjOFBSSERwR3N6Z0VnR1RpdUU1cktxTlJ4bFdB?=
 =?utf-8?B?by9jVXBCTFRaWGpSTytFR2hiMnhWSm5MR1ZFdzRaNm12dzYwZHZqSUNueThS?=
 =?utf-8?B?OXRlYkdIYnM0Z2N1QVcrM1FTMHZnK2w0ZVk3bVpZS05yTHZMQmhVTUUyNzMw?=
 =?utf-8?B?aEVhU09DT09FU2w5UVhzdk9YY0QrVW5uYTJBRjlQZUhyc2pzMU9VNTUvbXVR?=
 =?utf-8?B?SGd4R2tzNCtGNG5uaVU0Vm13Y0xvSmRHL1E3VDdCbllqcnBKTlczeVoyb0RG?=
 =?utf-8?B?NS8rUFlpeFoxRXRCdmVxTWswR21uYXU3MVQxMml5YUh1VUs4enozTGN3a1p0?=
 =?utf-8?B?dGIrV1hzNi9uOFhNbThxR1JMK0t3Yk1PdjQ2QWd6ZFZlUHlnQmd3OFZJNEJY?=
 =?utf-8?B?MmM2eEIzOVY4d1V4L3lSZE82Q2VHUHZSMW95bytBaUdEYzkvTWUrUmc3U09H?=
 =?utf-8?B?T3pXMDA4VFJqUU5zQld4SHc0TENmYnZkbEh5bjU4RDlYMHVTN05uS1V5TFRB?=
 =?utf-8?B?TlNqZHd5U2tDazFzZW5WUUpXWkJlU0RQaWRySjNYWkhPOTJicDh1SmlrVzB0?=
 =?utf-8?B?QkdsRVh0aER4Lzlhc2xyREJBN0QzZ0hWMHVGY0s5Q21rR0RPUlpHSnZBZ0xJ?=
 =?utf-8?B?cHhuT2VrL0lvemtka05ad3FvTmRtcVEvUUlkTHRXaFd2ME0zbmZMYytSSzBt?=
 =?utf-8?B?ZDIzSXM1VCsveFBWRHRSNHhDaEVLSjRMTGpOZ3RpcUNCR2NqbDV1SHNmQzlZ?=
 =?utf-8?B?MWxWZ3dmbExsc25kTlZaZTY2RnRaMEliUXFtbXp0NTBzYkZ3M2ZFRy9Xdk5a?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7265d01-98b3-4c2f-3dd1-08ddaf2861b0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2025 11:56:57.0570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: INjMxPdh/EUPP0JZ9kU1kewPw9maJvPlmhwPqf2baPMhJ738ga/tK/XWcgCLMX4siOTfU29PnazCkES9fSFS7QY3RPELB7CrYJUoaTV3eVQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5878
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


On 6/19/2025 1:21 AM, Jani Nikula wrote:
> On Wed, 18 Jun 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Fixes/improvement in snps-phy HDMI PLL algorithm.
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thank you once again, Jani, for pointing out the sparse warning and for 
your reviews.

The series has been pushed to drm-intel-next.

Regards,

Ankit

>
>> Ankit Nautiyal (2):
>>    drm/i915/snps_hdmi_pll: Fix 64-bit divisor truncation by using
>>      div64_u64
>>    drm/i915/snps_hdmi_pll: Use clamp() instead of max(min())
>>
>>   drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
