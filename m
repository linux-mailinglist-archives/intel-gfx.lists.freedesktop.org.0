Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBueJpcwmGkzCQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 10:59:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFFE1668FF
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 10:59:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C5710E7BA;
	Fri, 20 Feb 2026 09:59:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tof+tlNV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B486110E7AC;
 Fri, 20 Feb 2026 09:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771581587; x=1803117587;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BRbKfBo74Ha+eUXzqTIIw89TDmcjYB52myFq7ORtVwM=;
 b=Tof+tlNVAAqOrm/0ZgUi1PUxSizhBCwXUonaK5EL0T8Ep9WitjbyLba7
 PlV4zE3Hfrz5XM+dBbwgyZSjxtxq8kSXJ8+h3kR2D4JCJoE4C5j8AzASi
 58uN/kLNQxhYmr7GLvvemSQFvioCijFooGrQhKj7F6omywVUuP+glRw2X
 cBlMydfTVIy8Cij3oc3znJWBr4TsgYcothwPXl9RHBCLAf0mkoL15LM2T
 Zv33a8HKdjAtJN8Cux2WAVNXCz4iLHWEsKS0i8NjIWzIloywR5lyrY4oM
 vfzvwhZ3FjkknzbLeKHS9gVKC6UkRT9ZPte9C+8oq1V+uwfQTdZh8sP93 Q==;
X-CSE-ConnectionGUID: EMCPW9WbRsuMbHkcW0SfuA==
X-CSE-MsgGUID: 3TyPFZQ+QbKKAK4PHE3XLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="76536652"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="76536652"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:59:47 -0800
X-CSE-ConnectionGUID: bwN/2RqMTJ+i+zfomzXRWQ==
X-CSE-MsgGUID: tYgV2aVMSA6rQTIJKUwNVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="218943840"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:59:47 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:59:46 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 20 Feb 2026 01:59:46 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.54) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:59:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=criHCLmX+mykRRPZ0wvzPPNrubri1MAEwfR/4jhVfjN5zeQXYZAp6Iww1Iat0rI3q0nXaJAAf2umpWLRvoPXwrlZiqC4rdhKmi6QRt5qY/7xnLVgpq7oX27lsW/QwJNvzTY7MKLIjRGDQ5LRvbLFbaSNu5yue1fRj8don9eJiS1igZdP3ewqv/kI6q9EOQrs3TTgD+ktczkp43BhN9SCrQP3sdWS2zv0LmAFbYWf41+JQmzrDKe/fDIKOAgvOqMHBy+Q50ygnHQEFksSrUd8xEB1U6+dsNDWzwEkPXIQLSarwp3Eox8eoyc1vwiBTtU4B/cAmeDgpeOQPP4ZsAgS8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BRbKfBo74Ha+eUXzqTIIw89TDmcjYB52myFq7ORtVwM=;
 b=U75fZfpxKLOsGqdbyazr4UEvWFSqqA/IeeTWiQzent+v3VrAMu5ZBn8sgnD6QVscVlnQmaAo2uVr51KEfgDQlEAClfd7YrQlTL3TrBAsFtCG6VVDEkOmxZ3SBDkUqCM8mDk6EDljWyGrUBKEy/B/C3SYXQ+Ai4xosWreTDqHAdNaEidfFSI7PsRLufWAs/EAKzGPNeuuTAyhu7B2WD0fbYKaKQOmYNJkazAfMK8waTO5DnlwjjhQQVLrnKo+TRj9XRbBWq2G9LeW9MYf/i/KZHaYS4plPf+5N63NH9CDMF5whPDpufP0QGwpKSDHkjj7FbnORq6+hEm1Pc4VaeB9oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS4PPFA58A7783B.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Fri, 20 Feb
 2026 09:59:43 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9587.017; Fri, 20 Feb 2026
 09:59:43 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 02/19] drm/i915/lt_phy: Add check if PLL is enabled
Thread-Topic: [PATCH 02/19] drm/i915/lt_phy: Add check if PLL is enabled
Thread-Index: AQHcnOP7xCZ4FPnUwkigKHcCQDpPfbWJXa0AgAIHfmA=
Date: Fri, 20 Feb 2026 09:59:43 +0000
Message-ID: <DS4PPF69154114F9D22A423574945AB940DEF68A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-3-mika.kahola@intel.com>
 <DM3PPF208195D8D6EADE26FCE4A4685BAB1E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D6EADE26FCE4A4685BAB1E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS4PPFA58A7783B:EE_
