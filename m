Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AA0A4474E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 18:04:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8A7010E702;
	Tue, 25 Feb 2025 17:04:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g/TdvTJ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AC5010E702
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2025 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740503094; x=1772039094;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C8kd5YpFzatgT04FLvu2tanemxvMKf2NjN3MBwjSYSM=;
 b=g/TdvTJ/e81+K1DsGuKMRoZ6cEnEfHmCWVL/nKbAkcNJyOyroT1VXS8K
 2LxQE91zXQ2y+xTQxKXDeGCbkuITXhxm8NgJG1fzpVXET/5gyBEQyIE8O
 pL1SxtIfd8P1bHA4VzgAr0OpfR41CGjnUmotCNew7iosESnHBf4kkaxPM
 H6jQOKEbhAAXVpsUrtqjX+QuAYkCmomglZI5EWLXGLgW1SYwxawaLwtuk
 wer1xAirOZdM/DaDfncsv15mw3qXV8FHNO771kP6zdJ6e7kGblWc72PWk
 F7vXPyUt703ZNRrhs31K0+Yc/97T64wvyS8AQyH80Tr7FzIWinrXOndr9 A==;
X-CSE-ConnectionGUID: 3sos6rSIQ+C9xysnQjIrQQ==
X-CSE-MsgGUID: z+8AzyDbSa6g1/WPTfLHpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="63785796"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="63785796"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 09:04:52 -0800
X-CSE-ConnectionGUID: DGv/ZSxcShSZMU+459HMoQ==
X-CSE-MsgGUID: o/bhdtaWSSueGIzt1RbfMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="121388789"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 09:04:43 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 09:04:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 09:04:42 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 09:04:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UcdcJwGS+ae4rhlOBqgbg0aAwknM2NuHbz8Mmo8hgiJLkk+Kxcsi+5tgbcR/hLtsoyUTaqa0YWT2emUGXHeOLPFPs/G/NW6UNc4QDirPZZuC0vaTV9ofMcHzJWBXydHioDBt1QwmcleulWwQ3whgNLQaPukSixQdxzccqtYL5e+lPf6Q+aXrF01TXpdmBwpZ4z/ewbhIxsojLwrcQH1F+13m5gG3Fn5puy6qV6s9GmdBx/6ZkK6HUPC+GQnN7t/ETuVna4Hw1F90s4yud3oSTDBl+Jz37shYf9UCE8T+5TQHXj3L4oqk0UKFyAdwBUUlAqw0l1sCk5y8gcCFXW2XmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IVu/VW+RlixdRwvh94JfxD9bM9p7RIUtHpOKknyIENc=;
 b=pZQrHn/SIFxVvPPp/vv5SC97sWs5cPRs+KVx4X97t2bmqT3iMtGAwJGN4NsMwzImBMa7SxBL9GVS9T+FBfqqepzETHHcDuxjMrXLvT5AfYf18wPMBt+NRxkRW91laXRWih//OJ1horcVHmyNV+UxLARJ0bX0wuSiuy1kdcTigoZtyVA2ji48yeSmzXd/bvZxKWzLifFJqro5rD88PzzWeu5qfeHw51HRfvCnCjcWPcdQClUy5VuxOzCuqEQk0Eae8aKOxkNOBIA4aMRN3vvZQORAL1QXNu2qYhI88h6gBHdJ1ZJH9XKLX/QE4yXP0Mz0xKN1OA+hiPTG/UJ5uzHmKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SA1PR11MB6663.namprd11.prod.outlook.com (2603:10b6:806:257::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 17:04:36 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%4]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 17:04:36 +0000
Message-ID: <865ee40a-cb29-4f9a-acb2-e47cf21877fd@intel.com>
Date: Tue, 25 Feb 2025 22:34:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/i915/selftests: Improve RC6 power measurement and
 error handling
