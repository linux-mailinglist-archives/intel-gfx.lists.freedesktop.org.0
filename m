Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFB99DE851
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 15:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 200C210E4C7;
	Fri, 29 Nov 2024 14:17:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fgoPyqLW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27D0A10E4BF;
 Fri, 29 Nov 2024 14:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732889825; x=1764425825;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Pfs/4cNMJJ8f4R1m4vNt+RhtCNJHV2HwLlX9dKcqX4M=;
 b=fgoPyqLWwAkb2W/RKZKu4Rsu5TbTQgFelMT5D3OvCMuMmQyiiqvQ+gHf
 bFDcdshKc3xMTviTz8WyTf/qIiimhUt/QYV2F4AiHouCdan+Ly+K04Pf9
 RhZA+K8Whhvsi1FHFd0zVHMgvVvjOhtByFvEOPHMzeWsDIF50QwitSQLc
 lcUErDU+HHmToulTIZJv9GOeInzpNvxN2eqVaTSssF+2LuOeDGA7/ldY7
 1Hs/bpKUgJ0aWuLfQa7llr43x4sD20Bt1gtr/9unl6O9PHtAhNFWuRf8q
 TsGFPA5qQtkS/37n+cQ5Ywq+6FRLOXJGU2UKt4xcaqZD8snU4Vr3VY3oK g==;
X-CSE-ConnectionGUID: Spfg5NmmRRC/Rln0Nc/4HQ==
X-CSE-MsgGUID: qx4kGEAeQJS8/M8+6ZVOkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="43797544"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="43797544"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 06:17:05 -0800
X-CSE-ConnectionGUID: jPKd/IRFSiyLXmUMOkD4Ow==
X-CSE-MsgGUID: 2kp7ib5vQGSssE+ddxiQkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="92382127"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 06:17:03 -0800
Date: Fri, 29 Nov 2024 16:17:40 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 4/6] drm/i915/display: convert power domain code
 internally to struct intel_display
Message-ID: <Z0nNBKLObDJbnQdt@ideak-desk.fi.intel.com>
References: <cover.1732808222.git.jani.nikula@intel.com>
 <d3284b30b53dd2fec786775ccb8992939360d774.1732808222.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d3284b30b53dd2fec786775ccb8992939360d774.1732808222.git.jani.nikula@intel.com>
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

On Thu, Nov 28, 2024 at 05:38:22PM +0200, Jani Nikula wrote:
> Going forward, struct intel_display is the main device data structure
> for display. Convert intel_display_power.c internally first, leaving
> external interfaces for follow-up.
> 
> v2: Rebase, checkpatch fixes
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 806 +++++++++---------
>  1 file changed, 414 insertions(+), 392 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index ade7192c0461..4043d6971c3e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>  
> [...]
>
> -static void hsw_disable_pc8(struct drm_i915_private *dev_priv)
> +static void hsw_disable_pc8(struct intel_display *display)
>  {
> -	drm_dbg_kms(&dev_priv->drm, "Disabling package C8+\n");
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
> +
> +	drm_dbg_kms(display->drm, "Disabling package C8+\n");
>  
> -	hsw_restore_lcpll(dev_priv);
> +	hsw_restore_lcpll(display);
>  	intel_init_pch_refclk(dev_priv);
>  
>  	/* Many display registers don't survive PC8+ */
> +#ifdef I915 /* FIXME */
>  	intel_clock_gating_init(dev_priv);
> +#endif

So before the call of hsw_disable_pc8() was optimized out, but now it's
not. For now ok, but imo this could've been in a separate patch.

>  }
>  
