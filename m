Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A92C01331
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 14:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DAE910E3FB;
	Thu, 23 Oct 2025 12:45:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E/UgV3km";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03D5010E3FB;
 Thu, 23 Oct 2025 12:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761223533; x=1792759533;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G5qON4oMpDV0DBYLH88gG4SWgnCSWfEpgi6AC+5iyOM=;
 b=E/UgV3kmLD6LhFeyZDNgCFxXtY45y5cspeOq3qOnZS2yXKqgdVqMwxRu
 xWCJe4lJfzYf5CZHjl6uPoWVNYHkObxfZD/QAqSHqtxyRlSPX0FzfJnH4
 FNI5fD5Z2u475nP46kWfB39/ZO9iHtih/WjW9Qzs7QJVSmXOydOQDP3/r
 gO2QgiOr/JcsDGXyNG572HJRcXD4jQfebuF0SUXAxhILaZtLVw32QdpBI
 S4e/0TqEtSIqWMsLlM0Pu/zKQDQ77gnoT6D4mReuxY/zLbbpJyHdgbihF
 lvmzIGZA4EB5lDFooosTg9ABpDnF6v/n02FXy444/WmdguIPu6Vl/yFKC Q==;
X-CSE-ConnectionGUID: oGoKqhcyS3uuu5a+zNAC3A==
X-CSE-MsgGUID: 7+XIOe4kTUuN9vVppQnH+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80826371"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="80826371"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 05:45:33 -0700
X-CSE-ConnectionGUID: Z3w1qBfjSdugvZNQh721Ow==
X-CSE-MsgGUID: xNxgEuT5SqauNw4mUHTnNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="183752106"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 05:45:33 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 05:45:32 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 05:45:32 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 05:45:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WWPULnkvf8r3/CKRG+v6PWtoZpLbA6BYe5OfcMUjxLfBzhytGiEPpslOk8W9c7XFycGl3Ja8JbvFmRGOlQz+Mxx1ySa7xMkAVqNL2zOIKD5hsq+bIaFEkwoPioa4xzWVSe+pHq6m09BlPZzE3PwfemgtNdS2B1rozExOGtWnlvKEaocuisTjCYvIybxS7N1N00Z0P58EFqYM1kBlB+h3MgCnmAnt2NXrALB5KvjHDfGyPT0HocdeN0mruZGdd0TzcMloq/lqcahF7iYXj7wzc8Wp1i4dZ6yBkDbxj4hGb+i4FX2k4bHHt82PYiLoJpCI5K5e2FAxvUEj0mMH+4Y0Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v8t6pOkjdYq82oQPGx3drMCBqCwuTy2DL88mfHNYfeo=;
 b=SCGQEPf71rtOU1gAC9jonBCk+fJ30ulSPN0LM35hkEI4YId+6iIMD5Z6BHePs/OTDqIIHhGZsytzMMpbDATNM4A7IYyqO4ZuZ94QqsCWIwSmxWdIr9SklJlmWyCOSoidOC0KJFOTMWu/z9PYYtqdNBrEcEwriLgMaTjImAAX2NL86xVH989+FlwLVw8pVrI7FmpugULj1y9+XxqMLqEim294PKbDvb51sdTl6FvsskybZQdOa/eFo46HHLfG20DzwX6w0A0b1FxmpxIPuq9Oo3tYUqAw4Fb//fD0hPXeCNS8vf5hS0+qkgEDVsPiRbSsRhynKmtja0NAxWOSGlxCwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8094.namprd11.prod.outlook.com (2603:10b6:610:156::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 12:45:28 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Thu, 23 Oct 2025
 12:45:28 +0000
Message-ID: <eedb4760-264f-40d3-a10e-2f2d5c85c298@intel.com>
Date: Thu, 23 Oct 2025 18:15:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: Fix transmission line for Adaptive Sync SDP
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>
References: <20251023081614.2645242-1-ankit.k.nautiyal@intel.com>
 <aPoZ05jth8oGvoGk@intel.com> <b7971dfc-2c75-4a33-ba91-5a2d30339b35@intel.com>