From: "Anirban, Sk" <sk.anirban@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <badal.nilawar@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>
References: <20250211150212.484228-1-sk.anirban@intel.com>
 <875xlg1nrs.fsf@intel.com> <acc1f407-e117-4feb-9c15-76494ccc55c3@intel.com>
Content-Language: en-US
In-Reply-To: <acc1f407-e117-4feb-9c15-76494ccc55c3@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0088.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::13) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|SA1PR11MB6663:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d56a29d-aca4-451f-79ef-08dd55be7b78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U1NqZXF2NHZqTXpSZkZFZEQ3Q1hkcWdpYi9TMUoxTytjQUVZd0w4Um45R0ZM?=
 =?utf-8?B?bThhcWlEZkxUOHVWSTluYVRRc3JiMXpNVkpzYUdUYkxZbFZkN3FIRXBGSnF5?=
 =?utf-8?B?c2RMNVVSRmpBU2NjUk5YeHl4NzZNQTl0TFUvMGYxN1JGK2ZmWlVEWWxGNEFM?=
 =?utf-8?B?c25ZSFhiWTJYRktKQ1ZWY2F6YTlSSTdJeGxPb2k5WXgwcS9GbGJnY2JoTnNi?=
 =?utf-8?B?eVdUZ2N5NXdrcUVJMzRaUmdlU0FpWDA1TnJJREJ3MWZQREV0ZXF6bFIzM0ho?=
 =?utf-8?B?anRuZmlreVpodlNQdHJkTUNVeXJ4bVdnOVdPdmVPMjNIUmZrR2hxWU0zV2hw?=
 =?utf-8?B?bjNsUXl2VlErTmY3UVBZbXEyM3BvdmI5TXQ1cGZNN1MyYzVXS04xV2NubDVH?=
 =?utf-8?B?U25TYXhXUnlrdzQrWHNqSzZBWTlEcldVSzlvTytwZjgwenZ2bkg2Q2s2UmNB?=
 =?utf-8?B?NDFFVWs0bWRIVjlFaVQ1MFlwcnFVQ3MyNkVMenFQSkoyMzhyQ2NvNU1GV0wv?=
 =?utf-8?B?YmxrSS9wMVRoRlRaSTFvdDJMQjgwQXl3dXU5V2RkU1dmUm93V2psZjlHczBZ?=
 =?utf-8?B?WG5iL3JJOC9kaWx0NDRoMThBVlNJWk9udE9XMEJRckpZZ1hWeStNU0FKU1d6?=
 =?utf-8?B?Y3RiSWNzRDFLWWNBclo0eXpvbzBNRllwVGVaQ0dIL3pxM2UrSDRKbEU0c1U2?=
 =?utf-8?B?NFc0aXVaT3RkREEwTzFhcVoyUnU3OGplRFovbVFKaGloVWNvV0F1QkluUnBO?=
 =?utf-8?B?SzdEbitlaXR1RVZKMnQwdWpWYnVnZ2R0T3hCeEZMWC9URnM5NUJIbWk4aEVY?=
 =?utf-8?B?SXoxSUkzWjMvUlNJUHZrNHovbTQ0RzQxcitHWlZ4YS9ObDVRMzFaU0hXUGpR?=
 =?utf-8?B?RzNTb3JNU2NIR1ZoeFVlTThqWHhXS2hUTjAvZ2lJbjNFd05IVDhOdXlab0xl?=
 =?utf-8?B?dUx0Y3BFUVAycXFOVXpVUVQrWm1RZzF4WlBTL2RTM3JBNlVOQTltdWU0ZFV5?=
 =?utf-8?B?UmhuallJTEZGUzBCa1EyWkZGK1dEWUFwSWc2RFYyaWpsdVBxYXlGeHF1Y2RW?=
 =?utf-8?B?Y1czZ0d4UHlnci9VOGxuYTc1b2Y2Y293ZnROSk0zcnkvTXEyM3pJSEpvY3hL?=
 =?utf-8?B?TU9kbVNwVmNFaGlNbVlaYUZCR3djOUxYaGNUQWExWERZaWtWSXBpQjRNNEgx?=
 =?utf-8?B?ZEdrVFFzMzRXcmNndDQ1T2MrRXp2TjVTaEZwdlBNVVM1azllNGVsalI4cjhD?=
 =?utf-8?B?MkFBWDV0QzIrcll3dU5KWmxuS2M0RVorYUJrU1hPdTFWODA5VE9jbnRndVJK?=
 =?utf-8?B?UXYzeWxsbEhYYUhqeGdaQzRJRURoY3NRUUhneWNndUtWbGw2a21HR0htcno1?=
 =?utf-8?B?NmpFK2dVQ1FGRVFsbkRocjd0UFN3TTc2RHM2ZzVvMzg4ZnNONHFkNURwckNy?=
 =?utf-8?B?UWtqbmppbFoyU04yckVtWGlYbk9udTF2QWFmNXkxN1cvaHVkVlUyajFSQU9K?=
 =?utf-8?B?S2E2dkIzOGR0eWRpOUhTK2lMcG9WVWhJcStvZXlvd0c0WDB3TEVjSjRxSXNs?=
 =?utf-8?B?bXRlM1I4bWhYWDdxR0hnTkt1M2Z2WUZZOWpZZUZNdmlLN2l4QnRQbVU4enJt?=
 =?utf-8?B?cHA1c0VGTkdtRkdqeG9IS0I4TDhFc2VxYmt0RW0xUkZoUTBIVFBVaDdIbE9p?=
 =?utf-8?B?c083Vy9vaU14NldxcWExVk5UUkRNTDRSZWw5cjBoL29yV25pYUpJTml5eC9C?=
 =?utf-8?B?bWphQjd4bU92YlJmMytDUGFJdXZqdjA0em9neldNcXRpcVJkVDNDZlUrUXhu?=
 =?utf-8?B?bUVveXh0NzdhOW13ZFdGRVdoaU9VQ1VZZkpYU0ZmQ0RSQmV4bDZBaFVrekpD?=
 =?utf-8?Q?K/Vu48fzj3Dl0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmFuUzczdEpYLzlVZ05CQzlHaXdjbGJibUkyZFBJN051a28wWHRuSWFON2kr?=
 =?utf-8?B?ckdGOFphWXZ2dUtCZHppcTl4dWNjOUFIeVdLM2tVdzdHck80OFloZCtmTVNS?=
 =?utf-8?B?U3RZMFhxaFRZbjRMK0xPVWFWSHpBQTZBNXRzOXRoRjZDbWV0eCtpQWV1OThN?=
 =?utf-8?B?Y0FCV09VMWpEK0xrcENoanNxdUhYQUthU3lJOWJqTG41NFFOWXdHUk1GTXAx?=
 =?utf-8?B?UVFtbTQrRjl4ZERCRk9KOUdtNWRkQ2ZPbnVQa1ZFOFZJV2E5SFZiUUNxaXRE?=
 =?utf-8?B?aStnRkZ0ZlZsbmgvQ055dldDdlI1L2UwS2k1SVdvUEZlWE1pSGpTN0V1SXlY?=
 =?utf-8?B?Q1pLOUtES2c0MEVtUyt6anpBVUxSaUU1Qm5FT1lPMCtUbGdhSkJoVEdBbEls?=
 =?utf-8?B?ck9jK3d1VkhFWGFyYllhYW9pK1VzV2RtcWh5Q0ZLT0ZMRFordGNVY0tuSThp?=
 =?utf-8?B?SUlPWWcvckJjS0hzckc5aHVqTXJ6eEdXZzBjR2hvcWRPT3Z6YzF1d1JuR3BX?=
 =?utf-8?B?andLN0ozV09aYmxCK09vdFJpWllKY3g4UXYwVURKdW9JTU9ZNlowVzREaXJn?=
 =?utf-8?B?TDJFN2FTSXRiRmlCNGdzQi9tRys4d3RvWUl4S3FrVXRBdENHRXpwWmxQeSsx?=
 =?utf-8?B?cjJlSEtiTGlQR3pXaWpXdzh3c1ErRWNTdVVPNHVXWnpGZ1JYUEd4MGhnMHky?=
 =?utf-8?B?bnp2dStKd0VxbWJlcFlmUWY4K0MwaGtSNGh1YWdUTHMwUkJZWGt3VzRQV3U3?=
 =?utf-8?B?UHRpdGpQOXZ5TVFXZExReWNlaEdnU1djMkxlQ1dMTGlwR0RNVmp3QlZUem1Q?=
 =?utf-8?B?NTlLMGtETXJMR0hyT0tGblk4eERiRWl4QVVFUVl1d2E5R2x2N2g0NStZdTFn?=
 =?utf-8?B?T3ZGc3lJdWttL3BJblQ3dEdVZ2pjUm5XSWp0UENjVHRsa2x6U1Y1WmFSOUN3?=
 =?utf-8?B?ZU5idUVMS3FGaWtIRmpMZUFwWTlrSEE3eDZLSGNGb1FsbWhaUWg0QjYvdTVG?=
 =?utf-8?B?RHMza3FrbTl6dnR0YlBTUUZPVG96aUFjeTlTWXA1ZFd1aFR1V0hOaTExM24x?=
 =?utf-8?B?M2lGTmQ1cWdURmZMSnFYcHJDZE8xb2FsTDMxSHFQME52Mi9PNXduVlFpTlMz?=
 =?utf-8?B?RkJMTElSUGg0aFJpci9XazIvclRHVEJQQk9kTzRtYUx1cHF1bXVNTjA3ekNm?=
 =?utf-8?B?SnE1TWQ2bU4ydmxtYkVrWTlhVnU5WkxkdGR1Ti9UdVJnaDBnZ09EVUl1VmtL?=
 =?utf-8?B?cndKWmNtcGRFZWwvMjZXNUUwYXBiK2dJVXU4dzkrQTRPczVGSU1paHN3WEZk?=
 =?utf-8?B?b003aUpQQUxGcTJqZGdPTmpML0Z4T243a1FQdS9jcDU0K1NDN0EwM0lEcnVL?=
 =?utf-8?B?L0FtR2YvOGdxKzdjVWt4d2VKNjI2YTNYZUhheHJuTVRmNnBiMUdKYUR3RXhH?=
 =?utf-8?B?ekd0U0wyS3JhbkxuMlF4MU5wdTNvdUE4dnp2VlduT3N2NmxGMEU3TWhlT1pM?=
 =?utf-8?B?cXVpaTJuZFBHQ2lzVVQ4RWlPRTQwVzJZQXV1MkdYWUhTK3dkVHVBaDEyOFo2?=
 =?utf-8?B?NGh3cG9EbThXSjZOdkxwQ211QlMvRWVLZzd4WWd4OTdtNjQrUWlSU1R5RmQ0?=
 =?utf-8?B?VXRmbTJyTWRTanU4TjN2TCs2REh4WnRZTlNxSWMrUFh1bEtXckF3MVNhaWQ5?=
 =?utf-8?B?ZVJ1cmx5V0hnK3hSSkdMaHMwUDJMZk9qQ1RRZFNTMXJ1N2huWGNvSnZXbVJi?=
 =?utf-8?B?ckIxUmpzNkhoa2JxaFpjcU9ZYTkzdUtmam9kNG51Wk1IZWhhU2J3c3VyaSsv?=
 =?utf-8?B?K3lTUEtFaGdMRFZ0NFpFSEswWVY5bjBycXRnUWQvWmRhQ1hiaEVQc2xqMU5C?=
 =?utf-8?B?SEQzYUdIZTNqM3ZmSTBNRlkzUkx4WHBqOUJjNmV6Um0vdjB5VVBSSGNKKzd0?=
 =?utf-8?B?YXdSTG1yR0Z0WGd1ZTJOUUpIUnNwaUdHMGUwUUM3REFnV2NPVVpuMHFJSjlC?=
 =?utf-8?B?UDdHanpaZXhpOXNneHhRSm9vVGRkbHZ4RDk4TDNCTXFhL2cyTG4vTTI5S0xw?=
 =?utf-8?B?OStHMFROWGJ0amFVaWZOcWFFajFGWXdEMWFOa3YvYkpITnNlQmljMkFlWTBw?=
 =?utf-8?Q?QZ1STz/QNEqL+JKKYGTe1PTHM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d56a29d-aca4-451f-79ef-08dd55be7b78
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2025 17:04:36.4323 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GFjaHL3rZcCmvGgbSACtkz/iUj13Bm5t81yj1NCqA3DUQv74gv1Zz0b93Z9zaqLo6+QJJpJo9yR1/Nz3xN9/Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6663
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



