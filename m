Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08615A0BE13
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 17:55:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CCD210E731;
	Mon, 13 Jan 2025 16:55:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A2/PYzHA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7486810E731;
 Mon, 13 Jan 2025 16:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736787335; x=1768323335;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=POLBllR8CSuSk/Fv099RZGFcSTVgS4EcXKcpr0Dv+N4=;
 b=A2/PYzHAZQZvEeN1CqyU0NlX+yBJDhjhZ5VXj2Q5nwPlzrJN6R/uIaoI
 C6CumZN4Wcd8itKjM8txqV9dY7INw4tSsXBNcyODMPh+nKVxw4qsARs5/
 m4BOinp1xhpDVktu9HkbiBQDvj8eQA0Q+njjVHE38D4NCVnotmSAT6yj5
 glX8MoilphwEyHZdT/nE01g6l/nJfq9/+ppyllKB1ocaL0i6ZFEQvBew4
 t7x4flaDe8LQVyp1GCrhLRfjIhDNEwYrPBme9bORG2QJrROrCxK6Me/ul
 D01qGXZiz5WAwzF08Im+elyfEtlSoDsuUEHSfURiTnx7Pv5yMkhxbGI/W w==;
X-CSE-ConnectionGUID: BxOodZMhSwSy5uHow0gmqA==
X-CSE-MsgGUID: lzHyhvH2QeCr2jzL3upJTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="47636053"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="47636053"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 08:55:10 -0800
X-CSE-ConnectionGUID: dB815kamQDGQXVqm28N6WA==
X-CSE-MsgGUID: 1i6p2s44SEitl1fhpBKYxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="109519461"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 08:55:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 08:55:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 08:55:02 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 08:55:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kMITsrZ47+FL/KonroGcVjxE6/W5578z3C9Zb6iLL5yLRPt+SFF+/J8rBCeiMlQ6FeXo0QAgN0gGgxdIb6m28QPx8MUMoAyr+n7En8klibZsyCmkVBNenHIZ+WG5ezWXhlt2rgScxk2HP2G5kD7bE2hwl7qFiqckWFHilg4RPzNQtjlxXUuaT0HTevF/cGDsxfRh542L8eJXxYG3yppc8RkzSdroaYhAFioeVtdTU3xrKCvzRxKvogXl5OW4cIMMuvk39iKqwaSoNcQpbECuiincEe9J0wkBLGW3t0ktXiDM8DE7ajix23Cm1nRjj9oXb3yu4zhtgdH2Ny+ilDB9+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BCSMgREyvaxjrplfXvZnlWVoeH9AdjmenXrzgIHki8k=;
 b=ilSQpcTPzkM+CzIZ1oZAhpLVgFRjL33IXCrJH4PYli2RtDm+OwWivNu6ZFZLjeaTAdHPb3iO9ytGfvwLG4oc4+tBGLT+Z/mYNRL0oASiss0tetsAKZle5i+evNoD+uN/qmG0TNJlK/89jKZjDRAo2aDagfw77EXd4KMyOg4pG0wOWv3U0NhrGR6K5522URd+qWjQuJBigvMvmPb92JTTt8gE6KpsqMx7WKtuA9WXRAyBwDD0NVcXX5441wfZz84StuK5wsaGL8w6wJq+d+53mS+EdLZDb/LbqHnO1E/QvD5Ip9xETOlexVJ63Cq1N6wo02sSzoubT28ZgLP8Htbn7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 16:54:16 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8335.011; Mon, 13 Jan 2025
 16:54:16 +0000
Date: Mon, 13 Jan 2025 11:54:12 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915/audio: convert to struct intel_display
Message-ID: <Z4VFNJRyrxOqIpqd@intel.com>
References: <cover.1736345025.git.jani.nikula@intel.com>
 <4ddcc2e704fc6b1592a878c80e15fadd82c63550.1736345025.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4ddcc2e704fc6b1592a878c80e15fadd82c63550.1736345025.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0195.namprd03.prod.outlook.com
 (2603:10b6:303:b8::20) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|MN0PR11MB6135:EE_
