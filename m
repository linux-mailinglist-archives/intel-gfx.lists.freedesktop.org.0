Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE489D225B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 10:21:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BD3D10E272;
	Tue, 19 Nov 2024 09:21:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XGdJ11ul";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA1010E272;
 Tue, 19 Nov 2024 09:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732008063; x=1763544063;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bVQxPot3yn21nhtnjGm5wU5Seqb2vD5PTwNF8EXa38o=;
 b=XGdJ11ulvA2gf0BIRCSpVBFfniKoJln/UtQCakmc65Fo1w/McVVb+9+2
 JNlMPaH49inh4kmx0f0526/XRbkLVn6PnPCzrycHnyNJdaaCEMn7diTV4
 MGU3/KOcgCJCoUIWc5cMmG318/Dq+c0cVKCLx0tW60w4980jxaalsfNd/
 fovZvo0khDu8SI/J63V2YpbZeDHHCDet3qNU4BBLKZ8KexAE7xAmui4gQ
 1go5lejhqkOnWxI46KTyXNrhKARCMPobVWkVZcpBwbpAPfa2bc9OB1SHl
 ocehMau7mWVEJp6FTOs0BFhPtW85b7GgZNeLB9FMjpA86O8wlz/DdfA5z w==;
X-CSE-ConnectionGUID: jtOODa5/Tuu9ACqde1A/Nw==
X-CSE-MsgGUID: vUu7RWWiSD6FxNxfkFBlYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="43379594"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="43379594"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 01:21:02 -0800
X-CSE-ConnectionGUID: 5x3hG/wDQuelX779xi0ttg==
X-CSE-MsgGUID: fItaZH7BTFeROMArm3dLSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="120419630"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 01:21:02 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 01:21:01 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 01:21:01 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 01:21:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kdv796VKQZh0iY+HWpGmxMMY9uGSfeugVl+/D4lk+rE6oSuAa9aA8V0NEqv0uRvOP88q6Oc4g3XVqFoD/F5YZ7BdOIAV84abk0lvNenj3VEWdULDX8417UDLaGFqMwUJD7HVcsfsKD87GHepYK8BvBDi955ksz0TTuQkcIIbXNaEttBYdhCLYWPuf48yJXpmDcm0Y+IUzheO3VL9J4I8YGIAoQYdCws1KfVOKhtB/xSWqTduCFptyi9ALLVwfIF99v3qc40dKkJRn3zaz6h3i35/9OQQCVBwA1buOJ9XvcnCUuQ7zkNaX7r+Y3dmRUIy6U79GavCuJg4zjuj9yS3Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fmgnHYx68J8OlFjZ74V2z2JWCsYNUQu1l3RrEWmL+Ag=;
 b=t3XBC4EViG9pn54//ipKWUb2fN9Vplik9WL/SZZQucZWM3SrFv0KNRTlKfPySYFpfJpNTarZEFxbB3fddvc+1KdsPWbYlO8pScRUFKuUVdQE02fOs2YJOfP+R9eKPHqbeoWJUvS8s/ssm/27y2m90PVRLbammbAPIVA3yS9af+ECUHqfEGliK1vhoFhSgADDmcfv+Pe+bLFdG+A9o4ZadgMPOlnp6343B+SdvSm/CPmKLTyaVuoixrh5Hp+73Af711uOxmzltUqd9EOD7V1Mod5HYk8nJzlQd/iPPk4p2YXfb9OqvskfZaI9wXR5pR40h3njmJjlQB2V7tNcBN+8DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB6800.namprd11.prod.outlook.com (2603:10b6:806:260::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Tue, 19 Nov
 2024 09:05:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8158.023; Tue, 19 Nov 2024
 09:05:00 +0000
Message-ID: <4ce600a0-6561-43aa-a5e2-3a2245bc2664@intel.com>
Date: Tue, 19 Nov 2024 14:34:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display/xe3lpd: Avoid setting YUV420_MODE in
 PIPE_MISC
