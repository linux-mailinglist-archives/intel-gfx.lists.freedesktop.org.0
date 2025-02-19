Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED9AA3C0C2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 14:57:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E81C10E03D;
	Wed, 19 Feb 2025 13:57:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="as/P5Pe/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3835310E030;
 Wed, 19 Feb 2025 13:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739973445; x=1771509445;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZEmohO3zLxnCndF7PUyG588810v7zLTxrV5TeiL+Po8=;
 b=as/P5Pe/Kb46qScu+11Vj0g6Eyk9x3xnYTSb4yxW4jQj+g+7CuoDelLn
 EH1w3DYCtXWq1UkVjo1eKKUxUPqy/bQzr3FS/k3BdHlTC+Q6cEaS/XV94
 RITJAuGS5k6Rz1arCbIGyXwecHsyNmopvQ18a/4n+ILfor33j2Yd/u0d/
 20Wu7HedS1USaRrRPph7949dHepRn25vO95PLI4cYD1h/F1Ht1UMzxa9U
 ntuoNeHbC4fab4Q0v921f4lzBqCI2PyXsQUQaeEr8lsctygVf9Qk28Ei6
 xMgstF5aTufVZh+aVG9Z/5gBj2aIkiG11CG2dG9FQAOKrkg2l5oQOdip9 w==;
