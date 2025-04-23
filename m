Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC52BA98408
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 10:47:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1962910E0A3;
	Wed, 23 Apr 2025 08:47:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F0q8Z+2m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B72D10E0A3;
 Wed, 23 Apr 2025 08:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745398047; x=1776934047;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K4TSFdIuKv22E0gH/p01YfyPXDla6CzFdUAR9ghN0gA=;
 b=F0q8Z+2m3frtjdN21OJ7NkqCd+ozBdWsB+VwZPG3eHLnT+qxHP9Ei2yg
 9L/E0SbHDo9fXpX4NqJy62WhPqVbzE8dmj31M38cj3a0XAFWJevB8xVxU
 sYtoRt7lh0cUwUtE5sXXvtzmnzCJ2nsUt1U/VYdUUA/ipvK/oaNT5PzT2
 j0VBFCRpXwtvfO6AsQQH5LrCR3+FpKhv7LjxUAyXtcL/dhTXdNr0p9+R2
 7QT3IQCtTrvg9iD7BWtZ5IvGaVNziD2qpxYvRGwH046ccLHl8w/vH+T0Z
 jiL3Ggf9/mH90g6kOLR4uP0jmjnWV+moHZl718In3XIRFt7wFkeZH12bs w==;
X-CSE-ConnectionGUID: a7bvOsDwS2alg1qE4Lo3yg==
X-CSE-MsgGUID: BKVilLfVTjGI5iDgPaYYxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="58344475"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="58344475"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 01:47:26 -0700
X-CSE-ConnectionGUID: yx53EW3QTNqLEgIkg4WJ0g==
X-CSE-MsgGUID: A6OYl4fURPiLLfIYM6m7GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137244101"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 01:47:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 01:47:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 01:47:25 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 01:47:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kPvrFTSAEbvhnqwLxZyAXFTHflLlzCTnX01EU/SfosvXVhX4C2Ejtj7w71g9s+5Z5GaiBd2SUHVrBeoHN+107iVUqpOiltbRkuSYtz/UkOW0XF1TepuTClakkIHGTCSfA3drzEeHupaPllsKdnlWpJ8e+olaB+eNuXhzul5hC8SdnqNtTPZgo1Yjy5mVwaCGFe6rYdJVdXjVmjmKpoaAZ+q9O/MSO21B5PZHSxvIlXkQoYlS924qjQgCQ+FQN+dFQ7+bkGInGJSbp1qeObdP5J9DeuFRQjDxagPUrJTaNCUPw5M9joF3W5sqdEy/OoYbZZDec62vfXTsN2bapT/DgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w8Y82TlmcstEKBYNUNsK3Yv6aSgHcuvJcdBc2jQD2cc=;
 b=A6uxM14orHhOdnPAKrALzoOku3JIWpbGgyxHmckZq4VlRuR+hueIRlCGiVExN2Zxd/TCrEysagsXVQ/fH4LBS2eYch8PGh8UtdmRZQpTkvKGOdt9KuiiG2cmEmKhFQDW5fn5InPZcKfzBj3Il2lyJEicrxgHTaF0zCDYYT1Z9O1mKhyPtGJtcu8PzobmRIH8C6zvUTmZJiU5nsBsIHebS/rvcLn55KZHnmoiCLwrkdBncQqq+gw6QltuDBEo2v71J4FYhb6n9I9Vsixx2SrjJodWaEXDqyQc0LIev/T+JG9F8viKXqDEth78ljaEtnIexR3oAvzPBlZ1A4rIGm8gow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7852.namprd11.prod.outlook.com (2603:10b6:8:fc::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.36; Wed, 23 Apr
 2025 08:47:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 08:47:23 +0000
Message-ID: <adaaeef5-da4c-4325-864b-8cf1e6b70589@intel.com>
Date: Wed, 23 Apr 2025 14:17:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/13] drm/i915/vrr: Add state dump for dc balance
 params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0020.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::36) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7852:EE_
