Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F337F8D1AA7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 14:07:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A373211206E;
	Tue, 28 May 2024 12:07:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KWaC/vJ+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D21A10F17B;
 Tue, 28 May 2024 12:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716898062; x=1748434062;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9SmO4j+0IRlfjo2NqoLPJx5f/H/8iAONJNTvmhy4mIU=;
 b=KWaC/vJ+WkX0E/5MCtYxxV75lmk4pdxKRpMlH+WLZscwAE5PBlB64+x9
 dJgl1AnWJuGsagdSRG2y8oxpnAMIkUxNriII+/XOuSsuol4cwXbuhGM/4
 L8kygviFbEN8TKcYGScokuHID17nmT1fvKVkyaM8iKzbxsO5+RfydCtp/
 6NBuUia56F/aVYyncnD5goKaRrGKya/rH6R9cFu+aGD9UzFd/2Yj6EO23
 n9LNWnzHYYlV+3+QkDR2BlhzMkAfY9dftZS6/DDYVhQ4+cMv03a923Oyg
 JunoTCzmuseh38D5fMFuhPYi2IqdZH0PNGSSaPLQw6ynAuIy95Z6CBCNV w==;
X-CSE-ConnectionGUID: Lo22ecnuRaGTkp8t5y/akA==
X-CSE-MsgGUID: cH5e0/qBR8CUGuUy+yT/iA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13358835"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13358835"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 05:07:41 -0700
X-CSE-ConnectionGUID: RpNXHzuURnizVSsOuZwMOA==
X-CSE-MsgGUID: c5AkZZsJRW2AyF7i+9KjoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39492773"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 05:07:40 -0700
Date: Tue, 28 May 2024 15:07:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/i915: Move intel_surf_alignment() into
 skl_univerals_plane.c
Message-ID: <ZlXJEa2KSJqKZCKf@ideak-desk.fi.intel.com>
References: <20240513175942.12910-1-ville.syrjala@linux.intel.com>
 <20240513175942.12910-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240513175942.12910-8-ville.syrjala@linux.intel.com>
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

