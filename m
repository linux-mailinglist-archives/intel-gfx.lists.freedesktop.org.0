Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKtLIMSWGWrVxggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:38:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E013C602F2F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:38:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6974C10FF4D;
	Fri, 29 May 2026 13:38:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Punnnj2G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52EB610FF4D;
 Fri, 29 May 2026 13:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780061889; x=1811597889;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UYLetA5RE3Mlr0MPbim9cpdOVkYHWy8WcP5EjUqsiJc=;
 b=Punnnj2G6iTefSkuGVBajo/TLVZp04qg3333D7ppKC2Qv+RAbSQI9reT
 E+nEjKxXe1rr3q7dnOKyX4561iPc02t7mraoggDmbHoWPt4UTPr5L9WGD
 wJjW3GJZxXPl4LkqYRkItNsFAL5mmfyxlG7RwBuRikLul+vneG9gh5pYT
 syZExTcuI2svbTgdAzaZCDYLzLB7O3Xqk6d1zJpiTSG2GlGtj8BjVj/Ps
 SbMYUcf3C5JQ4o8E5GE4L3vrlA5cb2uM779d5Edv4MdvVUhN1zYu39sQO
 xEIejVO/jwOu3e01v1Rk+uodXRyQhywaQyFldhD7FM6pDkHT6tFJ4y/Lq g==;
X-CSE-ConnectionGUID: /V80mA7jRhm1OBVITEkTMQ==
X-CSE-MsgGUID: bMtPcEzdQCCZQTJAaJRqGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="91486668"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="91486668"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:38:09 -0700
X-CSE-ConnectionGUID: /yByUvwgSsilacbvtRndzw==
X-CSE-MsgGUID: ooNXCwlMSLGUxP1QwVoCAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="242997652"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:38:06 -0700
Date: Fri, 29 May 2026 16:38:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 11/24] drm/{i915,xe}: move more calls inside
 intel_display_driver_pm_resume()
Message-ID: <ahmWu8rgdC0uiOO4@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <440eb1a957a092dcd9676dfa9d679480414d10a3.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <440eb1a957a092dcd9676dfa9d679480414d10a3.1780051905.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: E013C602F2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:03:55PM +0300, Jani Nikula wrote:
> The intel_display_driver_pm_resume() calls are surrounded by near
> identical display calls. Move the calls inside
> intel_display_driver_pm_resume().
> 
> There's a slight functional change in that
> intel_display_driver_pm_resume() returns early for
> !HAS_DISPLAY(). Assume this is what we want, and there are no cases
> where display engine is present but all pipes have been fused off.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../drm/i915/display/intel_display_driver.c   | 18 +++++++++++++++
>  drivers/gpu/drm/i915/i915_driver.c            | 19 ----------------
>  drivers/gpu/drm/xe/display/xe_display.c       | 22 +------------------
>  3 files changed, 19 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 41a2244985fa..f362532c6834 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -43,6 +43,7 @@
>  #include "intel_dp_tunnel.h"
>  #include "intel_dpll.h"
>  #include "intel_dpll_mgr.h"
> +#include "intel_encoder.h"
>  #include "intel_fb.h"
>  #include "intel_fbc.h"
>  #include "intel_fbdev.h"
> @@ -761,6 +762,12 @@ void intel_display_driver_pm_resume(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> +	intel_display_driver_resume_access(display);
> +
> +	intel_hpd_init(display);
> +
> +	intel_encoder_unblock_all_hpds(display);
> +
>  	/* MST sideband requires HPD interrupts enabled */
>  	intel_dp_mst_resume(display);
>  
> @@ -790,4 +797,15 @@ void intel_display_driver_pm_resume(struct intel_display *display)
>  			"Restoring old state failed with %i\n", ret);
>  	if (state)
>  		drm_atomic_commit_put(state);
> +
> +	intel_display_driver_enable_user_access(display);
> +	drm_kms_helper_poll_enable(display->drm);
> +
> +	intel_hpd_poll_disable(display);
> +
> +	intel_opregion_resume(display);
> +
> +	drm_client_dev_resume(display->drm);
> +
> +	intel_display_power_enable(display);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index f161723f653e..063d4bdec2d9 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1309,27 +1309,8 @@ static int i915_drm_resume(struct drm_device *dev)
>  
>  	intel_clock_gating_init(&dev_priv->drm);
>  
> -	if (intel_display_device_present(display))
> -		intel_display_driver_resume_access(display);
> -
> -	intel_hpd_init(display);
> -
> -	intel_encoder_unblock_all_hpds(display);
> -
>  	intel_display_driver_pm_resume(display);
>  
> -	if (intel_display_device_present(display)) {
> -		intel_display_driver_enable_user_access(display);
> -		drm_kms_helper_poll_enable(dev);
> -	}
> -	intel_hpd_poll_disable(display);
> -
> -	intel_opregion_resume(display);
> -
> -	drm_client_dev_resume(dev);
> -
> -	intel_display_power_enable(display);
> -
>  	intel_gvt_resume(dev_priv);
>  
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 027db7b6ceb5..f34a9d2ffc16 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -341,27 +341,7 @@ void xe_display_pm_resume(struct xe_device *xe)
>  
>  	intel_display_driver_init_hw(display);
>  
> -	if (intel_display_device_present(display))
> -		intel_display_driver_resume_access(display);
> -
> -	intel_hpd_init(display);
> -
> -	intel_encoder_unblock_all_hpds(display);
> -
> -	if (intel_display_device_present(display)) {
> -		intel_display_driver_pm_resume(display);
> -		intel_display_driver_enable_user_access(display);
> -		drm_kms_helper_poll_enable(&xe->drm);
> -	}
> -
> -	if (intel_display_device_present(display))
> -		intel_hpd_poll_disable(display);
> -
> -	intel_opregion_resume(display);
> -
> -	drm_client_dev_resume(&xe->drm);
> -
> -	intel_display_power_enable(display);
> +	intel_display_driver_pm_resume(display);
>  }
>  
>  static void xe_display_enable_d3cold(struct xe_device *xe)
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