X-CSE-ConnectionGUID: Q2auPqNSSZmkwUDCh5G0Qg==
X-CSE-MsgGUID: jDPYaZlgRPqFQSaKRQEeMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="44355593"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="44355593"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 05:57:24 -0800
X-CSE-ConnectionGUID: zbcZW93VTf+SG1wKx+bhQw==
X-CSE-MsgGUID: dzUVtqNfRL6XIazrbIY4Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115622764"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 05:57:23 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 19 Feb 2025 05:57:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Feb 2025 05:57:23 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 05:57:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EGaazKeX7RLrhDFqrKHzK/ZU7pKOomWcV2+IYKIB8AlJmF1qwfVZeaAlRSAX3kNj2ytAG7RNgpunWDJ4glXAunVBFyZhq+LQqqUwjGP2H9+nLVBPYE0DRw7gMl1crxYFyo9Sz7MGyXDMiFeSXplllOjicbqNddFxDN/a7cF1u5Kp+eSNIHF4IAE2FSrhGaKsNie7kZ2M0t2jNdbOIR40jRG1lgxB/zszv53m+B3C7zsOgiPGCzRO+c01URh6cDmIDjyEb+CXnI+ObSp4rxkEyv2MY0jIX5FLkXzW6/0f7d1Yv5mWH6P0LSr45zfhsrEv8mukS9nDsTbdOMO8QYbegA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bJUhT5l6DF3P525aFLpnxWV9ILack4LlemMgZL1OMT0=;
 b=K5i7Ywl8od6rPQFBOeQf960yg/oBieTDgbHmym7Id6XH/CK+VmCAvmBFc73ySr/HD3bQ3Wk+AZpPMe0GYQ3I6wgIkOM/M4B3ciC428jgeGede/UAU8o1naWQ7FsY4Z+y/5qz9eYszbE0CwWCn5IcVJp6SXZFpT1+nOi87QieRz7tEZn5ZILRHzqis5vkAlsoW4W3dZk0MWT8xJhPZH+pV25bKloeeFkzV7ZZ8am+JRArZU2S+kWVuEGxDZtLK+lDZFrNpZUgDn8kccVVWh5FMtAX568nGSu1h5CWGzLTa7RmyvVQbQl5nqvVRBKb5J7mYw2BNHTbwDHV1OYOxbfzkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7384.namprd11.prod.outlook.com (2603:10b6:8:134::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.15; Wed, 19 Feb
 2025 13:57:07 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8466.013; Wed, 19 Feb 2025
 13:57:06 +0000
Message-ID: <2fd746c7-fdd5-4d2c-ba3c-287680c28cb3@intel.com>
Date: Wed, 19 Feb 2025 19:27:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/19] drm/i915/display: Use fixed_rr timings in modeset
 sequence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-17-ankit.k.nautiyal@intel.com>
 <Z7OBP8kdGZLtWCAK@intel.com> <Z7OGZY3mBy24LHYy@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z7OGZY3mBy24LHYy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0069.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7384:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b51cb91-f301-472d-b15e-08dd50ed4b8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bE9EekdKRzNmbUlYM2RjQk5kaUdGOVkxMTFGZjBpVldZN25qT1JEQnBVbEFF?=
 =?utf-8?B?VmhPSjRlekl3OEh0SGIxbjhrMjFhZ25FR3AvVHplY3ByV1hQcmpzUFRYcUdU?=
 =?utf-8?B?SEpWdTNrNHozVWg2Vm1vcEg1NmJHaU1EdEdCQTNTZnlST01DZUdjcmk3bElB?=
 =?utf-8?B?dStXY2QzL0VEdS9RNU5LVFliYU5FMlJORWM0UllBdmJ4bXEvZ3IzLzdmaFRS?=
 =?utf-8?B?Ni9BRFU3K213VGJ3VnNXaE95bWJpZU9GZnRXeGx1NWdISmxnNDFXVnRMVTZC?=
 =?utf-8?B?NHdldWZXdVp2TlZPOVBqY3RScUcwQkRIL0xIYi9zSnNJb1FZYnRzWXIxaXo3?=
 =?utf-8?B?bENocWFzN1VnRE80UGdadmordkJhMDBXMjZCNkdOaUowQTVJWm4rVWgxVDQy?=
 =?utf-8?B?RkdpM1NPRmVvOHZESkFCTnpsbzljSkRPNkNIcUpab2ovVVZST3JEL2pFZXNF?=
 =?utf-8?B?VWYwcjlHVDVPV1pOTXdQM0Nrd0p5eUZ3TUFUUHA0S3d3UnVPVWk3L1Y5SmVM?=
 =?utf-8?B?d0NnOU02ajdUQ0Y4V2JQdUxCRStwNTZnSExlZzVBd05jdURGdVNGRVlwMVpG?=
 =?utf-8?B?YkNDN1lYSktNSkU4bUw5OHlBSzMxenNNTjZNZGZxdmw1Nk5iRWxiOHdhdDBK?=
 =?utf-8?B?NTExNzRNMGFVNDNLVVExMDJObUUwYytjMTBwYk54S0dwTkhkNEltYXZDMHdy?=
 =?utf-8?B?aXMySWk5RU1xNjF3YmFqWVBYcmd5WUNHbFYxVS85SUU3WnpqN3pJUWpmLzRn?=
 =?utf-8?B?anZhRHp6ZEFuek9RQUlyK1hORHZWYzRnZDhWQ3RVTzd1L3piQWZyTis5TUNS?=
 =?utf-8?B?MUJCcWV2M3pEbFYxbnl6dlZWQ3djc3R2dGxXWXpLVjQ3TVVRK09jQWhwZEo3?=
 =?utf-8?B?UDNpei81ZXRBNVpFTzFEZ0h1ZlZOLzZTbjBLNW1nVER3dkx0N2ZmMFJOaFFT?=
 =?utf-8?B?RU1mbTMwbHIrVnFrdUhNRFlCaWtscFdGbVhtTzJGUWI4alJjUEdxUGpqa01K?=
 =?utf-8?B?Smc2ck5DSU9RSXl2aDljamZUOWpqRzVIUHZpaE5VSXhIVTd3QXJ3RGsyMUpq?=
 =?utf-8?B?ZzdYZGRqbDhrN1RDYlVESE5UQ1Mrb0RmQTV0ZHdidlNOYXhpMTMzR1FGQWJH?=
 =?utf-8?B?N1dyZUEydk95SHhHa2JEcXh0blN1YmE1K3VadG1BZ1NrWkNSSG05emVCY1NH?=
 =?utf-8?B?QzFjTitCcTVwUFEvOE1NMTc1UFkzQmFsSGp1VGlVZzRJT3N5a21HZzAvNHFV?=
 =?utf-8?B?TlJjSkxza2NsZzR5RDIzSFh6NThuVFNsN0RlbHAyTFUzN2Z5TVdsb3p6YVVu?=
 =?utf-8?B?WS8zT3FaSU9kemZWdlZIZDduTUQ0eUNlYjlCWGVTWUloM1BRb2g3cllSZnVz?=
 =?utf-8?B?OVJOZndvWU9wcnZWTjZSNEVzR28rOURUMUxTM0VZZE1hTEY5Y1FrTTE2aEhV?=
 =?utf-8?B?UzU2S1BicjlZVmRocHEvRGlTdzJ1eWJVaDdnZFN1RGxLZTZ5cmppSG5hOGhC?=
 =?utf-8?B?MlFhL0NIUDZBZXBnb04zSTdIZklxSDcvT1FPMUxRRHZ0SmhNK1pELzF4dU1j?=
 =?utf-8?B?ZXcrV0NBSGp5R1AxRUZQeDUzV1hjd1d2WjhtaDdndkZ0bktzMnhTTVNqa2NZ?=
 =?utf-8?B?TDVRVlhEZXhzSlVUSVUrMU9xa0ZINWxPbXFDNXY5NlZHQWcwR3lhQ2VHcU43?=
 =?utf-8?B?MEo5WXpWdWJkamt1VlhYRlROZlRoelpHV3U2akVMVnJ6SUsydXZZVEhoRHhn?=
 =?utf-8?B?d3RFVEM1ckZTR1Qxa0RFR1p6WnJUdlRnTGtFcnI2ajlhY0F0M3Q4RmxRdWRa?=
 =?utf-8?B?a0FMNkhEYktiMW91MzB2RmZ6b3dnakx2emY0Q3BSajBlbndiR2FiL1hack9F?=
 =?utf-8?Q?x9nL5IyX4R6PA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWxmU1IyWFhvR3JMTVo1VGVXOXJBdE9lR1d1NUYrbTl5L2htRFhyMU1obnd6?=
 =?utf-8?B?ZWViaG9zYjNsaXE2OXlmMG1hWk9Ra0czMS9uMzFKUGpjVVNhMVc2OUQ4RHBu?=
 =?utf-8?B?SVJWdjJ1RGFqMFZNWVRkQ2UxTGN4MWtKZGlHTmRGLzd5bWQrVzhEa2doVGJ1?=
 =?utf-8?B?Q1M2am5sZGgyNVZDMU5LV01GMTNIeUtLZS9nczBjY0hObkRwRUJWcnhkempT?=
 =?utf-8?B?TTl4OVNJV1VUN0hZOW14d0x1bDJLR283aUQwaklwN3RGZlJ0QmNCTGEzeDZG?=
 =?utf-8?B?VWZ3QTd4bC9qMHZGS25EV3htVlQxT0VjOS82RlJzWDlLWnUyaGQySWhjaDcv?=
 =?utf-8?B?WFFXNkg5YXJGRVI0Z2dhUDFkTUdrSmI1UTNGT1ZSNzhXcVlrTmUvQlRBQnVH?=
 =?utf-8?B?b1dHdmJxWnZ4ODc4d253cGVQWnRnZHlUd25HOEo0VkFkdlZWdGZLZkdoWFhL?=
 =?utf-8?B?eC8wbU5vNTRkT25pTGhQdjBEQjdLUnF6ZXFleUNPYnRyUXZta255eGdkV0or?=
 =?utf-8?B?ZUhtU0U4djdJeThJcmtPQlZLUnc1dE0yU2VMSEhCdExLcnZaY2lFNFNGTGVl?=
 =?utf-8?B?QU54dXVwNWlpMDRGQUp1M1pWRC9JSmF4cm5kMjRJZnpFM2R0bkpjTUtKWFk0?=
 =?utf-8?B?UzEzc2J5TldjcnFFZXdaTTl4aTkySk50MklVem9XN0tmT0VJeHlmdkcrR204?=
 =?utf-8?B?NlIxNVRMeUh2bDRjVWxJTEFVeVFhbGpkYWxURUF0Yzkzc3FVTHZaR3dGWWdj?=
 =?utf-8?B?RUFPNFY5ckliMTZmNWRNbDhsYjAxS0lYVzZoV1FZZzZmUTFLR2hPQnpVZ080?=
 =?utf-8?B?cE5DSUd6aVFYTTlDbHltZWN1Y3hLUjdsQUtGNU5KOU5ya1Q3T1gyWVN0WlB1?=
 =?utf-8?B?VDZJSEVQNWZ3VDdJVko2aVZJTVBiY1NReERydXMxWHN3ajdmVG1zWjFYYmNK?=
 =?utf-8?B?TEhxTmVXbm9MUkpyVDRUN1FTeFVkNS9FU2hrVXpZU0NmOXV0aWh3cFUzcnRP?=
 =?utf-8?B?aTJ1c1hYdzlkcnpKUDhoUTkvZHZpU3FucHpIOTRoNHByMXNVci9hZnl0L1Rp?=
 =?utf-8?B?ZktYdWZSSG1UUjVOOStvKy95UCtsTU9PZDdIem1tOG5qUGRHZ3FxTFdOYUFX?=
 =?utf-8?B?dmsvaEtxdVkzZXduQVQ5T1Z0ajRuZnY2OHc3Z25tM2tDM3BnVTBiK2pCeFE0?=
 =?utf-8?B?RjRYekE1Tm50TEdSZjhFaXhWakdycEEwSGZXcEQzd3g3WFF5d0YxbnhaK1Ny?=
 =?utf-8?B?NnZaSDFZK2p6N2lDV08weU1vWVJaRHExSWxkVmhPUmxCVTVFL3RRMEJ4L0ZR?=
 =?utf-8?B?VTF2TDZZQnp0d00wdUNWSHFQZmgxWlMyWTByYVlNdmM0bWR6MDcveTFGQW1N?=
 =?utf-8?B?MGZGLzRVejM0UEZITlh3RHNScVQ5NVlDTEM5anFXenlESHRYa0I0SndseUZH?=
 =?utf-8?B?RFk5RDFuOUUwL2M1UDR5WXF6c0t4bWxycEdZbmgzaDhYOFNYdGk5TzluMlBE?=
 =?utf-8?B?RXo0clkxZm1qN3J4TjFaMzhGVFJtOERlSWU0ZnpSd3dLbFF3VTRTb2FmY01u?=
 =?utf-8?B?THN2S2ZKWGNSaDBRSVRqUTR1eHlmbFJDQ0NYbDhnNytHc0RHdkNrZVZQZ0V2?=
 =?utf-8?B?TFhpa0xBSGUvRWFHbGhCTi9UcHg0cFhMVFFNZURqNS9Oc25GL0xHRS9vK3la?=
 =?utf-8?B?T1NNY1JCbEZnSytZeEhrS1NabGNvWjBJSlVmY1o2cEFGMDJUZ01jTWtkSlpT?=
 =?utf-8?B?UmNDcDZ2NnY3bVoydEx6SElGem9jclN1UzlHVGhwNDVPZXIyNmpVUHQzQzZF?=
 =?utf-8?B?RUZ4OGFGZTNyS0dNNU53T1lSWnh2a01UeHFIQmZSZEg2VEdUMEJxN3Z2NmtX?=
 =?utf-8?B?SDV4alBrRTdGdG9VSmFzOEREUHhRUFdIUmNNSTRwUXRzOUVCb1BUTk1UNVRZ?=
 =?utf-8?B?Z3k2Uzd2aTRLcVh3bmE5Mm1pK3AwSzFxc214S0ZUN2NnOWhudnhJYmhObkpB?=
 =?utf-8?B?UFkwYjEydFBYMEgzREJHRWhhaUNMS1pNS2xrWm1TK0JtYkNUaExNdjlHMTMy?=
 =?utf-8?B?Z0dCazlPYkJZa09CcGdmeGVMZkxMbkJFeVYxVi9EU1p2MW9WZUdtZExCTklL?=
 =?utf-8?B?TitOSDZTa2tjOVltNDhHdWhVU3NTRHc0OGo2NEtweTZCdFR2aXV3MmpUeTN1?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b51cb91-f301-472d-b15e-08dd50ed4b8e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 13:57:06.4979 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uSpBpJlo0u+qTNfLlpc47sqi2dBvPt9Z+2G04n+1oNs1FaKxH9NFBj5gfFt87bKV8EebebWnuQqemdCWv7xjIJKNxStledlO/LfPjvFYCzI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7384
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