Content-Language: en-US
In-Reply-To: <b7971dfc-2c75-4a33-ba91-5a2d30339b35@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0204.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b0::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8094:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b8cb446-358f-4f82-3010-08de12320b64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TmdtTnhmd1VOOVE0YTV1Mktrbk91M05GcVBnYlNGd3FBM2JsbTV0ZmpGR3lW?=
 =?utf-8?B?K3BqclAvSFdxTnF6dGxscGxpUUJ6Q28yRytHcnF2VXJYWDFlOVRSQ3NTaGtS?=
 =?utf-8?B?RlBJTHc5Y2ZWVnpwOVdRalFIRTFVSW13TllOcE5vbmJqN2dobitBcFRsTmJB?=
 =?utf-8?B?UFlidEx3M3didk9SMGJYSlZNYnJzVEQzVjhOQjIwaUJidHpBSVJhaHU1QThU?=
 =?utf-8?B?V1F3T29JdkhoUUpBU0dYYUlkbnplb2dWaTVxMHVOb3l5Sjd0WjdMbUhBMlJi?=
 =?utf-8?B?UnVkcjNyZDExZlV5K0VDdEgxSTk0Z25LenY5bVh6Z0x4bzMzZkVHbjBNRUxP?=
 =?utf-8?B?SE15dzN3Y3NvYlVyWnNKYUlQOVRyTkpobXR2eVFockVhMnNTb2lzbDhnUU9z?=
 =?utf-8?B?UWNCTUNOd3dKamloYWtxR0JSazZhOTJTcXk0c1VRcXZKa2hsSVJkcHpTd0lR?=
 =?utf-8?B?S3gxbDEyS2JNNGNHSzkzYjZVV1BnbjNNcGlWVE82VDRqZU4rSW5BbU92TFRp?=
 =?utf-8?B?MUVoZG1tS2tKSmw2OHZrcW1KMERUeFdwS1hEbnVyUTR6cGxZQXNXdjRWempM?=
 =?utf-8?B?czNwMW9Wb0ZvSU9Gai9CWk1acmpzNkhYbUx5OC90ZDdxTCtlVGpNUnZ0V3ZE?=
 =?utf-8?B?UXVsVWhhQVpuN0dPTjNGUVArd1JGSE05UzlXdWFvcFVmNStyd05nVktqNm1P?=
 =?utf-8?B?NkdBVGh4TjhscXM2UnRiUDVnOHhuUlFpbFhKZmRMUXB4R1g0ZkxHM2ZNaSs1?=
 =?utf-8?B?cVJPOHRYM3FtMkJ4NnkwWmczcjErRjUrc3NnRG9NYmVydkUxVWFnUElVNFNr?=
 =?utf-8?B?dFp0d3V3VWplVDBZNmp6RHN5dUJCdmw1ZFQxOWdUM3ZRaG9yQTF6a3FNejVp?=
 =?utf-8?B?aEt2NG1JU3A4dmhxQ3NzaEJUVTZLYjJmTXNsSHdLbXFuZVAwUEJ5YndIa2FZ?=
 =?utf-8?B?NTVta0NkQy8vU0IyUjdHdm1Ndmt0TzBVdk5NeVZUQlFLVUg1di9MSWhuR2pm?=
 =?utf-8?B?QWVBTHNZT3ZHTkZDdkQ5ZEo5cm56d2pGM2FhYWloOWNLcjBBcG1OeWFaUXJV?=
 =?utf-8?B?djJmMkgrbWR5K3dObEY1bU5ndnhFU1kzVlpHZTRXcFZLRXpyTjhBY21ITnBD?=
 =?utf-8?B?ZW9kMEVncGxlZU5PNGZZdTcrUkc2WnY3aFJOQnE5RXRqVUNsZ3A5ZkFGbEU3?=
 =?utf-8?B?bUdwZ2lkSmdEK25ydis0TmQxUE02cUpCU1ptT2l4NVdaL04vbnd4bUg1aWM0?=
 =?utf-8?B?TGdpTytHSUZNVGhBVTRpaG1UckNLblgzeGI1YlBkUGg4VGorUXJpeGtSYXdj?=
 =?utf-8?B?ak5hSVVpNGdSSWg2SEdlcG9KKzhrUEhDeVpMeHFoaHZtaklZTjMxandNdWx1?=
 =?utf-8?B?OUQrRnMwemgzcm44TERaN2w4dVBqY2FseHUyODhnb2FxTWJCcUEyNGIzNkRQ?=
 =?utf-8?B?dFBpdzNDdWlXVUNkT2dnZkdmRWJLWkY0VCtoT2NOci9tMm9oWFJMb1Z0MkFU?=
 =?utf-8?B?dmh6ZEFnYkJ2dTNBQjRsMGF0YnFmTEprclBxWEJhV1lpc1c4bEVoNlRld3Fl?=
 =?utf-8?B?UVhaQkhTR1lvanE4VVB6VVY5REZXWSttK0RDOUpkejJzL3NTOFI5VVlRVDZm?=
 =?utf-8?B?RzJFWUh2czJqSnNOa05KOHBtUjZMdWdLU25xS3VBNGFqU0NHcFRHc3VaemJX?=
 =?utf-8?B?dEJ5dVh0M0VrNFpUbTZtZ3AyZEk1RHRXK3M1YXpkWVdXMUZYak4xamdRRm5v?=
 =?utf-8?B?a2hLWTZZSGNJUkVscFRTS24wMm51elI2N3Z6RnFLd05vdVNSaGExS0JWZG9X?=
 =?utf-8?B?WjJNSCtUWVJZLzhjY1lPVlRqRU5GeEZjdy9hc3FKNm5xN0JoS2wrRHZuZDl0?=
 =?utf-8?B?QVVqajcwamRubFYxQ0JlcXF5bzdvK3cwWFMrSEV3SzNMREl5clZld3VOYjQ0?=
 =?utf-8?Q?w3FHhDQMp/Fi38FTtFw2+njyd0FtkImq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M01xMUJtNjNnK2R3cDRqUmt2WVhxUC94c0ZtWHlHaG8rV3cwVEt2b1owZFZj?=
 =?utf-8?B?aTZheFhSQmFDcHpuMEh3VTRBMUN0TzV4SzNSeFZPVEQrOEY4OHdDZE1UUFdQ?=
 =?utf-8?B?WUNBT3VYUG16dTV5MkcxYVNyeHhUN1EwdWNGelFhck5SdXdKdy96Y0dJYjRJ?=
 =?utf-8?B?SWswZ3JNNmg5V3k0NE5Vd3k2TndTN0FwU0VoS0hmM25SQ0JyaldhakdsWkd5?=
 =?utf-8?B?aHNnb1hnQXlhamtvQ0FYaXJYMUJKYVVtV0NZL1NYekZDVFJPa3pwTC9PQkV4?=
 =?utf-8?B?dUd2QjhsQ0krOVRJSVFUSlhZeVdiRDVKRzJyTEpTbHRuclR0dzVBQUtDcjNo?=
 =?utf-8?B?NWsvWVFGUjBnVW91cVowWmJFL05QM2cwamJTazllRlQ4S1ZOczh1aHBYVkl5?=
 =?utf-8?B?dkxtV2RTcFo2VG5hMzR4V0JWbzNKQjYxSnV2eE1ISEEzUEViSHpRNEo5cHNI?=
 =?utf-8?B?TUY4SmI5Z0tZVXVxSmFhRWUwL0x2K0tmc25SNWlEQlE0OFJ2S1k4cS9lbWYx?=
 =?utf-8?B?VEZtR1FISWIxbkFZaGdGUU13c0NBVVZCWnd0RzZ0d3dyTFUrcnFUVy9LT1Nj?=
 =?utf-8?B?bWtobkNkaVhib2FHeHo0NEtQZkkzbW43YVZLcTNhMlBNV0ovUEZ6cHFSQUM2?=
 =?utf-8?B?RzBJTnRuL2YwWk1pWmlFRkVadVQxdkduZHNnM016TXJXL0tFSlFRMzZRVEFV?=
 =?utf-8?B?c0diamx5OWU3eFV6YzQ2NGNIS2MvUE1tRjV6QlViZG5EbnVHeVJZcEJMNTEx?=
 =?utf-8?B?Y05iM1NjVGNBSmdFdTYrRGVENm14d1JoTzY1L082Tlp4SXpFWHR6cjBDdFBI?=
 =?utf-8?B?Vkt4S2VTUjlLSHVjZVBTdVNoQ1hFRzRWTDRvb0g2YkZFeTV6RDBlSlpMSmtT?=
 =?utf-8?B?MUJJQnJ1TzRkWTNYVHBVMFNFY1NidVlOSWN5WHVHWndXazE0dnlSdU1GYmVp?=
 =?utf-8?B?SFlxdVVCQUJPUzAyZEx3TW5sVHY1bStkck4yMHpJM21tMURYZHVZWkRNWVI3?=
 =?utf-8?B?ZlFWb1pIbWNLUTExM2xtSkFGVHJEcndnWklOU2VkcTZ0bTk2UEIyemI1YjdH?=
 =?utf-8?B?NGIzRmF0V2JTZ3BwSnI1QkI1SU1vOWZTQXFHanRhZlE1UWZOWDZJdE5BMWhL?=
 =?utf-8?B?cnpoMHp1TlQyYS9IOWc5NjdZeWZJVWgxVHo0S01YT2wzbTREcUtmM25QbUsy?=
 =?utf-8?B?ZzhWRlFuMERNcmdLRDRudHRrdnJ5cmt2MXVsNGMrN1IxRWtDSVBGUjNHOFVj?=
 =?utf-8?B?UlQ4Y0JoZ1NKVytGekhROGdLUFdYcGJYYlZWZ3hmN3ByZnRHRklBWVFSVVZ0?=
 =?utf-8?B?cUdvSGZTYzlwdVNma2Y2Q2duNHE3dU54VjVtVS9YTjBLUHdhTjhWdWUwbVBJ?=
 =?utf-8?B?S0tpR3JVTnJQdzRRaWUxNklubFd0NWhtMzA2YmUwTElVRkVJblZ5QzU5OG9a?=
 =?utf-8?B?dDVkUEZMOGNrRG5uNlBYWWkza0R0OS83MnJybFV4M1dCMnh2RVRXZEpOZEJr?=
 =?utf-8?B?NExLeDk0RVEwQi9KaUdyQzNIREpBQng2bExhV0pSeHpkNndjdUJNUUoyN3NV?=
 =?utf-8?B?N3BPakRTOWpYRE41MjV6OWxPb0FiRlFTQ2oyd2Y5Y01VZ0J3aVJyaUFpRm9F?=
 =?utf-8?B?b0hlRnpVVk9MNjBmZ3lORFVpWmhoaHFvbXJ1WklueWNHUmR3OVVhdk1POVg3?=
 =?utf-8?B?ZFc1KzA4Ni8xSjkvM0treVNmem9pV1MreXVhV2hpSFRyTDB4S1JJUXFWdnZj?=
 =?utf-8?B?aHVhWm1SVnorckZHWDdEVkNRbjdkRDFZMnp5TnVvOGV2MlBjYlY5RG91ZDlE?=
 =?utf-8?B?SWZKc1NpeDlXRy8rcFlMeVRLSThzT0dWQk50eDlpS2pIV1BaaExXdUNFZjFv?=
 =?utf-8?B?TjN1SG1OZExLOXdRUDVsZ2ZOek1RYmNoZlBHc2xkU3JuL3V6ZnRaRzdJT29N?=
 =?utf-8?B?NUNpYTFsZDY2ZnNEZGRlTHo5NkZlWHUrSGtwRWpja3kxdTAwZURrRkpPV2JX?=
 =?utf-8?B?Y1J1YUNXSWN5TjJxMDVwWWkxazNLdFRWb3BuUTVuZXY1Z3h6V1U1MktzbjZF?=
 =?utf-8?B?TlkwNFVPY093Q2d0ZnUwS1gwR2NPNkNtUGVINndiTWZDbWtUMUVGN2EvMjRD?=
 =?utf-8?B?VnlMdXVqMzZGOURZeDBYUUlUSDZkZVFlQlErRXJSaDNsU3dnWWtpUVlLbVN5?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b8cb446-358f-4f82-3010-08de12320b64
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 12:45:28.5326 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jDY7E/XZObiv4muP3focmI/Y1AAv8q60eCtnGUO228Ftsot1WxYJ5BTE4tL1jP2qiiqR79dPq82g7Idc5Jx5WouA/qHXHd8RsvwfOA/0YzQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8094
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