X-MS-Office365-Filtering-Correlation-Id: c05972d6-b8e2-4a20-662c-08dd824376f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VExURXVudThrN2dRR3RVbVRWU05RRlBDUVZIWEpXcEtCSlIxaXVOZUZDUU5K?=
 =?utf-8?B?c3RmaFVvZkRXVFAyc09Rd3g2VGdCZTJuRWx1Vy9YbG9qTWVSenZ3Y0o4d2dY?=
 =?utf-8?B?QjBvUFdZaDZMZVBLMzY5dWExYmZ6a0FycEFCR3p2TWVseUwyWm50UnlRU2Fq?=
 =?utf-8?B?b3dBL2VNcnBJNTViTTRiNjFLNno1WEZOaU5xLzZYU0FWZ3piU3QzZ2NlM0hT?=
 =?utf-8?B?b3ZScS9PazIvallGcTNCdnoxZEhPWDJTVDVnRHZEaDN4bjdzOFBKaENDTWdN?=
 =?utf-8?B?cGZkNVZ3Wm1JLzA3UC9YWDQvb1VCb3NFRXFKZnRhOFM4UXJZMFFTMHJac1RY?=
 =?utf-8?B?akFBbG5SNlRCWkl0aGJqbEcxS2t1RWZaVGtab3NhVEVZUUZpRUgxVDQwRUhr?=
 =?utf-8?B?eVhxSzlqUnVKckkvQVFxbTE1bDFYZWlxbytPY2NFSWxUQXVLcVloa0NTakQ0?=
 =?utf-8?B?TSs5Z2pyNkV1dEVlbm5VQXFHQzVFc0F3eHpGOVJQT2FhR1YwLy9ra3V4VDhS?=
 =?utf-8?B?OFpxTU5pVlpXTURxZUxxczlta1YyRVcwQmhvZ1lMeHhrbzdHT013SkJYOEVn?=
 =?utf-8?B?aC9FUktyVWF6RnNGZHJwdG5weHQ3TmE4RDlLNEFFc1hJMjE3SFU0bVZoazRR?=
 =?utf-8?B?MXZQNklzdk5NdVl5ekpxS1hsdlN2NjY4U0RENG1HUEl0c2hTTi9NUVR1SnNq?=
 =?utf-8?B?TlBBRk1scHJKakx5M1c2b25kSmJ6cU52K0RqMlA2eUpqRENpZENlTTRZQ3Bm?=
 =?utf-8?B?WnVGZG4vSEJlRWZ1STZFL2xkTFBwbVcxQzFON29vY3ErQytOSUV0Q2JIMDU5?=
 =?utf-8?B?aXM5dVZwekpRTDJ5M3I4bktKSVNsa3l6T1VxeWtsVUdHRzNqbE5HZ0ZaTFhG?=
 =?utf-8?B?WUdRRjhENlpFenBxNkMySUIrbEptS3hiSm0yNlJGeHdHeU9IZTcveDZSSFVo?=
 =?utf-8?B?VGJQTi9CclBKdlpEWHVXeUJZV05nUlRuRmh4MGpqdUlOYlJ2ZkgxUXk3RGc1?=
 =?utf-8?B?UnoxdUxPOHVkWC94M01uTFZCNXVzb21ZNHhSeCtOMkJhMVV6ZnNkRC81elJI?=
 =?utf-8?B?Zko5YWw3QnZuNnYrQXM0UHB1T3hZQ3M3aTM0Qnp1eWZGY1psazJBckV3SUll?=
 =?utf-8?B?UzRaWnl3NUdQbjE1THVCVTB5OVNRaDIzUzhaa1VYbTNYSXl2OGs3WU5hMDMx?=
 =?utf-8?B?dUZQLzlwSlJmQmN3bEptU0x1MUFCdG42Rmhmczl1dnVoSDlkNG5jdm5KU2dw?=
 =?utf-8?B?TGtlcmFEVHpmelFvaHNzNFNlbkxCbHBRbWRDQmdyTjY1YW8ybFBXUTJuSmNG?=
 =?utf-8?B?WGZ5dHZteDN0ckc1NGdWTENWb2taTlduanhhbDFNaGtXK1I3OWlwRFcrOERV?=
 =?utf-8?B?OGREWXV1djZ6STRlQWc1VFg1anJiWHErYXk0UStKREhwSXpnY1QxZnIrQXJa?=
 =?utf-8?B?WG0wTTF1OXJiSFd4ZysyNkFJbkY2c1Z3a201WmhlNUN2WXlGcXpIZDEwbEFO?=
 =?utf-8?B?d1F5dWp2L3MwUVJnTzUrMVlDM0Q1RHl4T3QvdHUrSERhLzIzS25GbW9LUWhF?=
 =?utf-8?B?NHZCMkU4TkxKNFVyaStsQUt6czhORzJlVzQ0WkxFS3BaVm5pR0JMTCt2RVNC?=
 =?utf-8?B?RzVYSmRiSVFrb2RxVnA5TFpDaGh5anNySFUyNVJuZUQ3Y1hNUFpaajZhUEpx?=
 =?utf-8?B?VWxOcEFYZzU0R1lLZnk2ZzRWSTUvaEFaVzZiQ0lxNmlwalp5R0xWNDhrN3Vh?=
 =?utf-8?B?eUJJd2x0aWVrclk0ZEFkT20xSjl3cVh0bmhjaThWVHdrdnNxNWJ4eEs1SVQr?=
 =?utf-8?B?KzNoek1yVlE0TkpFT2xTK1RtcktWSVpON1NJdkgzNjArdERkTU9YOEJGRmxi?=
 =?utf-8?B?cE4rTWVha0x0dGIzUjloVjJPWDZHRDdQKzdTSDJ5U2pSVXdnYlRMK3VxeDVp?=
 =?utf-8?Q?17tODjLWjyo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHlhNDB4YkkxY3ptbkl2d0FQVFBHTzExQUVmcXJzZU9iRXp0VmJ4ZEFWVEJh?=
 =?utf-8?B?R3RxM2p0VXl2OFlsNjQyY1dmYmcwTUE3QWJDM21aRmlSK3hFR1I3azcrQzZv?=
 =?utf-8?B?YnY2WUdNYldQa242bHozRVdqd3I2NmkzQUY2ZnhaSlA1SGtjaFpkdjE5QVpJ?=
 =?utf-8?B?blNQaEZJa1FCWXQ1MFFlMHZ2UVZXSEUrRnVUNjI4bkNpVUVqRTdrR3ZkZXdJ?=
 =?utf-8?B?aTRzek9ZOWFzeTJnaGhZcDBFMmZVeE5PQTRCM2k5Zi9sb0hDTVh2aS9mQUVF?=
 =?utf-8?B?ZzNPRnFNK09vUnBVZ2ZSSWR3UHRtNEIyWG5EUC9kelhxSGxlN2tvbmYvQWtR?=
 =?utf-8?B?Zkw1ei8rNjNYN1BlbjVWRTRMT2lWQUU3bXp5bWlySmlZbWI0bStJYVlCb0I4?=
 =?utf-8?B?TVlKQnRNWTREUnFsMkgrOGRaRnRHS3IyckdCczVFVllKY1hqVVR4SVh5OVV5?=
 =?utf-8?B?Y3BETm4zaU0rTUEzeVllVjkvYkxjVkF6U05meGVmbHpXOWR4RU1wUGZna2hh?=
 =?utf-8?B?Q1VraGw4Q24wTXFheVdDMTVqcnhrSmJ1V2lMRXA5S1RVaHhjSDB6STduN0NW?=
 =?utf-8?B?SWhZbVIvWlZ2dHpENFVnY0xuNFlWa3RGQUFBai8vd2w5aTlPYTExOXF1eWVK?=
 =?utf-8?B?RGlySCszUnB6MSswWXRCY1Zwc2hNSHZkdklDcGJnY0lrdVp1blYzdGRwMFQ1?=
 =?utf-8?B?YmZ3a0Z6WG1oMG5BTTlFUTJoVjRqUGRmay9LZTBTeGJjc01ZUkdPZHRoTnRG?=
 =?utf-8?B?ME9pbHUxdFJlZnE1ZVNOVkhXQkJPZlBtWnVOWHVlYXVjWVpScG9DdmVJU0Zl?=
 =?utf-8?B?TS95aTFpQXIzejlieWxwTmJ2aWIzVk9JWW8zUTBxaE8veDVxR2RPaWxXM3NX?=
 =?utf-8?B?YVZSVE1zVnB3bXlkbTk4UGgzcVh4RGxkazNIaml5MWt1bUJ5SHVuZHB0RzRo?=
 =?utf-8?B?UmxFdXZSZ1lBdUQyQysxbEZNamVMbGUxVHFGQ2tDN2s5UXd0YnBQOTQvbmZp?=
 =?utf-8?B?ZjV1SXZNMFljeXFiWmlmSjltWm5yOG5wTktPenU2clRGcTV5Sk13bW9LL0ls?=
 =?utf-8?B?bjZGNWFNZDB3TDd5NDZseEcxeGZ6Z1NvcnpSZFlodTUxNmxZUDkrUjB0bUxP?=
 =?utf-8?B?V2hCYkpuR2dhR2t5LytUREpkQUo5eG9aY2ZqR09IcXZmN0MyeklKQ0xLdnZ6?=
 =?utf-8?B?MWJ3SEtvNmkzcHJsRjdUclhVZVJ1aU81VlAzc3FCZGlHVXlWTnAwclBnZTVn?=
 =?utf-8?B?S0Q2YitUTU9SWnE0UVpwYkgxSW1BYlNvTXV6QXVmR0JjdDZKS3c3d09QbnVn?=
 =?utf-8?B?YWY2cG5Da2VqaFJvbFNKdFoxcnZ2TWVLUUFPRFQ5WHRNOHhqZWVoVlAza0FK?=
 =?utf-8?B?bWtyTEs1eUt6Q3ZwYjlGOE5rMHVCbWpYQzZIUkZsRy9PeWFueDBSa1FSaGJE?=
 =?utf-8?B?cEo2ZC9yZ2tIaHpyUWdvNDZpRENvSDVqd3ZhZUtCcVBacVM4ZXhVVGVHeUd2?=
 =?utf-8?B?WDVqaU9lbGNCTWJ2Mk03OU03T0UrY3VPYnQ3ZmxtOHlHL2VnazYxeTVoVmVL?=
 =?utf-8?B?OThDc2JJcy9GODBBYUc2KzFhdXlYbDZXYmp1N1M5cGE0bGJZaU1kYnhPb3ox?=
 =?utf-8?B?MVN4bmpSUEZYYTM1WDVXMjc5WmhrS1RkL0tVR05ldSs3dXNYYWRyN0c3b1Vr?=
 =?utf-8?B?RDlCWnYrRmRsN0kwcjR3dXBOVUhxeWhUY1lrSXMzUnRadDhrM0tSMVhwdjY4?=
 =?utf-8?B?R0MrVkpTL3BYYVhlcWZWNk5ycUkyNitQQjgzVnRhTmxXcVdUTUJlM1pHNDVm?=
 =?utf-8?B?NnErYS80V3k4N3ByZFdQU29RVDZ5WWJJMmd3dklodWlFc3E4ZzRWRXIyWlBK?=
 =?utf-8?B?bjBMTnJhaExPZW5wOTE3Vm90MlRLbTlYNTlLampzOHA3bGdtRW1NVXZvYnJS?=
 =?utf-8?B?VUtzSGFLRi8rN2tUSDYwR0sxYkxTK0l2ckJJU1UxVlRQRHUrTnM4S09EaUVm?=
 =?utf-8?B?VVh2U21jbmc3ODg3a3BMcG1CM24rYWN3WlA5Ukl2Q3RvbCtZelRPK2xnTUE1?=
 =?utf-8?B?TDJ1UFNTTVVham5mTWNXSGZaZzRjNmxoSDhzc1R4aTg0eUpKRWg1SWtuL2da?=
 =?utf-8?B?bDY2SkR3SXJSbVpMYjNCWUxlNkY1YlUvditEYUNIL3ZIUzJOcFZ2TXgySlM3?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c05972d6-b8e2-4a20-662c-08dd824376f6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 08:47:23.1252 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hjN7eF7cFb6CPoAr8Tqvq/wbYwG48BqDI+o1X9Niu5oZrZsifeUgfrFS9V/eQ1zhJ6g8poVvLfBaH4UhFI1dbtnCQ+/oOIwcQ8NOs/pak9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7852
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


