Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2C499E3CB
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 12:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7141210E039;
	Tue, 15 Oct 2024 10:26:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IQgbkNY/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9561710E039
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 10:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728987983; x=1760523983;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b3Uh9e92aSem9Sb+5m1YMt6kN+C3XKZIV5SZigcPBUU=;
 b=IQgbkNY/MPv/zOJ8KUDbC20DOQY5CqEZuZKjAaXsFngr9oov8bKYWzmY
 NIboe30OzV/f+MrfVpbzN/ehCPk78GwUyLoZ5LojJwgBIWzJEBfpK4IPR
 np/zczYH649V0zrTLz4zlfpdoMvS9C63P9be7qm4xGXy2TDfjgDuYMGES
 6HVX7XEVgcQ2AIJxUzJTf+2uGJ7+JZCJi6XFwgcpMTwGYnYUqQntVSWzV
 CySwFitPKoJU1+ojMbD/x7uQqywgkBggYurBNGJ2v2TIGPKLKH84lxB0j
 oKi8PtfAASjR/cFJ3NTHTvYLNxER4SysTlmKLW6B1w3nH4LADmF4DC0zx w==;
X-CSE-ConnectionGUID: l1Nbw6MwSSWzMzFk5pHTjg==
X-CSE-MsgGUID: qw5ySnLnTSm7gf5t0UIW3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="53780972"
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="53780972"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 03:26:22 -0700
X-CSE-ConnectionGUID: 2px/hf60To6fIlFdGyrrjA==
X-CSE-MsgGUID: x/hI7jE4TZSGdAabAUbIxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="82643858"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 03:26:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 03:26:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 03:26:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 03:26:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BykcL1fWswY9B4ywvMKtlOxSFMkWkjQYmRgtCK8X0MB3ehDCjD6lgQ3Fx5U3I6pD9YtDVhWchk6lnUS0IX54kfT7v4iG1ZLcThe4IPiTLxEWW8vn4QVQ8p/WsJ2a1Rl5GXaj55Y9YdbRCgNemx+g73Gc2Y0dUgNXl100kHczY+3GXQ73/MFsKUBbps78Pjc1X8fMUAxXpxBUD7/H7aQsLOQZfpwekjjKl4ivSLK+3KYN7S61qQpUtQEo96hDmnddim8Fl4ZaToiwJnq0wEyIuzQMdcdMKGjU46oIcYbVji17qhAB+GfxeXan9OvN8rK8dpL2MYum9uHl57X+tfxOyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HjXpvEPmRicbRBFXaii+uuGVK99fEZr3EDLM9KEbRDU=;
 b=pA1U6OFZQ0vEBji7jfYU7zthCazQ7yb69GSWl4R5iP3GoxfKQTVzOfGLIqwMgsKEbPTDsAJfRyGVdYk0qigQuAqJK7rxryoroBVEZX0mVcZsnykwuw00WXbqQwYn3Rnm9a8ZhZje+AZStvqbGK1Ij5McnOk/iB2Jf/jG7PENac7NmqmhKInv3Vy53Wn3kostCqE+W7O2YgnlDJGMdZOEklknquZnVgT6N8G+hvRvoXi0rFRxvTGqFzDbgYMDNwIkoM3qHipqh5b4mo4owQ47FqTh1ou7wwXpk0NNP2zW9bqp+a0KKJGc8yQB+K2A60DJU99GVBxn1RzhCP3B9pfJgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 CO1PR11MB4881.namprd11.prod.outlook.com (2603:10b6:303:91::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8048.27; Tue, 15 Oct 2024 10:26:19 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245%4]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 10:26:18 +0000
Message-ID: <e5b7b830-2c7b-4e64-bf5f-9fa06a61a78b@intel.com>
Date: Tue, 15 Oct 2024 15:56:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] drm/i915/wa: Introduce intel_wa_cpu.c for CPU
 specific workarounds
To: Raag Jadav <raag.jadav@intel.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <matthew.d.roper@intel.com>, <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <badal.nilawar@intel.com>
References: <20241011103250.1035316-1-raag.jadav@intel.com>
 <20241011103250.1035316-4-raag.jadav@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20241011103250.1035316-4-raag.jadav@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0157.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::27) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|CO1PR11MB4881:EE_
