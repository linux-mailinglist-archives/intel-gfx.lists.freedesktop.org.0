Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 320CBC80027
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 11:54:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8038710E205;
	Mon, 24 Nov 2025 10:54:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RNQ7iFv0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADE1C10E205;
 Mon, 24 Nov 2025 10:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763981656; x=1795517656;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=A625+JvcXwB6pq7Nt0Coah3gjmSD6vJpIO20sFR8u44=;
 b=RNQ7iFv0YFvh51I2zKdk4I1jNwf+1dp+vY/Cv0LwznWYcXsYDXXA46sm
 92r3wAzvrm9u+YCINsqmoxfl1U+kZltZ9Iz1HmrpyNFsGHLW9Ytb33JMf
 ZscnC2pxYdLgK5POG6XfzXpZEaQTiDBR2BWFacnxXF+OHFGiZXGsbrSzm
 RotGjaLNhV+/doUIXIRghIj0kSAlQUODXHBU+LZ5UPBfTtmRW8Cp6Xtan
 jdleugUWMS/e9R4hNMlM9hVRxJYm78eifCQvwNlJTgXZh7L4Vvbyl8yln
 m/XV81q6dWbfUngFvFENjz7fFF3U5dnM6Ciwjy+hfkel7LtBpdDTKxO3T A==;
X-CSE-ConnectionGUID: kIv0Z6gLTDKnEkIN/pgXOQ==
X-CSE-MsgGUID: Xyu1ry1VSnSNOcIZVEaUBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="68567987"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="68567987"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 02:54:15 -0800
X-CSE-ConnectionGUID: HFboX6Y6St2SZLBFv65GwQ==
X-CSE-MsgGUID: AE2+4sRPT/OSgIANUbNndQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="223266030"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.177])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 02:54:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, matthew.d.roper@intel.com,
 gustavo.sousa@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v3 1/2] drm/i915/display: Use a sub-struct for fbc
 operations in intel_display
In-Reply-To: <20251123160127.142599-2-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251123160127.142599-1-vinod.govindapillai@intel.com>
 <20251123160127.142599-2-vinod.govindapillai@intel.com>
Date: Mon, 24 Nov 2025 12:54:10 +0200
Message-ID: <dce528054d11c5a96331b981ec9c2234b324b82f@intel.com>
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

On Sun, 23 Nov 2025, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> As FBC can utilze the system cache in xe3p_lpd onwards, we need

*utilize

> a way to track which fbc instance is utilizing this cache. So we
> would need to extend the intel_display with such a functionality.
> Introduce a new fbc substruct and move the current fbc instance
> array into that. Then the following patch can utilize this to
> introduce functionaity to configure and track the system cache
> usage by the fbc instance.

In general, please don't refer to "patches" in commit messages. Just
consider reading this commit message a year from now, wondering what
"the following patch" might refer to.

No need to resend for this.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c          | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_core.h  | 5 ++++-
>  drivers/gpu/drm/i915/display/intel_fbc.c           | 6 +++---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
>  4 files changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index 51ccc6bd5f21..2c40bc632b3d 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -134,7 +134,7 @@ static struct intel_fbc *i9xx_plane_fbc(struct intel_display *display,
>  					enum i9xx_plane_id i9xx_plane)
>  {
>  	if (i9xx_plane_has_fbc(display, i9xx_plane))
> -		return display->fbc[INTEL_FBC_A];
> +		return display->fbc.instances[INTEL_FBC_A];
>  	else
>  		return NULL;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 9b36654b593d..58325f530670 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -398,6 +398,10 @@ struct intel_display {
>  		const struct dram_info *info;
>  	} dram;
>  
> +	struct {
> +		struct intel_fbc *instances[I915_MAX_FBCS];
> +	} fbc;
> +
>  	struct {
>  		/* list of fbdev register on this device */
>  		struct intel_fbdev *fbdev;
> @@ -615,7 +619,6 @@ struct intel_display {
>  	struct drm_dp_tunnel_mgr *dp_tunnel_mgr;
>  	struct intel_audio audio;
>  	struct intel_dpll_global dpll;
> -	struct intel_fbc *fbc[I915_MAX_FBCS];
>  	struct intel_frontbuffer_tracking fb_tracking;
>  	struct intel_hotplug hotplug;
>  	struct intel_opregion *opregion;
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index d9cab25d414a..dcdfcff80de3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -69,7 +69,7 @@
>  
>  #define for_each_intel_fbc(__display, __fbc, __fbc_id) \
>  	for_each_fbc_id((__display), (__fbc_id)) \
> -		for_each_if((__fbc) = (__display)->fbc[(__fbc_id)])
> +		for_each_if((__fbc) = (__display)->fbc.instances[(__fbc_id)])
>  
>  struct intel_fbc_funcs {
>  	void (*activate)(struct intel_fbc *fbc);
> @@ -2211,7 +2211,7 @@ void intel_fbc_init(struct intel_display *display)
>  		    display->params.enable_fbc);
>  
>  	for_each_fbc_id(display, fbc_id)
> -		display->fbc[fbc_id] = intel_fbc_create(display, fbc_id);
> +		display->fbc.instances[fbc_id] = intel_fbc_create(display, fbc_id);
>  }
>  
>  /**
> @@ -2330,7 +2330,7 @@ void intel_fbc_debugfs_register(struct intel_display *display)
>  {
>  	struct intel_fbc *fbc;
>  
> -	fbc = display->fbc[INTEL_FBC_A];
> +	fbc = display->fbc.instances[INTEL_FBC_A];
>  	if (fbc)
>  		intel_fbc_debugfs_add(fbc, display->drm->debugfs_root);
>  }
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 89c8003ccfe7..48af74963e74 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2444,7 +2444,7 @@ static struct intel_fbc *skl_plane_fbc(struct intel_display *display,
>  	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(pipe);
>  
>  	if (skl_plane_has_fbc(display, fbc_id, plane_id))
> -		return display->fbc[fbc_id];
> +		return display->fbc.instances[fbc_id];
>  	else
>  		return NULL;
>  }

-- 
Jani Nikula, Intel
