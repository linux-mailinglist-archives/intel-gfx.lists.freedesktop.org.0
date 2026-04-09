Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHHcDoVF12mJMAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 08:21:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D173C68B8
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 08:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06E2610E71D;
	Thu,  9 Apr 2026 06:21:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hQ88YXjl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D36010E71D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 06:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775715713; x=1807251713;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=O8BKB93VWHLNph0WoB+NDNf2Yp+4gDeWE7H+t/HOC+8=;
 b=hQ88YXjlntCIyou2nCTTnVTdff3bOe88d1Uax30zHW7zzM+DdKTmb2/W
 EVJi7eHsOCMu0rJoNw3+TZJ1ALOvdj2mTurqsWEWhKU7oN5GHKa076otF
 5l5A3E0jEzmLNK+lCiHBLXamslwFILXrHPxY/odu57BdMfKAkSSvpCkjK
 j9lndDkxRLidwLqH4I9rIp1r765nVa1dXErqepcDkzZ92q49xfCYtW6O8
 YsKvqx0UjW0f/ExNV4b1tWJVi8s+sgfELVQIrzOk0vvZRfjdHDxXgiE+B
 EgksXURMDTqKR9h3kNB+NdKAXiWQM1gYGLlWwjLfwvEUeOpDSX3+yahNP g==;