X-MS-Office365-Filtering-Correlation-Id: a89d7764-67d8-4972-105c-08dced03ce7f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T2RDMnJrL3RuWE54RENNRzFUZEhjNm10dCtRWnFzOUFwOURVQXZJMWZaVGJa?=
 =?utf-8?B?UFdZUFhPWEVpbUkxTzVUdjFSK2xZdE92TjZnYmFicCtKanZTYTBZWTIweHdX?=
 =?utf-8?B?ZWJlV251S2Q0R1UzUnlQRW5rNm95dlhBM2RmTWE4aUpxdldJeXFQemg2NnVr?=
 =?utf-8?B?N3N2Z2NrVkNjS09mS1VFRnJFb090MkhSTzNhT3A2OTQ3OHFGYVNjRmxsTURI?=
 =?utf-8?B?a3d1bDZWeGk5UjVVZUpQTVloYURsU1FOWFFpYzlkMmJ4SXRkU0xuaGorVXQ2?=
 =?utf-8?B?NWZBY3hmbCtWcHVqb1lpZ1dIUitOcm0rZmMzN3JiN09scG9iM2gzMWhLYkNT?=
 =?utf-8?B?WHFIa1RNNWllSU9ZVlArTnNUeDdHNFRUeDdxS2YzWU9FUTl6RDNTVENWUE5L?=
 =?utf-8?B?QU5EakNPSmtqbEFaT0gyL3BIcHU0Zlo4b0EvNG5XSnVySGZaUml0ZnUrY3pD?=
 =?utf-8?B?T1VlNFcvNUVjUVl2R0ZpOE9Cb0ZFdVhVZUdKZURyblBEa1czVGdHTDZUb3do?=
 =?utf-8?B?VFZ0a29kcjlaYUFDT2lsV3Ixcjd5UDUvRmthTmlFYnRZR1JrYi9EQThzb29l?=
 =?utf-8?B?YVkzaHFac0d4ekRXcFlkc2JnVnNpSU5pQnRPdUVROWE4S0FEVUtqQ3RoYjB2?=
 =?utf-8?B?NkJsS2dHUHhMb2hyNExwbVZUS1dwL0dFLy9wY1BPZVdHS0FsRVMwMHVKdjlO?=
 =?utf-8?B?b09CM0Y2YVVoR1RpZGZ2aE9WUFE2V0RWM1JiUGdPNlc1TVZMSmw5b09QdHlN?=
 =?utf-8?B?czJSQlMxR3BnN05ETk5LZkJBWjdqUFpaUnc0YnZyckdOVkpsV0FLazRTUmRa?=
 =?utf-8?B?eXVkZXhYQmtKMjg4c2xycmc2c0MwUFU1cUhVMHp0OGxueGVTdDVvMmV2eWVD?=
 =?utf-8?B?UGFHZ244eCsxdFE5c3dZRDk2VFl5YXFlTFNVVGJKN1RFQlkxTDhxWUhsK1pj?=
 =?utf-8?B?VzRYS09tQk90UlhZbkdhS3VXSHdGbE5IZmdwOS84VXZSNGN6WVhoN01UaGZl?=
 =?utf-8?B?Qis4UUhhSE9seHpFR3dRK3NZaVp2aDVjMVhWU1oyM0tucjhUYXVnbC91UXhX?=
 =?utf-8?B?SGR2bWJlNzNKdFpjSTh6c2RtV2RsN2xhSHVOdVMrN1VuVzJxMzEwdExqYW85?=
 =?utf-8?B?Rm9YaXlsekdCYTR2VTdVemF3YUR4QUF0ODNQTXU5WnE4RnFxMzhIWlM4WDR2?=
 =?utf-8?B?NzQvYTlqaWJFK3c5WnhWSURVcGNRSEV5YjB2ekpiU2tDTThMOGRGV1c5MzN0?=
 =?utf-8?B?U0I2TUdoN0diZEs1dlFFQ0ozc1h4ckdnTVlDcitIU0dxdFBpZ0loWmtudno1?=
 =?utf-8?B?UGxJSGxmdFFMVEtyU2tiSTJpZE0zcUw1RnlUQVMweU56WnQ0cE01L2FKMlU4?=
 =?utf-8?B?emlCYW0wREtKNGJtYlIwSUxrNk9zYzBGM2Qra0lQTmYwYmJob2FtTjkycW55?=
 =?utf-8?B?SFF0bjBMNFRuaFdRQ29YeUZJVEhEQ2pCb010VHdTc2gzNlVuKzNLNnVtbG1L?=
 =?utf-8?B?eEZzeFUrZkFPNFcvbk1Bd2owMXlqREs3QktVOE1YZmg5UnpyV1JvRGVZMXN4?=
 =?utf-8?B?a0FYUlExelhqSTV4cmJPUEI5ZnFQZks0K3VxU3RUU1J5TXkwVVlibElCNEo3?=
 =?utf-8?B?ZndlUVdZV2ZRKzUweTZnT0Y2bmRlY0hyNWlNWW5ZRGxJV0kxRk82RG5RWmY0?=
 =?utf-8?B?REQyNkNmVDhhQmtWYUpYNGloQnNENGlnMzVFTWpmb1hUZjFqdkNzS2dRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1pNS1hkQnEvSVRaS3JrSlNuMDgrbzlVcXRWM3F1TmJReEZBMW5LMjBEekEx?=
 =?utf-8?B?a0lEcEQ3Q1hKYXJrNk83UmNoREdlYUVXN2ZsWGtIZVhLc1lQaUhJOTl3R0Ni?=
 =?utf-8?B?cGltZC9aMGpXWUZJZkx0M1RRQ2EyU21xMnVBQWViS0FHZUhhMmJHbE9qaEJZ?=
 =?utf-8?B?dXc4czV1ME8vOUtkMElVMWdFT1FOUWJyZjhGUWpKZ0F2UnJCNmsrQ1lXcUhS?=
 =?utf-8?B?Yms2bU5ra2VPMXUvMFNqYXZXUGZoYzZDeHFIRmh5ak0rYVpINy80TGFvUG5k?=
 =?utf-8?B?S3A5QTlrSXF1R2huYUpjYVNSRHk1aHpFU0N6WmUrVEJtZlp6L3lWV3doVFZD?=
 =?utf-8?B?T3hjWSs3alYvekt2c21LM2NYcmhJRW41Njl0R0NleEZMMTh6RVdkazlRR3Uv?=
 =?utf-8?B?YmVFNlNJT2hoV3pSYXo2VzZzSzcrMXZydG43KzlMSUpPcERoak9Za0NSZ0Yv?=
 =?utf-8?B?VVE2cmU5eEdHVE1XVGFyWThlT1VGT29USW10ZUZQUXorTnpiaHJvUm9kL1Ft?=
 =?utf-8?B?eG0zQTVoeWluTFJKWGFlS0plRnFsU2x4QTNRQmUzNnE3M1JveFNGVnltVGJm?=
 =?utf-8?B?eDlIUzZLK0IrWXZRZEVHRjA0MnFxMC9TdWhITGtXcUZXK3V4ZFpxWk5oQXJ5?=
 =?utf-8?B?NXBxcUE4RjVXcTFhNWJLdjR4L2xuUkIyb3NvTWxBWm1QU21HM25aTCttU1gy?=
 =?utf-8?B?b3kraElLUlNMeHQwVnJqcFlkeWNRTFJodm5PUThXUklGZW9NeG1IZ2JkK0No?=
 =?utf-8?B?WHRMMDFkSGVON0dlNFpEYi9WbVBSc3hqOWVjOCtHaVYyaDYrWXBIMjdMVmhZ?=
 =?utf-8?B?eTNVRm9YWHo0S05hMy8vK1dublA0YnVvdlhwRDBkdXcrY1B2bGdlWllnOWFJ?=
 =?utf-8?B?YWJsZktEbHZEK0pWZ1E0bVpRZFhzRkFpdmdTZU9ieS9mMWlraVQ4Y1JMV1VP?=
 =?utf-8?B?UXZRbkdtRWppSEs4YWlmL3ZuUkF6WFhoQWNEZUljaXZVSmVvSnFQaWI0Qk1o?=
 =?utf-8?B?S2FPODM0SWdiZW5wY1dmVEZid08zNzJ2Z1hLTnpTbytHRE1MbnlWeERPa0FC?=
 =?utf-8?B?UURIVHJkTi9mYkN6MVJrYVZCSjNCNm8wbnVNdlYySDJXcCtTQm1mc0JyN2Zm?=
 =?utf-8?B?WjJVWVJmeFk0Y3VZL1F5OUhqaDJGdHBpRmFZQlU5RFkvZVZTTFp2alIwZUdI?=
 =?utf-8?B?K0wvSE1JRUZFU3BKUGpFcUJ0a0s0QU5uV0dvbi9BMXVZTDI5akZnSHFnRzhL?=
 =?utf-8?B?SkErL3ArV2NNbGFzanB2UTFNcWRmajJoM0p6THhPSnQ5QUNSeXBYcmhOUzY3?=
 =?utf-8?B?Ni8yYUQ5ajhVd0lseXZvTEZUYjZSeHUvam52VU1JWjRFbjQrSTRFdFVLaEpT?=
 =?utf-8?B?M3M2S2lxbERpWk85TnVwMWFTMk1kVU1TRmxPeEFyN1J5WnpqajhJVHhmUlg3?=
 =?utf-8?B?SHRXY1RJQ09FRDBodnd1Tks4Q1RRWGNkWUQ2U2FybVpGekQxbjFiNWZ6cnhW?=
 =?utf-8?B?Yml0L0krMnFETXRvMndwTk9ic3BTZzdZRk4zY01hR0JTdTJxYTFGYjhiNmNn?=
 =?utf-8?B?djdSdXdWZVNVVzlIWHJoREI3d3NhenlTY1lhV21MbFBKaGF4Q0hGeG5GamhS?=
 =?utf-8?B?QUFONkRPYkN5SkVLcXJ3akhzdzFaWUc1ajIxRHY4ckZQcytianovSndNcmxL?=
 =?utf-8?B?NE9MdGYrbjRWaStZcEVsb21aUkJvdkdvL3JUTWpicjNNc1RJWE1OUlVTUUNE?=
 =?utf-8?B?SG9YQ3NQdE5zRnRSVC95Z2lUeGtVZ3ltNXRENXdmOURUSHR0UnVrYy9FSXBw?=
 =?utf-8?B?WHNFM2QwOGxYTzJtUC9TekVWZWtyWEZaeVdLRFpMaGMyQWFpQ2tKcGhXbkM5?=
 =?utf-8?B?VDQ2anNHSlIxTHY4YlgyMnpCU3YwdlV3aFcyY1BLc1NIRFhXTmRZcGhCT0F3?=
 =?utf-8?B?RlBxSWZsZXp3UFVTbENib3lnM0h0UTRzK1BBcDN4WDg4RXFSWFhzYnNFa3l6?=
 =?utf-8?B?YStzV0hlMlJoUy9INEhCOE9oK245VXFRbWg5VzFlV01BaUsxQlBYd1FBY1dV?=
 =?utf-8?B?UzhQZnhyaXJJMnBqQ1VqbHFqUURNWWs3d1doeEEwR2t0YUdEMUV0MnFsbGEv?=
 =?utf-8?Q?cjHLQzEJ1Mv1eDd9IBPUIpUcv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a89d7764-67d8-4972-105c-08dced03ce7f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2024 10:26:18.8200 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /RKA/vX2xtPbjKXgAmVRLYvw8cWqHxt+4oSHT26RobRiWHOUjmnnMNmqz475VnwjtTyC3yVDYXwpdLNd+LpNoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4881
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

