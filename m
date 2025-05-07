Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4A0AAE20B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 16:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF8B10E801;
	Wed,  7 May 2025 14:09:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LyKOqSkn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C41E10E800;
 Wed,  7 May 2025 14:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746626971; x=1778162971;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=AgZ5mBFsaRpPZvs3Oo3nlf7yxz8E/im7DsLaX6JIaN8=;
 b=LyKOqSknGGAOLhvKfdAsp46FsSyPUeFvOgpvPAmRL+xvilqcj2+3yaSW
 1wZK3mkXK31Im/am8qH7Veo5Qj4nvJOPcqni3A0n1pCpytV3+2dokKTyE
 JsNdg/Yf4JVnVkQC/7MsjJtBTocqQ0VoQ+BiBGAQWUBEiWDIEelOXCZLo
 lZjLWGN6N0Ca8dOSX1IgbWX7Xtj7DpApr6uQXcjZ+UVlz2j6rEWiXIJv9
 sLzPGPaHx8aFZjjMQozJzBvQM3kgJudo9YWDtWMgrZuB3e3LM+EN7bCnh
 iQPWkXuM+vuzU1AfAlYnQ8b9UEBy0RCWUHhZEl4ROYJUWmsp4PFcHccTB w==;
X-CSE-ConnectionGUID: EPjLvOtdQH+f5PnM5RbqEA==
X-CSE-MsgGUID: h7qQzJiQSNOwJdwvKXXFIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="65770859"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="65770859"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 07:09:31 -0700
X-CSE-ConnectionGUID: FCLgbFTIQVmXu6WzF6BgHQ==
X-CSE-MsgGUID: mBumU1N7Q4mH2ByA9KkPZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="135834171"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 07:09:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 07:09:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 07:09:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 07:09:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OwFYqieUJXNb3Y6HdO+cr4X1amfRq3madybEiipHONb35v0quLwO1Im1EEyxxnaFByagq5lBUw+0dlKLMP2UcrvmtHIYe3duwBlgCFr5GApqHnAo42wdWOjvwERgPBVRG7V5d/83ydZoYr98i3TQ4nBhjpjfTYbdMJPDrHjNyMPbH5A16J4bluK3gIykJuuMd2T+NXPm/h9KGRnXqxqbDzFBXxbg4U0ytd6wupZlrTOECPIuYNYwelT8YcXlW6RbW+RGydBfpN4hoLlqoxCueT5Ir8o1pjQ8y+WgCbZw3kFMJSFxuhrFQgiB0vMml5RknpQbkcJXTVe4UF+CW/ISAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r6Cn4jRu9sw5QKmWJNVJt+2lLksln1E737xWU64WUVE=;
 b=dbsc/icwZYP23eyg48Ct21qJR/yt9XDyC9jC6wDdFzoVS4IvRMpJuQiUF48/ZAhi3aBXZuh933kiWpycidvFNk3Kooqr9N9yf0WQ0/3EJi7Mlc+n7ZDGNP9jUseY8lBhBF/LfoZaANGNitVgQgD3sowKC/qxmB+u019nIdn2BWUyi9jIskcFVWjCaAfqNH3TfV1GPREkpjiQgX0BTIYsjLz2Jn1s6urVKKDTjia6alOluu2tA/323HfrX/IcmU8aMdUSJD0oKx1NpLeXcseqIUD5YsmdyWaDcDvg4jooOKTlYgnzs4eSjKD2SRa0pdFVAgoduF+VO8dNG2cuNd9YKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB4871.namprd11.prod.outlook.com (2603:10b6:510:30::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Wed, 7 May
 2025 14:08:55 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Wed, 7 May 2025
 14:08:55 +0000
Date: Wed, 7 May 2025 17:09:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <I915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?= =?utf-8?Q?ure_fo?=
 =?utf-8?Q?r?= drm/i915/dp_mst: Add support for fractional link bpps (rev2)
Message-ID: <aBtpfQZ9MAtOWobK@ideak-desk.fi.intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <174586321225.21365.6014197148725125394@c664b1dc75d1>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <174586321225.21365.6014197148725125394@c664b1dc75d1>
X-ClientProxiedBy: LO4P265CA0071.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2af::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB4871:EE_
X-MS-Office365-Filtering-Correlation-Id: f570805a-073c-4da6-b61b-08dd8d70b3c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|13003099007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VQzDQmo8ybZN/r77EwOKTL5h5Gy8egL4HfeVJfp2kzQsAM5s/9G7O2IjMxZw?=
 =?us-ascii?Q?xzvL+uI42paYgMuUNujH09shMzqZdbUTpsjp1GWUylGKFzw5XeJ9cxV+6M6i?=
 =?us-ascii?Q?7MJcH666M+PuuXkO1l+HhV4z6mrsAMUnarmbdKaFiWm8XQhkvCUKRnTqMBWv?=
 =?us-ascii?Q?N05fUYszYukNNE2nAIvwQKY240TEAuQ7OvTJkrKlMVhUMyirMF49ru+7F8Zm?=
 =?us-ascii?Q?e+w4JhTg8ChvbWVDvr280igmAnBCNupAYwuboOIhEkvjdHEzrMgpOmTCSgRz?=
 =?us-ascii?Q?ehjw+W+sBtyduPjImm+6NgkPPR2kTzjfT2u617PDDJUFp1UaGJ9xcB4jDvwA?=
 =?us-ascii?Q?P6kbMp8Z48RWDNI7O/8HIj5Sk7bFU7Gmbl+ruRDFrlypo2sQwKQnxOmONEHX?=
 =?us-ascii?Q?2gI/3yYIuftF4MIh5kA3cO/ifxjJK1253Fz8M0OPntKUZ9rvSDY+/1gjM8qs?=
 =?us-ascii?Q?6ERPT3AzjuB6j5iA6ElsKxkiKeGMSc923/Ddo1rmMMM/YqXw82yUCIhuiiCH?=
 =?us-ascii?Q?XHZ8Rsop6UAUCmJcdTDGvbHZNVZnDKEp3Lxw1XOmQm3BA82gizw8rFKX4WI8?=
 =?us-ascii?Q?EGJjLqQPAGeGzFC1uK5BJeTzQd/RcXJWdVg7Gu7GDjzAxAiia6H1aigcUmK6?=
 =?us-ascii?Q?EuYC5kOSA8AfSWpzz24QNqOhCvFhMQSqe3Rup2KJhfjOMLZ1hAgNMwQeCaNl?=
 =?us-ascii?Q?aWpmfZ9wUsB+Ki7bgPDdhQiCEWjv6snc1m63DKma+NutedHvvNj1b+Z/RsMw?=
 =?us-ascii?Q?cgP+oka2rNm0IpTMcHxMCoV7zBeOtpkk+zX4oWuaP6Od7rALfcYxXAX1GMs3?=
 =?us-ascii?Q?/7BgnjNTVKri1KbOqkD7JA6BSryLkl9VeKwBBLnoIUwKwWmfAF4frwTkz+aj?=
 =?us-ascii?Q?QMRSSUr52oNGC53DFTKpR/gjRFCfLQUosbi2WzaizTW/sKFnFA18ydsATV73?=
 =?us-ascii?Q?7KQ3tr66l2LDRnGYhxGq2X8hBLslWUsb8nfOTXybdgbdPvU9V/toXNnUqPPZ?=
 =?us-ascii?Q?8P9EZhoUfaURE0vI8nlgE3mudkkilAqA2FZpPXlU5mvUnMlPGiuG2nT29s5R?=
 =?us-ascii?Q?k38CKv0J72M67K/Ms99Z0/lpVmlnCXBlKinu40aIUdKDn9Qt9gsahAEBNxnG?=
 =?us-ascii?Q?mt6WorqBdxSlC5pqRaMHZal3zL8T7Yw5utMJbYXnxLrCU3z025dS6EBZvJC3?=
 =?us-ascii?Q?WM0fwKEnJgW5pUniV2MDR6D/THkMw4VGgZqgHlHfqY+oiO9Jud4CcCLtZewH?=
 =?us-ascii?Q?UIwO8DGj2jY2mKgAcEtr/DrDYOvxKoEUP8N2V1i70Dr3U6NFkZH8W1rqiVhx?=
 =?us-ascii?Q?tXv+24cp4VGNNrvzWZ1ZF5/o8d3n18aPPUQlA+kOKMvlJ+N4ob0tSHF3nmrb?=
 =?us-ascii?Q?AbIj+pM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6rq2DejhQNStGmHVzKVuQKbiXbZ9HvY5AZOYVXxavQqrseAMKc9fe2oEcFxf?=
 =?us-ascii?Q?x/vHBRPJXzoOp4GRC6UdDP4Jz+SEOjDFqDeGYSKX92+nJj8L58BgzzmqRrKE?=
 =?us-ascii?Q?EMKw/M2DCuLu5Ce/DkTz+C/51sqwYPG+Pv5yK5RJ09otKmNqr8oYELJYMf+e?=
 =?us-ascii?Q?RXPvJ10tiLoDZNMBd/i0B3OMZ3clg43iw13VJJu71kzeVN0f2fWHBg1rQIcx?=
 =?us-ascii?Q?FLH0Crnvn29iTNMHi2B9i8TZureSQS6fK+tjqizqMe8KPRA/fOOiCbOAndQ6?=
 =?us-ascii?Q?FHWhBXNijMDL7IOnNsblGOMFPPtpg/GzV9doTROi2GqG76fTL0G1L5ABwKVK?=
 =?us-ascii?Q?X/YyJLFgHU/U1w1pL3cljjV2XHuOyZjMTWCbWmeGZpNQz2t3qeGFOKgHQxeO?=
 =?us-ascii?Q?/kVdyLg/Is5fglthUpy/0yC2DyYWr8TWBTpT5JIfkSelIP5PiRbp8w+A3Kpf?=
 =?us-ascii?Q?LVKzrjozPGuJHo9qm77en4hXYn+6AvSgGorpfTX9nn3qage/d4ytcVNCSRDu?=
 =?us-ascii?Q?Km4xapFhrhqiskp0B9zYYatQkrhB23QYCpIZE4RDnOnZJKaK2SvzovDABxgi?=
 =?us-ascii?Q?h4crW9jN50xa6hUINMBlV0nn8lHZ9YVAQx6HETEYQx+LKYhYC9D+XLHctA6w?=
 =?us-ascii?Q?JvbvIRSKjZL+/Uu3pIwEPyhfDowBvr1M9sq2z7+Oc4h1lkoVN61cPPg3/BsQ?=
 =?us-ascii?Q?sh50MZaJh1fVZWz/tE8z6WVc/JHMnK+tQVrQeh8DpRP5cFAaQwh1vpVdMpbG?=
 =?us-ascii?Q?TkPv1aiLlfVOAG5I+3f8h1+utALhUJUTqrxECqnXm92G1T6c4X5hCMEu5Bkr?=
 =?us-ascii?Q?Hq1v/QNwPy5CfWyT1bAZEQ92+Khr82tLmzJtnKln45bvWgnu98gr4Hl07kfj?=
 =?us-ascii?Q?aBsiOza+T9991+7PBtosne2Ye1Xn/vV40GRcYpiZ4wDWLg5kT4uAZyGEjU1c?=
 =?us-ascii?Q?dx4WMN6WBiLOoI/jMODyQvgVeI0t6kQuWYXr722e19aGf3gm3M1Iv8fls2KT?=
 =?us-ascii?Q?1U4zfMF/WXj+6EE7cIFaPzBS9Js0zdTzF8ctf6Ch2MHK+0DrRKbWIOANLqWF?=
 =?us-ascii?Q?xKwMo0+W2i/DjX+tqS2+ddrnarOTlu4gM0JDthS4iHTP3HgkNCPyxpPKfC0M?=
 =?us-ascii?Q?BHrcv/9A4vMSMVAK4Q9Cn1V/AJYOeAiK+c4A0zDDuDR6JTRwlzx7VUFUBKKq?=
 =?us-ascii?Q?MbueI0DJzO9a0CNaqALaP4HiXEGs8VlVqjXy/LJEXZdLmKLDTZgN5EfP2U95?=
 =?us-ascii?Q?7pXk8kdMyRhOdno85WYuBR+GQF/envYQUNVF0rdskFIAN0fZ0tymrqvb3J44?=
 =?us-ascii?Q?XPbpN48kPWqlXK5DV4mMUgC5Br1VEELttZ1dWM+y3vdllLogqLB0sq+Fz/ra?=
 =?us-ascii?Q?8+/G62ux44Xvd239oraHXuubGYgg24L6iiZXDSRbBH4VaAzpqOrwi9Hfx+o5?=
 =?us-ascii?Q?ibIKYYVQ4f1EGrDPjtMJtuvThXOMpdVDsrnlK7h6hKWjdZ+/0H7ykwwVAsBF?=
 =?us-ascii?Q?moCL8xWlS+eeYGa5yNBvAgquqRf2Rmq+vxXiDS/tByMN3bjTldBsPtkPZIKE?=
 =?us-ascii?Q?+Fsc3YCAfcyRPU4rJsg9tubhq7eTAfWwXdoUBdmw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f570805a-073c-4da6-b61b-08dd8d70b3c8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 14:08:55.0351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aF2r+Xue3ykM1HZBfwozBiIxfVIZjDuIrrjZkZAIba6CYtBitArG52Gdy3sfEhyIrOWiMRgFSwwxrMETEUnprA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4871
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi CI team,

On Mon, Apr 28, 2025 at 06:00:12PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Add support for fractional link bpps (rev2)
> URL   : https://patchwork.freedesktop.org/series/147435/
> State : failure

the failure is unrelated to the changes, see below, could you please
re-report and forward the patchset to full testing?

Note that this same BAT result email was resent ~10 times to the list,
is this flood issue known/fixed already?

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16468 -> Patchwork_147435v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_147435v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_147435v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v2/index.html
> 
> Participating hosts (43 -> 43)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_147435v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live:
>     - bat-apl-1:          [PASS][1] -> [DMESG-FAIL][2] +1 other test dmesg-fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16468/bat-apl-1/igt@i915_selftest@live.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v2/bat-apl-1/igt@i915_selftest@live.html

It's the

<3> [449.725820] i915 0000:00:02.0: [drm] *ERROR* live_active_wait i915_active not retired after waiting!

GEM issue. There is a DP output connected to the host, but can't any
issue with that or any other display functionality in the log. So can't
see how the changes would relate to the error.

I found the already closed tickets for this:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14045
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12213
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_147435v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fence@basic-busy@vecs0:
>     - bat-rpls-4:         [PASS][3] -> [DMESG-WARN][4] ([i915#13400]) +2 other tests dmesg-warn
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16468/bat-rpls-4/igt@gem_exec_fence@basic-busy@vecs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v2/bat-rpls-4/igt@gem_exec_fence@basic-busy@vecs0.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg2-9:          [PASS][5] -> [ABORT][6] ([i915#13571])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16468/bat-dg2-9/igt@i915_pm_rpm@module-reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v2/bat-dg2-9/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live:
>     - bat-dg2-8:          [PASS][7] -> [DMESG-FAIL][8] ([i915#12061]) +1 other test dmesg-fail
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16468/bat-dg2-8/igt@i915_selftest@live.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v2/bat-dg2-8/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-6:         [PASS][9] -> [DMESG-FAIL][10] ([i915#12061]) +1 other test dmesg-fail
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16468/bat-arls-6/igt@i915_selftest@live@workarounds.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v2/bat-arls-6/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@dmabuf@all-tests:
>     - bat-apl-1:          [INCOMPLETE][11] ([i915#12904]) -> [PASS][12] +1 other test pass
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16468/bat-apl-1/igt@dmabuf@all-tests.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v2/bat-apl-1/igt@dmabuf@all-tests.html
> 
>   * igt@i915_selftest@live:
>     - bat-arlh-2:         [INCOMPLETE][13] ([i915#14046]) -> [PASS][14] +1 other test pass
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16468/bat-arlh-2/igt@i915_selftest@live.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v2/bat-arlh-2/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-14:         [DMESG-FAIL][15] ([i915#12061]) -> [PASS][16] +1 other test pass
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16468/bat-dg2-14/igt@i915_selftest@live@workarounds.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
>   [i915#13571]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13571
>   [i915#14046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16468 -> Patchwork_147435v2
> 
>   CI-20190529: 20190529
>   CI_DRM_16468: f6fc27d337f1078e14de1ef319a92b4e50203aed @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8341: 0e76d82675226a942f4811514c040c07d87d156b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_147435v2: f6fc27d337f1078e14de1ef319a92b4e50203aed @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v2/index.html
