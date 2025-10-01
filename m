Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DACBBB05E1
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 14:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68CAA10E362;
	Wed,  1 Oct 2025 12:37:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EZfeCRON";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97EC310E35B;
 Wed,  1 Oct 2025 12:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759322247; x=1790858247;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JO+rh+0RLywQLBPCLOUjhESfxW/UXQeCtP+R+OWrvew=;
 b=EZfeCRONNhuOKFOK/izJsvb1FKQ5+CspVplx8p0uZam7gtD9bkiUV1Aq
 w2jGEi2GXqCBG3rYSn6GoViHPO5SRh7dLjY2FmC7H7zEU7r+Y3HgJ9SA3
 +LUYM7PTSO8qA0H47uMscYHXaHH5/a8BEg6bH/3kWoenMLAkePWxu/A9V
 +vwkkqDxE6+bOwguHnsFrAzW+jvsCBY9fwzepe048RY0HPX00SE+4eXmV
 3l87xLKWKfpY/+ewq2wtxzohTCt5Uj7d+aeAnq055zf49yl1JfZrDyk4o
 2ypuAhcmD5ft7QPXBwWAN2aI8kUJ6XRqHOBL9RMKswgEz1uVfq1DTaLS0 Q==;
X-CSE-ConnectionGUID: +wcWvPa2Q8aDmwrmaGV4Jw==
X-CSE-MsgGUID: 9o259GKBTN+HOcNcJr4W7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="72266082"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="72266082"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:37:26 -0700
X-CSE-ConnectionGUID: WrbLGGMJT9K47y/cvqUBrA==
X-CSE-MsgGUID: iW87zEH+ROWkZNEuSZ0dcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="178581076"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:37:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 05:37:25 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 05:37:25 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.62) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 05:37:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sj6TsV05iSwtMDIMW+cYxEvExHtTtCpsQx9oQubFP5Vu8Mt8o5mFzmlqFJWRMJSzdz3XbOMG9uMNiQ1cYYwttGrIVH0qcvKRRa04yZACgKWQCjtzL29aSxFH5BkjNjT+3wxDF+fd43ZmcCsD5V5ur0wJrZW98uaQKlUApCgV0NGQpxEF6bRiXqMdzIvbASdscMrKB7o5qSwPIivq+xvr5tsKAu3+IwO5xR1Kl/sUYNQlCVw3yQZEgn/JdRUW9mstjAMY3FU9PIoDlrwKtu4gUI9SS0bfBn+JTqHSIDfCjU0xwc1nkhM19LUFESrUfesEOv8cywUzr6kYIwNJQ3NZdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JO+rh+0RLywQLBPCLOUjhESfxW/UXQeCtP+R+OWrvew=;
 b=Y4MpGuDsoTZoGLp3oG4MoIDssu3J6GNPg8QtLzNikAwehKxAd+mcfGcQPLhbYqkiGOsnrjWr0zy+PCGB3Oul5NZyeVrI7BRormXcc6xAcLultR/AFtJSOnOMkAzHtvomdnUuFuq3Nj3AVII5FP2ru5SehlUrkfyEy1DYWpIRT67bKXh6OZoabNFnYSW79JN5Zg72fze9Ou7TbhAYzclfgiktKGwjx/3mOlMiVT7CpA97rLCgZQ+0kHsIii27IqTkR11GZpxRN8ofbR53FW3dLQXqZiUiDQfo6UlL/ZdtZoCkekeuzUz3sxDGThMQWeBPCvJfaYBd29Cvgo459u43xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ0PR11MB6576.namprd11.prod.outlook.com (2603:10b6:a03:478::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 12:37:23 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 12:37:23 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Joshi, Kunal1"
 <kunal1.joshi@intel.com>, "ucas.demarchi@intel.com" <ucas.demarchi@intel.com>
Subject: Re: [PATCH v2] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Thread-Topic: [PATCH v2] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Thread-Index: AQHcMqsjQbd3MjyGfUWsTkbCG0EWEbStD9CAgAArGwA=
Date: Wed, 1 Oct 2025 12:37:23 +0000
Message-ID: <d0acfa805671edd1132ee01e6663e1fa17179623.camel@intel.com>
References: <20251001081209.272607-1-vinod.govindapillai@intel.com>
 <09f6e8b565bfbecc38f5978bde824192924a1bc4@intel.com>
In-Reply-To: <09f6e8b565bfbecc38f5978bde824192924a1bc4@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ0PR11MB6576:EE_
x-ms-office365-filtering-correlation-id: c750ded0-658f-461b-39ca-08de00e74535
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ZHlpaDUyalJqM0t6SmNXek4rZkpZNUJTdWNSSzRDdjlpenk3cGJKRmlTVEZU?=
 =?utf-8?B?NE1HQUNZQWt0OHdVcy9qb0xxZGxvZHNaTDJCWTU4UjVYUXh2UVlQYkZKS21X?=
 =?utf-8?B?QnkrRHBDcUU1emN2VVQ0R0NoMXNsRzdNU0NBSW5teHpVS2Z6TkF0YWNsTHJU?=
 =?utf-8?B?Y2hyK3VsbmJSSUNKam1zN3ZmVWlnRVBVZFRIaFNhR1JmZVgwOFZvd1JNWVBI?=
 =?utf-8?B?NWErSDBhU1ZVMWZrdWFhVGJOVGFhSU1VYkk2a1ZJbmlWUmlPeHFraEVIQWxD?=
 =?utf-8?B?bEJhSzB6WmF6dTM1T2xhU0Y2QU4xbzV4UlJ6WlpUVFd2c3NvZUdHdjdFMUxl?=
 =?utf-8?B?aEJpTnQ5S09IV05SbWR5cmlLb1Boc3kwaFV3REUydk1VRURiRTF0dmZRVThP?=
 =?utf-8?B?ZTFHRURpNnlCQ2JOM1g5UG5Ua2d6T0w2dXlGSVdSMjhZWk1hUzFyQmd4Y3lJ?=
 =?utf-8?B?QU5LSWJtSTh4WVA0dXc0NnZoNXRnMVdFaEtPM1VERFJPbnNMNmQwQUR2a0sx?=
 =?utf-8?B?Qy9qeno5VGRUMWNFWVNRbzIxZlNTeWFYaDZmVGNVZGoxQnE5eVFIMVZYK3ky?=
 =?utf-8?B?ZUhyVlBmWjhsRi9KRUlaSUI5VFhhR3VpNE1jYjBqVlE3VEs5Wm03VE9LeUZn?=
 =?utf-8?B?TUxhZEJwempndERXbGFmYzhWNHIrUUFrQ1p2dDU3Vi9PdFpKNlZLajJTYzJI?=
 =?utf-8?B?TG9TRDBnd2tYS2c1V2QxdjVXYkZhQ0tHSjBVWHQrNjZMcDFLUnRmdVZ4NFB3?=
 =?utf-8?B?dDI3bStuYnpPOGl2dnBvbzRJTXUzS2YzMHltTHJ4RVhDd3F6a3hyTlF4ZWpl?=
 =?utf-8?B?N3NUWFJnWW1PMTMycE9VU3FNbzdqOW5oTVExYkNpQVJyN2ZZdThDSXBvY0Zj?=
 =?utf-8?B?RGdxRnBYRXpscXdWZ01SYnVMNzRzK2M4d2IvT1Q0ZjlBZDBrTy9DZE41V3F1?=
 =?utf-8?B?QVZ4TEhVcnAwSXdaZTk3bmw2RjRPQ3o1dFVCN245S09sdFE0Rlh2WE10UUd3?=
 =?utf-8?B?NzNQeFJwZkkyNEtFVGJxV3FET0JhdUhYK0hUMkFXcTNSMTVaVjFDcy8vQVhU?=
 =?utf-8?B?bXp0L0NwNTVoWnpYeFpSUUJSWE0xcW1RK212S0xkSmE1eFlNTlBUb2dpemJm?=
 =?utf-8?B?d0xLQ20wc1IvMjFSZURuRFIwTCtPKzJqNCtFSCs1Yk5LZ1I4bXdJSytPa0gz?=
 =?utf-8?B?NU5aSnJoME9QOERpajY1alY5Z05uUm41QVNoalgxdVZ1WTNDT0NFekFPd1NO?=
 =?utf-8?B?OWxuTm5uTHEzOVpoa2c4U05ZSHd0UUYwM2xuTFBsQXN0S1d1K09BQktXRWJw?=
 =?utf-8?B?ZXIwUi9Mam9SZVpLMDNVa0poN2Mzdm4zRXliVzhiSk40R3VRVjJSNytYMlRk?=
 =?utf-8?B?ZmZONHBjT0JYOE8zQ3d6ZWk3cVBpTXk1ay8zeCtHczk3UmJqYnpJRHNZdnhQ?=
 =?utf-8?B?WXRtWGlhSW51b2lHeXMra1pob3cyYTJRNVIzeE9pVVJ5c2xCc0kyRDd5MmNx?=
 =?utf-8?B?TktjcGQ2cWdVQ28rTDRBc2pjQXk3ZDJiUnY1ZXpiVi8wSWgyWStOTEdET0Ni?=
 =?utf-8?B?SllYRGpMc2taRUZIT1Y2YVlUbWNkVUwxMTU5UCszbWFnSFdKbkNWeDBBNk5s?=
 =?utf-8?B?UURvNU1jRXB6SEFuV1RHekdsQ1JlLzdaVGJHd3Y2Y1hNUDd6UnlJb1BORGtB?=
 =?utf-8?B?QmwwZTRBUzk5UC85UVcvcTZVcEJ3NndIays0Y2Ixdjh0RnNGV2NVTjRmTGpp?=
 =?utf-8?B?Q1lTRm1ET3pCeHVONFFDSnBlWDBKQ09lVVI4ZVNQbkJFQVkyWWZ0VnBMUDZT?=
 =?utf-8?B?aGoyNXNhbHEvSFhYUXFtZ0VNY2tERTc4bjVxYnA1eDZncytwQ1lTUFlQUmhu?=
 =?utf-8?B?eTdyNkJpOUdCSXlGZjZtSTZRVkZ5YWVsNzNlOEgyODFCenBsSk94T09oQ3Ev?=
 =?utf-8?B?MmhTaWlaVThFemdRazBuaDRkbkFTUUZxUXNicWFFc2l0Sm5GaE5Yd0gxOG5M?=
 =?utf-8?B?bHNNVy9SVTl4ZEN6V3NpWkhEVVA0NXlLakF2KzMxam55ZU50YmlNQVRkUGtp?=
 =?utf-8?Q?zkkrCb?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cGRBMWgxZlRJUUJscEZHN1dFSUlndDg1alFpZndWUWtwUVZqRlV5a2JNUFU1?=
 =?utf-8?B?b0JpTi91blJaQVkxQkt2L1lEdXBlL2tnd1BPYVUxVCt6ZUIwUDA2WDhmNHhk?=
 =?utf-8?B?ZW9LYzUxRmlIQ2Z6Rlh0RkhkcTFDck92bHNqRHBDQTJuZU54NkJuV1hhYWhV?=
 =?utf-8?B?Si9CWFJ5SjMyYU5PMWV0TzBhTFlJTmhvbXZHcm51Z0t1K3hCUTBRK1pWbWtq?=
 =?utf-8?B?MWlGSGI1WkhONW5VeFhzU0Q3dHNTWXRzdUwvTFRwUVE3TFIwbVpNeEtZMVBR?=
 =?utf-8?B?S0tBQjA2UGRXMi9jRENmMUIzazNBQUhmV2JWUlY4YXdGbTQ4L01GbktMd0dv?=
 =?utf-8?B?N3NDcmQxdUFkalRqOSszaFpFdGFNSWVNcFA0NWhZd3dBSUpyY3JWbEFSMVJt?=
 =?utf-8?B?SzBnN2FlWW8yZlVJVjc4cWpSWWFSRXZZNUVvT2lxajQ1OEZEeEhEUmtyc3BK?=
 =?utf-8?B?UkZLclV4czNacEJNbCs3YXlkcEpYNTZ5WW1sNDY2Zjc4SGZ1bWtlQW1acm9i?=
 =?utf-8?B?WTVuRXFWdVRVZkVXOS9hdEpKNzRlUDN1R1NleElYUGZCYU5VcnlGZlNTbjRI?=
 =?utf-8?B?c2orS29SZm8rd1lmb1JnWnlpVmxKNWkyZkVtUzU4NTM0YStBa3FISlFiVWFz?=
 =?utf-8?B?RitITGx4b2dvaW9rL3I1bm5ycy8wYlRKTHZIcUx6SU9ZeGNVcDBnZEQ0WW91?=
 =?utf-8?B?MjJDWGE0WTFWcUZ1WEZOdWJLYmZOSi9ZME9wSXZOZFRGQXA2VDhaVlk3K3N6?=
 =?utf-8?B?SUFJMndDMzRoUjRhVlRJU3pVMkFhRzFMckpzanIwQ1ozakczVkM1ZFpoelFh?=
 =?utf-8?B?eHlnVFF2cXUxREZyT051VkI3Z1FtazRGS3J4VTJ6Zlo5bjVPeGlHZ3VnSTRy?=
 =?utf-8?B?eEUyRjBLM0plVzYyazQ0YlpaM2F2RXJqeWF3bnpZcVVBWDdNWU0rWjVDTGNm?=
 =?utf-8?B?YnJGcUlkWEpVY0xyMWVKcnRsYmcvSUt4N25IcTdPSEhIM3RpNEZsUkNJSnFa?=
 =?utf-8?B?aVBMMGpWWjFhY1hHVDhvRi9wOEhRZ0R2Vjh4TnlHR0trUVhqOFNjUnRwUmh0?=
 =?utf-8?B?T1ZjUUxpRkNMWDhTN1hyZlI1c2xja1J4a1lONXVvRTVIcVVuejBUSHJSOGpT?=
 =?utf-8?B?a1o2T2JLRHVKeUtYWmRUWFFBVUZwQXRIbjIwUDJva3FQMW0vVWZnUjRoU1Jk?=
 =?utf-8?B?NjRQcTVnZzUrNFRtWG9aTXV1QUwrTmhwWEdWa3pHTEJySGpLaXQxZ0M2RTN1?=
 =?utf-8?B?ZmNvQUd2RkRFMmxNdEY1MVNwUDRROHBsMkE3bXQ5Y3cvdWxWZi9mTWNLMC9w?=
 =?utf-8?B?L1ZTRHkxL2ZXK3hId1FWVVdYdWJHbFE5aHV0M0Jld3Z0V05yaXFlcm04dUUx?=
 =?utf-8?B?ZU9oNUtBUHFSekloN1hLZlk2YXFMdFg3bGozWDc2VE1jb3VUMWgzbjF2cFBB?=
 =?utf-8?B?TUFrYTgxQUxPaS9ENGM4U005Nm5ObG1PeEYrOEVQaTg5S3kzMHUvNFJUekFS?=
 =?utf-8?B?QnMwMW91OTY0Qlp6a1ExYWl1Q1hnNGZWbWlLMDRlQjZxc3pnakl3T3ZTdDQw?=
 =?utf-8?B?OSs3czdnVFkzWUpTeGJGeWdXUWl0dUQ3SUJYQlRVRW9JQlI5MWk2RUcxMDV3?=
 =?utf-8?B?MGNsZlRPME9uVXRWbWpPUXZzVWNEU092djRPT2xRdUs0WGpBU2hXZGxCTzBZ?=
 =?utf-8?B?QXFmUUlQaTZwWk1sY0ttZ2NUR2FJUmJpQ3lkdWJhc0lrajBBZkNSdWp3ek1M?=
 =?utf-8?B?Y2orUHFZOTlNT000VUJpdlI3VmxQYmdWYUswTE41UEpva3BRbTllc3dsNWVt?=
 =?utf-8?B?MUFUT2RUV05nUzBtSmxLMU9GSGJEUU5zWDk3S2JKdzB5emgzd3lmZnVYdGpy?=
 =?utf-8?B?dThGRDJUOTRqbU9NTXVXci9OT3FFcG1QNFRKSjhNRXR3bUNHT3AzSkVTbUdT?=
 =?utf-8?B?ODZiM3MxeDNoRWlDWnBua2p5bldqVHlmV28xVzdydGlON1BIbm5ZN1B4YTQr?=
 =?utf-8?B?bU5QN3V5WlVpWGhHbW5PanB5NTF2ZDlscEVmU09QUnF1NG1hb0lobWx0blEy?=
 =?utf-8?B?SWM2Ny9ZY2JRNlgwRkZCdFV1QnBvSmo5TmlGRm9vUFpTa0wrVVdiK1JtdGRD?=
 =?utf-8?B?UXlBR25Rb1ppVEFCaldiWXlSTXhRaUtHOHBNTnQ4N0ZBRVRzNzEvM2ROM0M0?=
 =?utf-8?Q?CCpv09UJgXbIAlmzUyv+eoQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F0C13578A9C67545B5E02F31615DAF97@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c750ded0-658f-461b-39ca-08de00e74535
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2025 12:37:23.1686 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3tk25LwlPG3oUFgtynl2WWaXYnHJotx2hfJ4Wlge8r5Dq9Pd4Jp1gdxz0YnUT1C8mlnThNthGl5cSvHX0w41JaRIukbsvAfyhhLaMxecDQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6576
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

T24gV2VkLCAyMDI1LTEwLTAxIGF0IDEzOjAzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAwMSBPY3QgMjAyNSwgVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IHdhXzIyMDE0MjYzNzg2IGlzIG5vdCBhcHBsaWNh
YmxlIHRvIHRoZSBCTUcgYW5kIGhlbmNlIGV4Y2x1ZGUgaXQNCj4gPiBmcm9tIHRoZSB3YS4NCj4g
PiANCj4gPiB2MjogTGltaXQgdGhpcyB3YSB0byBkaXNwbGF5IHZlcmlvbiAxMSB0byAxNCwgZHJv
cCBERzIgZnJvbSB0aGUNCj4gPiDCoMKgwqAgZXhjbHVzaW9uIGxpc3QsIHVzZSBpbnRlbF9kaXNw
bGF5X3dhIChMdWNhcykNCj4gPiANCj4gPiBCc3BlYzogNzQyMTIsIDY2NjI0DQo+ID4gU2lnbmVk
LW9mZi1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5j
b20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfd2EuYyB8IDEyICsrKysrKysrKysrKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmggfMKgIDEgKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuY8KgwqDCoMKgwqDCoMKgIHzCoCAzICstLQ0KPiA+IMKg
MyBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+IA0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfd2EuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3dhLmMNCj4gPiBpbmRleCAzMWNkMmM5Y2Q0ODguLjdjYTIzODcyNWUzMCAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jDQo+
ID4gQEAgLTUyLDYgKzUyLDE2IEBAIHN0YXRpYyBib29sIGludGVsX2Rpc3BsYXlfbmVlZHNfd2Ff
MTYwMjU1NzM1NzUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ID4gwqAJcmV0dXJu
IERJU1BMQVlfVkVSeDEwMChkaXNwbGF5KSA9PSAzMDAwIHx8IERJU1BMQVlfVkVSeDEwMChkaXNw
bGF5KSA9PSAzMDAyOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gKy8qDQo+ID4gKyAqIFdhXzIyMDE0
MjYzNzg2Og0KPiA+ICsgKiBGaXhlczogU2NyZWVuIGZsaWNrZXIgd2l0aCBGQkMgYW5kIFBhY2th
Z2UgQyBzdGF0ZSBlbmFibGVkDQo+ID4gKyAqIFdvcmthcm91bmQ6IEZvcmNlZCBTTEIgaW52YWxp
ZGF0aW9uIGJlZm9yZSBzdGFydCBvZiBuZXcgZnJhbWUuDQo+ID4gKyAqLw0KPiA+ICtzdGF0aWMg
Ym9vbCBpbnRlbF9kaXNwbGF5X25lZWRzX3dhXzIyMDE0MjYzNzg2KHN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5KQ0KPiA+ICt7DQo+ID4gKwlyZXR1cm4gRElTUExBWV9WRVJ4MTAwKGRpc3Bs
YXkpID49IDExMDAgJiYgRElTUExBWV9WRVJ4MTAwKGRpc3BsYXkpIDwgMTQwMTsNCj4gDQo+IElT
X0RJU1BMQVlfVkVSeDEwMChkaXNwbGF5LCAxMTAwLCAxNDAwKQ0KPiANCj4gQWxzbyBJJ20gbm90
IHN1cmUgaWYgd2UgcmVhbGx5IG5lZWQgc2VwYXJhdGUgZnVuY3Rpb25zIGZvciBvbmUtbGluZXJz
DQo+IGxpa2UgdGhpcy4gVGhlIGRvY3VtZW50YXRpb24gY291bGQgYmUgaW4gdGhlIHN3aXRjaCBj
YXNlIHRvbz8gKnNocnVnKi4NCg0KVGhhbmtzLiBJIHdpbGwgdXBkYXRlIHRoYXQuIEkgd2lsbCBn
ZXQgcmlkIG9mIHRoZSBjb21tZW50cy4gSSBkb250IHRoaW5rIGl0IGFkZHMgYW55IGV4dHJhDQpp
bmZvcm1hdGlvbiBvdGhlciB0aGFuIHdoYXQgaXQgY2FuIGJlIGZvdW5kIGZyb20gd2EgZGV0YWls
cy4NCg0KQlINClZpbm9kDQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+ID4gK30NCj4gPiArDQo+
ID4gwqAvKg0KPiA+IMKgICogV2FfMTQwMTE1MDMxMTc6DQo+ID4gwqAgKiBGaXhlczogQmVmb3Jl
IGVuYWJsaW5nIHRoZSBzY2FsZXIgREUgZmF0YWwgZXJyb3IgaXMgbWFza2VkDQo+ID4gQEAgLTY3
LDYgKzc3LDggQEAgYm9vbCBfX2ludGVsX2Rpc3BsYXlfd2Eoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXksIGVudW0gaW50ZWxfZGlzcGxheV93YQ0KPiA+IHdhLA0KPiA+IMKgCQlyZXR1cm4g
aW50ZWxfZGlzcGxheV9uZWVkc193YV8xNjAyNTU3MzU3NShkaXNwbGF5KTsNCj4gPiDCoAljYXNl
IElOVEVMX0RJU1BMQVlfV0FfMTQwMTE1MDMxMTc6DQo+ID4gwqAJCXJldHVybiBESVNQTEFZX1ZF
UihkaXNwbGF5KSA9PSAxMzsNCj4gPiArCWNhc2UgSU5URUxfRElTUExBWV9XQV8yMjAxNDI2Mzc4
NjoNCj4gPiArCQlyZXR1cm4gaW50ZWxfZGlzcGxheV9uZWVkc193YV8yMjAxNDI2Mzc4NihkaXNw
bGF5KTsNCj4gPiDCoAlkZWZhdWx0Og0KPiA+IMKgCQlkcm1fV0FSTihkaXNwbGF5LT5kcm0sIDEs
ICJNaXNzaW5nIFdhIG51bWJlcjogJXNcbiIsIG5hbWUpOw0KPiA+IMKgCQlicmVhazsNCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dh
LmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5o
DQo+ID4gaW5kZXggYWJjMWRmODNmMDY2Li4zNjQ0ZThlMmI3MjQgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiA+IEBA
IC0yNSw2ICsyNSw3IEBAIGVudW0gaW50ZWxfZGlzcGxheV93YSB7DQo+ID4gwqAJSU5URUxfRElT
UExBWV9XQV8xNjAyMzU4ODM0MCwNCj4gPiDCoAlJTlRFTF9ESVNQTEFZX1dBXzE2MDI1NTczNTc1
LA0KPiA+IMKgCUlOVEVMX0RJU1BMQVlfV0FfMTQwMTE1MDMxMTcsDQo+ID4gKwlJTlRFTF9ESVNQ
TEFZX1dBXzIyMDE0MjYzNzg2LA0KPiA+IMKgfTsNCj4gPiDCoA0KPiA+IMKgYm9vbCBfX2ludGVs
X2Rpc3BsYXlfd2Eoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gaW50ZWxfZGlz
cGxheV93YSB3YSwgY29uc3QgY2hhcg0KPiA+ICpuYW1lKTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiBpbmRleCAwZDM4MGM4MjU3OTEuLjk2MDdmZGNi
MGNjMCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMu
Yw0KPiA+IEBAIC05MzMsOCArOTMzLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX3Byb2dyYW1f
d29ya2Fyb3VuZHMoc3RydWN0IGludGVsX2ZiYyAqZmJjKQ0KPiA+IMKgCQlpbnRlbF9kZV9ybXco
ZGlzcGxheSwgSUxLX0RQRkNfQ0hJQ0tFTihmYmMtPmlkKSwNCj4gPiDCoAkJCcKgwqDCoMKgIDAs
IERQRkNfQ0hJQ0tFTl9DT01QX0RVTU1ZX1BJWEVMKTsNCj4gPiDCoA0KPiA+IC0JLyogV2FfMjIw
MTQyNjM3ODY6aWNsLGpzbCx0Z2wsZGcxLHJrbCxhZGxzLGFkbHAsbXRsICovDQo+ID4gLQlpZiAo
RElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTEgJiYgIWRpc3BsYXktPnBsYXRmb3JtLmRnMikNCj4g
PiArCWlmIChpbnRlbF9kaXNwbGF5X3dhKGRpc3BsYXksIDIyMDE0MjYzNzg2KSkNCj4gPiDCoAkJ
aW50ZWxfZGVfcm13KGRpc3BsYXksIElMS19EUEZDX0NISUNLRU4oZmJjLT5pZCksDQo+ID4gwqAJ
CQnCoMKgwqDCoCAwLCBEUEZDX0NISUNLRU5fRk9SQ0VfU0xCX0lOVkFMSURBVElPTik7DQo+IA0K
DQo=