X-CSE-ConnectionGUID: 9jTNERuTQUyXRDpMQryGnw==
X-CSE-MsgGUID: +OzE3zjcS22pXxeSr1MHYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="94293621"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="94293621"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 23:21:51 -0700
X-CSE-ConnectionGUID: Fa7RECaPTfqWcbmY7rQeqw==
X-CSE-MsgGUID: MC5sERjbRcuLB2Rz3dhyEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="228921069"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 23:21:50 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 23:21:49 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 23:21:49 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 23:21:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IOgEXetYCgkb4ZWl0avUHqhn1d6mKa7x0+pajQ6aI2qUFkqs/OY64AT3h/Hg6J9qEQb8YgU1/sVdEcDtsqrt91PUX3ezANHELCIEoGQ+H4bo5RNHtZETZFMbCcp2SseiujigFOmkxCxIky3cQWoNv7FrORPsWtLEj91ARX01WTskAnZgbynhgxBNssBnNNIIR/t8+qVDrnglFE3CPOytcRdIthIsZRFfc94ImuA4TmNKwWmgLm79pYIofg+hv555/+rCQ9QcTGHtu9fjBE4CNgMSdyTWPPj5IeBYHQdd7nzjfX2CXWTDCazFzaO3bLQbfUJx6SYUWhIly6Jgl41Hng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IFRCU7S0Yv96iCXeYet23Q8F6OU/PlZoe9tv50XDcj8=;
 b=jyIBLrQscRccRkXH2GxCMmeEgaYGK/0cF+6fBoA9O1nDhuUUhRIrabdXG9T4CVQr3x3MaOwpbQgb0Q9yiKz1OXSQCRmsyg0KY9sMD6PKm4ti5OExTVICG3a/5FR/p3ws7EY7Kd7lJAl3z8q9MJO8BcQq9wQQJfFOTpMNaHUI6IwHYs9XPisYBHcgNAnWYX/9rir0vyS+kqsTVu2bIvoCyS2p0F24t01dvrtQDWQySWc7JhR3b4EK77OjjlXd1O0wV7Cer6JkuWwGC5XOEvfO/dwopRNHS5uhxeTeTx/o24zBHj08o9aJ4SAwdEkXqH1XaJU8ZAAHhA2mNey2SnZNXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ2PR11MB7545.namprd11.prod.outlook.com (2603:10b6:a03:4cc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Thu, 9 Apr
 2026 06:21:48 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Thu, 9 Apr 2026
 06:21:48 +0000
Date: Thu, 9 Apr 2026 06:21:36 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v4 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Message-ID: <k6iaywibkfcpadz75wbm3iitluv2ndfaivjhmf2ib5mf2gu6tv@q2e4bsfibknl>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260408083034.2060372-1-krzysztof.karas@intel.com>
 <20260408083034.2060372-2-krzysztof.karas@intel.com>
 <84bf4789b5e801b719505da73ca95efb6b3c1be7.camel@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <84bf4789b5e801b719505da73ca95efb6b3c1be7.camel@linux.intel.com>
X-ClientProxiedBy: TL2P290CA0023.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::12) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ2PR11MB7545:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ad2af48-17dd-4292-86e6-08de96004781
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: /muIjlksL9B2H18Zjd5gyNY30OLRSMIJ9X0SUZHVgXxQXCqym652yXZphCLrfD/zsn5+v/K7Tkw1kpElUP60w2H+A3t280LKPNXChAzDhrv+/x1+FZSqS+0B07h2D8HGxBcYJgP94Semo5Iggl9MgmbMSa3zCB5KpZyBZ7zIlINLic7EY3w1wKQVR8Wr83xRUnDhNKkjqqv6b5YDg2hOn0Ma2rfKFVllm5ZbF8qw6hzD5q0JV235BsEjrOWioEl+UB7O15odztNn4AZ5VoVzlghONcVDMSTQWEKZNkRATdJfB39IA2ngI1L3n9BC80NGXwHlXfZUI0BGfVYOKOYUq1q9rvxxcLcWM3rXkDWIon+i8vJuC4jWXT3UTD+gD1QXCJQdhjlhNyrSa8wrN+w08mTvBbj4H7aBHhAsw1VpWOp7q0FqttQWCoy1iWFEOdxykYnpLD4CLIHzk8iLnzh2A4JHoN3no6Oo2czWbYVxzzHxCoWrYsEqjpchiIXtSlT+IYaCdTIQI/RYS6aMpcXLMeAE/ip7E12elAS2eehmWJzswAB1POKp4WFrcfWodPnVO6LPXdZbdLQW4rfFOFl8o+UI2ZtdmRbEXzHgxjBd8xUxm9LoGAFPUOJYc303iPiN93HI/gP63EQax654yJ27Xt1cKklLKh2j11NoR5gJEY5ahWYn7NE6GEFcf/zcHlXALuw7Kx3EAt67zcsdNVsO/HXoNhJWKga8sawtIYxAbq4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTcxd25YOHNvYXptbjQxZjRWUFpNbHJVY3owZy9XeWNOb3djNVdrWUJ2SWtI?=
 =?utf-8?B?RWJwTExSRHI5U2pLMVFtWXJKSzFzbm40NEFEdW4zN3hoRGljSnQxbDhGTDdv?=
 =?utf-8?B?SzRDTWhNQjd4aEw5N2NpU0tvdlJaSEZtS1RCaFQwS2sxa1M1aWtvM1QvUlZr?=
 =?utf-8?B?ZlM0UENiUHdYUWU3cFFhay9mSGVXL2NSNlRMVXVCTlZhdm1tSFZ4K2xlOHg5?=
 =?utf-8?B?VUVQZHRiREVINjlTRk4vY0g0OGgvYjBBVEJvVHVzQjJBMWJWQU45aVNCeklX?=
 =?utf-8?B?Wi9ZdmM3dUV1RUxmYWNPellxQ2VzUmpZbTJYa29CR29yMXgvWEtwWWlPcGg4?=
 =?utf-8?B?M3cxaDlsTUN3aWc0VWx4bXQzVGN3NVlUaDBzY2NNUW5qK1dZRkNocVlmRXJF?=
 =?utf-8?B?dEJmWXNuTkxkdEN2K2tZZmhWVllqL0ZZMlY3OWRwVC9BSkVWTi8yQkdzRFRt?=
 =?utf-8?B?ZXc1RWsyNnVPVTl4TnArem02OGtoT0F5WUxTeitsYlB2QlJXN1djSkhlWFpr?=
 =?utf-8?B?VjhFeWJCNDBUeHhydVlUcjB2MHdvejR3Yk0zK3FoMCtTaTdZQnplUUxHTHFs?=
 =?utf-8?B?NU16aTc2SG9NRFYwUTBaZnNGc3d2b3JIc1BZK21Jczc2cEpZYm5DVDY0TzUv?=
 =?utf-8?B?WG1hbjRSQXljMWNyS1VxNUl1RDNnWFlzTXIyZldGN1pNblBWbjhJOEF2K2w4?=
 =?utf-8?B?MTN5bXRoam9VdHMzQllzZnB6UTdOZEpJWmI5UUI2VGdJdkV5VkFDWVo0eVZH?=
 =?utf-8?B?bnF2cVphSWVxV0FYVWhrZE45S1Bwbzd5WWwwaEZPOWtFeDh6SVV4Mml6bVU5?=
 =?utf-8?B?TnpwUkgyamdyMnZRL0tRdGZiSjRJS3p0K2pDRnF0ZWpYZmx2QzBhMHRCWWxv?=
 =?utf-8?B?UTBFbkJTQXJRdVpMSW55UUlqTTRWa3dreEhYMUVyYTEreUxpSU9hNEhVZjkv?=
 =?utf-8?B?MU9lRk4xVWJhbDBiNURoMkpLOW1RTnE3WXZUNU8wNVBlQXBVamtXYnBmVy9h?=
 =?utf-8?B?OG5VZUdJSVViVU5NOEdrVy94dmNYbXRoY2FtVWg1UjdxSjJhTE1uVEg0c2V5?=
 =?utf-8?B?NDRFMDFDbGNTY0lUQUxHWUNla0tzSlB4cFBacytjN0ZkQWdFWEVBUzR4QXFm?=
 =?utf-8?B?WHUySiszdTJUbGJPbXMyWVVyQ0l2Q2wrYmoza3BaeVZTUWJYdUtKV3Z3MVhE?=
 =?utf-8?B?NUxCeE02ZDRRSlhQUVN5YTBqVzhiY3ZxL3F4OUs0YXhLaWRHeFUvbmkvZmdY?=
 =?utf-8?B?emFMWUpjTDRiQUcya0xKUEF5L0VoSVo0ZDZGTGpodUs3ZWc3Z1hIMHJnRFo4?=
 =?utf-8?B?ZTliaUJHc2FzSFVFUjZKTnIyYzcyMXFMdEdnaVF6ZVRiUGk3NkoxNTYrYlp4?=
 =?utf-8?B?TG5pb29IaE9ZVEpFTE9QVHZOMTdaZXhRbG8ySHRLNXNvT0ZDTEcwN0tqZHIy?=
 =?utf-8?B?b2M5OTBHNXk2YllhYXk5TlR5OWpWZWVZYjZBSGxnd0s4MVM0TjdnWVJETUFr?=
 =?utf-8?B?NjZ3aVhvbFFpQ0RleTVEUHlkU0oxbmpTWTk2SGRlNXZjS1FuUm5WcytZQlNV?=
 =?utf-8?B?Z2FZakhMbVkyaTZ0T2ZwSzlldXhQTW0rSXRrUHVaRU5ySTNHNEUwWXlRcys3?=
 =?utf-8?B?cEtXSW5BUGtCczNjNlF1c3FTWWMxSXcrdG4zQXY4WUtIa3lQbXRqcFpISUJS?=
 =?utf-8?B?OFowZkV5Ly9WK29vQytzVFpaRDZvMkFPdHBva1hpRURTbkFBelJ5d2t3bHVu?=
 =?utf-8?B?Z2NvaDJseWFHUDl5SHN6WWRWeEVkQXJkN1pMRTY4NDM2ekVTdC9TakhiYlcy?=
 =?utf-8?B?M1RQZ2ZRSXY5dmNxNkNKOWlWOHJkR0YzdmNrZjRPOFBKZEhMY2tBT29oQ2Nx?=
 =?utf-8?B?Z1RoSWEyYWNnKytVRXBjbXlHZU1ZWjM3ZEd3VzhFVjlEYjVqUTFvZmtSOXdz?=
 =?utf-8?B?eTMxbEtKNlVTcG9NUlJaeXNwbS9XOGh1UitxK2kzUzBFaXQ2QWhINlRaeW1v?=
 =?utf-8?B?NGpuYUFPTm9xbzVkZHlOSVhZTGorYUxmbDJZbDJGbk5Ccno2N0lmMUpVekZh?=
 =?utf-8?B?dXpWNzRPd3RPTmNrb28wVzg3aUtYeG93d2pSemM0Y2t3VGZLNW1KbWxpVnhv?=
 =?utf-8?B?WmNiREMyZjVCRUtHc1pzQnVrUEpXN1BMeTZmd1U2NnkyQ1ljR25GTGVZT2NB?=
 =?utf-8?B?LytaclpCVFBpU0JCLzJoeUVLUHlHbVJ4a2RCM3ZUTmI4MTA0WjBIenNsaFpG?=
 =?utf-8?B?elBrVlVlZjhaRGMreWhUNTBlSm11ZkdMMHlCbm5YemR1aGYwVjZtaG5CcDFS?=
 =?utf-8?B?VmxEMFBRV3V3S3hkYk1HY21JUGxlcFcyVkVvSGdVUGQ2U21INTBwUSsydWVu?=
 =?utf-8?Q?o+ZaU1KcURBZSs64=3D?=
