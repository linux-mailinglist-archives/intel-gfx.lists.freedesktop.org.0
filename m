Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8726A08168
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 21:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93BF810E48C;
	Thu,  9 Jan 2025 20:32:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eFHlhLbr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3649F10E48A;
 Thu,  9 Jan 2025 20:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736454751; x=1767990751;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bHEbAz1UFQKsYka84dBE6XOASKwxstFgUCfX7lQC7ek=;
 b=eFHlhLbr+lyq6u85e/yYWmIXwljcCC805hpkp/RgYxR9ASDGL/zqONb0
 B41bxE28L36CMYrcJWfT6m/tma2le6yC9EndPf81umDSuHJ1JSkUmWJaJ
 /xIpm+t+4SGTMRPfog8p+JJjhGJLaVXHfim8PIMUZk8rSjsfYWyQp680l
 hXh3gNG4LlS4Zbm8YDgEJ/XSlUzWhFR4kxAcgMH16hGjsvAu8G9jcRGsd
 ApISxP45kLjnGilngWRj8qPzT/M4wnL/CIg3l/RTIlUfbLhgR8wKujcaN
 xTi8axdDUl9qCGyJLI8VyxWm71PX2orinyMWu6Grq3IA+HTV6+NV5H485 A==;
X-CSE-ConnectionGUID: hrMAGrYwTGajHleK8zrOHw==
X-CSE-MsgGUID: jCHOfXpKRte9Bw9fTW+pwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36428806"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="36428806"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 12:32:31 -0800
X-CSE-ConnectionGUID: X5QIzq3JRDGpUrzkq2APhg==
X-CSE-MsgGUID: 6jdQQMMeRrCHny6sV8UWlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107554934"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 12:32:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 12:32:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 12:32:31 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 12:32:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ehB84SCSazmFLLmdUQ8JPhHIOE60OvhWF4y4dmucoq8/gfpDhqo/IycRHOjobClmgYucpLSd+rJ2HptkVHiJaXtEBssoAQVQScX+1+YL6P/52jRFDK8acZowA3enemxPiIbNPffDcjsXBl+FnjdsPNO/BrI5PRIVlj3GEWCuoC/wcEwaFzNRVTWkPujoZ4dOTjES/Cv4Rnbo56RyR5ujF8nezOZWiIcHFJnCxfy6jQrxhONOM0Vwrgn5oSaLwQrOrpSnQ+TwSb6AIMbEqe6RwfII+TE0ROOO4uyvXCDrm9Yl1YRTsYU0b8IXIZIjgamPSwSlcXmT5J/CqebfOld1AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vnfXh9hUlMazG3mRE3KxE5l5fglfuhyNmw5UxK3KxGo=;
 b=oXWPEcbKUEzVfLqGibhJA++4JBwRkNggKgvUZj8TsO49xaYf/erNisbR8Lbfc96otIiIMMYwvci81x5/TfBhmK2dcZDH+sOucY5/YROXE2Em94DZ2C9D834IgJYGJSJRmseVP7q30z2CYNbzFg+K9O3xKLYHVSFYLN/Fq6p7XRBKDTvLcaq/qKx1Sy/O2U73h4SFCowq0rAVi+q6KiYa6tly8QjV7hUZRU0Dc0XXODs1IdOUXcnDL0X5J9daSJfd/p2x8+lWUgcbHJ7tCjEWutf8Tl2UAH615ygVzuStphwtOPQCVfHmF418E5vi2Ba8hnjW5xztnmEvnJHI1kceBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by BL1PR11MB5318.namprd11.prod.outlook.com (2603:10b6:208:312::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.13; Thu, 9 Jan
 2025 20:32:28 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8335.011; Thu, 9 Jan 2025
 20:32:28 +0000
Date: Thu, 9 Jan 2025 12:32:26 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <I915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?= =?utf-8?Q?ure_fo?=
 =?utf-8?Q?r?= drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value (rev5)
Message-ID: <20250109203226.GA5109@mdroper-desk1.amr.corp.intel.com>
References: <20241217201301.3593054-1-dnyaneshwar.bhadane@intel.com>
 <173637863039.1439618.9500058240291734180@b555e5b46a47>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <173637863039.1439618.9500058240291734180@b555e5b46a47>
X-ClientProxiedBy: BYAPR01CA0052.prod.exchangelabs.com (2603:10b6:a03:94::29)
 To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|BL1PR11MB5318:EE_
X-MS-Office365-Filtering-Correlation-Id: 69cc2f33-6393-4026-27ec-08dd30ecbc5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?AvKKXOuNYvotsqMctLgv3ir5Tzh+LefA9LjNrnICb1FI9ryT/QdnL+9EtWCz?=
 =?us-ascii?Q?rhOTRaQCSgu+oDnT/i4b+5Zao5QoXMdAA/D2S+bnYUNgdCh4RCw3dKduIEm7?=
 =?us-ascii?Q?8Kr9nocrCsmarcmTeKQQHyQAXLn7dQDPsz3sdZoJkwJDeC3lIa/xR3pn6FbY?=
 =?us-ascii?Q?exo5xQUStClpadLpIwp8YehChYDUrIYyobeGEpElJhZF2O0ew4PQRmTyPkLq?=
 =?us-ascii?Q?VuT4GR5sei6fj/MN80Vl1/8J0iOIUOvBoft9MorKlipTZUTQW2Wjomdja310?=
 =?us-ascii?Q?Igp7siiGbvSShg3pdIQ2TCTxABPrHTAqzoClkSC24P8nTFmhE4aIU9VJxGhJ?=
 =?us-ascii?Q?1b8z9KCoNtX1cE1D2xlX4ECaONBUbPPNwSx4F0p9vY+/ZqlR9aZwuc5yhDXe?=
 =?us-ascii?Q?KJ/+b26Rd4Y/TaxJcLpKo8zxWR49mhjwMJlbbYX6lF1N0zuuJWmYpOjNL3Mu?=
 =?us-ascii?Q?rJFWLLIM1i6vvP0uyy5sR2CW2JaL4/+nqF+gOjjvK5tBAy13x6sDl+iKGss4?=
 =?us-ascii?Q?5/9Uf9m2wQlv04UQucps4fNOz154L2OVXSLYumoyk3wYywgnDlwEp0uMSBbW?=
 =?us-ascii?Q?gxKPz22ZtQ/YnklQ12wdRFwLl+ekEBYeJqvT31mnBXifNF9SrPho3aw8eRFu?=
 =?us-ascii?Q?7gQi2n5u1WP2nlpUeyCp0Qe6iYgaWihN9H4YVZ+kQEZYP73xFcwtNixjYIXG?=
 =?us-ascii?Q?ZrLT8U/iWECbD/xOuz8NsMr16i8KUjt0I6yb/Ss6sUCI5lL+j6h6DfDiOQaF?=
 =?us-ascii?Q?Z1nFytk21oqJuSh30KrPQLclDB0jpmBWTP7YsZPdkPP1oGS9wj3T22popuTi?=
 =?us-ascii?Q?yg6oX4sWqq9Ukm0cIxm4S49oU0svvEnJmesG2+6AoD/GehgagKqdbfFegrMO?=
 =?us-ascii?Q?q2EsSGuGRZVM/f2qxsY87cszKCQDamINFUMaJ5U9a0wgNdxvaoegWEc+c6Q5?=
 =?us-ascii?Q?JHsW4JNM9L6TXqt6ubi+zCQJqcG3DUzqPnYsnNA/qnucyndLkYR6PmAFsFni?=
 =?us-ascii?Q?tUqvcXpbE/nKD0sZw93ajxCH9DCDXu6Dy8Pey0D5A0sU/ZhSkaM9fZArqMMk?=
 =?us-ascii?Q?rIlQSPxIuFft98X/9nJS3FYFVvCQOg/alOlMSQQYoo6HwHUDX2FzarcRqdEI?=
 =?us-ascii?Q?8MKYzEDEntSm9rziNSOSdtGI8OGKEpyh6JIXZdJtwG2qHT/3TESMaHdHcWVX?=
 =?us-ascii?Q?bCXDTOPIMM6/BuUE2ovI2vJyx5BlxdVd4CszVQp1sXiVi+NEsYA9uCvjR9hN?=
 =?us-ascii?Q?Jn8mdRhbcHTwTNpAa1Pe3ugrTjApUnrSP0ZVrCNmDQDadrXAA2R915hpIt4z?=
 =?us-ascii?Q?K0CmwFELUIM2l89UBPuFKdH9L1kLQqZQhbMjnhRa+m0OUg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?a8S830MaqOgzftVxPvn6S8PSgEBh/hbWjHkEEpHav2+yqDFtiMJ0aAWt33sm?=
 =?us-ascii?Q?pftwqj3vAfYoqxdhZ/ShzBLxgPGeCUhabCRLMjQLVMnNEcZZxWp5Z6W7MTQs?=
 =?us-ascii?Q?JVuMOfDcSOdepryTMcE3VRU4EH3N1zAMA4v3QGhWZqFf9II8WhKmdaLYftIg?=
 =?us-ascii?Q?kP7qRFWLl1AV5/T5axjiQYJkvTX7uXyYhGGp46I4syDATXS1+a4BQ/ixLEaa?=
 =?us-ascii?Q?Cwe/bWgL4DodBjzwg0HMbJRiAw/7PTeJbjutHdzj63n0GOrLhbF3rd3+SsTh?=
 =?us-ascii?Q?PE0zA5lDYYiDvwarZIbowA5yhiHnINub3zRsfxMlgXFuAWwooKHCudKj1+ti?=
 =?us-ascii?Q?VAYZpm0uaQp/itd6YViHjPuj6rgNCCYyjKOGV1T7T25dK3Bj3i4SWcPTwB2o?=
 =?us-ascii?Q?kqhhP1DRUeA7nXMWL4jWmyWtvaNHNQAkwYiT1K1msJ9xQrXWZB8YBvNmBsEs?=
 =?us-ascii?Q?qMxV6n0KaH0rC2eJzOJBV8WyIu79RTHxPlLk4K1wr7Wui5MM+1ylwYoALm0L?=
 =?us-ascii?Q?EfhHJLZlARvnJurSTd9XNQ6d1XNgeKwBaUaCsSJYxb2vkp8TbLPZhUHCwnMf?=
 =?us-ascii?Q?hyp9awkQWwKnwVAEs/IGMeOiu+c62HJ1jIHSZePy91ZC8/AokCMldZvAwMRo?=
 =?us-ascii?Q?gb4bq44bcYylLz7uM+iKkF1kZ5lhAdiwYMK2xZXtkD/IGt2eJyTRCtoutHn+?=
 =?us-ascii?Q?SLRXLo+Mky5FWuWMhOP/arsmC6D6Q/o7lbuvDHXTtP2+SIimNf+tMdnFzwQG?=
 =?us-ascii?Q?MChgsHDXrUQWLKMsCFXEGBpz6H8PIxJ1wqwvpYOq7nrR8VGadHTEWcj7gxoQ?=
 =?us-ascii?Q?R1fms2DtAqr9gUKt4eo5gDRM8T/1IdBDF9HvCw4takZDIqQmK9JuNl4e+rS+?=
 =?us-ascii?Q?vh1XjLV2zPcy+dsJdwA+J7/q6W6aLj4kQG9AJ+QocoZMfYZnbCKxrBzQI20l?=
 =?us-ascii?Q?yMmH5a/7zSLOozUtZMEeCXpJ9WPPduBTIOS0ikhWbjgrfNpfyTzy+HuPIQ/e?=
 =?us-ascii?Q?NNpgnn1m6S4h+3QZ+dzOhVuG5qkfS8G69byeZX2ln3a2ndv7hioRWSdI/410?=
 =?us-ascii?Q?/7yuBfhYabNb91jY+mQOLEZ6WlXfNpq1lLffDWm/LRiPUqgQlXqqgcZjuy2p?=
 =?us-ascii?Q?Yjlt78WE7M/qy7QaWfMO13p42XnNWIe4nJeEc1n1ADPpuASTtnbN27Jxk3l4?=
 =?us-ascii?Q?jvDTmunRqhF1M6u8/I18o+tPL8vUqbdix3AXpPgeqjteeZ/Y33dGgHj/t/BU?=
 =?us-ascii?Q?pFCtcuWWp4mhE7LZd6FDLWk49UtARgpLv9FclT06H0Fb4i5qLLzddLqc8AaH?=
 =?us-ascii?Q?3zFHCHyzhfGsL6WRQQSEhOii0FCkwpMOgllYt22MmfrfWOzKbmBCx01/YYGf?=
 =?us-ascii?Q?JLjENB9/72fuvVNo2KIHDIYBe88AVt2dbHRnUJSx8QTbYWN0jTqlMaFB0COy?=
 =?us-ascii?Q?mD6r1BTTgF81pCeBqNoieI6yQjI8BBWwnodWs5eLuotlzsXtbUXtzMlnybdm?=
 =?us-ascii?Q?UW1ZYdNr+5BJCKmtWBK3LXNq2YeFN+V0VUVMrpvuRSX3yUk0BqX6Ft07bO8G?=
 =?us-ascii?Q?Cal3xigBiv49dt3zfz6IpM0l05Qrxjclqox0jfFD5uX12ggvn2dAYUc4F544?=
 =?us-ascii?Q?BQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69cc2f33-6393-4026-27ec-08dd30ecbc5d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 20:32:28.8736 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NRjfy1oMVaoJORxMiu6vgyhDrTs3mueXhPVSq7Br/mGdTvMEx+twB6Pw8KOZPtzXc4ttIC5dpJRjZ6fUl+d92KKvo6jZoD+XP3lbpIcqIfA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5318
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

On Wed, Jan 08, 2025 at 11:23:50PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value (rev5)
> URL   : https://patchwork.freedesktop.org/series/141280/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15926 -> Patchwork_141280v5
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_141280v5 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_141280v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/index.html
> 
> Participating hosts (38 -> 37)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_141280v5:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@ring_submission:
>     - fi-pnv-d510:        [PASS][1] -> [ABORT][2] +1 other test abort
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/fi-pnv-d510/igt@i915_selftest@live@ring_submission.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/fi-pnv-d510/igt@i915_selftest@live@ring_submission.html

Hi CI team,

This lockdep splat appears to be coming from filesystem / block device
code and isn't caused by this i915 patch.

Please re-report the results here so that we can get shard results.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_141280v5 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg1-7:          [PASS][3] -> [FAIL][4] ([i915#13401])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>     - bat-rpls-4:         [PASS][5] -> [FAIL][6] ([i915#13401])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live:
>     - bat-twl-2:          [PASS][7] -> [ABORT][8] ([i915#12919] / [i915#13397])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/bat-twl-2/igt@i915_selftest@live.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/bat-twl-2/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@gt_mocs:
>     - bat-twl-2:          [PASS][9] -> [ABORT][10] ([i915#12919])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][11] -> [SKIP][12] ([i915#9197]) +3 other tests skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [DMESG-FAIL][13] ([i915#13393]) -> [PASS][14] +1 other test pass
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>     - bat-mtlp-6:         [DMESG-FAIL][15] ([i915#13393]) -> [PASS][16] +1 other test pass
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
> 
>   
>   [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
>   [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393
>   [i915#13397]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13397
>   [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15926 -> Patchwork_141280v5
> 
>   CI-20190529: 20190529
>   CI_DRM_15926: 1f1bf8d241872eacfc18a8393862302b8aa8442d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8182: 8911eff2c6c06d2929c6072f3ba72d2d991985ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_141280v5: 1f1bf8d241872eacfc18a8393862302b8aa8442d @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
