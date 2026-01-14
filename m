Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C54D20157
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:09:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F5610E59A;
	Wed, 14 Jan 2026 16:09:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XPN+a8oi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D8710E585
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jan 2026 16:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768406985; x=1799942985;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=58p7IlHmsAiJZ4nQAV3JnXd90WWqWF7IZ8dbcTYrwSs=;
 b=XPN+a8oih5hWTpNjyG8Nz+NphxjTNoYR7kLVvaRh8TQLBHA5bY09FQLv
 dJz2VG1VSNDSaH8R51L4DQS9UeeEm2PejJDUhNaandth6HJYPDLCnk7PW
 wQp2IUYQ9xQ01twudWIt6jxRqos5jxmgEabxCd+pJGzH02nQE8+n2y9wP
 cN1MI5AE9y2C9R1DeT0U3v1aK3aa6GQMmkC3BJrb/7sBXP1zxLdGB8enp
 onBnsKQFC6TGfJm09Vlk586ZDDcCV2ovXHQo78s0vvrF/ki6aKpdOc7IH
 kosY9hQj6phUQzS+d3UkbZx2CbiBdzWE7CuaPiytav0UvFTLfvZ8ZSCtE g==;
X-CSE-ConnectionGUID: jUKaeiiFTeeAwpAz6sWdXQ==
X-CSE-MsgGUID: Sc2fSdNNRbeXd6PXof2uXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="92378876"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="92378876"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:09:44 -0800
X-CSE-ConnectionGUID: KxO3ieSeSU6b9Mci+i7LPQ==
X-CSE-MsgGUID: kXW3J4VuSliYyChYAe6u1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="209189565"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:09:44 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:09:43 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:09:43 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.60) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:09:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zOJhPkvEQwKzhBMppHsRHZ3UjQv1HttMaWVEWUh4MWhzbl2askKCsO4vYAdS5TwpCMih+LKwN3eNrrKiHyRnWCfQx662BgeDnKx6fiKylH3XBguPjnjJyvE+/P6qOYMi7mv0/0dnsWq7PEF+fvezXKdETqbrA84xK32RgHBHsaBgU6Ngok9MQar7qBbp25/YMuEdU3aUMDX/K8kTKYCL3WpjqAwNuMjlQ+zGwnhnaqgPU+GB5jXFDHe+oK6sARnK4IEERHwla3w1bXijj9HI9l0ZUzh+qrDQCGfcLYPUyVMv7ewODMnVSH+YxqVdQ6SiQQGtNsTEykpKHW+WcMA1zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RJ6yHK3P8sswyNbaQjLUTiPgEOaPNbh7mMNDLDc9LH8=;
 b=cAXdV3el/UcSllMpyR0JUMVwwLVUVhVkDh96X2P7bIGG6EUPBVTdyk3bLhuqtmtU9QoUq5V3iRAW+nlmYzlZtNCAWjKN3iLpJr5SRZGzhv5Ib3B0t67laT98pi03/cEhByWPsblqFoiBicHqzTrdcd8fnC9albMD2hoXHzlT0jsQbkqy/pDuA4ioR4TfpmAqDihdRvQW5XdSyIA7jOaQW3qfaSZgJhLQaChmIa5Oe+5osvjPRDRqzauyto/y3DmNhJ5Equg1zeT+nNSTRkhQkr75tlTuddAlli146Ha6/woEaFC2pT+INP17Q6rGI2OgpzeUVibk9cMVtcIeWuEikQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW6PR11MB8337.namprd11.prod.outlook.com (2603:10b6:303:248::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Wed, 14 Jan
 2026 16:09:40 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9499.005; Wed, 14 Jan 2026
 16:09:40 +0000
Date: Wed, 14 Jan 2026 16:09:30 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH] drm/i915/selftests: Prevent userspace mapping invalidation
Message-ID: <ytvsfx65mus7fdwmureaznj3i22kcnqkodncobwaqtgdg6f77l@43jqatwpn3cf>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: WA2P291CA0041.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::27) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW6PR11MB8337:EE_
X-MS-Office365-Filtering-Correlation-Id: fefe3c80-64e6-4cb3-b21e-08de538752aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UkRDdmsrZWhNcjEzMER4TGZNODNFTFkrazFWQ1VJVzZJTWhGYUNCNm9oVWVJ?=
 =?utf-8?B?R3FTUm5icldZLzlxV29MN2NsWndJVE5SN29rZ2pKS3F3aUM4MzdXaS82akhB?=
 =?utf-8?B?RUJCandrZHJmUHp6OUJ1VWhCR2hhUDhHL0pCb1JXbGdPUnBXN2hiMTBnbWpv?=
 =?utf-8?B?YkEwOTBrcm1zeS9HaFZSY1gzZXdMOTJwZ29OSk1MdXdpVEk4dUlFNFc1cVhL?=
 =?utf-8?B?Y0hjTUpLTzhMVW1GbVF6TVF0NmJhZVlVcDlLcmlqSzJ5TEFoY1hiemEvNmZG?=
 =?utf-8?B?dG1XdDRzQVNGdmYvWjZnblpiOXN0V0ZCYko1QU5wd0dTQWRoYnVpbEhLUHM2?=
 =?utf-8?B?UHFsdUN6bVE0V0NpSE52L3NoYTJxYXBmczlGdlB4QWc4Tld2L2NnRmI0ZjMy?=
 =?utf-8?B?N24zQzltQ2d3YzJLUzQ0aEEwUE9Ed09IQVp4dEozRkJ1MEVVS2NCTnR0UzlF?=
 =?utf-8?B?SmtMMzN1NklkN2JzRVB1elI0UUcvRk9lTzdLSzhzNFZCeWNacHVhUm96bmFJ?=
 =?utf-8?B?ci9KNDJaTTRveVl0aWJMbFMzWG4xb1M4Q2ZJWGhmOW93bWJZd1gyY2Q2QUFq?=
 =?utf-8?B?ZDEzUlpiVVpRQjZJMzlzeWJjT1FKUVR3SXR3bW5hWTVOVGwyR0ZoUGRuTzlq?=
 =?utf-8?B?VUMyRi9QekZPSVc4MGVwMkJmSUgrSXhwQ25lYWtBc0NFdS9sSitRekY3TlAw?=
 =?utf-8?B?OWUrUURmbjFVZ1ZpVmwybTBCNVVqQmhvd1R5cysxVHNIaEZoMmlwQmlSNTky?=
 =?utf-8?B?Mkd2VXl4T1N2Zk93VnYzWXA5QVdoU1VjZ3c5bFdrSENZSFFnVHpwTGhRRkVT?=
 =?utf-8?B?OTlmRmFwc25ETzBZUnZkd0JNY21oYllobGNKN3JWNTlyYWU3VExlQmYyN25T?=
 =?utf-8?B?eU1xSkFTckpJUWc4cTQzdHhUbXNJMnVxRURaV01WMk1uQjh2cFpZSllZR2ZQ?=
 =?utf-8?B?YjZnY2VRcjcxTTFlQURjU212eERhSTNFaVQvek9HZ1dRMityZFdVMUhZMURp?=
 =?utf-8?B?UlFxTjdjUDVNaDVQZ0R3RzBNdHdzaVY0SWxqKzN1RkVWeWVsaEkyaS9QWU5x?=
 =?utf-8?B?dm1oODJNWnFOYjU3S1dacCt6Y2M1WmZKQ0RZdURzZzhBNk1mWnI3R2E1a3Q5?=
 =?utf-8?B?Y1JiVUNLSzJYTnpQMWUvZ01peXlsNjJuejNmYU8rVm13Ri9EcjZRc0lob2E0?=
 =?utf-8?B?dUZZdDMvc2FMdDhkWU1EZHlwYUR0VkVKeDcxdWprMGo4SWx2S242RzUyMnFk?=
 =?utf-8?B?d1I1aWlBaHI0blVrV0dCd3d2Wjl5VHJaMzc0Z21LWDJrb1R6VCtSaFdRWjY4?=
 =?utf-8?B?UWU4L0pTS3p5dzZQUDNQQ2tDYkJnVjg0bVBrTHcyNmdrM1g4bWlDNHNocWdp?=
 =?utf-8?B?dWdJQ0xWRWhyU2RVUW93UFhyVXNiV3ZVV0dsQ0xYZ01XTkRVenpYZ0M5M1Zj?=
 =?utf-8?B?aW92RGJFMjU5Mk8xcXJmWXNaYUVyUUxxWHFDSmNlcFFlZk05U2JJOFBWVzJw?=
 =?utf-8?B?L3BoUUlENGlGenorQllZaUU2OGhlQ2pMVFNQZmMya1VaU3RQemUxOXFIbkh2?=
 =?utf-8?B?b3pvZExaOFllV2pyV1l4ZTFFQXhwY2kwZlluTWFaemFMTGl5dnFKbkI5a2Jx?=
 =?utf-8?B?UVlydHVsZFNkM1p6RjMzaTZ4a1hnd3lEQ21rc2k5WXJVVUx4c1JGVTYyaFFq?=
 =?utf-8?B?aVJBNloyZytpck9CL3pOZTJyTklKYy9ValU1bndLZVJnY21yTGk4ZEJHeGt2?=
 =?utf-8?B?SlI1YkhkMVk1RWFLRG5GY3pBRFVueVFLZnJDNWxPb2FybE5aN2RTbzI4eUdY?=
 =?utf-8?B?elBpMlliUHM4bEhEcVZRN2x4SmRNd1BtWHZ1TTUzZDRVS24wdHgySUtxZGhG?=
 =?utf-8?B?TlpaMFY1MUo1bUs5ZWhGL2lhQmxvbTdSd3lzUHZ3QUxHUzl3WnM5dXMvTldk?=
 =?utf-8?B?RFZlSnd0WTZ3N2dEUkxZUTBrbXpLWE14NGJjNEVyZFRUU21ndzdVSzdZNWsv?=
 =?utf-8?B?RmpqWlAvbUFBZDJQSnZvTWdqT3QvYWx2dUZCbFBQZ2p6Z00xdHdpNzl6dlJj?=
 =?utf-8?Q?4/dkSQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGtURUpKTHZReHpqQm1lL241M0ZQUkF2NXpETmxaZVg0UHNLNnluai9xek5L?=
 =?utf-8?B?QWZLQ0tJdlc0ZTlURjNkUjdFb085YnVHaDgyMkk2ZG9jWHdWMmxBMHl0dnZn?=
 =?utf-8?B?L2tOeEtiT212Um1DZGdaQS9VVjMwQVVjTHVLZ1NQRTF2UzhFTkhNU2twUXht?=
 =?utf-8?B?bHVQb0QyZmtKeUp4QUl2ZlpvL2svWUVlSHZ5QnliWk9HcUl5VXFXdDdJZ09a?=
 =?utf-8?B?S3ZwVkVMVHVoNVRiVWhlWkZaZGZOUXc2RStHNW0rdlJKdFlzMSttejJ2T0Yr?=
 =?utf-8?B?MzFCQmw2ZHFpSC96bm00NnBKc00xMk15cG1zR0FmVFozekpOTk15ekF2NEJl?=
 =?utf-8?B?ZVFXKzV0M0x6NGl5QnRVTHFxYjIxcy9ZMVFvSUxFM1VUU29rNE8xSE5CUmtJ?=
 =?utf-8?B?dkFHNDBKcWo5WWREMU16bnVFVGlJZHVlRHlIVks3cnpDQlNKQnJJaDBoc2J6?=
 =?utf-8?B?OXRqT2pQUE1GMGVCWGpTRnkvd01ObmVldStPTW5VbDhvbHRVUlRCOXVoRGpZ?=
 =?utf-8?B?TndpeUwyUnl3U0xJVWIrSWQ4VE9wbUJBNHpJUzBsTFJ3bHFEUG5kTEsyaDEy?=
 =?utf-8?B?b3VxcUN3Q2xINmZUeldxTyt6aEZNMlNHelp4U2QzQ0ZpS2IzUmVZMTFVQVd1?=
 =?utf-8?B?Yk5LVm15cmFyYlZjN3NZSlpyZlAzRWFVMkZNWW1EZU0yeG5BYWlBVjRpeWRl?=
 =?utf-8?B?aWRkQXJhZ3pSdnh1UmROYjNxS1hvOHYySUxHSkNCUXpMZFZ3ZVA1dGIwNmha?=
 =?utf-8?B?OUtieVpYZ0o2M1BQT3dLY1dWTkxRVlBJWHYxbzdrQ2c3Mi9YM3lqb2NyNVFq?=
 =?utf-8?B?WGhWaUwrVDdoQ09WQ0dlYmdiaDZGUXc1eVR6OFk5QVZvNXhwY2sxR0lUaUxM?=
 =?utf-8?B?UThKb3B3WWZyWXNhVW52MktNMmVZaFFla1h1VlNBaVlVRDNyNnExQTNKU2JO?=
 =?utf-8?B?YkdHanRXeEl4dVVTSThWeUxwS3dqd29qSnF4Yzd1KzNPSjFaTHBQZUlHWlJN?=
 =?utf-8?B?VTZqMHRqTzljWVRLRU9EcllGOFlQYklBZzZoNjUva1MzWGlEMGl0ZTh6UjJv?=
 =?utf-8?B?N1lKaXZYVDNmWGlIc0xUNjd6VWhDQ0xCV2hxRk5qcFI0TThmUTdHRnhURGEv?=
 =?utf-8?B?aEZGbjNNbnRabWI0WlZZR2tlN1dqZ0hzdVNzRndZSHhFK1lNdndIRzA1NFZt?=
 =?utf-8?B?VnB6bGhVa0hFMmplM0lJSzlFK3p4TTV1UUxwWktGZnl5YTF6Ym91NWlUb2FM?=
 =?utf-8?B?dDEwK3RIZWRVdkVSQjZsMFVURU5iNnZWRUwxTzNDZzlLUURPT0tCZGRMRWp3?=
 =?utf-8?B?d3FUS21LbTc4WkJMTnZYTGd0R0RhZGFLdmFVaXJLMGc1eDI2S3FiWDlMcXVK?=
 =?utf-8?B?cDlpdDVNNHZqTndLalVHMkUzUGlCTjVDek9UNU5EQTdiRE9seTU3TWVXVGcx?=
 =?utf-8?B?czVRVldEanRWdHUwbVcrNUVNQWpTZlZKNVp3dUd4ZDZ0SXBtUndjNHJtNjVh?=
 =?utf-8?B?dTdWNWYyRWIxQzFBVEdNNWtid0VSWUp0dk1GYW1zb1VTQXBlandFc1NpcUtj?=
 =?utf-8?B?UEFORHVFSzVERERZb3poUFBxWWJsd1FaeEdHWGgrUCs4V0N4azhKVTlHZDRW?=
 =?utf-8?B?YTNQT2U5dExKa1JDV0szSStuMjNHNkszK2dOQTlqOWRGTlZBZlRRQ0MxczN6?=
 =?utf-8?B?T3JRMDQ3RGx5eW5uOG9DRVFveWFhMjhSdDJ2RkhGTzUyV3dKVzVOZXlTZUcr?=
 =?utf-8?B?ZDhqenFNbVB6SlNpeFJsMktuRjMrMFhRckN2blhoNG5pZGJkb1orb213YU5w?=
 =?utf-8?B?YmE5N2ZFVGh0T0gvSDlDTlF6ejBkcXRrb281eDkxRWFubEd5cnRaZmpmR0xl?=
 =?utf-8?B?MUFVYk1NQlBGbmlET0RuMmIwdnlwQk5SNCs3R25uWXJ5ZVpVSkRXOWlYc2hO?=
 =?utf-8?B?Yy91ZGJ2OFNLWnZ6VnhUL3NyTWl0cnFYbUNxcmZiekhacmVuQ3ZpY0o0OC80?=
 =?utf-8?B?K050bGdqSnVEQ29Sc1JTNkxzNWlxRXBNR01vd1JMcHBWMFppbkVnNHVEN0pt?=
 =?utf-8?B?WmRQTmYyc3hxU0puUmEvUVZqWjFQNWVVd2pTN0tHMlZ0Q0RUNFFVWHU3MkxY?=
 =?utf-8?B?eHpuN2hCd0UzSkxjSUJKUjRaRDdPTE9DVk9LOEpzclRnVDNWOHZONVkyK1V4?=
 =?utf-8?B?MmlITDgrWHVTa0RzWm9sUis5UXVpcS9Fa1ZyOUhYOE1mT2dqYXlhYnk5bUJQ?=
 =?utf-8?B?VWZReXMxcFBFcUFzV0tEVDlJMC9MMnAwQ2xvSWsxM01xVnVwK3dBQlNZZ3Z0?=
 =?utf-8?B?eXEwSkEwME5kalU4NDk4L0FQYTBFMXlPbnZra2tKbXQ3bHBJMzBVZEEzQmJx?=
 =?utf-8?Q?CLOncmgXI4JKiOfQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fefe3c80-64e6-4cb3-b21e-08de538752aa
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:09:40.8021 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yzknE665/pl4PeZ4ccxsMK7vZesHyo5r5hspvJH1Efmx0lgznKdFK42Gz8lXjP+0/9qxyz6oJK4H09QZSCxg49exixvv9FfgmuMYZU4jbwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8337
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

Migration testing in i915 uses current task's address space to
allocate new userspace mapping, without registering real user
for that address space in mm_struct.

It was observed that mm->mm_users would occasionally drop to 0
during the test, which reaped userspace mappings, further
leading to failures upon reading from userland memory.

Prevent this by artificially increasing mm_users counter for the
duration of the test.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 032bc2f17685..2f3104c17324 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1193,6 +1193,13 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	if (IS_ERR(mock_file))
 		return PTR_ERR(mock_file);
 
+	/*
+	 * Artificially increase mm_users for current->mm to ensure the kernel
+	 * does not try to clean up the userspace mappings of the current task
+	 * during the test.
+	 */
+	atomic_inc(&current->mm->mm_users);
+
 	addr = igt_mmap_offset_with_file(i915, offset, obj->base.size,
 					 PROT_WRITE, MAP_SHARED, mock_file);
 	if (IS_ERR_VALUE(addr)) {
@@ -1303,6 +1310,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 
 out_addr:
 	vm_munmap(addr, obj->base.size);
+	atomic_dec(&current->mm->mm_users);
 
 out_fput:
 	fput(mock_file);
-- 
2.43.0

-- 
Best Regards,
Krzysztof