To: =?UTF-8?Q?Juha-Pekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20241113115531.3394962-1-ankit.k.nautiyal@intel.com>
 <CAJ=qYWTMYzkKCT_eVEBeP=q=L1mXykdcv+DER6DB=toXU8+KxQ@mail.gmail.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <CAJ=qYWTMYzkKCT_eVEBeP=q=L1mXykdcv+DER6DB=toXU8+KxQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0054.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB6800:EE_
X-MS-Office365-Filtering-Correlation-Id: 52bb8a9e-1ea9-454c-401e-08dd08793f5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MnVhNGV4cm5YeG83aitCWEpsTzNncmRncjRqYlJ6TnlSUWdPc1dhNis4OWtq?=
 =?utf-8?B?a1VPTHI3TnFyTTlSUVNvZVpuZmpqQTRRdStxZ0g2czliam1rMjVadE9NZDIr?=
 =?utf-8?B?QkdlZ3o0SVM5V1ZheGdnVThzb0tUMDVSaTNUdnJJakRTMkF3eWs5dXZhSW9T?=
 =?utf-8?B?bGEvU0VTRVJZSnRqTlBLUExiblZTNGErVlMzd2w2alpIaU1TMWE5N3crZDI4?=
 =?utf-8?B?S0k1OXdqajZvSm81NDFCb00rVnFuUE1KVVVhQm52SGRWM0ltdXlxZ2V1Q3lJ?=
 =?utf-8?B?K1BjVzFZVms0c0dzaFNLQXRDOG9sbW1aUGU1U2Z0OUtVcFdWVy96clFlcTlY?=
 =?utf-8?B?RnlFY2E1Ni96YXFRdmV0enZ0RTM5OEFtQmo2Mzk0RFErbFlxSXNWVllPekpG?=
 =?utf-8?B?QkRRTkVUQk0xbTZnR0VhdmdxV0Ewb25XQytML0U5MFdDUHJDZ0JjRlNHdnhs?=
 =?utf-8?B?UUZFTklBZUV0SGd5dzNMbGt1NWR1SHdzd2hGdFhIKyt3M1NDZnZoa0VmRE41?=
 =?utf-8?B?L3lrK2RMOEdvT2tHc2J0VzgwbmVQaWd0MWRDcFpWclk0eG9HenJyQklTOEgv?=
 =?utf-8?B?UXFLNytOU1Bpd2RNa00vKzZJOEQwS0N6N3EzSWhja25iZzM0T0ZVSlIxWTU5?=
 =?utf-8?B?UU9PbGpSOEhxTmlLVWlJU0ZzY3psNVBMMnVOYXhMbTdRRnVXUy8wdnFIVFhu?=
 =?utf-8?B?S3V1c2pwQVNEZlpwRHg4dmFRZXE0ejY2Mm00NXZLWnFWMTZPdnBibWFLTzRp?=
 =?utf-8?B?anZpRnd3Y3NZMno4N3FQT1pkZGxKV20zWjZXa3R1NDlvamIrNGNabTUxWnFa?=
 =?utf-8?B?UDN1Q2Q4OENkazJEdjVYaGRpbUQ3VjFrdEtmUkIySTZScU4xM3U1U0dNSUFt?=
 =?utf-8?B?S3NLM1V1NDhhd1FjOEtLTmFiZmJFc2RwKzNoK2ZzaTRKRVI1M1hlYTgwSnlN?=
 =?utf-8?B?a2xOeEljRmZjbTVjT3NOL1FTT0RkWmtHeGpQTjJRRzlvRmFiZXJDYkRhVjRZ?=
 =?utf-8?B?QUkyNnlHRzhQbWVyd2QrWjB3Q2xVY2ZCREtDV0lYQ2xZVTBjL2ROekoyT0RF?=
 =?utf-8?B?TEJma2cwMlRBMG9LbmxFY29RR2tjemMrL3FxYk5qTVR5ME1OTDZJdHcwK3Zw?=
 =?utf-8?B?YTRWcG5CZXFkakVnQ3BldUVSRExKWnNKOHhJOUE5QlhhNDB1SkczMkxESHVo?=
 =?utf-8?B?aDBVbDdDS3Z1c1RqZ2hLOWw2MXRSczVIZENZbUlmZWtoNWQrS29pTGd6cWVU?=
 =?utf-8?B?N0FVVDVkYklKZXAyRlAxVVpKdzA5Y0xSeUlrcjgyaDdNak1oa1dxRGZzU05M?=
 =?utf-8?B?VEwxQXV2MHR4OTVHN1pnV3FVdFNjY3ZmcUl4TExKcERTc2NNVnlPcW1GRVlq?=
 =?utf-8?B?WU1WaVUrUndSNXZmMDlqMnA0YnlvRlUzem43a2h6K1hRL2FYRmlKVVNYWlZ1?=
 =?utf-8?B?dzZQMlV0SVUrVTJhaytDeUE4dlhVUXFTSGlKSzB3cStleFhMNnVzbFBiQWd4?=
 =?utf-8?B?S1lVend1TTl4bnU5b0FwS2s0VENmNjUwSzNXNDhRb1ErMkU0ZDNFU0hNWFky?=
 =?utf-8?B?RDRCVlBGb3VqWS9jYXlnTzlTa0t3dS8vdjk4QjZLS042THh6ampoV3FVVlNH?=
 =?utf-8?B?cGloZnZTQ0pKRFZCTU1tT1NKdW9SdEt1aFoxU1ZtVXlGajRRcHU5dTRsYkNZ?=
 =?utf-8?B?MGdNYWNtdXBKN0wyUmJ3QzUrREFXcmJhMU1vbU5aeXVlSkFUYllwMmUrSXFK?=
 =?utf-8?Q?6hVUIC2+QnnWtDdzBKSeEK+lR3PwMR82h6mZfOB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REV5NFBnY2RGNHdtUS9ROXNBR1VwZ29RVzdUZndZNEw3dEpQY1N3ZVNNb3di?=
 =?utf-8?B?UUY4QnBNKzNCeTJLSW1JOVF5ZzJLN2MxOWIwdlA4aHN0Vmw0djRKTTJOYTJG?=
 =?utf-8?B?QnhxOEhtRmZXbStSYldMc1BGSlZaMFVEbDB0QWgzRFBiaGhMb2drZjVKM1Ja?=
 =?utf-8?B?dkhMYW9QTFdjS2hkTHlUSGt4ZXN0S0ZLdFh6UGk2alhNY0V4L0ptVHF0MGti?=
 =?utf-8?B?dVlTK1hwSC9lYzhYdlRObUhwU05rcERpM2xQRVVmQzdQTHRScVVVTTdoMEtY?=
 =?utf-8?B?endpdGZKZkhlUFRDMVNQb0swNlZDc29DT0JnRHdpL05uNy9EMHlMTXFRWFM0?=
 =?utf-8?B?eFAwUnBaenNpVVdpTS8ydE9uRTk0NVhIYUFOcWJkY0xxRmRheko2elRTN0k3?=
 =?utf-8?B?OFlPOTlJYzlBWkx6aXRibkRXc2hFYmg2L2VFeTZiL2ttek1HeURVUHlweHly?=
 =?utf-8?B?TlFnNTZEdkdCZGdqbk0rdVhidEhZcFU4RC9NdmR0ckVBRXZWL0lESE9CSlNH?=
 =?utf-8?B?cExMR0NxaWM2c052am1jOGExS1ZaSHBPMnMzQWlDNDFmS0swRTc5YWhvMmZU?=
 =?utf-8?B?U1o0dGowekhnU3Z5eHdVQVFudmYyTlRQcFY4SjUvNDJEQWRLN283V3VZWVBl?=
 =?utf-8?B?aU4vcUdweDBETUhUZlgwcXB1cFlFcFRYaC9HRU5UdEhhK0sxbS9IUDVVb1Na?=
 =?utf-8?B?cElaOVkwOTFSSHp3WlBiRmx5bkM0amtXZklFZ2RLdzNLdEpneTlxWDd2S0Zx?=
 =?utf-8?B?UlBJNE9FUmtaQ2JmVGpLcFovY1hsMVNPd3kyaEVpa0szNGFBdlRYZzdYK1l0?=
 =?utf-8?B?alBlYVJOdEtKSTBJWW1XWjBIcTJ2UmNCMWhDNWd2RmtiYzErc3hqV0JxMEll?=
 =?utf-8?B?VEtqQzhHWVo3b3dqRExUZHJJU01rZnlhMUYrMDViNnlDQWswQklzTDU3clox?=
 =?utf-8?B?eW1GbUpRRnBGa1ZvZkJJSnordHlseFlTMWN2QzgwNFExSHRMS05iMzB3OEty?=
 =?utf-8?B?WHYwV0Eyb3FDQ1JadEIwUUVPSkZCQmtnN1I2RGZtSEJrSnJjT3lFMklTeDVp?=
 =?utf-8?B?ODRkcDVFbHVMdzNhN2VjZzNIY0F1ZVcya01oaEJFakdOWWROdDdPNjkxMHRx?=
 =?utf-8?B?UTZZdk5zTVMwcGkxdmpscHhHU1cyYXNoandMZnZlREdINUhnQUNoSXpRd0Vw?=
 =?utf-8?B?aXVhQzY0a0NDbkVycHUzZFdta25RZmkvU3ZsbTZOYUpNdEVaWk5KNFZ2NkE2?=
 =?utf-8?B?aG9zUm9RdzNqMjhLU0M1KzBmMFZqYjgzVzV5V0kzbHVOSzVvOEN2ZGNCUjg3?=
 =?utf-8?B?TTlYOXJjN002ZGtKSm5WWTE2d2NmR3l0MHg0dC83UGVKLzJpRHEvZzAxeG9E?=
 =?utf-8?B?a2tGWk5MbXFzaGE2ZHU2QlpkMmltZ2twUlN1VDFsWE9YeGxaR0FTSTE5cXpq?=
 =?utf-8?B?Z1BtSUpWeGJEVFdvVzBmMHB1blN6RjJRa2ZNZDNUN0FXcE5GVWhhMHY3d0tk?=
 =?utf-8?B?dEQ2QlVjMTZlZyt6bGJtK2xmMUVYUUdxejBoZmdPUzZtQW54L25LWU9vcXI3?=
 =?utf-8?B?Q21NTE4zMFFRQkM5d1J1d2JIZnpObEMwYWQrQ0EzRmk2NFFFRHliT0NuYVJ4?=
 =?utf-8?B?UnhyR2UzRk5XQ0h0b3RVY0FQMlJQRHE5VXVUOUg2N2xRemgyRkh2NHVGTHo2?=
 =?utf-8?B?aEtOSG5VdWlEV090cllYNFIvMXpwbVduYU1IZ29QSU9RRlV3ZndNMTJSanoy?=
 =?utf-8?B?Z3oxTXdiV2J0UTBxdWYzU3lzSlBPMGJWVjN2TW1MU2haam12WTZCbXlaR0NQ?=
 =?utf-8?B?bS9qUDVLWVphUnRrVmZZc1FVa2l2a1JRQWhxd2tzUmdDUG0wQ1hybWgxZHlT?=
 =?utf-8?B?bEtaNnhJM09YRXpsQ2FBZXpnRXQ2aUtxK2N3QmN0Sm1qNWtGK3A1MU81eTJ3?=
 =?utf-8?B?SlZUYjI1VzA0NkQ2ZHkxVTF2dkJlNGNsQmNvK2N3OW43bDE2dktCMTErenU2?=
 =?utf-8?B?Y05FRTJETC9ncGlmUzhuSjJubC9OZjBNV0RwTkUrS1NZVkNMRE9IYjdBQU1Y?=
 =?utf-8?B?QVlrNVczSURDQlZSTGE1TnZzeTRqazY5MWN2cFVLaHBYZkxNM1dhU1lkcUdS?=
 =?utf-8?B?eXlCV1NmcERFZU45akpzTzVmYVdINWJTeGN2UzZ5bEF5bTNoZ1lCSFVORERL?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52bb8a9e-1ea9-454c-401e-08dd08793f5a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2024 09:05:00.9474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zvd6ny1vuPN/pWzxGaPkdJHffm6ofeOW917/CdEJHgkH9BfeEg8WSgMBlgc8vKOIpuaAaaCqFWPSkV6iUYYWzbYKZyobr9hMrK4xgsFOKbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6800
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