X-Exchange-RoutingPolicyChecked: I9DRZ3xJnRZ+bQj6RGriaRMhlXdRt8sBU4zOrvEDc8lQs51rGfCXZetbgp3Q/QXohM3p7+MaVxqX3x6wiLzFVJXtqbX8XKvNoMxqEC1+nhJ2HZkXUnzcc15qLfOuyHDm3Vn5QkjKaKS4SQ7I36Mb0YmshQJT9q7+npYrZGsWBzgk97nKSizRKYSAyeDertqg9EWb6rvUYO8IPvEJHc4xpUTQ82C+9d/fXJ7dfsmGD2OimAGekbwlAmq0N9kRO6uq0xaKSBtVXG0n4gbUfpPy65pPh485K1hPFoVxQCaG+eK39A8SHr91Lcv0A2opb89wX4E+v7LgyVcCmq6h2YNaWw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ad2af48-17dd-4292-86e6-08de96004781
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 06:21:47.9379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BumwC03nEYJGNG4lWZlIC97+jek3Sxj/prAwyk18kZGijK1+B9GY5rQ6xHVWkIZMI+TdWLxN2/TKaHoNii3J5SqedNi6L1d4ZxOOlsgPIOA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7545
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:janusz.krzysztofik@linux.intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 93D173C68B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Janusz,

