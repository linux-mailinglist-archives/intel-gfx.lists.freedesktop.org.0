Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA3DCA8334
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 16:32:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFECD10E933;
	Fri,  5 Dec 2025 15:32:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j9+itoA8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD4710E933
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Dec 2025 15:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764948755; x=1796484755;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OEBmO2AccEMS5oaoMjcjE7sVvQghgLq8IiwlDSrxDx0=;
 b=j9+itoA8G8/muIS35a0b3btD0U81ecA5ylTkIjLh+v3fJzedsSSP50ab
 U+tMdAA0o6WORQYzxnP4zm7lDDUHQzX2zIB4buf/zIEgB6Qgd6NJrP4Ph
 27W4j7SZkE7aX8ranpuamdADvYNMWSDzyz+WYEri143xPzR1IilYMBOaU
 p5Dnn5GC/W79xX6yFSnuIXgY+IjFSpFE8i7TFy9B3q1eoiYtUoIikzIGL
 fWQ5rm3NOaH2DyULFBpn3lzRrPeFTxaLWLerCqUNJe0vRjOWXO9y2EG1V
 NyASQh0/T7lrnleZgcYxvAt+Be5afOzgJHaT8/mRSjkGcrj7o5POG2fBo w==;
X-CSE-ConnectionGUID: 5fColc3SQIyMMJwC38yaQg==
X-CSE-MsgGUID: wdY7U+0XSsGhh4PjZde0Yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11633"; a="66708512"
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; d="scan'208";a="66708512"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 07:32:34 -0800
X-CSE-ConnectionGUID: Tyn8BYgNTN6lP0jaiLOaAA==
X-CSE-MsgGUID: cbiSuzexRK+/uLb1iBXh4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; d="scan'208";a="194389261"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 07:32:35 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 07:32:34 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 5 Dec 2025 07:32:34 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.11) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 07:32:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MCKCZdzn0PyeNHKC+GylNtPEoC2qDuywydm23At6eISW3u8bTibJ66ZFPE/BKYGBLvdyCoY//snZwD52eLtBjaE3QuN4ko8KYyuovisnqxBiLTtcE2pUZQLlarRsOzW6JCBQBoiPOInVdAHNgeSD4VeQRRlulH+KhCBiXUfH33uHs8x6axYd1HiGoYMs0UwSREzveeqiO53kOS9ATfZJhQRUEulBO2i5g7DOCDswUhagNL3Z8HxrWOIlYn7pDfPbZXnfmVT1FQM5oFIWurXPmeQ/ByU5B9B1UsAqZhIlPZEWe1bnMFOnG32iqwpOwMVcEHtfyqZEM1Zxjmo2Y1ENAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k4Pjm+mYCvMP3v0T2+CZQ5PqKxJ7wTZFaqKKma3e2nA=;
 b=L4WlQgapDCbuuYovY+436PXmLjNGUsD6XLRYdm/BJaaHRmwcISPkTSxNAbpfpEotzx35Y/y5W8cko8PX3RnqjxfZkc7lXIWiuIb/57/LywxXV6qCVsjq13Avmm5oVMtU6IEfAbgIv4sVjb9Ft4IA0cackGArWwfCiHihkW+vdZmBmnWuv+51WtH7tFR+VOrUCBjKJVnmLXvBU4n/5CGxv559IXHR4j36LOqF3JvR6fld6bTSVaOl/rt1dGn5j+hUvRBdvjRATqpiYJeXYxmPGGyKmjsa1S0NsvZtamgMuKb9Dr8if45K3tB2/a6j7hjY9Hw9Wnco8CoTy/KkYmaSWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by MN0PR11MB6133.namprd11.prod.outlook.com (2603:10b6:208:3cb::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.12; Fri, 5 Dec
 2025 15:32:29 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%4]) with mapi id 15.20.9388.003; Fri, 5 Dec 2025
 15:32:29 +0000
Date: Fri, 5 Dec 2025 16:32:24 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 2/3] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
Message-ID: <uxvt4tjbnya5aaxetgsiz65aiwvmg26nr46ynyunwyay6lmesn@3rotnnpuoofs>
References: <20251204143827.111428-1-krzysztof.karas@intel.com>
 <20251204143827.111428-3-krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251204143827.111428-3-krzysztof.karas@intel.com>