On 11/18/2024 7:14 PM, Juha-Pekka Heikkilä wrote:
> These display patches probably should go through i915 ci also since it
> changes code on i915.
>
> patch itself look ok,
>
> Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Was already tested with i915 CI.

Patch is pushed to drm-intel-next. Thanks JP for the review.


Regards,

Ankit

>
> On Wed, Nov 13, 2024 at 1:53 PM Ankit Nautiyal
> <ankit.k.nautiyal@intel.com> wrote:
>> For Xe3_LPD the PIPE_MISC YUV420 Enable (bit 27), already implies enabling
>> full blend YUV420 mode and YUV420 Mode (bit 26) is removed.
>> Therefore, avoid setting YUV420 Mode for Xe3_LPD+ while programming
>> PIPE_MISC for YCbCr420 output format.
>>
>> Bspec: 69749
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++++++-----
>>   1 file changed, 10 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index e790a2de5b3d..9db255bb1230 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3137,9 +3137,14 @@ bdw_get_pipe_misc_output_format(struct intel_crtc *crtc)
>>          tmp = intel_de_read(dev_priv, PIPE_MISC(crtc->pipe));
>>
>>          if (tmp & PIPE_MISC_YUV420_ENABLE) {
>> -               /* We support 4:2:0 in full blend mode only */
>> -               drm_WARN_ON(&dev_priv->drm,
>> -                           (tmp & PIPE_MISC_YUV420_MODE_FULL_BLEND) == 0);
>> +               /*
>> +                * We support 4:2:0 in full blend mode only.
>> +                * For xe3_lpd+ this is implied in YUV420 Enable bit.
>> +                * Ensure the same for prior platforms in YUV420 Mode bit.
>> +                */
>> +               if (DISPLAY_VER(dev_priv) < 30)
>> +                       drm_WARN_ON(&dev_priv->drm,
>> +                                   (tmp & PIPE_MISC_YUV420_MODE_FULL_BLEND) == 0);
>>
>>                  return INTEL_OUTPUT_FORMAT_YCBCR420;
>>          } else if (tmp & PIPE_MISC_OUTPUT_COLORSPACE_YUV) {
>> @@ -3388,8 +3393,8 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
>>                  val |= PIPE_MISC_OUTPUT_COLORSPACE_YUV;
>>
>>          if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>> -               val |= PIPE_MISC_YUV420_ENABLE |
>> -                       PIPE_MISC_YUV420_MODE_FULL_BLEND;
>> +               val |= DISPLAY_VER(display) >= 30 ? PIPE_MISC_YUV420_ENABLE :
>> +                       PIPE_MISC_YUV420_ENABLE | PIPE_MISC_YUV420_MODE_FULL_BLEND;
>>
>>          if (DISPLAY_VER(dev_priv) >= 11 && is_hdr_mode(crtc_state))
>>                  val |= PIPE_MISC_HDR_MODE_PRECISION;
>> --
>> 2.45.2
>>