On 4/21/2025 9:18 PM, Mitul Golani wrote:
> Add state dump for dc balance params to track dc balance
> crtc state config.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 0c7f91046996..9baafc63d9ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -304,7 +304,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   	drm_printf(&p, "vrr: vmin vblank: %d, vmax vblank: %d, vmin vtotal: %d, vmax vtotal: %d\n",
>   		   intel_vrr_vmin_vblank_start(pipe_config), intel_vrr_vmax_vblank_start(pipe_config),
>   		   intel_vrr_vmin_vtotal(pipe_config), intel_vrr_vmax_vtotal(pipe_config));
> -
> +	drm_printf(&p, "vrr: dc balance: %s, vmin: %d vmax: %d guardband: %d, slope: %d max increase: %d max decrease: %d Vblank target: %d\n",
> +		   str_yes_no(pipe_config->vrr.dc_balance.enable),
> +		   pipe_config->vrr.dc_balance.vmin, pipe_config->vrr.dc_balance.vmax,
> +		   pipe_config->vrr.dc_balance.guardband,
> +		   pipe_config->vrr.dc_balance.slope,
> +		   pipe_config->vrr.dc_balance.max_increase,
> +		   pipe_config->vrr.dc_balance.max_decrease,
> +		   pipe_config->vrr.dc_balance.vblank_target);
>   	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
>   		   DRM_MODE_ARG(&pipe_config->hw.mode));
>   	drm_printf(&p, "adjusted mode: " DRM_MODE_FMT "\n",