On 2/18/2025 12:26 AM, Ville Syrjälä wrote:
> On Mon, Feb 17, 2025 at 08:34:39PM +0200, Ville Syrjälä wrote:
>> On Fri, Feb 14, 2025 at 05:41:26PM +0530, Ankit Nautiyal wrote:
>>> During modeset enable sequence, program the fixed timings,
>>> and turn on the VRR Timing Generator (VRR TG) for platforms
>>> that always use VRR TG.
>>>
>>> Later if vrr timings are required, vrr_enable() will switch
>>> to the real VRR timings.
>>>
>>> With this we dont want to reset TRANS_CTL_VRR Enable bit while updating
>>> the vrr transcoder timings.
>>>
>>> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
>>> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
>>>      Add TRANS_PUSH while enabling VRR for fixed_rr.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_display.c | 10 +++++--
>>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 29 ++++++++++++++++++--
>>>   drivers/gpu/drm/i915/display/intel_vrr.h     |  3 ++
>>>   3 files changed, 36 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index 66c5ad46bfea..c9d1c091b109 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -1755,6 +1755,7 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
>>>   
>>>   static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
>>>   {
>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> @@ -1770,9 +1771,12 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>>>   	}
>>>   
>>>   	intel_set_transcoder_timings(crtc_state);
>>> -	if (HAS_VRR(dev_priv))
>>> -		intel_vrr_set_transcoder_timings(crtc_state);
>>> -
>>> +	if (HAS_VRR(dev_priv)) {
>>> +		if (intel_vrr_always_use_vrr_tg(display))
>>> +			intel_vrr_enable_fixed_rr_timings(crtc_state);
>>> +		else
>>> +			intel_vrr_set_transcoder_timings(crtc_state);
>> I think intel_vrr_set_transcoder_timings() should just program the
>> fixed timings always. And we shouldn't do anything else here.
>>
>> And I think the VRR_CTL enable/disable for the always_use_vrr_tg==true
>> case should be done at some more appropriate spot in the modeset
>> sequence. We can add eg. intel_vrr_trancoder_{enable,disable}() for
>> that part.
>>
>>> +	}
>>>   	if (cpu_transcoder != TRANSCODER_EDP)
>>>   		intel_de_write(dev_priv, TRANS_MULT(dev_priv, cpu_transcoder),
>>>   			       crtc_state->pixel_multiplier - 1);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index e247055bc486..4151fcd0f978 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -456,8 +456,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>>   		       crtc_state->vrr.vmin - 1);
>>>   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>>>   		       crtc_state->vrr.vmax - 1);
>>> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>> -		       trans_vrr_ctl(crtc_state));
>>> +	if (intel_vrr_always_use_vrr_tg(display))
>>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>> +			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>>> +	else
>>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>> +			       trans_vrr_ctl(crtc_state));
>> We should probably remove this VRR_CTL frobbing from here entirely,
>> and just always do it from the intel_vrr_trancoder_{enable,disable}().
>> And obviously for the !always_use_vrr_tg case we just skip setting
>> the enable bit there.
> Hmm. One thing that might screw us over here is the fastboot vs.
> vblank_delay stuff. We might have to allow that to reconfigure
> the guardband...
>
> In that case we need to reprogram VRR_CTL from
> intel_set_transcoder_timings_lrr(), and be careful what
> we do with the enable bit. So it'd perhaps have to be
> something like:
>   vrr_ctl = trans_vrr_ctl();
>   if (always_use_vrr_tg && !needs_modeset)
> 	vrr_ctl |= VRR_CTL_VRR_ENABLE;

