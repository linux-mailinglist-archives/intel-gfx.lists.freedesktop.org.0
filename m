Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA0AAB0FD0
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2038710E3B2;
	Fri,  9 May 2025 10:04:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tjz5na+z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1BC10E009;
 Fri,  9 May 2025 10:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746785063; x=1778321063;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Pex/qUU0ajcTKNotZq1KA+2eP6+8laGLPbd+yEVIbWA=;
 b=Tjz5na+zDXiPBYK2pR4HCJ0xBIQxj8ijK/Ii6yAzSr7ueh4PxPGIZNXu
 s8ibV8ioRiISunzWLRp9ZczJj+7m97grVnJ9CwtuMwMwjToocGhyLnZ7e
 e/MMGEgXv1bt8gitgagvp/FOWLMgjs8Yat8WrWST+sks9hw8f337y6KoY
 NV6c2yk35OyyZqygb4NfLZO2MqxBAObU/DT0+7O11U2yXAn+zVfudk0oE
 9Trl3+6kvgcLGFX23HkVBldvvOtOIBamVNsfr349MzO13abcfcUp2152A
 NwHWEhEWfpr1T1P/up1Y8VnHbmfBr2wP2HOcWfhHonsQvu6SBi25Hfv9E w==;
X-CSE-ConnectionGUID: vpf66jgoTrecDjaUAi8Elg==
X-CSE-MsgGUID: y3zQHAHCSaGHz2UgRhTo1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="59235551"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="59235551"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:04:23 -0700
X-CSE-ConnectionGUID: f7ybU9OLRQC8NAbs5pn6WA==
X-CSE-MsgGUID: ++jgHPx/Rd+5G/zXGoQFeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="136457212"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:04:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 01/18] drm/i915/dpll: Rename intel_dpll
In-Reply-To: <20250509042729.1152004-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-2-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:04:18 +0300
Message-ID: <87a57mm76l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 09 May 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Rename intel_dpll to intel_dpll_global so that intel_shared_dpll
> can be renamed to intel_dpll in an effort to move away from the shared
> naming convention.
> Also intel_dpll according to it's comment tracks global dpll rather
> than individual hence making more sense this gets changed.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index b4937e102360..6fc213f84e73 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -122,7 +122,7 @@ struct intel_audio {
>   * intel_{prepare,enable,disable}_shared_dpll.  Must be global rather than per
>   * dpll, because on some platforms plls share registers.
>   */
> -struct intel_dpll {
> +struct intel_dpll_global {
>  	struct mutex lock;
>  
>  	int num_shared_dpll;
> @@ -570,7 +570,7 @@ struct intel_display {
>  	/* Grouping using named structs. Keep sorted. */
>  	struct drm_dp_tunnel_mgr *dp_tunnel_mgr;
>  	struct intel_audio audio;
> -	struct intel_dpll dpll;
> +	struct intel_dpll_global dpll;
>  	struct intel_fbc *fbc[I915_MAX_FBCS];
>  	struct intel_frontbuffer_tracking fb_tracking;
>  	struct intel_hotplug hotplug;

-- 
Jani Nikula, Intel