Hi Raag

On 10/11/2024 4:02 PM, Raag Jadav wrote:
> Having similar naming convention in intel-family.h and intel_device_info.h
> results in redefinition of a few platforms. Define CPU IDs in its own file
> to avoid this.
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile               |  1 +
>   drivers/gpu/drm/i915/gt/intel_wa_cpu.c      | 34 +++++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_workarounds.h |  2 ++
>   3 files changed, 37 insertions(+)
>   create mode 100644 drivers/gpu/drm/i915/gt/intel_wa_cpu.c
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index c63fa2133ccb..1f9b503ab976 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -121,6 +121,7 @@ gt-y += \
>   	gt/intel_timeline.o \
>   	gt/intel_tlb.o \
>   	gt/intel_wopcm.o \
> +	gt/intel_wa_cpu.o \
Why is this file under gt/ ? Doesn't seem to be gt specific
>   	gt/intel_workarounds.o \
>   	gt/shmem_utils.o \
>   	gt/sysfs_engines.o
> diff --git a/drivers/gpu/drm/i915/gt/intel_wa_cpu.c b/drivers/gpu/drm/i915/gt/intel_wa_cpu.c
> new file mode 100644
> index 000000000000..cbdab13e9db6
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/intel_wa_cpu.c
> @@ -0,0 +1,34 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2024 Intel Corporation
> + *
> + * This file is introduced to avoid platform redefinition from
> + * intel_device_info.h :(
> + */
> +
> +#include "intel_workarounds.h"
> +
> +#ifdef CONFIG_X86
> +#include <asm/cpu_device_id.h>
> +#include <asm/intel-family.h>
> +
> +static const struct x86_cpu_id wa_cpu_ids[] = {
> +	X86_MATCH_VFM(INTEL_ALDERLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_ALDERLAKE_L,	NULL),
> +	X86_MATCH_VFM(INTEL_COMETLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_KABYLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_KABYLAKE_L,		NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE_S,	NULL),
> +	X86_MATCH_VFM(INTEL_ROCKETLAKE,		NULL),
> +	{}
> +};
> +
Add a doc

Thanks,
Riana
> +bool intel_match_wa_cpu(void)
> +{
> +	return x86_match_cpu(wa_cpu_ids);
> +}
> +#else
> +bool intel_match_wa_cpu(void) { return false; }
> +#endif
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.h b/drivers/gpu/drm/i915/gt/intel_workarounds.h
> index 9beaab77c7f0..12f24fb31363 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.h
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.h
> @@ -21,6 +21,8 @@ static inline void intel_wa_list_free(struct i915_wa_list *wal)
>   	memset(wal, 0, sizeof(*wal));
>   }
>   
> +bool intel_match_wa_cpu(void);
> +
>   void intel_engine_init_ctx_wa(struct intel_engine_cs *engine);
>   int intel_engine_emit_ctx_wa(struct i915_request *rq);
>   