x-ms-office365-filtering-correlation-id: 4b058e68-e145-4120-177e-08de7066c5a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?aFZmT0VnaTE3NHBFeXAxVjkzak5Bb041b0pDWXJGbEhzTlpjQnRsSDFkMHV6?=
 =?utf-8?B?ZWFYT04wKzVHNnk5TGtOQnNXaUQydzJWb1BPS3BwWVp4ek51MzVnUklBRnFF?=
 =?utf-8?B?dzA2T1lscW9FMmQ4ajg3R0MzK1lOWk44c2dOSTNOT1g4bEdhZzZUd3hvWkVI?=
 =?utf-8?B?RFdYa0Q1ZE5sWnFFeC9pNE50WW43SHlNNGt4Zmx6eCt3bC9CTHhIYldLNVRM?=
 =?utf-8?B?NzNRUmxHMGl5cGNpMC8yRm5CMlc5WGsxNVBNeDd5ZWE1Sm5ld1I3ckVRdDN6?=
 =?utf-8?B?NWl2OUtrRzM0VkJ1WlJwUmt3NE1qRGRYeVpTUkN6bHRwTDlPRkIwNnlKaTJh?=
 =?utf-8?B?a3JzblpQVEJBSGhMZ25GNlNPKytFWmd4MnFSck4xS1h0ZnBYNEhKVjNBTU1B?=
 =?utf-8?B?ZHBUR2lzTlN3UDgzVkZsaERqa3o3WExiSjJ4VlM4MEZtbHZtWFdZbzZ0Y2w1?=
 =?utf-8?B?bVdvbG8xV0txS0JwOHc1NmxzN2NvekNQLy9YTUdMODlJa3lwM0RwTTJTRnhO?=
 =?utf-8?B?RWdyOG9nSC8xaHh6TDhQdXhCVTg3UVBUVnVURFVZOE9Fenk5OUZ1bmJnejl1?=
 =?utf-8?B?aTR5NUFDUHFtNUdCdnBYV3haWG11cXdQNFhaL0pNeXJGc0FwYnFMbXAzcFhM?=
 =?utf-8?B?TmNtbUszM0svdDZhQ0M3WUhobUJnbG90U2YwL2V4ZTRxNjVyckxhOXlyTTBD?=
 =?utf-8?B?UWo2Qk5PZlBXV0c0Yml1M3d3VnExcEJIRzJoSkNYTHVPVUo5TVlRUEZqMnRz?=
 =?utf-8?B?VHBuU1BzTWQ1U1ZGcFhZZXptWk9QbzBvblNaSzY5b3JuQ3RXcEY4TVRCaXBS?=
 =?utf-8?B?OXRHUjVDNmJUdzZIYVJ4dWJKZDViL1ZoV0NVYUJuSlRHdUlISmdjcDR0cDZo?=
 =?utf-8?B?UjFvYWc0RDhzN1d4M3ZLT1V2eEYzRGNObzYvMUtrUkF6NDdQd0VZckMxWWxX?=
 =?utf-8?B?SjVJa29iUXhYLzh4dlRmWFF4Q0lNb0w5Zno2bEhNVFJseGt6SjhwZzdHSlNT?=
 =?utf-8?B?MUxVdVpzYTdrdTlWTjc5Ym9YVmpFb2ZtRnJrdU1jQXJLVlczYVVoTGJzSTRX?=
 =?utf-8?B?NHhRRDRmUGlpTGhLK2ZmSWVhT0lxaTNHeVJZaWRzL1RZanZoeFdhdnp1dlNW?=
 =?utf-8?B?bUlpYTY2RmZhUjdCQWlCakl6SzA3RllUWjhma2xVVHNBRDRlWVRLV2Q2T1Np?=
 =?utf-8?B?ZGFxU1pKRVRIb24zZkhabWdvRSt1WUlKaloxUDB1Vno5OFkyQk9CSVdxSFFj?=
 =?utf-8?B?dEdDMmJQR3g5OCsxSXFKSnV3c2hzL29zUVRsV3dyNXdheVJQcUFNU3h4b2Ra?=
 =?utf-8?B?ZGJ5alZQZUdTN09aajc5emVwek5JaDd5NWl3V2ZoRE5CbE9pMHFCSFhOS1Bv?=
 =?utf-8?B?eFZiQ1lKR1ZLdStUeWNIRy83TjBQU21ia0I0eDZIbG1DUmsrSkNsQ29Ec0hi?=
 =?utf-8?B?WHdsYklrcE42WTFkY1d3YnZ5djF0czhxZGpDdzVrNm5paGpTYlFxay82Sjgz?=
 =?utf-8?B?WkFSN0xVcUhvZnVvZzIrUmh5blc2aGlWSElkSWlSTVRzQmZIRDNQQW1DaFBC?=
 =?utf-8?B?T2tBMjNlODZBYWlEQ09LT1VFQjlEWHdxMnRuUzBtQlM3VmkyaHhxcWltUThB?=
 =?utf-8?B?NkhVK0NTZnAyVzVGNzc0TStmb1ZpVFRINnpzaUdRbG4vTkZqNE1OeFBoNVhZ?=
 =?utf-8?B?dGtWRkdWYW5ZTkxjZ0pyeDBrQ3Y2NmlYK056dkZZV0dUb3Y5U3F5ZzRZb3pz?=
 =?utf-8?B?UmsrV3ZwRHRJMk9wS0dwT3Rjd0M5SDN5MnE0Q09NQ0RXanYrdXhrSG9RUnMx?=
 =?utf-8?B?bk1oL0MxcXJIL1R4SFo0TGVGU0ZQandhSmh3Tm41RlF6NDZ3RFBQNVo1RElo?=
 =?utf-8?B?VStlR3RxUWNWdE9mMnFKWGc2a3NmKzNqc2VvY2JEamhOZVNqbkFVTHBUYmk2?=
 =?utf-8?B?aDd0b243ZExNdFhXNW1najRkSG5TYml3bHhrZHFHT0NhY3o1UUlwWEgzZUFY?=
 =?utf-8?B?elFHczlzVnJpV015M3VhSTJiOTRZN0VvbVpHNE1TNnB3OG4yWWlFbGY1bFMx?=
 =?utf-8?B?NytXY2UwNkxRMjlaVGNzZFRpZEl3V2dWVTJ1YTQzT3lHMkYxcENFTWx0M2wx?=
 =?utf-8?B?YldGRVQyYkp2TE4xR1pDT1A2T0I2Q21YclVsckQzZGYrNkdTKzczRmh1SFNE?=
 =?utf-8?Q?1ZfxR/PsYqqnTgbgZB0cNxI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aldsRjlFUU1rZ0VGdW9WUVU0NEthdWY2cXFxTWpSeWlJNmViTDQwY0pGZWZM?=
 =?utf-8?B?WVJJY1hRZjBLM0Q1bm81V2VlbHI3YWRzNSt1SUREYzFRM2piV1kzNTBvanYv?=
 =?utf-8?B?cDkwYjRmNzJhSXE1K3hDK2ZBdU11SGl6aXUxM01RdjdIbkFsMElIVTVyRmlY?=
 =?utf-8?B?WjJQd1VCc084RTEyait1QVpxMy9YWlJyYks0VXlKZ1NsNCs0NW9ybnVvbW5L?=
 =?utf-8?B?RUx4eTBFcXU1MU9sd0JPYkxHYnNtSk9SQi9aN2ppZEhPbUxYaG9EWlFhZHhh?=
 =?utf-8?B?bjc4VnNnVmNRQVFlRzN3Ry9tV0Q1VVRDTTd0dis1RG5JejRIVnhnZWhmajVn?=
 =?utf-8?B?b2JVb3JIcUF2TCsvNC91VmJmcnFpVjRlYURGb3JnZC9OcWtBUEpkUklMVlpY?=
 =?utf-8?B?WWFzRFk4TnJPaXErODEwTUxjcG9NSlNQbmgzeDBXZGJraXd2TFVUNGZXOFZx?=
 =?utf-8?B?SS9OK25pVUtaMDJnQ3RmU0dzVmFSaEFNVjJvcmljQ1M2SnEzZGxOQXB1MmZX?=
 =?utf-8?B?WlB2eEsrMVppR2xsQjN2Q0ZMU1FUVW9JRDZnZ1pqTm00OGJLOEhCeXFWQWNu?=
 =?utf-8?B?RG9HaFlmWmc4d09tRkpFRElpWTZCMjFhbzFMUFcyU1JDZ1NNWTNXWmxIbmVZ?=
 =?utf-8?B?YmQ1WkN6R0ExQS96S0tXbC9oSUlpSzhCK1Z4YmpZa29RTHk5cnVaaTAwUDNp?=
 =?utf-8?B?MGZ4U0VHdExkMXRIY044SSszZW5haFZiMUNUMEdjcjNmTVZlNWVSc1J5dHFm?=
 =?utf-8?B?bnlCSFZjelBiajBxbHRaRUVvQzIyRElqU2VZN0pzZFAxSzlQZ2c4aTR4RFFo?=
 =?utf-8?B?RmtWcmYxVUZWVkFEMWhDTVVvL1pLOVVBUVNLRjh0alNJZVlYaFFPTW42aVFs?=
 =?utf-8?B?WWVmK0J1UlI5R0NHZ3ViZE5XU3JXdTYwOG9aUmw4b0NTVUN3RVJzdW1nQzBn?=
 =?utf-8?B?czhoK2RyYkpaVDE1N2NLUFdOdENUMjd5NXk4cnF0WXVzaXVCVjArNWdqV0FM?=
 =?utf-8?B?UXRnYTljclpRbUlnSEp1QkdnUWQrd0FkNTBVNWcrWGNWaEVaUU1qSk9OL1Z0?=
 =?utf-8?B?c1FMaFFmSUc4UWNxR1hhVC9vS1RLRndTaHdsb1NpWGNQODhsZFZvcW0yQXBz?=
 =?utf-8?B?bFZhWGVsRGFCdXVFcERuakNnNEpHa1BsWkFvWlBiOWZPd1BON1ZXY1lWcHFm?=
 =?utf-8?B?N0p0cllOQklVUlR1bVFmaGhhWFpVVmZZeVdvcWEzSWJEZHhoR25ZMjdKZFN0?=
 =?utf-8?B?eFlrdVo0Qk9IM01tdUJ3bVZSUURSMXZHWEZQTmtVZCtHbVF1bmxtMWVOWExL?=
 =?utf-8?B?MGhRNzFXeXp2M1QvY09UWWFLZFlrMjNRT2UzVUtlbnVCWUU2ZHFnNDNPVm4w?=
 =?utf-8?B?Sk1mZlBOc0hyU0I0L3F4ZnZXaloxd2tyemN4Si96UTNwMXNqSVlVRWtnT0oy?=
 =?utf-8?B?ckcySzFsUFBzS1UxbTEvdXRmMlBQM0pEMUxNQkVuMVM3MXVBL2hUY3FVaW1o?=
 =?utf-8?B?UnM0WVhmR1JNWTdTKzd1ektXL2ZPa1hNVFJxc0dpR3c5amdBMFZlWEx4U09O?=
 =?utf-8?B?TVRGdm1Ra0REd0tHQ0tyditGWWVwbXc5Yzl5T1dFZS9Lb21MM3hRTWMwZEgr?=
 =?utf-8?B?aFp6VGdIbWRxVVFDbHlYaUVka3dvNTI1QkZLUERYVTFMc2NTT2VBU2o1UnVZ?=
 =?utf-8?B?NmlWZm13VTNLUmdHaXg2NnM4Z3gvZkczTk1VQ05tMW9FWVJHVjBRY2xoQ2dD?=
 =?utf-8?B?RDkwRUJHMkFzZ2gvcHdsVCtwVndpQlpIQ3R4eXUyNjdlT3l4Y3ZLYWl1a1BL?=
 =?utf-8?B?ZkFUS0pXdEwzR0tXR0s1V29IazhqQzNiV2g0Sm55emRaVTNuU0dvblhnVzBt?=
 =?utf-8?B?ZUxJbG0zWng2RjJ5TjBTWmlMZkM0UnZTQkJXRW1yVUtubUo1bjBQTG1oNk52?=
 =?utf-8?B?R05MYjF4OU90ZFB3VEtLeWNmdllEMTRSVit1U3hZS0NBQ3NhRmgrTUtnUGRH?=
 =?utf-8?B?QWtpMlZmQXc3dE8yckdkK1Z2aDlFRllHZkszd21yOTArVGJWZnVVOWY0bDVE?=
 =?utf-8?B?NzRra2pXcFFRZlB1ckw4RGErcTRxQk5FSG44MDJhSlZzeFB0OERIcUxGMlVa?=
 =?utf-8?B?SmNRelIxdDZETXFnZTUxZ0VucmVPR3N6clBmVXRKQiswMm5oWml2TXFpZndi?=
 =?utf-8?B?Rlg0KzhidEE3MzNxUm5UbE9yVnRyaWtQUXA3OXNXcFBqZ3pzTStRdHBwdmdr?=
 =?utf-8?B?ZnRKR041V2FXZk9hWkd5SkxQV3Z1cWdvT2FvVk84RnZQSnBnbDlXTUtXMXZI?=
 =?utf-8?B?b2V3WEU2NUZNNGVXZlJrZ0RhNGZFcGN1ei9CdUpjSlltUXNDUWIvQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b058e68-e145-4120-177e-08de7066c5a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 09:59:43.7881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8LaUNkIWVASUh2JSXtkbhi6b0zjn7cmMeJoRhRG3xr5zzARSLU0Zg72VSh+Y/JyDPdU8+qPqmiRBS1Sjb2RHOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFA58A7783B
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DFFFE1668FF
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAxOSBGZWJydWFyeSAyMDI2
IDQuNTkNCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gU3ViamVjdDog
UkU6IFtQQVRDSCAwMi8xOV0gZHJtL2k5MTUvbHRfcGh5OiBBZGQgY2hlY2sgaWYgUExMIGlzIGVu
YWJsZWQNCj4gDQo+ID4gU3ViamVjdDogW1BBVENIIDAyLzE5XSBkcm0vaTkxNS9sdF9waHk6IEFk
ZCBjaGVjayBpZiBQTEwgaXMgZW5hYmxlZA0KPiA+DQo+ID4gQWRkIGNoZWNrIGZvciBQTEwgZW5h
YmxpbmcgYW5kIHJldHVybiBlYXJseSBpZiBQTEwgaXMgbm90IGVuYWJsZWQuDQo+ID4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jIHwgMjQN
Cj4gPiArKysrKysrKysrKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2Vy
dGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2x0X3BoeS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2x0X3BoeS5jDQo+ID4gaW5kZXggOTY0N2FmY2VhODk3Li5mOGNlYTA2Y2ZhMjcgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMNCj4g
PiBAQCAtMjE4MSw2ICsyMTgxLDI3IEBAIGludGVsX2x0X3BoeV9wbGxfY29tcGFyZV9od19zdGF0
ZShjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9sdF9waHlfcGxsX3N0YXRlICphLA0KPiA+ICAJcmV0
dXJuIGZhbHNlOw0KPiA+ICB9DQo+ID4NCj4gPiArc3RhdGljIHUzMiBpbnRlbF9sdF9waHlfZ2V0
X3BjbGtfcGxsX3JlcXVlc3QodTggbGFuZV9tYXNrKSB7DQo+ID4gKwl1MzIgdmFsID0gMDsNCj4g
PiArCWludCBsYW5lID0gMDsNCj4gPiArDQo+ID4gKwlmb3JfZWFjaF9sdF9waHlfbGFuZV9pbl9t
YXNrKGxhbmVfbWFzaywgbGFuZSkNCj4gPiArCQl2YWwgfD0gWEVMUERQX0xBTkVfUENMS19QTExf
UkVRVUVTVChsYW5lKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gdmFsOw0KPiA+ICt9DQo+ID4gKw0K
PiA+ICtzdGF0aWMgYm9vbCBpbnRlbF9sdF9waHlfcGxsX2lzX2VuYWJsZWQoc3RydWN0IGludGVs
X2VuY29kZXINCj4gPiArKmVuY29kZXIpIHsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gPiArCXN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpOw0KPiA+ICsJ
dTggbGFuZSA9IGRpZ19wb3J0LT5sYW5lX3JldmVyc2FsID8gSU5URUxfTFRfUEhZX0xBTkUxIDoN
Cj4gPiArSU5URUxfTFRfUEhZX0xBTkUwOw0KPiA+ICsNCj4gPiArCXJldHVybiBpbnRlbF9kZV9y
ZWFkKGRpc3BsYXksIFhFTFBEUF9QT1JUX0NMT0NLX0NUTChkaXNwbGF5LA0KPiA+IGVuY29kZXIt
PnBvcnQpKSAmDQo+ID4gKwkJCSAgICAgaW50ZWxfbHRfcGh5X2dldF9wY2xrX3BsbF9yZXF1ZXN0
KGxhbmUpOw0KPiANCj4gU28gdW5saWtlIENYMCBQSFkgd2hlcmUgd2UgdGhlIHN0ZXAgaXMNCj4g
U2V0IFBPUlRfQ0xPQ0tfQ1RMIHJlZ2lzdGVyIFBDTEsgUExMIFJlcXVlc3QgTE48TGFuZSBmb3Ig
bWF4UENMSyoqPiB0byAiMSIgdG8gZW5hYmxlIFBMTC4NCj4gVGhhdCBpcyBub3QgdGhlIGNhc2Ug
Zm9yIExUIFBIWSB0aGVyZSB3ZSByZXF1ZXN0IGFuZCB3YWl0IGZvciBBQ0sgb24gTGFuZSAwIFBy
b2dyYW0gUE9SVF9DTE9DS19DVExbUENMSyBQTEwgUmVxdWVzdCBMTjBdID0NCj4gMS4gVGhpcyB3
aWxsIGFzc2VydCB0aGUgTWFjQ0xLIFJlcXVlc3QuDQo+IFBvbGwgZm9yIFBPUlRfQ0xPQ0tfQ1RM
W1BDTEsgUExMIEFjayBMTjBdPSAxLiBUaGlzIGlzIHRoZSBNYWNDTEtBY2sgYXNzZXJ0aW9uLiBF
eHBlY3RlZCBNQUNDTEtfVFVSTk9OX0xBVEVOQ1kgaXMgMTAwDQo+IHVzLg0KPiBTbw0KPiANCj4g
Q2hlY2sgQnNwZWM6IDc0NDkyDQoNClRoYW5rcyBmb3IgcG9pbnRpbmcgb3V0ISBJIHdpbGwgdXBk
YXRlIHRoaXMgYWNjb3JkaW5nbHkuDQoNCk1pa2ENCg0KPiANCj4gUmVnYXJkcywNCj4gU3VyYWog
S2FuZHBhbA0KPiANCj4gPiArfQ0KPiA+ICsNCj4gPiAgdm9pZCBpbnRlbF9sdF9waHlfcGxsX3Jl
YWRvdXRfaHdfc3RhdGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gIAkJCQkg
ICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gIAkJ
CQkgICAgICAgc3RydWN0IGludGVsX2x0X3BoeV9wbGxfc3RhdGUgKnBsbF9zdGF0ZSkgQEAgLTIx
OTAsNg0KPiA+ICsyMjExLDkgQEAgdm9pZCBpbnRlbF9sdF9waHlfcGxsX3JlYWRvdXRfaHdfc3Rh
dGUoc3RydWN0DQo+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAgCXN0cnVjdCByZWZf
dHJhY2tlciAqd2FrZXJlZjsNCj4gPiAgCWludCBpLCBqLCBrOw0KPiA+DQo+ID4gKwlpZiAoIWlu
dGVsX2x0X3BoeV9wbGxfaXNfZW5hYmxlZChlbmNvZGVyKSkNCj4gPiArCQlyZXR1cm47DQo+ID4g
Kw0KPiA+ICAJcGxsX3N0YXRlLT50YnRfbW9kZSA9DQo+ID4gaW50ZWxfdGNfcG9ydF9pbl90YnRf
YWx0X21vZGUoZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpKTsNCj4gPiAgCWlmIChwbGxfc3RhdGUt
PnRidF9tb2RlKQ0KPiA+ICAJCXJldHVybjsNCj4gPiAtLQ0KPiA+IDIuNDMuMA0KDQo=
