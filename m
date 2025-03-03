Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58285A4CF17
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 00:11:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F04B710E2AA;
	Mon,  3 Mar 2025 23:11:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E9cSe/oc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2FFA10E2AA;
 Mon,  3 Mar 2025 23:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741043513; x=1772579513;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Yze9v2imy8CAZ17BIBiiOkbdymojMzgFhgYL6ePQ4OU=;
 b=E9cSe/ocWik2ta78tKhbh+G5U+FRdXLPT8+Y4crPH4YZQsPI1B1xxHdu
 l20cDjC3fELV3oL+MnQrl23kKuuYsCKi30P6ZJWls/VV/IXCkTdMSKZJz
 ax8j642oRpSUs3OO/ytMD2REio+fvHYmDlD/0D9lMPPcWYv6Iso0vrTcW
 N2N0y180W1zH3btpqyxxXwnChVDVr8Y2iFt2Ens+SOZwMyrxILWYVkE1E
 9i3we6fGfcXZ0r/raxpbsvF8D47pp7nb96SHS8GEr7wIwOLIqZiUUaMqO
 KHXTPZk6SCYbmd8QdhCwP/U8vPHFmtXf9cU/dqkTIRbmE2ZeJlqkQxCRO w==;
X-CSE-ConnectionGUID: bqmbcGwrTRibxxA4rJWPIw==
X-CSE-MsgGUID: zFumBF2xSZ2hFRHkvZzyqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="42059710"
X-IronPort-AV: E=Sophos;i="6.13,330,1732608000"; d="scan'208";a="42059710"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 15:11:51 -0800
X-CSE-ConnectionGUID: /en++60/QTCApvLnU9IPBg==
X-CSE-MsgGUID: vHXulcy6Rg+NUOZ30ty/0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,330,1732608000"; d="scan'208";a="118191149"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 15:11:51 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 3 Mar 2025 15:11:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 3 Mar 2025 15:11:50 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 15:11:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H4AcslJxRt5JfmdvToK5tgh+6eQvnguBFtc0bfermTxHkimT6OdUJZThlhu4wHpEc9jlSbIzpqUpltFjfSp9Yc3TLmxSYiPSqBiQeRXv1n+pMVVqjeI/nA12WSmTxEHSZ2aRMW4IEYSdQtpnGBUpYSLcNs3IXL0/SdH7T4pMGfM3gkBfTRIQ1neHHOgbuhRa54mqxY1Ka87fhPRujHrUyjPzAX6sSNsMn4OEopV1eIK5N4IYLEysc4LutQKe4TGnrksTjbIpw3ykaqXq+hdvmKAv0LB3Ft1DamujSYdNGo+OrqtekT009S9SSpSI5JwNnBSUvuFvxsfiRdHE/4gyTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jl5v4cs2ipNarO7Oyeikt8CcaGQxDRXGt8tM1vz8M50=;
 b=McgxhiSdYlC5/Af7CkHTrgZE+Jm/untXhA2gxBKV8nTP/neoslPhauKVzb5MDmCGKBguB+ewQ14mHuUV0KwI2UpKxaL70h84+zSFXoBR7Lzj5MCSxvox22YMlNp+HzIjAgv9uRNZQN+J2oEdzq3KdrbCbcrtezfvo33XhUCQmO/nd/Tc257udH/v+BcimDOcMmP8R9xv7KE6D2Hs5fjTOI+9EuQdJHXUPnmmC4oUHUNJLJeZUMVv2gv48hRsQnryEEyELB7X2r18pgHgUqaequzihgpsaLaBAAGlrEfCVb73gN7X8FYX5X2smnb+XXuk7Yzt0hMZ3b0m1tRO66zPtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW4PR11MB7053.namprd11.prod.outlook.com (2603:10b6:303:221::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Mon, 3 Mar
 2025 23:11:46 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 23:11:46 +0000
Date: Mon, 3 Mar 2025 15:11:43 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v3 5/8] drm/i915/reset: remove I915_RESET_MODESET flag
Message-ID: <20250303231143.GN5109@mdroper-desk1.amr.corp.intel.com>
References: <cover.1741001054.git.jani.nikula@intel.com>
 <294690db3fae8fec7f356edf467e79882ed494db.1741001054.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <294690db3fae8fec7f356edf467e79882ed494db.1741001054.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ2PR07CA0015.namprd07.prod.outlook.com
 (2603:10b6:a03:505::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW4PR11MB7053:EE_
X-MS-Office365-Filtering-Correlation-Id: 045be6d5-2736-41b8-cf45-08dd5aa8c503
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eKGB0rFz3inA5E45+3vx5XIIndG/28DDZj9rrM8xaQAFkSuMxjy9LR1A9Uof?=
 =?us-ascii?Q?pj7SEVjIx0KK0DdStg+LmmJaAVdf0wRnAH+eaBzwrPtNhi5AfOOR/Yy1o0kf?=
 =?us-ascii?Q?hVZ1jteEAEwsbh3tDIiO21aMRCh3s5elPDEhK7uOuGV19WfTmEXqkHr/TrPq?=
 =?us-ascii?Q?ZzN1+5vz8S+VkAriFJI20pWqc2QpAQTmc8Ubzm0CwrHgMLk026cwqZKXAF0J?=
 =?us-ascii?Q?KQih5/EAecrSvrw0BekNrxOzNjoXgatRj7Bj/cRGUY1pP8lDRClZ2/mQZgRA?=
 =?us-ascii?Q?CXrAG+m8LuSwP+xXE6fYnohORuQ4mxjVzI0P5rwoE2YUEFNNqqVYTr0EYFT/?=
 =?us-ascii?Q?IBTawXijU/nAZ8NV6bOMyS+dv5KGsFAAOOVrBln/TD0p482Oexj+ooVhD3Z2?=
 =?us-ascii?Q?2ZKG7NChDgxoYGsTMozUtVQr2ThJo8GRDbuRhbfafWIdbuP5i6SdGZvl08Id?=
 =?us-ascii?Q?ElbnyhB9a5e/B9OyACUaWPYtAiLI7VxGJBS++IUCKghwf68AjKnAxeB9hMZd?=
 =?us-ascii?Q?Sz96rSyONqQVljQlV5LzSJrIR+1cEi2rEcPhE0JJZ/rQXSqt/AA6H6fzZvC1?=
 =?us-ascii?Q?qJHGe1nk5UK3FF2paxXWamsb2VNrdOCTzD1BGd4UvYPA4hliOrkcsI90txR+?=
 =?us-ascii?Q?LazqXK0QIPTG195L51NAbYA6Tee28XDZc5nEBpFNdRcPZwSmndNVzXnFbPd/?=
 =?us-ascii?Q?IhUO11YDwozDTjvVzhJPDu2Wr5i5PupnTw4HA0zAfmi+Eha3ExSeB4r6GwTt?=
 =?us-ascii?Q?D6v7IRvHwXiM7M1IXmBksZyIrdVlRr/uSNBlYnCvZtNp6JoSv9oMWYZNqVza?=
 =?us-ascii?Q?JythQqCaneqPMbssivTG92R2W4L6zs0oexmQdK5l+qq/75FA7/V1b0Q/y7ek?=
 =?us-ascii?Q?9mTCLu2sgd1G7Go20mOZlho8mn60Y0+TsWhaqPCZjUoty/ikKfhZemsZ6F3P?=
 =?us-ascii?Q?x4AYhaHLCGvHRa2CuIUrQsbgAKwu4DeQP8A27ciRZQS7qAy6kXMFrpsUMgDr?=
 =?us-ascii?Q?iO1nm1+k6MbOYPSRc2detvBtl/pOoV5VD5bBRqffA2ShQ0fmcIZ65EMwshxD?=
 =?us-ascii?Q?Kt+sByowrqucSJbRwQOmEaEi4G0xeAnqgz+3Z147u3FcsdWfvvr+aG1l4S0b?=
 =?us-ascii?Q?I+njFJjkEB/FSehZAvC8ktbSQX8GIjSnNjDuQpu6GQL0dz0TWdhkUQfJjrT7?=
 =?us-ascii?Q?ahYiRrWSSeXadweMUYUOp43Kdfg/+8siFet67d13GJAhaAwgCYWmHz8zngwN?=
 =?us-ascii?Q?Y+biXW/OBPzM+hwTw6AGtRTMRtsbARowRn4z8G/1g1+glRxa29Q/U107h3kv?=
 =?us-ascii?Q?9V1+4Xv6y4F6Mhtg8Q7FWoC7yGRzviQMpbCgMlZZ7uvwh9zoqrFUR5iJE2BD?=
 =?us-ascii?Q?D04s0HjtErY1dPc0VgFiw1p4Q5OX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?psnW+upAFHO4/H44ETVsz1a6NDDgEX7jaKnzXo/qwaapWvLhB9iC5rrbg5PO?=
 =?us-ascii?Q?WbCc3vEvsKidxleFGx/hDvgdgfsEACdUoN+/zsDvApjP+3t5Qew2N063ovVV?=
 =?us-ascii?Q?J/dl4wWF93WUilQfBnl5F2SphcvCoGXD42fgDhPfnKmifthKCWUlYRY4EaE4?=
 =?us-ascii?Q?pjKmCLKh4BO0KYvnUfCki15I9sFob6V0aE9JCVYGO0TQPVCzkapvAmsW3hrT?=
 =?us-ascii?Q?vLfPpsvLdHob6iJzxaz8YMOgJNJMgkbVozhcO3UXsNDn8R7erd2BeRITZ70p?=
 =?us-ascii?Q?YNKMXFe/8qHJAoDDzSaIv4HUSKpziLjKIMZyhiAr5hhNrJ7mu/TZYPFDGTzz?=
 =?us-ascii?Q?fP+93enBrGTBJM6fQlCmVuy6v4fSfhSKnbxo66kB33/su88Beuv8a24CeMEm?=
 =?us-ascii?Q?vkVjbRcRY3xyxNtMjwNEo37pjIPdgvISZ2TWZLFgaTdtfKdDGvFpcsDZjZ6o?=
 =?us-ascii?Q?7vBtLe6QiD/llU2OeUXYhU/e3YkEwYdiOYxAnZiMgh69DYrSnEuyRrFlI456?=
 =?us-ascii?Q?0YyIipqdWEh9hKeoDAK8jbvY1Y4PFmLQJ0Zlp3Sfek+ZhtQOrAfmyrMK3bUx?=
 =?us-ascii?Q?92Ii2mM59wkxA7IPSV5u58URO0+0dG9gaBx/CGmlfNWcuRJLasOZz5YrrzEM?=
 =?us-ascii?Q?jIIEOm21ikaQxhT5qRsHKDt+/RIN1TAbQseG4w3Cs5IIqjzMb4bWdGmmsRzS?=
 =?us-ascii?Q?HC0Tra9aBPxzQ4A7joYId6VXHBHQUBZ+m+Je/pNR1xZNAAfb1ufQWkLB5EpQ?=
 =?us-ascii?Q?B6dSR8P57Sz29vu/7hoXgjNOjtfJq7uEuwhLZlcGEq/DqSRVPjDn5mpCrlDu?=
 =?us-ascii?Q?Qxlbh5FxblKWKvYspxvPD3xKbqzUVHjzEcPp5LeiG4JY6bf1vYruP73vFRqJ?=
 =?us-ascii?Q?io9c1eHPysuG022DwVyEXYUeGmzz/89tHHvXnQQgsmDJh7oYgePLK0d5tyPs?=
 =?us-ascii?Q?FOOISCu8ntY+DReIa6Oy2LDOQS9yhpGjlZzIEsOgeCqH4LQyrWJxavV3ZwZi?=
 =?us-ascii?Q?OL8M/7Qo2X9muukI1w78/YO8LC3G6yKM1jjuyOnmmcdzakrTkefWi0hI7lXl?=
 =?us-ascii?Q?xw0Jdss8paI46PAKU8xPxpFdoVYSGcTAgcOP5rRTEfsQj6LDsvavV+AJXpCo?=
 =?us-ascii?Q?CWzZ/iGNj4J7Qpu9WdZ1qP/V0JZkkQ100Lre05YRJB7+3/6IbBbPfg7vUqh0?=
 =?us-ascii?Q?7Za0is8tLq2y2V4toV8Q+UXIkgSNfaOkMAAgP9MvS8BokWMKEOJYnXYAeAGA?=
 =?us-ascii?Q?i6gb4Raseyl71/jFf58bM1vWRfGBSDjfmVL2AieYLHWQSkWw7jDlfyvi6hxm?=
 =?us-ascii?Q?rZuOn3wl5XBmyZr+t1FYUHpEYlscirsLG7W33rNIMpYEQqgr6XCG8lG1zH47?=
 =?us-ascii?Q?QwyHcnKY4lqa1GbqajyjiiWcqZJ91I0QywQAxi3QxZ+rymylwFDHFih5MvLJ?=
 =?us-ascii?Q?N6b6iZr1l5rawYuplNEWDalH6vCPHXH9d2KNrV5wkq4BZWH6FvDOLkG1GwAX?=
 =?us-ascii?Q?/XgLpmDnA3z15Oo7KNToO0AL6W9S767mzkNXezMSCt2/EpXx/8S2M6ZNw1lP?=
 =?us-ascii?Q?OfykO6R+N5blvGjc26csaEAmDgf/uc7om0BwtbAZJqARM/LJua34dJGpogny?=
 =?us-ascii?Q?JQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 045be6d5-2736-41b8-cf45-08dd5aa8c503
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2025 23:11:46.5082 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7kK9aY3fIERGapsFXLN7uF7wrH0jPSJ31AvjbmTr2oM267v6feoJR2D9nPMA9F4G6bKs04iH+jSWAusBeH6BlejIEdOH2vHLFR6Vh+7dito=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7053
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

On Mon, Mar 03, 2025 at 01:27:07PM +0200, Jani Nikula wrote:
> Since commit d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces
> instead of i915_sw_fence") we don't have anyone waiting on the
> I915_RESET_MODESET bit, and there's no need for its semantics. Instead,
> simply return true from intel_display_reset_prepare() to indicate that
> intel_display_reset_finish() should be called.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../drm/i915/display/intel_display_reset.c    | 24 +++++++------------
>  .../drm/i915/display/intel_display_reset.h    |  2 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c         |  8 ++++---
>  drivers/gpu/drm/i915/gt/intel_reset_types.h   |  3 +--
>  4 files changed, 15 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index 121679b4230f..acc728c75328 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -27,7 +27,8 @@ bool intel_display_reset_test(struct intel_display *display)
>  	return display->params.force_reset_modeset_test;
>  }
>  
> -void intel_display_reset_prepare(struct intel_display *display)
> +/* returns true if intel_display_reset_finish() needs to be called */
> +bool intel_display_reset_prepare(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
> @@ -35,17 +36,12 @@ void intel_display_reset_prepare(struct intel_display *display)
>  	int ret;
>  
>  	if (!HAS_DISPLAY(display))
> -		return;
> +		return false;
>  
>  	/* reset doesn't touch the display */
>  	if (!intel_display_reset_test(display) &&
>  	    !gpu_reset_clobbers_display(display))
> -		return;
> -
> -	/* We have a modeset vs reset deadlock, defensively unbreak it. */
> -	set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
> -	smp_mb__after_atomic();
> -	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
> +		return false;
>  
>  	if (atomic_read(&display->restore.pending_fb_pin)) {
>  		drm_dbg_kms(display->drm,
> @@ -75,7 +71,7 @@ void intel_display_reset_prepare(struct intel_display *display)
>  		ret = PTR_ERR(state);
>  		drm_err(display->drm, "Duplicating state failed with %i\n",
>  			ret);
> -		return;
> +		return true;
>  	}
>  
>  	ret = drm_atomic_helper_disable_all(display->drm, ctx);
> @@ -83,11 +79,13 @@ void intel_display_reset_prepare(struct intel_display *display)
>  		drm_err(display->drm, "Suspending crtc's failed with %i\n",
>  			ret);
>  		drm_atomic_state_put(state);
> -		return;
> +		return true;
>  	}
>  
>  	display->restore.modeset_state = state;
>  	state->acquire_ctx = ctx;
> +
> +	return true;
>  }
>  
>  void intel_display_reset_finish(struct intel_display *display)
> @@ -100,10 +98,6 @@ void intel_display_reset_finish(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> -	/* reset doesn't touch the display */
> -	if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
> -		return;
> -
>  	state = fetch_and_zero(&display->restore.modeset_state);
>  	if (!state)
>  		goto unlock;
> @@ -141,6 +135,4 @@ void intel_display_reset_finish(struct intel_display *display)
>  	drm_modeset_drop_locks(ctx);
>  	drm_modeset_acquire_fini(ctx);
>  	mutex_unlock(&display->drm->mode_config.mutex);
> -
> -	clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
> index c1dd2e8d0914..311b5af8ca0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -11,7 +11,7 @@
>  struct intel_display;
>  
>  bool intel_display_reset_test(struct intel_display *display);
> -void intel_display_reset_prepare(struct intel_display *display);
> +bool intel_display_reset_prepare(struct intel_display *display);
>  void intel_display_reset_finish(struct intel_display *display);
>  
>  #endif /* __INTEL_RESET_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 835c9081b239..f6c8e4d48b04 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1419,12 +1419,14 @@ static void intel_gt_reset_global(struct intel_gt *gt,
>  	intel_wedge_on_timeout(&w, gt, 60 * HZ) {
>  		struct drm_i915_private *i915 = gt->i915;
>  		struct intel_display *display = &i915->display;
> +		bool reset_display;
>  
> -		intel_display_reset_prepare(display);
> +		reset_display = intel_display_reset_prepare(display);
>  
>  		intel_gt_reset(gt, engine_mask, reason);
>  
> -		intel_display_reset_finish(display);
> +		if (reset_display)
> +			intel_display_reset_finish(display);
>  	}
>  
>  	if (!test_bit(I915_WEDGED, &gt->reset.flags))
> @@ -1492,7 +1494,7 @@ void intel_gt_handle_error(struct intel_gt *gt,
>  	    intel_has_reset_engine(gt) && !intel_gt_is_wedged(gt)) {
>  		local_bh_disable();
>  		for_each_engine_masked(engine, gt, engine_mask, tmp) {
> -			BUILD_BUG_ON(I915_RESET_MODESET >= I915_RESET_ENGINE);
> +			BUILD_BUG_ON(I915_RESET_BACKOFF >= I915_RESET_ENGINE);
>  			if (test_and_set_bit(I915_RESET_ENGINE + engine->id,
>  					     &gt->reset.flags))
>  				continue;
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset_types.h b/drivers/gpu/drm/i915/gt/intel_reset_types.h
> index 80351f0a856c..4f5fd393af6f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_reset_types.h
> @@ -41,8 +41,7 @@ struct intel_reset {
>  	 */
>  	unsigned long flags;
>  #define I915_RESET_BACKOFF	0
> -#define I915_RESET_MODESET	1
> -#define I915_RESET_ENGINE	2
> +#define I915_RESET_ENGINE	1
>  #define I915_WEDGED_ON_INIT	(BITS_PER_LONG - 3)
>  #define I915_WEDGED_ON_FINI	(BITS_PER_LONG - 2)
>  #define I915_WEDGED		(BITS_PER_LONG - 1)
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