On 10/23/2025 5:57 PM, Nautiyal, Ankit K wrote:
>
> On 10/23/2025 5:34 PM, Ville Syrjälä wrote:
>> On Thu, Oct 23, 2025 at 01:46:14PM +0530, Ankit Nautiyal wrote:
>>> Currently the EMP_AS_SDP_TL is set to vrr.vsync_start which is
>>> incorrect.
>>>
>>> As per Bspec:71197 the transmission line must be within the SCL +
>>> guardband region. Before guardband optimization, guradband was same as
>>> vblank length so EMP_AS_SDP_TL set with vrr.sync_start was falling in
>>> this region and it was not giving an issue.
>>>
>>> Now with optimized guardband, this is falling outside the SCL +
>>> guardband region and since the same transmission line is used by VSC 
>>> SDP
>>> also, this results in PSR timeout issues.
>>>
>>> Further restrictions on the position of the transmission line:
>>> For DP/eDP, if there is a set context latency (SCL) window, then it
>>> cannot be the first line of SCL
>>> For DP/eDP, if there is no SCL window, then it cannot be the first 
>>> line of
>>> the Delayed V. Blank
>>>
>>> Fix the EMP_AS_SDP_TL to VTOTAL - (delayed vblank_start - SCL + 1)
>>> Internally the HW computes the value as VTOTAL - EMP_AS_SDP_TL.
>>>
>>> Fixes: e1123e617e51 ("drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS 
>>> SDP")
>>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> Cc: Jouni Högander <jouni.hogander@intel.com>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_vrr.c | 12 +++++++++---
>>>   1 file changed, 9 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c 
>>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index 92fb72b56f16..dd81d2133aba 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -655,18 +655,24 @@ void 
>>> intel_vrr_set_db_point_and_transmission_line(const struct 
>>> intel_crtc_state
>>>   {
>>>       struct intel_display *display = to_intel_display(crtc_state);
>>>       enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> +    const struct drm_display_mode *adjusted_mode = 
>>> &crtc_state->hw.adjusted_mode;
>>> +    int transmission_line;
>>>         /*
>>>        * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for 
>>> programming
>>>        * double buffering point and transmission line for VRR 
>>> packets for
>>>        * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
>>>        * Since currently we support VRR only for DP/eDP, so this is 
>>> programmed
>>> -     * to for Adaptive Sync SDP to Vsync start.
>>> +     * for Adaptive Sync SDP.
>>>        */
>>> -    if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 
>>> 20)
>>> +    if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 
>>> 20) {
>>> +        transmission_line = adjusted_mode->crtc_vtotal - 
>>> (adjusted_mode->crtc_vblank_start -
>>> + crtc_state->set_context_latency +
>>> +                                  1);
>>>           intel_de_write(display,
>>>                      EMP_AS_SDP_TL(display, cpu_transcoder),
>>> - EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>>> +                   EMP_AS_SDP_DB_TL(transmission_line));
>>> +    }
>> Pretty sure we are expected to send it at vsync_start.
>
> Hmm.. then do we need to move vsync_start too similar to vblank_start 
> for optimized guardband?
>
> If we do not move vsync_start, and set the transmission line to 
> vsync_start, it will never fall in the region SCL + guardband with a 
> reduced guardband.


Technically for AS_SDP case with optimized guardband, we can increase 
SCL lines such that it starts at vsync _start and guardband is reduced, 
but I am not sure if it is right.

-Ankit


>
> Meaning effectively the guardband will be full vblank length.
>
>
> Regards,
>
> Ankit
>
>
>>>   }
>>>     static int intel_vrr_hw_vmin(const struct intel_crtc_state 
>>> *crtc_state)
>>> -- 
>>> 2.45.2