X-MS-Office365-Filtering-Correlation-Id: a97bf007-6751-43ef-895e-08dd33f2e9e6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?kT/NFpNG+dY1b3YuR+IAl6rhrBO+hXWX69GcOZVQ24RGwmbwxndQsv3mTGzA?=
 =?us-ascii?Q?CTtYIp2z28RUQrF32iHGuGw1SoakeTMQugF9exRQwWMd3e9m6hnHLs7aQ44T?=
 =?us-ascii?Q?OGF99BtBx68p5n0HcKmu2w5SxMMQ4os2sfxE1q40cny1sHWt/95GUVhK8h/v?=
 =?us-ascii?Q?eNaLV6ckNKpkjvtwyYwSaDVS6kwv8KFT4HstWyZ5WTLWUXEduOlZonC4D+ve?=
 =?us-ascii?Q?QD6e0ftEckJK5MM++K70pTyGxN6Q35SMzna87Oo8nf9llilo4RVE4TaeEwb8?=
 =?us-ascii?Q?EeNnu97tDtHlKmUqXUcEBKQoCgHXup9/LFY2GA5rV3JwW9Zw4RFXOtx82VrP?=
 =?us-ascii?Q?MuLT5n1beSGSoKqhCPb7PA96bjvh2b3X4SXqXhVeeWDeCdBaeZPYkSlgpyuf?=
 =?us-ascii?Q?OUJTAFI+lYR9fDX3kYY+xVy8rDsOHH8Cxx7g59n5pTqAT+7ZORqx4jPMvUIM?=
 =?us-ascii?Q?/6RbcD28gphwnNgRZjpuAJXeIH+pUz51oejO4CR0+bKIBJ+nvaiEIyL9DWf3?=
 =?us-ascii?Q?G6N/OWrtJRoNBboI4XEBvUEuVEkomRg5EhabTnB6fEKzlCjUtPFRFkF62m60?=
 =?us-ascii?Q?qvEP+B0UTwYrvk0WSFvVmnYGKMunqNd3/Ha7fLdZsmvv3JyFFj/irUjxKB+k?=
 =?us-ascii?Q?XVIRCHOHraegqD3Zo2Inr0wIh2m1R+PD4kxpcLHMfbHtU1OX1bXbFli7c/3+?=
 =?us-ascii?Q?fla7fpoEqNX7S6ct6H5AhhznhEYodP3tqi3vMcHweVrCxmqfdsmLIvGBuh1r?=
 =?us-ascii?Q?eBpZN7IEQLdOfOi8p2ifC9Sz76w3MDGMlYCI6C9taLSQ+84CJU9cenWw0WWW?=
 =?us-ascii?Q?N8e1lI++pRIhr4G8Ua95IbEwsGsBUwB5dPkXW+VJS0pOKguLISVCr4M07Peb?=
 =?us-ascii?Q?9IQ8spNEsyCm2GxKDxGPquYr9rS0vcj/LV301LUoCRGtSBsmM8kxQPKwsWHs?=
 =?us-ascii?Q?FeVuBrSL2FhAo8dC//hS7IQQ6cEOgK7HIgFFYZQN3p26ivhzbk8LxDx0dSSr?=
 =?us-ascii?Q?SrEHqghtcSxmooB8SnPjCXzEfp6WgEa/brqzuV5zrQnnZ3c5IWBXWn4ztiNy?=
 =?us-ascii?Q?onopmcSPvMuHdBLPpjM1QoxCBfJhCPJmMBZf++AgIr5SWh8QplG+38TDrZJh?=
 =?us-ascii?Q?J8YlN7ZzFTldtMp5bytVBDFM0foEM7Tu8nIT27CQ6hZSpDXn0AoB2VPh6d95?=
 =?us-ascii?Q?VXDpXqYZqgFWpbWMnW5LEbXN5jl67glXd6ufDDF0dX+7LAFtT25YWoePsg5w?=
 =?us-ascii?Q?YOE5VscUftNfu04rpOBJVfXbgmyTpHuHKVSO1ZdJrMz5i9rU7oaltUuHl7+c?=
 =?us-ascii?Q?+s3vvrMz8rTQOi6M0dwyUYI2U2LsgVUp3cR32M6YHjxEp84ywAx3SzJPL1oV?=
 =?us-ascii?Q?IqB6s2aHbkoDZf5D49gxqPbbyUY+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mgjGkNH07T0S1QgNDjHOohl/PHlKRQ+NhisNYBnPA5kPQx0X4UHqy9X6PRoX?=
 =?us-ascii?Q?2sYAcbBgLstC3QttbHmt4Jdd6EEe9LFsAPKG2fddjZotsnebGBBPaXSg1L92?=
 =?us-ascii?Q?WG1zHzONx6cSykTEWeKrIPi00C0gTGf2h71DGKgxIQDUsmUq7I1iIS5OfQo+?=
 =?us-ascii?Q?f3oL/xuSMEP+dNwu/YCNF7Hl3zpnuAkay/WZjQGmGkfEiBIfk6mRIPKwsv7i?=
 =?us-ascii?Q?6DIyijDbad92EU1bYXGoE9EPbMgRAfHnuILAs7dPG80dtjsQJBy7h/f5HcoB?=
 =?us-ascii?Q?yuIjJXihFlKE6UmdZMqqBiBYkTQLtTsYwcHzfqQC6NOEl9xG7ewRWiGjeKgs?=
 =?us-ascii?Q?WxreL9luhQnYcfShojnNsSv5T0dQgCppXLpaoqznBklyf+ntSx29nmgmcdLW?=
 =?us-ascii?Q?zd/NaNAuk0Zqi+f1VwRkn91lOe6t7p+9hACI4+m+uoDMH+CfrI/1GZqLO1Du?=
 =?us-ascii?Q?jRcp1u08q1tmoAIQdXtPlMS1pk9HMg/OaALdSj38MIdeFAadPnrP/0TKq/GK?=
 =?us-ascii?Q?NwEZf9Rz0YPSkWvyJClU5oP4NQXYK8jKWpQvjCyX1GhGbm9vBGB+iha6f8G0?=
 =?us-ascii?Q?H6/sN3eUfpi+zQ6GmnADADV0FWUvgeIqtiM/yverbWClBXsd+8r+jzt4nzSO?=
 =?us-ascii?Q?DfHPe8iy2N5YcoWNSHxx+kPmYf/Lc1DeveOIfsn7Q/FrNmuuYfm7PWpVxjT9?=
 =?us-ascii?Q?DTDX2Ar2nKjoi1jUYVH5SonM5xTqdS58sQL0AIyrVAtQ89oYol1v8Q8Ob1l0?=
 =?us-ascii?Q?qOn+If1NZVKXAJa06x/5U3JkwG2vujnsQHxJFZQG6brzybpSyvX1KJyhfO38?=
 =?us-ascii?Q?CnlN29IIBriitff/nCGk6078hHZoqQHwvvmgW90K9R1QotqIOpyMsrIv6dHE?=
 =?us-ascii?Q?/lJU9XY3DHcSlxC5n0axktiPOYrU27jyhNwi/8zl3jZewyK4ffdgerK1hkKC?=
 =?us-ascii?Q?GSjeSiuqGvOTD1zTutlyvvndSlMi9TdGQKfst5MGxUjyIHy+gZAeNRa245WF?=
 =?us-ascii?Q?PavOxUdssFIIFKAYDGzz234YqpeITNVc+ZEbRbBvqSq+meJHqWLXeEE1rprJ?=
 =?us-ascii?Q?bot7uim2wvY1BaZPGP3pZf+0cIhatueIdaztoabWYSRQ+GWUZNAEQfYfOqzR?=
 =?us-ascii?Q?vSYxRkDmOa++FTsPc9fPgRQtPom4ZZ1kYH8SOZ6TK/BDIAjrz/ybc/UgEjpy?=
 =?us-ascii?Q?FG4C4PCYAdTnJzHoLkd+WpbQ1eVUrnGK/VaWIdFqBVcpsWTrn+FsxBLtRgxY?=
 =?us-ascii?Q?ITSxTnT7oP9wkvE7dpt+n8+E6GWp46tq/gjcIgwqfudS3QmgJCwaFB0YGfmf?=
 =?us-ascii?Q?Zzs5Y0EDAgEUKia6KfYruT+6NG9DVi4j4ZJexQdSvXFjaur4uE8h9i6aZ09I?=
 =?us-ascii?Q?Xr4SNZF/JEiOFQwJdiq6pI489ikVonrUitc16Gtd4nGmHT4761tSaWDt7kl6?=
 =?us-ascii?Q?SvgsMvdYgvF5lygCFdD/GSm3PT4GJGwlGyFEmuVFiZK2kNEO3Ujygk5URkVY?=
 =?us-ascii?Q?hfLir6W62K3oKVi12eOv6HDqxrXaAE/y/o1i/FzJZ9IMRkbpwGLN2LhmyuFn?=
 =?us-ascii?Q?JxfQLrPiM98AZwLQFJkQJjLYjX/90i+0ZPVT+pwwISTanailuxHl+d2uMY+d?=
 =?us-ascii?Q?hQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a97bf007-6751-43ef-895e-08dd33f2e9e6
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 16:54:16.1548 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h1u0YKRb/2LK2TZBc+SBW3ahsXQfw/MmKrLVlyOsNZxXtiatK4FKVm4yos8DHiGgF4VeXy0H9kJ3vNmOx/H2FA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6135
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

On Wed, Jan 08, 2025 at 04:04:13PM +0200, Jani Nikula wrote:
> Going forward, struct intel_display will be the main display device
> structure. Convert intel_audio.[ch] to it.

Probably worth mentioning that this conversion here is not
entirely finished because of the unresolved generic PCH
handling: HAS_PCH_CPT(i915) and HAS_PCH_IBX(i915) ?!

But well, the really audio portion is, so up to you.

>  Do some minor checkpatch
> fixes while at it.

I couldn't spot it! :)

