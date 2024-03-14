Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5286187C478
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 21:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC5D10FDB5;
	Thu, 14 Mar 2024 20:52:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M9616aFr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD2010FDB5
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Mar 2024 20:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710449520; x=1741985520;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8guDo121ocuXHIZEzmz1DLBDBH1C9E+siB6khgV6diw=;
 b=M9616aFrQJoEykicV0eFfMa3BeVll7NTqOUQnOx7EiV2MhIbP0DhOcGH
 R4Dau1rJqmKd8a5eWwWQye5VMKKsekxEcaU5mtFBkIlCywKKG47cQbdpN
 JMS0Nxta17VZp4beZ2ancPRVGRLeMBuxTcWQQs5w+/QNhbUDyB/0ZowKK
 S7c+pck1aF4yvGoEAyK04rys0GGrr8GledkNE1qUoalwscwqHMKWcqRVm
 LconRx6qrEpcgNuUZUP34QNXI6R55iF1ZzqNoYrNWKkzycMj1tID+5TnX
 tUh4xL9nWSBtXcF55Rg6/zoafrzOX22PFtGBVn8YEk1X/efhtL6Wdxszk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5426610"
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; 
   d="scan'208";a="5426610"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 13:51:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; d="scan'208";a="17018991"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 13:51:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 13:51:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 13:51:58 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 13:51:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DP/UBAC9AbWlgrp8WXeAT+/sfIBiG5ZdmAIaSlM0+4eV02+kDpTrUur2Ey6gLmT1/WmcZpKJLU+CiDLgAF2849ECRn/8LzffuRnvv1xMCMllZVZKiYFm8v08V6kXes8994sXju6S2MyBBUuYWsirwvHc0fS0Hkr7qM2Kfik9Z8hfEbQb0qG9zm6Tmh6+6WA5f3fgyP7z92AzZeIBp2uOVsDO3m7hzBuhbEp2OoytQC3vaqzHYSnDRvKgQxV1sSRg57J/1j6sGXqLklWhxCgwdcwJc/q2jH9RW1Yh/bkHsqUOH3tjHxJdI1fJbSXbT0J7OsFvY5cv0XbYKcD857gh8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x5Y+k8nD8CoAoeYnghUeyPQEaXbIJEbMnjlq7HnzcKc=;
 b=FRtbclDEugMsEJuomihwDS87RUw0z+vnUD1ajKfLEUaky+ihgdcS93GvvtrsVa+Kj/rWN2RhNjfBuJylYh6la9mbg9PqzhGqgkAg83VscvtA//IWvQyOzCTEXa/RmDkasumxUrw/4601JjvQgponHfqhsIs4IfcCcmjrYvqXkFA/yHCoJwdp/obVtEBTcPREkpuLb7Cgxab4uHaPTXh+wun+kUGwiM+XUnItcxRHyaTiFdX+oAzJwkwg0MZvFJcfvJRKu4KdT4G3qWufGQ5BJjfTH1kDJhyodx7wR9wV5hF7flYhRcR8ptTQqh+mBuGUvFCQ8r27FwoZoDNm2LhOfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB4856.namprd11.prod.outlook.com (2603:10b6:510:32::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Thu, 14 Mar
 2024 20:51:49 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 20:51:49 +0000