X-ClientProxiedBy: WA2P291CA0048.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::10) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|MN0PR11MB6133:EE_
X-MS-Office365-Filtering-Correlation-Id: 79f25f3c-b50a-4936-b70f-08de34138070
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZnpZUnF0cHU3clhMY2xwZnRHaWhhMjBoWWthTEhWazJzbTluaDVZbzhTb2NP?=
 =?utf-8?B?QXl6czNjZzhGU0FjZ0tDU05peHFvNFp5NXl1MDF4VThwS1Y2TThVYzZsWUdh?=
 =?utf-8?B?dmM5RWxMOUpGMWFiR29VN1VkM2ptNWJvMWwwNFZWdEczY0owV2xldDk0R0tT?=
 =?utf-8?B?SFhTRzlTcVYyQ1gzd1BmenFmQlpzZlBmKzg3ODdlK3FsdElRako3YnlKRkZs?=
 =?utf-8?B?WEFmYW5tTTZ2TmZxU21pa3haQ015dTlVR2I2M3UrYWdBSDB2ZWtJS0VlUUoy?=
 =?utf-8?B?Mm0rcDJ5cjVjSGRuYjJVb0ZYcEVEamdjUURsbHZ4WUE4QUV4T0E3NFA5blZ3?=
 =?utf-8?B?aVVHTGJUUUxRamRwWXNkQlI4L3NSMmlpTFF6V0RuYTFiSjNycnVnWW1TZ1Vz?=
 =?utf-8?B?cDdFM0NQOVdhWTIwVGxCV09sS0twRlQzVUNSQTMwK20zOG5BUGZrM2JiMFFn?=
 =?utf-8?B?MjVJZnJaRGFZb2lOdmkzL2krbjFFRWRjR0hwVVlTbDl2STkreDJadlNPNUU4?=
 =?utf-8?B?NGtWMG1tMktDaEhHTFl3TStyTDcwM1BOeEd0cURCcWNjb1g1Q2VWN2RMZnBP?=
 =?utf-8?B?dU8vMFpWQ3NXcWRxcjdaK2RvS2Vid0hSaVdTMERkb2Q5bnRxZFcvK243ZFlN?=
 =?utf-8?B?OTIyRkp1NW1XTWZpTFFZK2djVktqV3VncUg3NW1yRnFwL2c5VHErNWpIbjJF?=
 =?utf-8?B?UnMxVmo4TTVRNmZXR25SbzdlWkV2V1FiSkZpTjFZbXNHY2lVZFd0OHh4ZGIz?=
 =?utf-8?B?eG1JZDRqa2s3Y2pzSFZvTnpLWWRmalV5MlFmdUE3UlByVE9uWGN6azV4SlVo?=
 =?utf-8?B?akFxL0MyNGVTMy9xRVVua2lCUmpuZ2ZVZFFZTEhhUmRTN1NqdDhjYm1jaktX?=
 =?utf-8?B?WlgycXNiZWJUc1c0QTlGbE9ackF3YzdZU3hVdTlMd0dMVHFQYUJqZ0xGMVpy?=
 =?utf-8?B?d3pHNVBrVVBVLzVoRmwzTG9jeDhZaW1EaXAyTzFaSmNnSkZsTlZ5QSt1eHNP?=
 =?utf-8?B?d3lPSG0zblBXQmtDQnJvdytoZEJWYWY4WWdobFpDWnd0WDdReWdybHlPaUtW?=
 =?utf-8?B?b3ptd2VQcERjOGpIL2EwaVpqUUtxVkxhdmV6U3A1M1ZFVTZlcTliOVROY29x?=
 =?utf-8?B?YklEQ2svRktPSEV2SUpqZHlyT1ZpdkdteVhpek5aR2EvazR4cmFtNVdRU1Iy?=
 =?utf-8?B?dE1MMkdQTDg5WDE3cThDa2NUbmU0Ri9YVWtFQi9uSnBPNzBTdVU4QWh2NWV6?=
 =?utf-8?B?UzFDeGo4cElYaURId0pSL0FmendKNU9PSU4yYk5xbUNZK1RGZXBEZjR6UkVI?=
 =?utf-8?B?WG9iTis1eUcrTjRDYTdkMCsxZWNreTg1Y3g4Tm52OVFQYjEvakpGNTVPRDRl?=
 =?utf-8?B?ZFdSZDFxNXNLVmtRQ1Z3a2QwUnMzVHNIVlZaNEFCTnVCSWNCOWtRcnp3NXZ4?=
 =?utf-8?B?c0IwellmRDhHL3o5TGdnSDJ2dDRyazZNMkpZT3ZsY2QvbUdPUWdLYm9SM0pN?=
 =?utf-8?B?QU1DcXZFTTh4SHJIRjRPL3czYzRReWt1QlNSak92V1I0Z25ySWh3MVoxOXZp?=
 =?utf-8?B?b01PYXl2WEprdnlPTmtyM0h3OUVhUmZhRVJQRk9YdFBzL295TlZENGU3ZTRT?=
 =?utf-8?B?WHEzZVd3c2FqMVlrY1ExQjRHa1laNWxuMDRUK3V5N3RaZTRITVowOGJ6M1BN?=
 =?utf-8?B?elhNMWNhbDVUWll6amh2SmR5Njk3ZzYyUkMwRkFLUXA5S2VSamJJeUxMaFFo?=
 =?utf-8?B?UWxOdG1PZDJnOGsrUVh2WmZYWDI1cmFNaWlELzFmTnlrWFQ4Vmxrb0dzc054?=
 =?utf-8?B?NXBwSThTV3VwL0tjbnR0RE8veS9HcUxGSHcwMEVTTkxJNjRnSStrZ0MxZWNq?=
 =?utf-8?B?MVZPM3JVa3lDM3hZdVNoaVd2WW5aU24rOXRSc3lnMFZUeVEwTmgxdERiYnla?=
 =?utf-8?Q?KYShw5NiFp0TrNxQXaQtf/Mr1AtFyEET?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OENjK25oN0o2VnV1VlpTb3pveVd6RmtyVGNYaGtWOEl4VnpjMW5qdG5kYi9Q?=
 =?utf-8?B?VXZDWitDa1kvbUhFM0NGd3Q0M25hQ3NmWUU3L3l3blN6ckdlUjFDR29WNXBV?=
 =?utf-8?B?dE1WL0FsNFpjcjdocHZvZFU4NVNzK040QjRzTXRBL1lJNFZzQjhON3UxQSts?=
 =?utf-8?B?TytkY0N4akMwcDJJMEZsejJwVjQxa3dZTVdJcWZUK3l1OGIzc0loUDgwcFhs?=
 =?utf-8?B?YkZ3VnVER2dyVGxxeUFFNHRYYWdiVHMxM1AyVFdqWG9GUVppZDZOaElTSkVn?=
 =?utf-8?B?bEFhOW42M05KVFRuZkt6L3NEZ2tHeGFOKzZrUzZLRDl4dFpvQUZDcXB4NGM0?=
 =?utf-8?B?dUtrKzEvaFBkbmtTRTZObUZPWHdNKzhuc0dKdUdmaGtNZGRNelJ5OFZRNWNh?=
 =?utf-8?B?LzVIckhSbnNjd1h5YXhxdTBpWUtjbVF1Z05FZzc3dTA2aTJOWmJaTHZhTjFm?=
 =?utf-8?B?YU82MG04QTY4SEUya0l4TmFmYk5jNWhsTWJIVlplMmR3RmdwSnVKQjFVQzRv?=
 =?utf-8?B?Ukp1VFZNbDJEOGJaYU42NkR0a1JZRGRjU2daTndFQ2ZqYkczam5UTGFjSnAz?=
 =?utf-8?B?OHJKR2Z0anZRQTRUeC9DVExnaEtyeUZiUkVXVWw4OTIrRUswUE5uT3RXa1dv?=
 =?utf-8?B?VGIwZkpXWlh1T09JUWFCRjBubHhMRjY3NFBDUHRSSENCVlZndHBhU3VCM1Jx?=
 =?utf-8?B?czN1RFJBQnZqcHkzMFI5NDlnWUN0VW85NVIyZ0tjV0d5WDEzc3F3MWdaK3RH?=
 =?utf-8?B?K1NqNlIwQ040bHljUFdzclZvQVNpYkJ5TVVqbnd1Uk9EWGV3TEp1bFNoZXJJ?=
 =?utf-8?B?TThqSWRvcnlEejRIaytjWDFNMWUrOFAzNjhrb2hrSnh0MThFR1pCUnpuNFFK?=
 =?utf-8?B?L0pjWk5YTUlIQ0FZR052ejhlRkdzRTBjdEp4NWtyUU90YjhpeFN3dG5zTFNa?=
 =?utf-8?B?R2g1eFQ0ZlBBL3F5SDYzd1M2ZjhHV3dmaHE5c2t0NVFudFp5eWR2OEtVdmhn?=
 =?utf-8?B?ZUcxOFVBK1hvWGRwRmJ4R0dTTndkN1BTVGZzcnJKbXl5STBUSTIvZTNZNUg2?=
 =?utf-8?B?UDNOU3lvazk0OUNFTXhUYzRJbU1yRlBmMnhScFMzRGk1YXdqQThscUVQRldk?=
 =?utf-8?B?a3ljSE1GeG1tNUljOXpWUHBGeE93N01FQjcxc3NUS09CK2ZiYUhwTjN5dnZL?=
 =?utf-8?B?UVI2dzNIcDdPYXhtbU5nTnZ6VDRYY0liNlJDQXpGa0IrVTNzTFEzWEo4dnVT?=
 =?utf-8?B?ZmJucmxuNUpzanpFS2MyeVQ3STlSNW1nUkFORWNpTXYyY2FldlZQNTVIVlgz?=
 =?utf-8?B?VHFQVjdqeG9ZKzd3ODZjakZYc0RZODRCUzZwTHF1Vi9xbE11OFgxTWk2R0Yy?=
 =?utf-8?B?SW0rOUNpK0ZEdDR5OEQ3U01wWXp6Qm04eHVlZUpOMlVsSWZHOFc3QlE2MVRI?=
 =?utf-8?B?eW8xeXo4Snc3TmNZQ0J2Nlk0eHduVUl6eFU1T0JYdDVtVXowNjdxOUx4cWhp?=
 =?utf-8?B?SWNHOHNXZ1hLVnpsZHprbHhWTC9MeUxHbHFES2hTY2VGUXpKRnorMmhIUStL?=
 =?utf-8?B?NzlDU1dDY2E3RU9ZZU1jOG1ZaENVYVJra0pMeGJVODVFVUlyZE5XeEsycWh2?=
 =?utf-8?B?aUkwZUVIei9oWlVZaklZSTV3S09Ja0swWjZKSzVXSWFkWGhMQ3hkQUhsVW9q?=
 =?utf-8?B?Ly9abFNWTFZxM083Q1VQZmRrNVZ1R0c1anJBMVFTWERRb25neWNBM3dBNk9U?=
 =?utf-8?B?K2M0RHJlZWl6NVlGazB3VXE5cU9hTDBncTVPeVhPV0hFU0h6S0licW03SENT?=
 =?utf-8?B?WE5qV0lDNHIyVTQ0MmJtK2dVZnc4YWJQWVNDY0FXZ0FTR2d2R3RnSk9BaFJG?=
 =?utf-8?B?SHNUR3RTR3lGSGNXTXQ2L1hhbFJzMnc2dDYxUW5NRUVXN2t0YmpOSC9BWFZa?=
 =?utf-8?B?OGNETnE1SFJqVVovZ1kva2ZVTnh2KzgvYWg1L1lHRHVlZ2dGQ3hiSTFZNjBE?=
 =?utf-8?B?UHlrNEZuV3Z4WU0zU0RyOW1pM2RqM0JENWQyTU5FeVp4Sy8xUVQvdW01enFL?=
 =?utf-8?B?Q3hZZTRiTWpLZjlmb2FrTlpPYXNYaVFpYkZuRUNSQ25tbFpFdzcva2QxamNa?=
 =?utf-8?B?TElCUmJiakxEREY5eUxiUnRubVQzOEYvM0hLRzl0WkQ5RTNVL3Zldm0ycEh0?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79f25f3c-b50a-4936-b70f-08de34138070
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2025 15:32:29.8069 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n1LE1lMR8IpZBKRcQwWWD+AaFPjbaT5fFU8vZ2Aq1D/Nc/bkyy4kbpqWHynKxOvvOScR5T/NgtVgZR1Q3f2xEuU+Bz79Dvq65I43WXByxO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6133
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

On 2025-12-04 at 14:38:26 GMT, Krzysztof Karas wrote:
> dma_addr calculations are carried out using 32-bit
> arithmetic, which could cause a truncation of the values
> before they are extended to 64 bits. Cast one of the operands
> to dma_addr_t, so 64-bit arithmetic is used.
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof

> ---
>  drivers/gpu/drm/drm_fb_dma_helper.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
> index 2b2513188001..c3b9e49bd755 100644
> --- a/drivers/gpu/drm/drm_fb_dma_helper.c
> +++ b/drivers/gpu/drm/drm_fb_dma_helper.c
> @@ -104,8 +104,8 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
>  	block_start_y = (sample_y / block_h) * block_h;
>  	num_hblocks = sample_x / block_w;
>  
> -	dma_addr += fb->pitches[plane] * block_start_y;
> -	dma_addr += block_size * num_hblocks;
> +	dma_addr += (dma_addr_t)fb->pitches[plane] * block_start_y;
> +	dma_addr += (dma_addr_t)block_size * num_hblocks;
>  
>  	return dma_addr;
>  }
> -- 
> 2.34.1
> 