anyway

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 413 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_audio.h    |  14 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |   5 +-
>  .../drm/i915/display/intel_display_driver.c   |  10 +-
>  drivers/gpu/drm/xe/display/xe_display.c       |   2 +-
>  5 files changed, 226 insertions(+), 218 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index ce8a4319a63c..8c26e0e7c2cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -188,15 +188,15 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
>   * WA_14020863754: Implement Audio Workaround
>   * Corner case with Min Hblank Fix can cause audio hang
>   */
> -static bool needs_wa_14020863754(struct drm_i915_private *i915)
> +static bool needs_wa_14020863754(struct intel_display *display)
>  {
> -	return (DISPLAY_VER(i915) == 20 || IS_BATTLEMAGE(i915));
> +	return DISPLAY_VER(display) == 20 || display->platform.battlemage;
>  }
>  
>  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
>  static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  	int i;
> @@ -206,17 +206,17 @@ static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_sta
>  			break;
>  	}
>  
> -	if (DISPLAY_VER(i915) < 12 && adjusted_mode->crtc_clock > 148500)
> +	if (DISPLAY_VER(display) < 12 && adjusted_mode->crtc_clock > 148500)
>  		i = ARRAY_SIZE(hdmi_audio_clock);
>  
>  	if (i == ARRAY_SIZE(hdmi_audio_clock)) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "HDMI audio pixel clock setting for %d not found, falling back to defaults\n",
>  			    adjusted_mode->crtc_clock);
>  		i = 1;
>  	}
>  
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "Configuring HDMI audio for pixel clock %d (0x%08x)\n",
>  		    hdmi_audio_clock[i].clock,
>  		    hdmi_audio_clock[i].config);
> @@ -251,11 +251,11 @@ static int audio_config_hdmi_get_n(const struct intel_crtc_state *crtc_state,
>  }
>  
>  /* ELD buffer size in dwords */
> -static int g4x_eld_buffer_size(struct drm_i915_private *i915)
> +static int g4x_eld_buffer_size(struct intel_display *display)
>  {
>  	u32 tmp;
>  
> -	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
> +	tmp = intel_de_read(display, G4X_AUD_CNTL_ST);
>  
>  	return REG_FIELD_GET(G4X_ELD_BUFFER_SIZE_MASK, tmp);
>  }
> @@ -263,33 +263,33 @@ static int g4x_eld_buffer_size(struct drm_i915_private *i915)
>  static void g4x_audio_codec_get_config(struct intel_encoder *encoder,
>  				       struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	u32 *eld = (u32 *)crtc_state->eld;
>  	int eld_buffer_size, len, i;
>  	u32 tmp;
>  
> -	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
> +	tmp = intel_de_read(display, G4X_AUD_CNTL_ST);
>  	if ((tmp & G4X_ELD_VALID) == 0)
>  		return;
>  
> -	intel_de_rmw(i915, G4X_AUD_CNTL_ST, G4X_ELD_ADDRESS_MASK, 0);
> +	intel_de_rmw(display, G4X_AUD_CNTL_ST, G4X_ELD_ADDRESS_MASK, 0);
>  
> -	eld_buffer_size = g4x_eld_buffer_size(i915);
> +	eld_buffer_size = g4x_eld_buffer_size(display);
>  	len = min_t(int, sizeof(crtc_state->eld) / 4, eld_buffer_size);
>  
>  	for (i = 0; i < len; i++)
> -		eld[i] = intel_de_read(i915, G4X_HDMIW_HDMIEDID);
> +		eld[i] = intel_de_read(display, G4X_HDMIW_HDMIEDID);
>  }
>  
>  static void g4x_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>  
>  	/* Invalidate ELD */
> -	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
> +	intel_de_rmw(display, G4X_AUD_CNTL_ST,
>  		     G4X_ELD_VALID, 0);
>  
>  	intel_crtc_wait_for_next_vblank(crtc);
> @@ -300,28 +300,28 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *crtc_state,
>  				   const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	const u32 *eld = (const u32 *)crtc_state->eld;
>  	int eld_buffer_size, len, i;
>  
>  	intel_crtc_wait_for_next_vblank(crtc);
>  
> -	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
> +	intel_de_rmw(display, G4X_AUD_CNTL_ST,
>  		     G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK, 0);
>  
> -	eld_buffer_size = g4x_eld_buffer_size(i915);
> +	eld_buffer_size = g4x_eld_buffer_size(display);
>  	len = min(drm_eld_size(crtc_state->eld) / 4, eld_buffer_size);
>  
>  	for (i = 0; i < len; i++)
> -		intel_de_write(i915, G4X_HDMIW_HDMIEDID, eld[i]);
> +		intel_de_write(display, G4X_HDMIW_HDMIEDID, eld[i]);
>  	for (; i < eld_buffer_size; i++)
> -		intel_de_write(i915, G4X_HDMIW_HDMIEDID, 0);
> +		intel_de_write(display, G4X_HDMIW_HDMIEDID, 0);
>  
> -	drm_WARN_ON(&i915->drm,
> -		    (intel_de_read(i915, G4X_AUD_CNTL_ST) & G4X_ELD_ADDRESS_MASK) != 0);
> +	drm_WARN_ON(display->drm,
> +		    (intel_de_read(display, G4X_AUD_CNTL_ST) & G4X_ELD_ADDRESS_MASK) != 0);
>  
> -	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
> +	intel_de_rmw(display, G4X_AUD_CNTL_ST,
>  		     0, G4X_ELD_VALID);
>  }
>  
> @@ -329,11 +329,11 @@ static void
>  hsw_dp_audio_config_update(struct intel_encoder *encoder,
>  			   const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
>  	/* Enable time stamps. Let HW calculate Maud/Naud values */
> -	intel_de_rmw(i915, HSW_AUD_CFG(cpu_transcoder),
> +	intel_de_rmw(display, HSW_AUD_CFG(cpu_transcoder),
>  		     AUD_CONFIG_N_VALUE_INDEX |
>  		     AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK |
>  		     AUD_CONFIG_UPPER_N_MASK |
> @@ -347,8 +347,8 @@ static void
>  hsw_hdmi_audio_config_update(struct intel_encoder *encoder,
>  			     const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp = i915->display.audio.component;
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct i915_audio_component *acomp = display->audio.component;
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	enum port port = encoder->port;
>  	int n, rate;
> @@ -356,7 +356,7 @@ hsw_hdmi_audio_config_update(struct intel_encoder *encoder,
>  
>  	rate = acomp ? acomp->aud_sample_rate[port] : 0;
>  
> -	tmp = intel_de_read(i915, HSW_AUD_CFG(cpu_transcoder));
> +	tmp = intel_de_read(display, HSW_AUD_CFG(cpu_transcoder));
>  	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
>  	tmp &= ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
>  	tmp &= ~AUD_CONFIG_N_PROG_ENABLE;
> @@ -364,25 +364,25 @@ hsw_hdmi_audio_config_update(struct intel_encoder *encoder,
>  
>  	n = audio_config_hdmi_get_n(crtc_state, rate);
>  	if (n != 0) {
> -		drm_dbg_kms(&i915->drm, "using N %d\n", n);
> +		drm_dbg_kms(display->drm, "using N %d\n", n);
>  
>  		tmp &= ~AUD_CONFIG_N_MASK;
>  		tmp |= AUD_CONFIG_N(n);
>  		tmp |= AUD_CONFIG_N_PROG_ENABLE;
>  	} else {
> -		drm_dbg_kms(&i915->drm, "using automatic N\n");
> +		drm_dbg_kms(display->drm, "using automatic N\n");
>  	}
>  
> -	intel_de_write(i915, HSW_AUD_CFG(cpu_transcoder), tmp);
> +	intel_de_write(display, HSW_AUD_CFG(cpu_transcoder), tmp);
>  
>  	/*
>  	 * Let's disable "Enable CTS or M Prog bit"
>  	 * and let HW calculate the value
>  	 */
> -	tmp = intel_de_read(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
> +	tmp = intel_de_read(display, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
>  	tmp &= ~AUD_M_CTS_M_PROG_ENABLE;
>  	tmp &= ~AUD_M_CTS_M_VALUE_INDEX;
> -	intel_de_write(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
> +	intel_de_write(display, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
>  }
>  
>  static void
> @@ -399,14 +399,14 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>  	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>  
> -	mutex_lock(&i915->display.audio.mutex);
> +	mutex_lock(&display->audio.mutex);
>  
>  	/* Disable timestamps */
> -	intel_de_rmw(i915, HSW_AUD_CFG(cpu_transcoder),
> +	intel_de_rmw(display, HSW_AUD_CFG(cpu_transcoder),
>  		     AUD_CONFIG_N_VALUE_INDEX |
>  		     AUD_CONFIG_UPPER_N_MASK |
>  		     AUD_CONFIG_LOWER_N_MASK,
> @@ -415,26 +415,26 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  		      AUD_CONFIG_N_VALUE_INDEX : 0));
>  
>  	/* Invalidate ELD */
> -	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> +	intel_de_rmw(display, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_ELD_VALID(cpu_transcoder), 0);
>  
>  	intel_crtc_wait_for_next_vblank(crtc);
>  	intel_crtc_wait_for_next_vblank(crtc);
>  
>  	/* Disable audio presence detect */
> -	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> +	intel_de_rmw(display, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
>  
> -	if (needs_wa_14020863754(i915))
> -		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, DACBE_DISABLE_MIN_HBLANK_FIX, 0);
> +	if (needs_wa_14020863754(display))
> +		intel_de_rmw(display, AUD_CHICKENBIT_REG3, DACBE_DISABLE_MIN_HBLANK_FIX, 0);
>  
> -	mutex_unlock(&i915->display.audio.mutex);
> +	mutex_unlock(&display->audio.mutex);
>  }
>  
>  static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
>  					   const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	unsigned int link_clks_available, link_clks_required;
>  	unsigned int tu_data, tu_line, link_clks_active;
>  	unsigned int h_active, h_total, hblank_delta, pixel_clk;
> @@ -446,13 +446,13 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
>  	h_total = crtc_state->hw.adjusted_mode.crtc_htotal;
>  	pixel_clk = crtc_state->hw.adjusted_mode.crtc_clock;
>  	vdsc_bppx16 = crtc_state->dsc.compressed_bpp_x16;
> -	cdclk = i915->display.cdclk.hw.cdclk;
> +	cdclk = display->cdclk.hw.cdclk;
>  	/* fec= 0.972261, using rounding multiplier of 1000000 */
>  	fec_coeff = 972261;
>  	link_clk = crtc_state->port_clock;
>  	lanes = crtc_state->lane_count;
>  
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "h_active = %u link_clk = %u : lanes = %u vdsc_bpp = " FXP_Q4_FMT " cdclk = %u\n",
>  		    h_active, link_clk, lanes, FXP_Q4_ARGS(vdsc_bppx16), cdclk);
>  
> @@ -497,19 +497,19 @@ static unsigned int calc_samples_room(const struct intel_crtc_state *crtc_state)
>  static void enable_audio_dsc_wa(struct intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	unsigned int hblank_early_prog, samples_room;
>  	unsigned int val;
>  
> -	if (DISPLAY_VER(i915) < 11)
> +	if (DISPLAY_VER(display) < 11)
>  		return;
>  
> -	val = intel_de_read(i915, AUD_CONFIG_BE);
> +	val = intel_de_read(display, AUD_CONFIG_BE);
>  
> -	if (DISPLAY_VER(i915) == 11)
> +	if (DISPLAY_VER(display) == 11)
>  		val |= HBLANK_EARLY_ENABLE_ICL(cpu_transcoder);
> -	else if (DISPLAY_VER(i915) >= 12)
> +	else if (DISPLAY_VER(display) >= 12)
>  		val |= HBLANK_EARLY_ENABLE_TGL(cpu_transcoder);
>  
>  	if (crtc_state->dsc.compression_enable &&
> @@ -536,34 +536,34 @@ static void enable_audio_dsc_wa(struct intel_encoder *encoder,
>  			val |= NUMBER_SAMPLES_PER_LINE(cpu_transcoder, 0x0);
>  	}
>  
> -	intel_de_write(i915, AUD_CONFIG_BE, val);
> +	intel_de_write(display, AUD_CONFIG_BE, val);
>  }
>  
>  static void hsw_audio_codec_enable(struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *crtc_state,
>  				   const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> -	mutex_lock(&i915->display.audio.mutex);
> +	mutex_lock(&display->audio.mutex);
>  
>  	/* Enable Audio WA for 4k DSC usecases */
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
>  		enable_audio_dsc_wa(encoder, crtc_state);
>  
> -	if (needs_wa_14020863754(i915))
> -		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0, DACBE_DISABLE_MIN_HBLANK_FIX);
> +	if (needs_wa_14020863754(display))
> +		intel_de_rmw(display, AUD_CHICKENBIT_REG3, 0, DACBE_DISABLE_MIN_HBLANK_FIX);
>  
>  	/* Enable audio presence detect */
> -	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> +	intel_de_rmw(display, HSW_AUD_PIN_ELD_CP_VLD,
>  		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
>  
>  	intel_crtc_wait_for_next_vblank(crtc);
>  
>  	/* Invalidate ELD */
> -	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> +	intel_de_rmw(display, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_ELD_VALID(cpu_transcoder), 0);
>  
>  	/*
> @@ -574,18 +574,20 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
>  	/* Enable timestamps */
>  	hsw_audio_config_update(encoder, crtc_state);
>  
> -	mutex_unlock(&i915->display.audio.mutex);
> +	mutex_unlock(&display->audio.mutex);
>  }
>  
>  struct ibx_audio_regs {
>  	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
>  };
>  
> -static void ibx_audio_regs_init(struct drm_i915_private *i915,
> +static void ibx_audio_regs_init(struct intel_display *display,
>  				enum pipe pipe,
>  				struct ibx_audio_regs *regs)
>  {
> -	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	if (display->platform.valleyview || display->platform.cherryview) {
>  		regs->hdmiw_hdmiedid = VLV_HDMIW_HDMIEDID(pipe);
>  		regs->aud_config = VLV_AUD_CFG(pipe);
>  		regs->aud_cntl_st = VLV_AUD_CNTL_ST(pipe);
> @@ -607,21 +609,21 @@ static void ibx_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>  	enum port port = encoder->port;
>  	enum pipe pipe = crtc->pipe;
>  	struct ibx_audio_regs regs;
>  
> -	if (drm_WARN_ON(&i915->drm, port == PORT_A))
> +	if (drm_WARN_ON(display->drm, port == PORT_A))
>  		return;
>  
> -	ibx_audio_regs_init(i915, pipe, &regs);
> +	ibx_audio_regs_init(display, pipe, &regs);
>  
> -	mutex_lock(&i915->display.audio.mutex);
> +	mutex_lock(&display->audio.mutex);
>  
>  	/* Disable timestamps */
> -	intel_de_rmw(i915, regs.aud_config,
> +	intel_de_rmw(display, regs.aud_config,
>  		     AUD_CONFIG_N_VALUE_INDEX |
>  		     AUD_CONFIG_UPPER_N_MASK |
>  		     AUD_CONFIG_LOWER_N_MASK,
> @@ -630,10 +632,10 @@ static void ibx_audio_codec_disable(struct intel_encoder *encoder,
>  		      AUD_CONFIG_N_VALUE_INDEX : 0));
>  
>  	/* Invalidate ELD */
> -	intel_de_rmw(i915, regs.aud_cntrl_st2,
> +	intel_de_rmw(display, regs.aud_cntrl_st2,
>  		     IBX_ELD_VALID(port), 0);
>  
> -	mutex_unlock(&i915->display.audio.mutex);
> +	mutex_unlock(&display->audio.mutex);
>  
>  	intel_crtc_wait_for_next_vblank(crtc);
>  	intel_crtc_wait_for_next_vblank(crtc);
> @@ -643,23 +645,23 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *crtc_state,
>  				   const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	enum port port = encoder->port;
>  	enum pipe pipe = crtc->pipe;
>  	struct ibx_audio_regs regs;
>  
> -	if (drm_WARN_ON(&i915->drm, port == PORT_A))
> +	if (drm_WARN_ON(display->drm, port == PORT_A))
>  		return;
>  
>  	intel_crtc_wait_for_next_vblank(crtc);
>  
> -	ibx_audio_regs_init(i915, pipe, &regs);
> +	ibx_audio_regs_init(display, pipe, &regs);
>  
> -	mutex_lock(&i915->display.audio.mutex);
> +	mutex_lock(&display->audio.mutex);
>  
>  	/* Invalidate ELD */
> -	intel_de_rmw(i915, regs.aud_cntrl_st2,
> +	intel_de_rmw(display, regs.aud_cntrl_st2,
>  		     IBX_ELD_VALID(port), 0);
>  
>  	/*
> @@ -668,7 +670,7 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
>  	 */
>  
>  	/* Enable timestamps */
> -	intel_de_rmw(i915, regs.aud_config,
> +	intel_de_rmw(display, regs.aud_config,
>  		     AUD_CONFIG_N_VALUE_INDEX |
>  		     AUD_CONFIG_N_PROG_ENABLE |
>  		     AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK,
> @@ -676,7 +678,7 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
>  		      AUD_CONFIG_N_VALUE_INDEX :
>  		      audio_config_hdmi_pixel_clock(crtc_state)));
>  
> -	mutex_unlock(&i915->display.audio.mutex);
> +	mutex_unlock(&display->audio.mutex);
>  }
>  
>  void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
> @@ -693,14 +695,14 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_connector *connector = conn_state->connector;
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  
>  	mutex_lock(&connector->eld_mutex);
>  	if (!connector->eld[0]) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
>  			    connector->base.id, connector->name);
>  		mutex_unlock(&connector->eld_mutex);
> @@ -729,8 +731,9 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state,
>  			      const struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp = i915->display.audio.component;
> +	struct i915_audio_component *acomp = display->audio.component;
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> @@ -740,26 +743,27 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>  	if (!crtc_state->has_audio)
>  		return;
>  
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on [CRTC:%d:%s], %u bytes ELD\n",
> +	drm_dbg_kms(display->drm,
> +		    "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on [CRTC:%d:%s], %u bytes ELD\n",
>  		    connector->base.base.id, connector->base.name,
>  		    encoder->base.base.id, encoder->base.name,
>  		    crtc->base.base.id, crtc->base.name,
>  		    drm_eld_size(crtc_state->eld));
>  
> -	if (i915->display.funcs.audio)
> -		i915->display.funcs.audio->audio_codec_enable(encoder,
> +	if (display->funcs.audio)
> +		display->funcs.audio->audio_codec_enable(encoder,
>  							      crtc_state,
>  							      conn_state);
>  
> -	mutex_lock(&i915->display.audio.mutex);
> +	mutex_lock(&display->audio.mutex);
>  
> -	audio_state = &i915->display.audio.state[cpu_transcoder];
> +	audio_state = &display->audio.state[cpu_transcoder];
>  
>  	audio_state->encoder = encoder;
>  	BUILD_BUG_ON(sizeof(audio_state->eld) != sizeof(crtc_state->eld));
>  	memcpy(audio_state->eld, crtc_state->eld, sizeof(audio_state->eld));
>  
> -	mutex_unlock(&i915->display.audio.mutex);
> +	mutex_unlock(&display->audio.mutex);
>  
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) {
> @@ -788,8 +792,9 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  			       const struct intel_crtc_state *old_crtc_state,
>  			       const struct drm_connector_state *old_conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp = i915->display.audio.component;
> +	struct i915_audio_component *acomp = display->audio.component;
>  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
>  	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> @@ -799,24 +804,25 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  	if (!old_crtc_state->has_audio)
>  		return;
>  
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio codec on [CRTC:%d:%s]\n",
> +	drm_dbg_kms(display->drm,
> +		    "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio codec on [CRTC:%d:%s]\n",
>  		    connector->base.base.id, connector->base.name,
>  		    encoder->base.base.id, encoder->base.name,
>  		    crtc->base.base.id, crtc->base.name);
>  
> -	if (i915->display.funcs.audio)
> -		i915->display.funcs.audio->audio_codec_disable(encoder,
> +	if (display->funcs.audio)
> +		display->funcs.audio->audio_codec_disable(encoder,
>  							       old_crtc_state,
>  							       old_conn_state);
>  
> -	mutex_lock(&i915->display.audio.mutex);
> +	mutex_lock(&display->audio.mutex);
>  
> -	audio_state = &i915->display.audio.state[cpu_transcoder];
> +	audio_state = &display->audio.state[cpu_transcoder];
>  
>  	audio_state->encoder = NULL;
>  	memset(audio_state->eld, 0, sizeof(audio_state->eld));
>  
> -	mutex_unlock(&i915->display.audio.mutex);
> +	mutex_unlock(&display->audio.mutex);
>  
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) {
> @@ -833,30 +839,30 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  static void intel_acomp_get_config(struct intel_encoder *encoder,
>  				   struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	struct intel_audio_state *audio_state;
>  
> -	mutex_lock(&i915->display.audio.mutex);
> +	mutex_lock(&display->audio.mutex);
>  
> -	audio_state = &i915->display.audio.state[cpu_transcoder];
> +	audio_state = &display->audio.state[cpu_transcoder];
>  
>  	if (audio_state->encoder)
>  		memcpy(crtc_state->eld, audio_state->eld, sizeof(audio_state->eld));
>  
> -	mutex_unlock(&i915->display.audio.mutex);
> +	mutex_unlock(&display->audio.mutex);
>  }
>  
>  void intel_audio_codec_get_config(struct intel_encoder *encoder,
>  				  struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  
>  	if (!crtc_state->has_audio)
>  		return;
>  
> -	if (i915->display.funcs.audio)
> -		i915->display.funcs.audio->audio_codec_get_config(encoder, crtc_state);
> +	if (display->funcs.audio)
> +		display->funcs.audio->audio_codec_get_config(encoder, crtc_state);
>  }
>  
>  static const struct intel_audio_funcs g4x_audio_funcs = {
> @@ -879,17 +885,19 @@ static const struct intel_audio_funcs hsw_audio_funcs = {
>  
>  /**
>   * intel_audio_hooks_init - Set up chip specific audio hooks
> - * @i915: device private
> + * @display: display device
>   */
> -void intel_audio_hooks_init(struct drm_i915_private *i915)
> +void intel_audio_hooks_init(struct intel_display *display)
>  {
> -	if (IS_G4X(i915))
> -		i915->display.funcs.audio = &g4x_audio_funcs;
> -	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915) ||
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	if (display->platform.g4x)
> +		display->funcs.audio = &g4x_audio_funcs;
> +	else if (display->platform.valleyview || display->platform.cherryview ||
>  		 HAS_PCH_CPT(i915) || HAS_PCH_IBX(i915))
> -		i915->display.funcs.audio = &ibx_audio_funcs;
> -	else if (IS_HASWELL(i915) || DISPLAY_VER(i915) >= 8)
> -		i915->display.funcs.audio = &hsw_audio_funcs;
> +		display->funcs.audio = &ibx_audio_funcs;
> +	else if (display->platform.haswell || DISPLAY_VER(display) >= 8)
> +		display->funcs.audio = &hsw_audio_funcs;
>  }
>  
>  struct aud_ts_cdclk_m_n {
> @@ -897,10 +905,10 @@ struct aud_ts_cdclk_m_n {
>  	u16 n;
>  };
>  
> -void intel_audio_cdclk_change_pre(struct drm_i915_private *i915)
> +void intel_audio_cdclk_change_pre(struct intel_display *display)
>  {
> -	if (DISPLAY_VER(i915) >= 13)
> -		intel_de_rmw(i915, AUD_TS_CDCLK_M, AUD_TS_CDCLK_M_EN, 0);
> +	if (DISPLAY_VER(display) >= 13)
> +		intel_de_rmw(display, AUD_TS_CDCLK_M, AUD_TS_CDCLK_M_EN, 0);
>  }
>  
>  static void get_aud_ts_cdclk_m_n(int refclk, int cdclk, struct aud_ts_cdclk_m_n *aud_ts)
> @@ -909,16 +917,18 @@ static void get_aud_ts_cdclk_m_n(int refclk, int cdclk, struct aud_ts_cdclk_m_n
>  	aud_ts->n = cdclk * aud_ts->m / 24000;
>  }
>  
> -void intel_audio_cdclk_change_post(struct drm_i915_private *i915)
> +void intel_audio_cdclk_change_post(struct intel_display *display)
>  {
>  	struct aud_ts_cdclk_m_n aud_ts;
>  
> -	if (DISPLAY_VER(i915) >= 13) {
> -		get_aud_ts_cdclk_m_n(i915->display.cdclk.hw.ref, i915->display.cdclk.hw.cdclk, &aud_ts);
> +	if (DISPLAY_VER(display) >= 13) {
> +		get_aud_ts_cdclk_m_n(display->cdclk.hw.ref,
> +				     display->cdclk.hw.cdclk, &aud_ts);
>  
> -		intel_de_write(i915, AUD_TS_CDCLK_N, aud_ts.n);
> -		intel_de_write(i915, AUD_TS_CDCLK_M, aud_ts.m | AUD_TS_CDCLK_M_EN);
> -		drm_dbg_kms(&i915->drm, "aud_ts_cdclk set to M=%u, N=%u\n", aud_ts.m, aud_ts.n);
> +		intel_de_write(display, AUD_TS_CDCLK_N, aud_ts.n);
> +		intel_de_write(display, AUD_TS_CDCLK_M, aud_ts.m | AUD_TS_CDCLK_M_EN);
> +		drm_dbg_kms(display->drm, "aud_ts_cdclk set to M=%u, N=%u\n",
> +			    aud_ts.m, aud_ts.n);
>  	}
>  }
>  
> @@ -943,9 +953,10 @@ static int glk_force_audio_cdclk_commit(struct intel_atomic_state *state,
>  	return drm_atomic_commit(&state->base);
>  }
>  
> -static void glk_force_audio_cdclk(struct drm_i915_private *i915,
> +static void glk_force_audio_cdclk(struct intel_display *display,
>  				  bool enable)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct drm_modeset_acquire_ctx ctx;
>  	struct drm_atomic_state *state;
>  	struct intel_crtc *crtc;
> @@ -956,8 +967,8 @@ static void glk_force_audio_cdclk(struct drm_i915_private *i915,
>  		return;
>  
>  	drm_modeset_acquire_init(&ctx, 0);
> -	state = drm_atomic_state_alloc(&i915->drm);
> -	if (drm_WARN_ON(&i915->drm, !state))
> +	state = drm_atomic_state_alloc(display->drm);
> +	if (drm_WARN_ON(display->drm, !state))
>  		return;
>  
>  	state->acquire_ctx = &ctx;
> @@ -972,7 +983,7 @@ static void glk_force_audio_cdclk(struct drm_i915_private *i915,
>  		goto retry;
>  	}
>  
> -	drm_WARN_ON(&i915->drm, ret);
> +	drm_WARN_ON(display->drm, ret);
>  
>  	drm_atomic_state_put(state);
>  
> @@ -983,7 +994,6 @@ static void glk_force_audio_cdclk(struct drm_i915_private *i915,
>  int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	int min_cdclk = 0;
>  
>  	if (!crtc_state->has_audio)
> @@ -1000,7 +1010,7 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
>  		if (DISPLAY_VER(display) == 10) {
>  			/* Display WA #1145: glk */
>  			min_cdclk = max(min_cdclk, 316800);
> -		} else if (DISPLAY_VER(display) == 9 || IS_BROADWELL(dev_priv)) {
> +		} else if (DISPLAY_VER(display) == 9 || display->platform.broadwell) {
>  			/* Display WA #1144: skl,bxt */
>  			min_cdclk = max(min_cdclk, 432000);
>  		}
> @@ -1020,7 +1030,7 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
>  	 *  270                    | 320 or higher
>  	 *  162                    | 200 or higher"
>  	 */
> -	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> +	if ((display->platform.valleyview || display->platform.cherryview) &&
>  	    intel_crtc_has_dp_encoder(crtc_state))
>  		min_cdclk = max(min_cdclk, crtc_state->port_clock);
>  
> @@ -1038,21 +1048,21 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
>  
>  	wakeref = intel_display_power_get(i915, POWER_DOMAIN_AUDIO_PLAYBACK);
>  
> -	if (i915->display.audio.power_refcount++ == 0) {
> -		if (DISPLAY_VER(i915) >= 9) {
> -			intel_de_write(i915, AUD_FREQ_CNTRL,
> -				       i915->display.audio.freq_cntrl);
> -			drm_dbg_kms(&i915->drm,
> +	if (display->audio.power_refcount++ == 0) {
> +		if (DISPLAY_VER(display) >= 9) {
> +			intel_de_write(display, AUD_FREQ_CNTRL,
> +				       display->audio.freq_cntrl);
> +			drm_dbg_kms(display->drm,
>  				    "restored AUD_FREQ_CNTRL to 0x%x\n",
> -				    i915->display.audio.freq_cntrl);
> +				    display->audio.freq_cntrl);
>  		}
>  
>  		/* Force CDCLK to 2*BCLK as long as we need audio powered. */
> -		if (IS_GEMINILAKE(i915))
> -			glk_force_audio_cdclk(i915, true);
> +		if (display->platform.geminilake)
> +			glk_force_audio_cdclk(display, true);
>  
> -		if (DISPLAY_VER(i915) >= 10)
> -			intel_de_rmw(i915, AUD_PIN_BUF_CTL,
> +		if (DISPLAY_VER(display) >= 10)
> +			intel_de_rmw(display, AUD_PIN_BUF_CTL,
>  				     0, AUD_PIN_BUF_ENABLE);
>  	}
>  
> @@ -1067,9 +1077,9 @@ static void i915_audio_component_put_power(struct device *kdev,
>  	intel_wakeref_t wakeref = (intel_wakeref_t)cookie;
>  
>  	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
> -	if (--i915->display.audio.power_refcount == 0)
> -		if (IS_GEMINILAKE(i915))
> -			glk_force_audio_cdclk(i915, false);
> +	if (--display->audio.power_refcount == 0)
> +		if (display->platform.geminilake)
> +			glk_force_audio_cdclk(display, false);
>  
>  	intel_display_power_put(i915, POWER_DOMAIN_AUDIO_PLAYBACK, wakeref);
>  }
> @@ -1078,10 +1088,9 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
>  						     bool enable)
>  {
>  	struct intel_display *display = to_intel_display(kdev);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	unsigned long cookie;
>  
> -	if (DISPLAY_VER(i915) < 9)
> +	if (DISPLAY_VER(display) < 9)
>  		return;
>  
>  	cookie = i915_audio_component_get_power(kdev);
> @@ -1090,12 +1099,12 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
>  	 * Enable/disable generating the codec wake signal, overriding the
>  	 * internal logic to generate the codec wake to controller.
>  	 */
> -	intel_de_rmw(i915, HSW_AUD_CHICKENBIT,
> +	intel_de_rmw(display, HSW_AUD_CHICKENBIT,
>  		     SKL_AUD_CODEC_WAKE_SIGNAL, 0);
>  	usleep_range(1000, 1500);
>  
>  	if (enable) {
> -		intel_de_rmw(i915, HSW_AUD_CHICKENBIT,
> +		intel_de_rmw(display, HSW_AUD_CHICKENBIT,
>  			     0, SKL_AUD_CODEC_WAKE_SIGNAL);
>  		usleep_range(1000, 1500);
>  	}
> @@ -1107,12 +1116,11 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
>  static int i915_audio_component_get_cdclk_freq(struct device *kdev)
>  {
>  	struct intel_display *display = to_intel_display(kdev);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  
> -	if (drm_WARN_ON_ONCE(&i915->drm, !HAS_DDI(i915)))
> +	if (drm_WARN_ON_ONCE(display->drm, !HAS_DDI(display)))
>  		return -ENODEV;
>  
> -	return i915->display.cdclk.hw.cdclk;
> +	return display->cdclk.hw.cdclk;
>  }
>  
>  /*
> @@ -1124,7 +1132,7 @@ static int i915_audio_component_get_cdclk_freq(struct device *kdev)
>   *   will get the right intel_encoder with port matched
>   * Non-MST & (cpu_transcoder < 0): get the right intel_encoder with port matched
>   */
> -static struct intel_audio_state *find_audio_state(struct drm_i915_private *i915,
> +static struct intel_audio_state *find_audio_state(struct intel_display *display,
>  						  int port, int cpu_transcoder)
>  {
>  	/* MST */
> @@ -1132,11 +1140,11 @@ static struct intel_audio_state *find_audio_state(struct drm_i915_private *i915,
>  		struct intel_audio_state *audio_state;
>  		struct intel_encoder *encoder;
>  
> -		if (drm_WARN_ON(&i915->drm,
> -				cpu_transcoder >= ARRAY_SIZE(i915->display.audio.state)))
> +		if (drm_WARN_ON(display->drm,
> +				cpu_transcoder >= ARRAY_SIZE(display->audio.state)))
>  			return NULL;
>  
> -		audio_state = &i915->display.audio.state[cpu_transcoder];
> +		audio_state = &display->audio.state[cpu_transcoder];
>  		encoder = audio_state->encoder;
>  
>  		if (encoder && encoder->port == port &&
> @@ -1148,11 +1156,11 @@ static struct intel_audio_state *find_audio_state(struct drm_i915_private *i915,
>  	if (cpu_transcoder > 0)
>  		return NULL;
>  
> -	for_each_cpu_transcoder(i915, cpu_transcoder) {
> +	for_each_cpu_transcoder(display, cpu_transcoder) {
>  		struct intel_audio_state *audio_state;
>  		struct intel_encoder *encoder;
>  
> -		audio_state = &i915->display.audio.state[cpu_transcoder];
> +		audio_state = &display->audio.state[cpu_transcoder];
>  		encoder = audio_state->encoder;
>  
>  		if (encoder && encoder->port == port &&
> @@ -1167,23 +1175,23 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
>  						int cpu_transcoder, int rate)
>  {
>  	struct intel_display *display = to_intel_display(kdev);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -	struct i915_audio_component *acomp = i915->display.audio.component;
> +	struct i915_audio_component *acomp = display->audio.component;
>  	const struct intel_audio_state *audio_state;
>  	struct intel_encoder *encoder;
>  	struct intel_crtc *crtc;
>  	unsigned long cookie;
>  	int err = 0;
>  
> -	if (!HAS_DDI(i915))
> +	if (!HAS_DDI(display))
>  		return 0;
>  
>  	cookie = i915_audio_component_get_power(kdev);
> -	mutex_lock(&i915->display.audio.mutex);
> +	mutex_lock(&display->audio.mutex);
>  
> -	audio_state = find_audio_state(i915, port, cpu_transcoder);
> +	audio_state = find_audio_state(display, port, cpu_transcoder);
>  	if (!audio_state) {
> -		drm_dbg_kms(&i915->drm, "Not valid for port %c\n", port_name(port));
> +		drm_dbg_kms(display->drm, "Not valid for port %c\n",
> +			    port_name(port));
>  		err = -ENODEV;
>  		goto unlock;
>  	}
> @@ -1200,7 +1208,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
>  	hsw_audio_config_update(encoder, crtc->config);
>  
>   unlock:
> -	mutex_unlock(&i915->display.audio.mutex);
> +	mutex_unlock(&display->audio.mutex);
>  	i915_audio_component_put_power(kdev, cookie);
>  	return err;
>  }
> @@ -1210,16 +1218,16 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
>  					unsigned char *buf, int max_bytes)
>  {
>  	struct intel_display *display = to_intel_display(kdev);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	const struct intel_audio_state *audio_state;
>  	int ret = 0;
>  
> -	mutex_lock(&i915->display.audio.mutex);
> +	mutex_lock(&display->audio.mutex);
>  
> -	audio_state = find_audio_state(i915, port, cpu_transcoder);
> +	audio_state = find_audio_state(display, port, cpu_transcoder);
>  	if (!audio_state) {
> -		drm_dbg_kms(&i915->drm, "Not valid for port %c\n", port_name(port));
> -		mutex_unlock(&i915->display.audio.mutex);
> +		drm_dbg_kms(display->drm, "Not valid for port %c\n",
> +			    port_name(port));
> +		mutex_unlock(&display->audio.mutex);
>  		return -EINVAL;
>  	}
>  
> @@ -1231,7 +1239,7 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
>  		memcpy(buf, eld, min(max_bytes, ret));
>  	}
>  
> -	mutex_unlock(&i915->display.audio.mutex);
> +	mutex_unlock(&display->audio.mutex);
>  	return ret;
>  }
>  
> @@ -1249,26 +1257,25 @@ static int i915_audio_component_bind(struct device *drv_kdev,
>  				     struct device *hda_kdev, void *data)
>  {
>  	struct intel_display *display = to_intel_display(drv_kdev);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct i915_audio_component *acomp = data;
>  	int i;
>  
> -	if (drm_WARN_ON(&i915->drm, acomp->base.ops || acomp->base.dev))
> +	if (drm_WARN_ON(display->drm, acomp->base.ops || acomp->base.dev))
>  		return -EEXIST;
>  
> -	if (drm_WARN_ON(&i915->drm,
> +	if (drm_WARN_ON(display->drm,
>  			!device_link_add(hda_kdev, drv_kdev,
>  					 DL_FLAG_STATELESS)))
>  		return -ENOMEM;
>  
> -	drm_modeset_lock_all(&i915->drm);
> +	drm_modeset_lock_all(display->drm);
>  	acomp->base.ops = &i915_audio_component_ops;
>  	acomp->base.dev = drv_kdev;
>  	BUILD_BUG_ON(MAX_PORTS != I915_MAX_PORTS);
>  	for (i = 0; i < ARRAY_SIZE(acomp->aud_sample_rate); i++)
>  		acomp->aud_sample_rate[i] = 0;
> -	i915->display.audio.component = acomp;
> -	drm_modeset_unlock_all(&i915->drm);
> +	display->audio.component = acomp;
> +	drm_modeset_unlock_all(display->drm);
>  
>  	return 0;
>  }
> @@ -1277,20 +1284,20 @@ static void i915_audio_component_unbind(struct device *drv_kdev,
>  					struct device *hda_kdev, void *data)
>  {
>  	struct intel_display *display = to_intel_display(drv_kdev);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct i915_audio_component *acomp = data;
>  
> -	drm_modeset_lock_all(&i915->drm);
> +	drm_modeset_lock_all(display->drm);
>  	acomp->base.ops = NULL;
>  	acomp->base.dev = NULL;
> -	i915->display.audio.component = NULL;
> -	drm_modeset_unlock_all(&i915->drm);
> +	display->audio.component = NULL;
> +	drm_modeset_unlock_all(display->drm);
>  
>  	device_link_remove(hda_kdev, drv_kdev);
>  
> -	if (i915->display.audio.power_refcount)
> -		drm_err(&i915->drm, "audio power refcount %d after unbind\n",
> -			i915->display.audio.power_refcount);
> +	if (display->audio.power_refcount)
> +		drm_err(display->drm,
> +			"audio power refcount %d after unbind\n",
> +			display->audio.power_refcount);
>  }
>  
>  static const struct component_ops i915_audio_component_bind_ops = {
> @@ -1309,7 +1316,7 @@ static const struct component_ops i915_audio_component_bind_ops = {
>  
>  /**
>   * i915_audio_component_init - initialize and register the audio component
> - * @i915: i915 device instance
> + * @display: display device
>   *
>   * This will register with the component framework a child component which
>   * will bind dynamically to the snd_hda_intel driver's corresponding master
> @@ -1323,93 +1330,97 @@ static const struct component_ops i915_audio_component_bind_ops = {
>   * We ignore any error during registration and continue with reduced
>   * functionality (i.e. without HDMI audio).
>   */
> -static void i915_audio_component_init(struct drm_i915_private *i915)
> +static void i915_audio_component_init(struct intel_display *display)
>  {
>  	u32 aud_freq, aud_freq_init;
>  
> -	if (DISPLAY_VER(i915) >= 9) {
> -		aud_freq_init = intel_de_read(i915, AUD_FREQ_CNTRL);
> +	if (DISPLAY_VER(display) >= 9) {
> +		aud_freq_init = intel_de_read(display, AUD_FREQ_CNTRL);
>  
> -		if (DISPLAY_VER(i915) >= 12)
> +		if (DISPLAY_VER(display) >= 12)
>  			aud_freq = AUD_FREQ_GEN12;
>  		else
>  			aud_freq = aud_freq_init;
>  
>  		/* use BIOS provided value for TGL and RKL unless it is a known bad value */
> -		if ((IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915)) &&
> +		if ((display->platform.tigerlake || display->platform.rocketlake) &&
>  		    aud_freq_init != AUD_FREQ_TGL_BROKEN)
>  			aud_freq = aud_freq_init;
>  
> -		drm_dbg_kms(&i915->drm, "use AUD_FREQ_CNTRL of 0x%x (init value 0x%x)\n",
> +		drm_dbg_kms(display->drm,
> +			    "use AUD_FREQ_CNTRL of 0x%x (init value 0x%x)\n",
>  			    aud_freq, aud_freq_init);
>  
> -		i915->display.audio.freq_cntrl = aud_freq;
> +		display->audio.freq_cntrl = aud_freq;
>  	}
>  
>  	/* init with current cdclk */
> -	intel_audio_cdclk_change_post(i915);
> +	intel_audio_cdclk_change_post(display);
>  }
>  
> -static void i915_audio_component_register(struct drm_i915_private *i915)
> +static void i915_audio_component_register(struct intel_display *display)
>  {
>  	int ret;
>  
> -	ret = component_add_typed(i915->drm.dev,
> +	ret = component_add_typed(display->drm->dev,
>  				  &i915_audio_component_bind_ops,
>  				  I915_COMPONENT_AUDIO);
>  	if (ret < 0) {
> -		drm_err(&i915->drm,
> +		drm_err(display->drm,
>  			"failed to add audio component (%d)\n", ret);
>  		/* continue with reduced functionality */
>  		return;
>  	}
>  
> -	i915->display.audio.component_registered = true;
> +	display->audio.component_registered = true;
>  }
>  
>  /**
>   * i915_audio_component_cleanup - deregister the audio component
> - * @i915: i915 device instance
> + * @display: display device
>   *
>   * Deregisters the audio component, breaking any existing binding to the
>   * corresponding snd_hda_intel driver's master component.
>   */
> -static void i915_audio_component_cleanup(struct drm_i915_private *i915)
> +static void i915_audio_component_cleanup(struct intel_display *display)
>  {
> -	if (!i915->display.audio.component_registered)
> +	if (!display->audio.component_registered)
>  		return;
>  
> -	component_del(i915->drm.dev, &i915_audio_component_bind_ops);
> -	i915->display.audio.component_registered = false;
> +	component_del(display->drm->dev, &i915_audio_component_bind_ops);
> +	display->audio.component_registered = false;
>  }
>  
>  /**
>   * intel_audio_init() - Initialize the audio driver either using
>   * component framework or using lpe audio bridge
> - * @i915: the i915 drm device private data
> + * @display: display device
>   *
>   */
> -void intel_audio_init(struct drm_i915_private *i915)
> +void intel_audio_init(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
>  	if (intel_lpe_audio_init(i915) < 0)
> -		i915_audio_component_init(i915);
> +		i915_audio_component_init(display);
>  }
>  
> -void intel_audio_register(struct drm_i915_private *i915)
> +void intel_audio_register(struct intel_display *display)
>  {
> -	if (!i915->display.audio.lpe.platdev)
> -		i915_audio_component_register(i915);
> +	if (!display->audio.lpe.platdev)
> +		i915_audio_component_register(display);
>  }
>  
>  /**
>   * intel_audio_deinit() - deinitialize the audio driver
> - * @i915: the i915 drm device private data
> - *
> + * @display: display device
>   */
> -void intel_audio_deinit(struct drm_i915_private *i915)
> +void intel_audio_deinit(struct intel_display *display)
>  {
> -	if (i915->display.audio.lpe.platdev != NULL)
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	if (display->audio.lpe.platdev)
>  		intel_lpe_audio_teardown(i915);
>  	else
> -		i915_audio_component_cleanup(i915);
> +		i915_audio_component_cleanup(display);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> index 1bafc155434a..ad49eefa7182 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -9,11 +9,11 @@
>  #include <linux/types.h>
>  
>  struct drm_connector_state;
> -struct drm_i915_private;
>  struct intel_crtc_state;
> +struct intel_display;
>  struct intel_encoder;
>  
> -void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
> +void intel_audio_hooks_init(struct intel_display *display);
>  bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state);
> @@ -25,12 +25,12 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  			       const struct drm_connector_state *old_conn_state);
>  void intel_audio_codec_get_config(struct intel_encoder *encoder,
>  				  struct intel_crtc_state *crtc_state);
> -void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
> -void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
> +void intel_audio_cdclk_change_pre(struct intel_display *display);
> +void intel_audio_cdclk_change_post(struct intel_display *display);
>  int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state);
> -void intel_audio_init(struct drm_i915_private *dev_priv);
> -void intel_audio_register(struct drm_i915_private *i915);
> -void intel_audio_deinit(struct drm_i915_private *dev_priv);
> +void intel_audio_init(struct intel_display *display);
> +void intel_audio_register(struct intel_display *display);
> +void intel_audio_deinit(struct intel_display *display);
>  void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_AUDIO_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index c7a603589412..bee90b06995a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2521,7 +2521,6 @@ static void intel_set_cdclk(struct intel_display *display,
>  			    const struct intel_cdclk_config *cdclk_config,
>  			    enum pipe pipe, const char *context)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_encoder *encoder;
>  
>  	if (!intel_cdclk_changed(&display->cdclk.hw, cdclk_config))
> @@ -2538,7 +2537,7 @@ static void intel_set_cdclk(struct intel_display *display,
>  		intel_psr_pause(intel_dp);
>  	}
>  
> -	intel_audio_cdclk_change_pre(dev_priv);
> +	intel_audio_cdclk_change_pre(display);
>  
>  	/*
>  	 * Lock aux/gmbus while we change cdclk in case those
> @@ -2568,7 +2567,7 @@ static void intel_set_cdclk(struct intel_display *display,
>  		intel_psr_resume(intel_dp);
>  	}
>  
> -	intel_audio_cdclk_change_post(dev_priv);
> +	intel_audio_cdclk_change_post(display);
>  
>  	if (drm_WARN(display->drm,
>  		     intel_cdclk_changed(&display->cdclk.hw, cdclk_config),
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 1aa0b298c278..73ea0e906014 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -197,7 +197,7 @@ void intel_display_driver_early_probe(struct intel_display *display)
>  	intel_dkl_phy_init(i915);
>  	intel_color_init_hooks(display);
>  	intel_init_cdclk_hooks(display);
> -	intel_audio_hooks_init(i915);
> +	intel_audio_hooks_init(display);
>  	intel_dpll_init_clock_hook(i915);
>  	intel_init_display_hooks(i915);
>  	intel_fdi_init_hook(i915);
> @@ -546,11 +546,11 @@ void intel_display_driver_register(struct intel_display *display)
>  	intel_opregion_register(display);
>  	intel_acpi_video_register(display);
>  
> -	intel_audio_init(i915);
> +	intel_audio_init(display);
>  
>  	intel_display_driver_enable_user_access(display);
>  
> -	intel_audio_register(i915);
> +	intel_audio_register(display);
>  
>  	intel_display_debugfs_register(i915);
>  
> @@ -638,8 +638,6 @@ void intel_display_driver_remove_nogem(struct intel_display *display)
>  
>  void intel_display_driver_unregister(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> @@ -654,7 +652,7 @@ void intel_display_driver_unregister(struct intel_display *display)
>  
>  	intel_display_driver_disable_user_access(display);
>  
> -	intel_audio_deinit(i915);
> +	intel_audio_deinit(display);
>  
>  	drm_atomic_helper_shutdown(display->drm);
>  
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index b3921dbc52ff..96ba9595bf2a 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -216,7 +216,7 @@ void xe_display_fini(struct xe_device *xe)
>  	intel_hpd_poll_fini(xe);
>  
>  	intel_hdcp_component_fini(display);
> -	intel_audio_deinit(xe);
> +	intel_audio_deinit(display);
>  }
>  
>  void xe_display_register(struct xe_device *xe)
> -- 
> 2.39.5
> 