Date: Thu, 14 Mar 2024 13:51:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [PATCH v2 3/6] drm/i915: Stop inheriting IP_VER(12, 50)
Message-ID: <20240314205146.GF2837363@mdroper-desk1.amr.corp.intel.com>
References: <20240312235145.2443975-1-lucas.demarchi@intel.com>
 <20240312235145.2443975-4-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240312235145.2443975-4-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ2PR07CA0005.namprd07.prod.outlook.com
 (2603:10b6:a03:505::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB4856:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cf06db0-dd06-4326-7b62-08dc4468918a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SpU8UvPgS3f8u4+uH6GQGvPj9epsTlwYXg4yj7W4l/D25ULiNFyWH/PSBWm2sn2gNB7zNPQO/2Bk+o14FjsMlT8m0m9bSuJEnoIKmGq4/YUa2POjFsisElGKzCLiIJ06+Hu0Kvm9LU07+mad8aFFatEo2aViSLREM+9GUjiXC/WQR/TiN3+97XBjGW34lyv3Yb2KNb6+BqAXVaAbihtZ5U62Ku1mFUVaSqdQs12gfJ2UqL4JJjvAXNLBkQkvQAk1W4bC/QbkrDIY6aZs0E5MbtgkXH9u/Pv8Ta9fE+q9x4pDLDgQ+M7GX/wZeG+hiUibMX8Cqj8RVBU9sPZ26d243fV5fjdA9PJy3kX525YgkQYL6W6fN1pP6kIws7LSnjvyNfasyAdKnQz92hoajcsH2wMGIfJE1zZJtkJaqKEIlMA2ipBfUtb47VX/Q439Cz0nY9YY3KT8nLXSpMcP6BrQF06QjfcsBI78yN91CSIemOzhZNclbKZVsrivXDiBB0Ty52XMGY6qua/lO++BOUxNudyb9yPjie7Iu0Tdz3E/t4dAZIWkjFMaKB1rBAuW7mVvJQnTqrKi5+bsGtOP6uxTKaOAnBGVb9J05phR5sPyO+WYhmnDAtLkP59I/5ejnDDJikP9SWO/daNpm90nLVrACoUOsivADp4zxoU2JGHrN6s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R3XqwYkRhdFJSnKmTbmWLlNdhBZVPNYV7zzsQEd9Sgy3oBrmFiU06HzqXNQA?=
 =?us-ascii?Q?rSGN27fvRFkc8hESTss1ZiRdidDqVowzHtmUFwoxpbuWQdGxWMf4+X0qcMPo?=
 =?us-ascii?Q?PuDK8KxJesRI6V310Cffu5G3V080kIl2v8BRdcHACDlqTRz74W1dl02ygsTa?=
 =?us-ascii?Q?TLaJezdnBaNzzt+Kb3f/xTM3ne72gFuLy3MAwdKbJ4hFRVZNsJ7i08kdKlQB?=
 =?us-ascii?Q?B7hI4O7ZbB5CHHoMdDHxYlLWs6NHQ/xb8q/Mt0tR7F9iKeXxU9x4/J4Vt7O5?=
 =?us-ascii?Q?+hv0mi0rTVDX7zmE4u2xpFNxySHU6O8p4DufZ67PwhyVEpR3u0+AmhSYe1rf?=
 =?us-ascii?Q?yGz3DmbBn8KsX5dwmiwQgUnrayK347B7nNFaGTnPsfRXJ3KlH2IR3vtPCp74?=
 =?us-ascii?Q?d2l9WvSRuIWEHTWsCiEJMDncCFfvvu1bng23dLEZHxB1t7spHS7TvyXobP2O?=
 =?us-ascii?Q?n0tKsNqI4HW2opkPHxoIfPhtT1oFX1fXJqDzsPfxcFatZGLcdHL58gWdeVQo?=
 =?us-ascii?Q?HTMDK4YWJo41KtdoY7CKZbU/uJmcBcIqd6UFf1PYS2QI4uh3oGrwyQ8OSO2k?=
 =?us-ascii?Q?kcNpLzjVAvWEBbIx6Esn/TYP7KToDAtrWK+ZPu1z3Ul/VBBO8ad0RIYO+Lst?=
 =?us-ascii?Q?JZ+XVS/q/ig0n20+WsmdcQK2bWmoQLNQXyZdPLEgv9NY/XJqDeFJOtX/v3kr?=
 =?us-ascii?Q?/weBGoneVFPYCq1RC/L22mr8YzEpwBKTGyvc01iaR4J21+c0DhU2/HJkD3D5?=
 =?us-ascii?Q?fT5wuKc7uYhhfk2IEsxrB6ubz8yueZ2HiAAmEGwlqmk58rxjuV3aHh9NscMp?=
 =?us-ascii?Q?B9iPaDbB1/gRalsvgJPkZLsRcbI1tzA40QGkHqlKV6cQbFokiceWSdOeyDB8?=
 =?us-ascii?Q?sGS4z7kevcqYMN4GSPlT+KnA9NLqzhS2+ebLzuEnlKyHBI82UVq5kIt9Aplj?=
 =?us-ascii?Q?4ZstDj0om+KHAu8asGzOICx4QeCqivS0Nqbpm9t+JLFOQvUhFFM9ZQ3VgVfR?=
 =?us-ascii?Q?4iKPeMqz3ISBzcWpPVH7zMXOri5+GQOo1T631fqUQuazrrU4eNLggQN6f7Uf?=
 =?us-ascii?Q?HVP5fdBeuArCS0nS9pGFDtkmPprksnq1aqkoi0gsa/5qFg60CzOpE1OzfgXF?=
 =?us-ascii?Q?77RZPID1O+qA/e3i6YXKTv8VJyMhYE1gCjtN6/cboZcheu141Dx1KW6m9N/N?=
 =?us-ascii?Q?BloSgCYLVLsyQxXTvvEpfOczEvZubedJ5af/iFM6h1jwLlQwdre3OhL8DM1s?=
 =?us-ascii?Q?5jIjLUttn4f4i1ddcnN1M0DFqIumYnQ0zoywyE91QcW90YaoAKyAtI1MalLh?=
 =?us-ascii?Q?cDxYPGXLbj/O5Hn1tnBgRt7E/jnkiDnWQOwTw+WupXy6iimTny3BGOc30WBM?=
 =?us-ascii?Q?PlH/s808nMaFcnRSztbOKKRvw65j9Sh6Y/au5f7y2DdZulWDm722ruBciSm5?=
 =?us-ascii?Q?x87rW9Hho9Sf0Jflx54XEA6h+OkpZvyesWmmFb6P4oKl6CJueUH8vV85lMFv?=
 =?us-ascii?Q?jG5StWkVanbT+wUelXaBZkDoNFuCWcjV8f+YTLNxBhKn6Kn0PCz9fQBPZ8tZ?=
 =?us-ascii?Q?+4zaOjSnCOE40kyJRgZbLkQSQgU7vuAx+sOegmfYUMTQwvLjmccIBSgZ783K?=
 =?us-ascii?Q?HQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cf06db0-dd06-4326-7b62-08dc4468918a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 20:51:49.0478 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zHEmNAokQb1JfrdFsY63G4DcHw47zbNfg2Jub3U07queg/ZxIexnOJfEyUiTlaSBrswQ10oHy1oWhddghdyaFQYKXwp/FgPVC9YEYevU6zQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4856
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

On Tue, Mar 12, 2024 at 04:51:42PM -0700, Lucas De Marchi wrote:
> All the platforms that inherit the media/graphics version
> from XE_HPM_FEATURES / XE_HP_FEATURES just override it to another
> version. Just set the version directly in the respective struct
> and remove the versions from the _FEATURES macros. Since that was the
> only use for XE_HPM_FEATURES, remove it completely.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pci.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index b318b7c6bf73..8b673fdcf178 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -705,8 +705,6 @@ static const struct intel_device_info adl_p_info = {
>  		I915_GTT_PAGE_SIZE_2M
>  
>  #define XE_HP_FEATURES \
> -	.__runtime.graphics.ip.ver = 12, \
> -	.__runtime.graphics.ip.rel = 50, \
>  	XE_HP_PAGE_SIZES, \
>  	TGL_CACHELEVEL, \
>  	.dma_mask_size = 46, \
> @@ -730,15 +728,12 @@ static const struct intel_device_info adl_p_info = {
>  	.__runtime.ppgtt_size = 48, \
>  	.__runtime.ppgtt_type = INTEL_PPGTT_FULL
>  
> -#define XE_HPM_FEATURES \
> -	.__runtime.media.ip.ver = 12, \
> -	.__runtime.media.ip.rel = 50
> -
>  #define DG2_FEATURES \
>  	XE_HP_FEATURES, \
> -	XE_HPM_FEATURES, \
>  	DGFX_FEATURES, \
> +	.__runtime.graphics.ip.ver = 12, \
>  	.__runtime.graphics.ip.rel = 55, \
> +	.__runtime.media.ip.ver = 12, \
>  	.__runtime.media.ip.rel = 55, \
>  	PLATFORM(INTEL_DG2), \
>  	.has_64k_pages = 1, \
> @@ -773,9 +768,10 @@ static const struct intel_device_info ats_m_info = {
>  __maybe_unused
>  static const struct intel_device_info pvc_info = {
>  	XE_HPC_FEATURES,
> -	XE_HPM_FEATURES,
>  	DGFX_FEATURES,
> +	.__runtime.graphics.ip.ver = 12,
>  	.__runtime.graphics.ip.rel = 60,
> +	.__runtime.media.ip.ver = 12,
>  	.__runtime.media.ip.rel = 60,
>  	PLATFORM(INTEL_PONTEVECCHIO),
>  	.has_flat_ccs = 0,
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