I understand while using fastset for platforms that use vrr TG, we dont 
want to reset the VRR_ENABLE while setting the guardband.

We want to use the function intel_vrr_transcoder_enable to handle bits 
for VRR_CTL.

Do you mean to pass need_modeset flag to intel_vrr_transcoder_enable()?


Regards,

Ankit






>
> Either way we should move the guardbad and pipeline_full checks
> out from the pure !fastset block in intel_pipe_config_compare().
> And if we do need the fastboot stuff for them then we need to use
> the allow_vblank_delay_fastset() stuff for them as well.
>
>>>   	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>>>   		       crtc_state->vrr.flipline - 1);
>>>   
>>> @@ -536,7 +540,6 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>>>   	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
>>>   }
>>>   
>>> -static
>>>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>>>   {
>>>   	if (!HAS_VRR(display))
>>> @@ -616,6 +619,26 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>>   	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>>   }
>>>   
>>> +void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> +
>>> +	intel_vrr_set_fixed_rr_timings(crtc_state);
>>> +
>>> +	if (HAS_AS_SDP(display))
>>> +		intel_de_write(display,
>>> +			       TRANS_VRR_VSYNC(display, cpu_transcoder),
>>> +			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
>>> +			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
>>> +
>>> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>> +		       TRANS_PUSH_EN);
>>> +
>>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>>> +}
>>> +
>>>   static
>>>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>>>   {
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>>> index 514822577e8a..9259964978b1 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>>> @@ -12,6 +12,7 @@ struct drm_connector_state;
>>>   struct intel_atomic_state;
>>>   struct intel_connector;
>>>   struct intel_crtc_state;
>>> +struct intel_display;
>>>   struct intel_dsb;
>>>   
>>>   bool intel_vrr_is_capable(struct intel_connector *connector);
>>> @@ -35,5 +36,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>>>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>>>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>>>   int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>>> +bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>>> +void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>>>   
>>>   #endif /* __INTEL_VRR_H__ */
>>> -- 
>>> 2.45.2
>> -- 
>> Ville Syrjälä
>> Intel