On 12-02-2025 21:19, Anirban, Sk wrote:
>
>
> On 11-02-2025 21:23, Jani Nikula wrote:
>> On Tue, 11 Feb 2025, Sk Anirban <sk.anirban@intel.com> wrote:
>>> Improve RC6 power measurement and error handling. Add detailed error
>>> messages, and introduce a threshold check for RC6 residency.
>> Improve how? Why?
>>
>> BR,
>> Jani.
> The power measurement is enhanced by using arrays for better tracking 
> and adding detailed error messages for clearer diagnostics, ensuring 
> more accurate and reliable power usage data. This helps in effectively 
> identifying energy leaks and improper RC6 residency.
>
> Thanks,
> Anirban
Furthermore, the current test only verifies if the measured RC6 
frequency exceeds the initial RC6 frequency. While this does indicate 
whether the system has entered RC6, it may still pass the condition in 
the event of interruptions. To address this, a threshold check has been 
added to ensure that the system has properly entered RC6 during the 
sleep period.

Thanks,
Anirban
>>
>>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/selftest_rc6.c | 61 
>>> +++++++++++++++++---------
>>>   1 file changed, 40 insertions(+), 21 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c 
>>> b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>> index 908483ab0bc8..30bc2ff040ce 100644
>>> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>> @@ -33,15 +33,20 @@ int live_rc6_manual(void *arg)
>>>   {
>>>       struct intel_gt *gt = arg;
>>>       struct intel_rc6 *rc6 = &gt->rc6;
>>> -    u64 rc0_power, rc6_power;
>>> +    struct intel_rps *rps = &gt->rps;
>>>       intel_wakeref_t wakeref;
>>> +    u64 sleep_time = 1000;
>>> +    u32 rc0_freq = 0;
>>> +    u32 rc6_freq = 0;
>>> +    u64 rc0_power[3];
>>> +    u64 rc6_power[3];
>>>       bool has_power;
>>> +    u64 threshold;
>>>       ktime_t dt;
>>>       u64 res[2];
>>>       int err = 0;
>>> -    u32 rc0_freq = 0;
>>> -    u32 rc6_freq = 0;
>>> -    struct intel_rps *rps = &gt->rps;
>>> +    u64 diff;
>>> +
>>>         /*
>>>        * Our claim is that we can "encourage" the GPU to enter rc6 
>>> at will.
>>> @@ -65,9 +70,9 @@ int live_rc6_manual(void *arg)
>>>       res[0] = rc6_residency(rc6);
>>>         dt = ktime_get();
>>> -    rc0_power = librapl_energy_uJ();
>>> -    msleep(1000);
>>> -    rc0_power = librapl_energy_uJ() - rc0_power;
>>> +    rc0_power[0] = librapl_energy_uJ();
>>> +    msleep(sleep_time);
>>> +    rc0_power[1] = librapl_energy_uJ() - rc0_power[0];
>>>       dt = ktime_sub(ktime_get(), dt);
>>>       res[1] = rc6_residency(rc6);
>>>       rc0_freq = intel_rps_read_actual_frequency_fw(rps);
>>> @@ -79,11 +84,12 @@ int live_rc6_manual(void *arg)
>>>       }
>>>         if (has_power) {
>>> -        rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
>>> -                      ktime_to_ns(dt));
>>> -        if (!rc0_power) {
>>> +        rc0_power[2] = div64_u64(NSEC_PER_SEC * rc0_power[1],
>>> +                     ktime_to_ns(dt));
>>> +
>>> +        if (!rc0_power[2]) {
>>>               if (rc0_freq)
>>> -                pr_debug("No power measured while in RC0! GPU Freq: 
>>> %u in RC0\n",
>>> +                pr_debug("No power measured while in RC0! GPU Freq: 
>>> %uMHz in RC0\n",
>>>                        rc0_freq);
>>>               else
>>>                   pr_err("No power and freq measured while in RC0\n");
>>> @@ -98,10 +104,10 @@ int live_rc6_manual(void *arg)
>>>       res[0] = rc6_residency(rc6);
>>>       intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
>>>       dt = ktime_get();
>>> -    rc6_power = librapl_energy_uJ();
>>> -    msleep(1000);
>>> +    rc6_power[0] = librapl_energy_uJ();
>>> +    msleep(sleep_time);
>>>       rc6_freq = intel_rps_read_actual_frequency_fw(rps);
>>> -    rc6_power = librapl_energy_uJ() - rc6_power;
>>> +    rc6_power[1] = librapl_energy_uJ() - rc6_power[0];
>>>       dt = ktime_sub(ktime_get(), dt);
>>>       res[1] = rc6_residency(rc6);
>>>       if (res[1] == res[0]) {
>>> @@ -112,14 +118,27 @@ int live_rc6_manual(void *arg)
>>>           err = -EINVAL;
>>>       }
>>>   +    diff = res[1] - res[0];
>>> +    threshold = (9 * NSEC_PER_MSEC * sleep_time) / 10;
>>> +    if (diff < threshold) {
>>> +        pr_err("Did not enter RC6 properly, RC6 start 
>>> residency=%lluns, RC6 end residency=%lluns\n",
>>> +               res[0], res[1]);
>>> +        err = -EINVAL;
>>> +    }
>>> +
>>>       if (has_power) {
>>> -        rc6_power = div64_u64(NSEC_PER_SEC * rc6_power,
>>> -                      ktime_to_ns(dt));
>>> -        pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
>>> -            rc0_power, rc6_power);
>>> -        if (2 * rc6_power > rc0_power) {
>>> -            pr_err("GPU leaked energy while in RC6! GPU Freq: %u in 
>>> RC6 and %u in RC0\n",
>>> -                   rc6_freq, rc0_freq);
>>> +        rc6_power[2] = div64_u64(NSEC_PER_SEC * rc6_power[1],
>>> +                     ktime_to_ns(dt));
>>> +        pr_info("GPU consumed %lluuW in RC0 and %lluuW in RC6\n",
>>> +            rc0_power[2], rc6_power[2]);
>>> +
>>> +        if (2 * rc6_power[2] > rc0_power[2]) {
>>> +            pr_err("GPU leaked energy while in RC6!\n"
>>> +                   "GPU Freq: %uMHz in RC6 and %uMHz in RC0\n"
>>> +                   "RC0 energy before & after sleep respectively: 
>>> %lluuJ %lluuJ\n"
>>> +                   "RC6 energy before & after sleep respectively: 
>>> %lluuJ %lluuJ\n",
>>> +                   rc6_freq, rc0_freq, rc0_power[0], rc0_power[1],
>>> +                   rc6_power[0], rc6_power[1]);
>>>               err = -EINVAL;
>>>               goto out_unlock;
>>>           }
>

