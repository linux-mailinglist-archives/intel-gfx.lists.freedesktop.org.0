Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D7C96B2F6
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 09:34:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8987F10E69C;
	Wed,  4 Sep 2024 07:34:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GXwkTzPt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8776A10E69B;
 Wed,  4 Sep 2024 07:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725435260; x=1756971260;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FIsHE38a+le7RS1xXMqAYPLkp2CSgXFvGW2hAvRBUes=;
 b=GXwkTzPtnqfNGgWoi1vWBT32eBjjaLdi4Iqf4I8JxCSXtRTkQrUU40uK
 dxfcxh/5ML5CEfzabIZRIjqmn86KsGtw/6a13mI38o1Zy7kfvPyOMbxaA
 A47M5ZCbu4lRXXFqaKS83jaGJRqIATTivTCivDDqtgUjZjjpCXYx+Fekm
 gIieMa9/+lEa6CoN3sFmJeon/SMH/FnZPskn7rzw/pd8NCZ03QZzmZpDh
 +qeqz7ULLAPZvCJ17AW82w5289xgi2KRB6DcyYiX06y9+DkuBDK9yF7M6
 8ehXPGxFHF71aywk/zlv0g+e+ti8JdItZ8dEvSfxRR/jPkIminZGMkhUJ w==;
X-CSE-ConnectionGUID: 0+EqGtLBQR2Onw9b/KzHHw==
X-CSE-MsgGUID: x82nnB/iRgGLgwXiZrqYtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27865393"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27865393"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 00:34:19 -0700
X-CSE-ConnectionGUID: J0xrbrs6Qke1fCMiw7ISOA==
X-CSE-MsgGUID: RM7MiZUTQCCaYpEd3jkIeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65216800"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 00:34:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 3/4] drm/xe/display: Kill useless has_display
In-Reply-To: <20240903223803.380711-4-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240903223803.380711-1-rodrigo.vivi@intel.com>
 <20240903223803.380711-4-rodrigo.vivi@intel.com>
Date: Wed, 04 Sep 2024 10:33:59 +0300
Message-ID: <87a5gnub2w.fsf@intel.com>
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

On Tue, 03 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> When HAS_DISPLAY is false, info.probe_display is set to false.

Where? xe_display_probe() returns 0 directly when HAS_DISPLAY() is false
instead of setting info.probe_display.

> Hence, all these calls to has_display() are bogus.

Also not quite, as intel_display_device_info_runtime_init() checks fuses
and could change HAS_DISPLAY() to return false after that, with no
impact on info.probe_display.

BR,
Jani.

>
> With only one place left, use the main macro now and entirely
> kill has_display() local helper.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 43 ++++++++-----------------
>  1 file changed, 14 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 65331bbbc068..daf9b9baa88a 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -29,13 +29,6 @@
>  #include "intel_opregion.h"
>  #include "xe_module.h"
>  
> -/* Xe device functions */
> -
> -static bool has_display(struct xe_device *xe)
> -{
> -	return HAS_DISPLAY(&xe->display);
> -}
> -
>  /**
>   * xe_display_driver_probe_defer - Detect if we need to wait for other drivers
>   *				   early on
> @@ -336,8 +329,7 @@ static void xe_display_from_d3cold(struct xe_device *xe)
>  
>  	intel_dmc_resume(xe);
>  
> -	if (has_display(xe))
> -		drm_mode_config_reset(&xe->drm);
> +	drm_mode_config_reset(&xe->drm);
>  
>  	intel_display_driver_init_hw(xe);
>  	intel_hpd_init(xe);
> @@ -388,11 +380,10 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  	 */
>  	intel_power_domains_disable(xe);
>  	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> -	if (has_display(xe)) {
> -		drm_kms_helper_poll_disable(&xe->drm);
> -		intel_display_driver_disable_user_access(xe);
> -		intel_display_driver_suspend(xe);
> -	}
> +
> +	drm_kms_helper_poll_disable(&xe->drm);
> +	intel_display_driver_disable_user_access(xe);
> +	intel_display_driver_suspend(xe);
>  
>  	xe_display_flush_cleanup_work(xe);
>  
> @@ -400,10 +391,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  
>  	intel_hpd_cancel_work(xe);
>  
> -	if (has_display(xe)) {
> -		intel_display_driver_suspend_access(xe);
> -		intel_encoder_suspend_all(&xe->display);
> -	}
> +	intel_display_driver_suspend_access(xe);
> +	intel_encoder_suspend_all(&xe->display);
>  
>  	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
>  
> @@ -440,23 +429,19 @@ void xe_display_pm_resume(struct xe_device *xe)
>  
>  	intel_dmc_resume(xe);
>  
> -	if (has_display(xe))
> -		drm_mode_config_reset(&xe->drm);
> +	drm_mode_config_reset(&xe->drm);
>  
>  	intel_display_driver_init_hw(xe);
>  	intel_hpd_init(xe);
>  
> -	if (has_display(xe))
> -		intel_display_driver_resume_access(xe);
> +	intel_display_driver_resume_access(xe);
>  
>  	/* MST sideband requires HPD interrupts enabled */
>  	intel_dp_mst_resume(xe);
> -	if (has_display(xe)) {
> -		intel_display_driver_resume(xe);
> -		drm_kms_helper_poll_enable(&xe->drm);
> -		intel_display_driver_enable_user_access(xe);
> -		intel_hpd_poll_disable(xe);
> -	}
> +	intel_display_driver_resume(xe);
> +	drm_kms_helper_poll_enable(&xe->drm);
> +	intel_display_driver_enable_user_access(xe);
> +	intel_hpd_poll_disable(xe);
>  
>  	intel_opregion_resume(display);
>  
> @@ -485,7 +470,7 @@ int xe_display_probe(struct xe_device *xe)
>  	if (err)
>  		return err;
>  
> -	if (has_display(xe))
> +	if (HAS_DISPLAY(&xe->display))
>  		return 0;
>  
>  no_display:

-- 
Jani Nikula, Intel
