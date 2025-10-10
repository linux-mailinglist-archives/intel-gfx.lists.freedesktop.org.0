Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3F7BCDA00
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 16:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 619D610EC34;
	Fri, 10 Oct 2025 14:54:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bO89oaHd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B2DB10EC32;
 Fri, 10 Oct 2025 14:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760108082; x=1791644082;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DEA6HwiTPXBbIV9WhuGFRDxfRYxBd9vZ2M63w9vMp10=;
 b=bO89oaHdlKqtg7Y8j3OgGgl1FCKj+VpSBwaPZ+n/BNYoBux7IUiDuom+
 8CNZKqEUP/NzJ4rvo8mVJPr37SV9QhcbWvWjXa86VtKgCwbg1rd3qYQZq
 T2TNYn3vC+ckaZLLuKspVQ9sCd7VGyCM9PbEX8Mw8LMXg1m/VzZqAvTzC
 8zwO77oc9JIQOa4Hl1/Gv6yRda7M+8ZI9jIYoXKQv6EQbGAPMtq42+6YE
 /arwavajY1g+jWPwJ2g02Wl3D627AmL2zJTSlBSV6sJy250NwmQeVzIeB
 0t/+iND1GknvJ5bx+2HvJEq967QWT36uHDVoEKJXiWNNkqriPtzzkhfm+ A==;
X-CSE-ConnectionGUID: tiCbQx12Tq6nvrGN6KdSew==
X-CSE-MsgGUID: t+PeTVDoSZ2thDQPoFiOSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="62210266"
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="62210266"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 07:54:41 -0700
X-CSE-ConnectionGUID: 2++5me4RQuud8rHl3zU5OQ==
X-CSE-MsgGUID: SangeGInQcanBlndO5RdyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="185024587"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.174])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 07:54:40 -0700
Date: Fri, 10 Oct 2025 17:54:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/8] drm/i915/vblank: Add helper to get correct vblank
 length
Message-ID: <aOkeLTN3EO7AVq6u@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
 <20251009090102.850344-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251009090102.850344-4-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Oct 09, 2025 at 02:30:57PM +0530, Ankit Nautiyal wrote:
> Currently crtc_vblank_start is assumed to be the vblank_start for the fixed
> refresh rate case. That value can be different from the variable refresh
> rate case whenever always_use_vrr_tg()==false. On icl/tgl it's always
> different due to the extra vblank delay, and also on adl+ it could be
> different if we were to use an optimized guardband.
> 
> So places where crtc_vblank_start is used to compute vblank length needs
> change so as to account for cases where vrr is enabled. Specifically
> with vrr.enable the effective vblank length is actually guardband.
> 
> Add a helper to get the correct vblank length for both vrr and fixed
> refresh rate cases. Use this helper where vblank_start is used to
> compute the vblank length.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c  | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_vblank.h  |  2 ++
>  drivers/gpu/drm/i915/display/skl_watermark.c |  3 ++-
>  3 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 0b7fcc05e64c..2fc0c1c0bb87 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -767,3 +767,13 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>  
>  	return scanline;
>  }
> +
> +int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	if (crtc_state->vrr.enable)
> +		return crtc_state->vrr.guardband;
> +	else
> +		return adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
> index 21fbb08d61d5..98d04cacd65f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> @@ -48,4 +48,6 @@ const struct intel_crtc_state *
>  intel_pre_commit_crtc_state(struct intel_atomic_state *state,
>  			    struct intel_crtc *crtc);
>  
> +int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state);
> +
>  #endif /* __INTEL_VBLANK_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 9df9ee137bf9..06e5e6c77d2e 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -28,6 +28,7 @@
>  #include "intel_flipq.h"
>  #include "intel_pcode.h"
>  #include "intel_plane.h"
> +#include "intel_vblank.h"
>  #include "intel_wm.h"
>  #include "skl_universal_plane_regs.h"
>  #include "skl_watermark.h"
> @@ -2241,7 +2242,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>  		scaler_prefill_latency(crtc_state) +
>  		dsc_prefill_latency(crtc_state) +
>  		wm0_lines >
> -		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
> +		intel_crtc_vblank_length(crtc_state);
>  }
>  
>  static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