[...]

> > @@ -35,6 +35,7 @@ struct i915_selftest {
> >  	unsigned long timeout_jiffies;
> >  	unsigned int timeout_ms;
> >  	unsigned int random_seed;
> > +	unsigned int userspace_pid;
> >  	char *filter;
> >  	int mock;
> >  	int live;
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> > index 8460f0a70d04..45fe750b799d 100644
> > --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> > +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> > @@ -186,6 +186,8 @@ static int __run_selftests(const char *name,
> >  			   unsigned int count,
> >  			   void *data)
> >  {
> > +	int u_pid_nr = i915_selftest.userspace_pid;
> > +	struct mm_struct *mm = NULL;
> >  	int err = 0;
> >  
> >  	while (!i915_selftest.random_seed)
> > @@ -201,6 +203,50 @@ static int __run_selftests(const char *name,
> >  	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
> >  		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
> >  
> > +	/**
> > +	 * If we are running in a kthread on a multi NUMA system and the user passed
> > +	 * a valid PID of a userspace task, then we may borrow its address space
> > +	 * to prepare a safe environment for the mmap selftests.
> > +	 */
> > +	if (!current->mm) {
> > +		struct pid *u_pid;
> > +		struct task_struct *task;
> > +
> > +		if (!u_pid_nr) {
> > +			pr_warn("No current->mm and no PID provided to safely borrow userspace memory from.\n"
> > +				"This may lead to switching off tests requiring that for mappings");
> 
> Most selftests don't need current->mm, while the warning emitted from here 
> will unnecessary trigger CI dmesg-warn result for any selftest.  I propose 
> to decrease severity to INFO, and instead, add a similar warning to the 
> second patch.
Hmm, fair point, I did not think about that. I also already saw
the other mail under PATCH 2/2, so moving the warnings to the
tests that have the requirement makes sense to me.

[...]

-- 
Best Regards,
Krzysztof