On Mon, May 13, 2024 at 08:59:40PM +0300, Ville Syrjala wrote:
> From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> 
> Now that all pre-skl platforms have their own .min_alignment()
> functions the remainder of intel_surf_alignment() can be hoisted
> into skl_univerals_plane.c (and renamed appropriately).
> 
> Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c       | 77 +------------------
>  drivers/gpu/drm/i915/display/intel_fb.h       |  4 +-
>  .../drm/i915/display/skl_universal_plane.c    | 77 ++++++++++++++++++-
>  3 files changed, 78 insertions(+), 80 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index eea93d84a16e..c80f866f3fb6 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -584,7 +584,7 @@ static bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int color_pl
>  	return intel_fb_rc_ccs_cc_plane(fb) == color_plane;
>  }
>  
> -static bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane)
> +bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane)
>  {
>  	return intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
>  		color_plane == 1;
> @@ -776,81 +776,6 @@ bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
>  		intel_fb_modifier_uses_dpt(to_i915(fb->dev), fb->modifier);
>  }
>  
> -unsigned int intel_surf_alignment(struct intel_plane *plane,
> -				  const struct drm_framebuffer *fb,
> -				  int color_plane)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> -
> -	if (intel_fb_uses_dpt(fb)) {
> -		/* AUX_DIST needs only 4K alignment */
> -		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
> -			return 512 * 4096;
> -
> -		/*
> -		 * FIXME ADL sees GGTT/DMAR faults with async
> -		 * flips unless we align to 16k at least.
> -		 * Figure out what's going on here...
> -		 */
> -		if (IS_ALDERLAKE_P(dev_priv) &&
> -		    !intel_fb_is_ccs_modifier(fb->modifier) &&
> -		    HAS_ASYNC_FLIPS(dev_priv))
> -			return 512 * 16 * 1024;
> -
> -		return 512 * 4096;
> -	}
> -
> -	/* AUX_DIST needs only 4K alignment */
> -	if (intel_fb_is_ccs_aux_plane(fb, color_plane))
> -		return 4096;
> -
> -	if (is_semiplanar_uv_plane(fb, color_plane)) {
> -		/*
> -		 * TODO: cross-check wrt. the bspec stride in bytes * 64 bytes
> -		 * alignment for linear UV planes on all platforms.
> -		 */
> -		if (DISPLAY_VER(dev_priv) >= 12) {
> -			if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
> -				return 256 * 1024;
> -
> -			return intel_tile_row_size(fb, color_plane);
> -		}
> -
> -		return 4096;
> -	}
> -
> -	drm_WARN_ON(&dev_priv->drm, color_plane != 0);
> -
> -	switch (fb->modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -		return 256 * 1024;
> -	case I915_FORMAT_MOD_X_TILED:
> -		if (HAS_ASYNC_FLIPS(dev_priv))
> -			return 256 * 1024;
> -		return 0;
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> -	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
> -	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
> -	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
> -		return 16 * 1024;
> -	case I915_FORMAT_MOD_Y_TILED_CCS:
> -	case I915_FORMAT_MOD_Yf_TILED_CCS:
> -	case I915_FORMAT_MOD_Y_TILED:
> -	case I915_FORMAT_MOD_4_TILED:
> -	case I915_FORMAT_MOD_Yf_TILED:
> -		return 1 * 1024 * 1024;
> -	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
> -	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
> -	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
> -		return 16 * 1024;
> -	default:
> -		MISSING_CASE(fb->modifier);
> -		return 0;
> -	}
> -}
> -
>  void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
>  				    const struct drm_framebuffer *fb,
>  				    int color_plane)
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> index 16ebb573643f..1b1fef2dc39a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -34,6 +34,7 @@ bool intel_fb_is_ccs_modifier(u64 modifier);
>  bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
>  bool intel_fb_is_mc_ccs_modifier(u64 modifier);
>  
> +bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane);
>  bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
>  int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
>  
> @@ -60,9 +61,6 @@ unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane
>  unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_plane);
>  unsigned int intel_fb_align_height(const struct drm_framebuffer *fb,
>  				   int color_plane, unsigned int height);
> -unsigned int intel_surf_alignment(struct intel_plane *plane,
> -				  const struct drm_framebuffer *fb,
> -				  int color_plane);
>  
>  void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
>  				    const struct drm_framebuffer *fb,
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 27782f5060ad..1ecd7c691317 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -502,6 +502,81 @@ skl_plane_max_stride(struct intel_plane *plane,
>  				max_pixels, max_bytes);
>  }
>  
> +static unsigned int skl_plane_min_alignment(struct intel_plane *plane,
> +					    const struct drm_framebuffer *fb,
> +					    int color_plane)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +
> +	if (intel_fb_uses_dpt(fb)) {
> +		/* AUX_DIST needs only 4K alignment */
> +		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
> +			return 512 * 4096;
> +
> +		/*
> +		 * FIXME ADL sees GGTT/DMAR faults with async
> +		 * flips unless we align to 16k at least.
> +		 * Figure out what's going on here...
> +		 */
> +		if (IS_ALDERLAKE_P(dev_priv) &&
> +		    !intel_fb_is_ccs_modifier(fb->modifier) &&
> +		    HAS_ASYNC_FLIPS(dev_priv))
> +			return 512 * 16 * 1024;
> +
> +		return 512 * 4096;
> +	}
> +
> +	/* AUX_DIST needs only 4K alignment */
> +	if (intel_fb_is_ccs_aux_plane(fb, color_plane))
> +		return 4096;
> +
> +	if (is_semiplanar_uv_plane(fb, color_plane)) {
> +		/*
> +		 * TODO: cross-check wrt. the bspec stride in bytes * 64 bytes
> +		 * alignment for linear UV planes on all platforms.
> +		 */
> +		if (DISPLAY_VER(dev_priv) >= 12) {
> +			if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
> +				return 256 * 1024;
> +
> +			return intel_tile_row_size(fb, color_plane);
> +		}
> +
> +		return 4096;
> +	}
> +
> +	drm_WARN_ON(&dev_priv->drm, color_plane != 0);
> +
> +	switch (fb->modifier) {
> +	case DRM_FORMAT_MOD_LINEAR:
> +		return 256 * 1024;
> +	case I915_FORMAT_MOD_X_TILED:
> +		if (HAS_ASYNC_FLIPS(dev_priv))
> +			return 256 * 1024;
> +		return 0;
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> +	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
> +		return 16 * 1024;
> +	case I915_FORMAT_MOD_Y_TILED_CCS:
> +	case I915_FORMAT_MOD_Yf_TILED_CCS:
> +	case I915_FORMAT_MOD_Y_TILED:
> +	case I915_FORMAT_MOD_4_TILED:
> +	case I915_FORMAT_MOD_Yf_TILED:
> +		return 1 * 1024 * 1024;
> +	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
> +	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
> +	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
> +		return 16 * 1024;
> +	default:
> +		MISSING_CASE(fb->modifier);
> +		return 0;
> +	}
> +}
> +
>  /* Preoffset values for YUV to RGB Conversion */
>  #define PREOFF_YUV_TO_RGB_HI		0x1800
>  #define PREOFF_YUV_TO_RGB_ME		0x0000
> @@ -2367,7 +2442,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  	else
>  		plane->max_stride = skl_plane_max_stride;
>  
> -	plane->min_alignment = intel_surf_alignment;
> +	plane->min_alignment = skl_plane_min_alignment;
>  
>  	if (DISPLAY_VER(dev_priv) >= 11) {
>  		plane->update_noarm = icl_plane_update_noarm;
> -- 
> 2.43.2
> 
