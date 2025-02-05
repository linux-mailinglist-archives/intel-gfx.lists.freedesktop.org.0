Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C13A28A8D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 13:43:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5A010E794;
	Wed,  5 Feb 2025 12:43:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RkFLQqBo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA66D10E794;
 Wed,  5 Feb 2025 12:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738759406; x=1770295406;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vdM77Q23/sTwOMaE9Jb9DR/2fHTnX/hqdPZB/S0v/wU=;
 b=RkFLQqBoANEbebZ85Jl2YhuuV5Fi7R6lCqmYQjOpKqusHzTQ3N5JWULE
 EL9asj5+VA+I2OAbKDw+OC7xlWeVHTIGAzWHX39XIIHWg5qroHYVsbpkE
 Z/qiDEaKy5ZWwY4Pg5UK06OuB5yI8bplvMLaVLh/N/9FDYTAe9sFw7R9G
 WVLpe5R+qIRNy65gBrRLkyYI+kf2aLo39paNMI6TFoz/ZV5/SL2+qpL5o
 Vdc1GRbImWIPBdX1nJxk/eyz34VX/ulIyGhuuE0+gW8/6MIHrq854leza
 QUYlj87g4zUWinBroU8ltG3/akkLNNfOo6wNM3WKyfIUI9DKpM/i2z3uG A==;
X-CSE-ConnectionGUID: G3Paa8L8RD+Issek7wlSPw==
X-CSE-MsgGUID: Qoe+Y8MJSC2QZy/2DdOtiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43074818"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="43074818"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:43:26 -0800
X-CSE-ConnectionGUID: uikA9g9HSiu7SRLj20q0hQ==
X-CSE-MsgGUID: tLH8nwlsRZSUEsClFto+ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="111073659"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Feb 2025 04:43:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Feb 2025 14:43:22 +0200
Date: Wed, 5 Feb 2025 14:43:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@intel.com, santhosh.reddy.guddati@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH v6 4/7] drm/i915/xe3: update and store the plane damage
 clips
Message-ID: <Z6Nc6lhdFbiF-og3@intel.com>
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
 <20250130210027.591927-5-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250130210027.591927-5-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Jan 30, 2025 at 11:00:23PM +0200, Vinod Govindapillai wrote:
> Userspace can pass damage area clips per plane to track
> changes in a plane and some display components can utilze
> these damage clips for efficiently handling use cases like
> FBC, PSR etc. A merged damage area is generated and its
> coordinates are updated relative to viewport and HW and
> stored in the plane_state. This merged damage areas will be
> used for FBC dirty rect support in xe3 in the follow-up
> patch.
> 
> Big thanks to Ville Syrjala for his contribuitions in shaping
> up of this series.
> 
> v1: - Move damage_merged helper to cover bigjoiner case and use
>     the correct plane state for damage find helper (Ville)
>     - Damage handling code under HAS_FBC_DIRTY_RECT() so the
>     the related part will be executed only for xe3+
>     - Changed dev_priv to i915 in one of the functions
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 28 ++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  .../drm/i915/display/skl_universal_plane.c    | 45 +++++++++++++++++--
>  3 files changed, 71 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index c558143f4f82..f55f7044dc67 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -36,6 +36,7 @@
>  
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_blend.h>
> +#include <drm/drm_damage_helper.h>
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_gem.h>
>  #include <drm/drm_gem_atomic_helper.h>
> @@ -322,6 +323,25 @@ static void intel_plane_clear_hw_state(struct intel_plane_state *plane_state)
>  	memset(&plane_state->hw, 0, sizeof(plane_state->hw));
>  }
>  
> +static void
> +intel_plane_check_plane_damage(struct intel_plane_state *new_plane_state,
> +			       const struct intel_plane_state *old_primary_plane_state,
> +			       const struct intel_plane_state *new_primary_plane_state)

"primary_plane_state" is a confusing name because "primary plane"
generally means something totally different than what's used here.
probably we should just call these "uapi_plane_state" or something.

> +{
> +	struct intel_display *display = to_intel_display(new_plane_state);
> +	struct drm_rect *damage_merged = &new_plane_state->damage_merged;
> +
> +	if (!HAS_FBC_DIRTY_RECT(display))
> +		return;
> +
> +	if (!drm_atomic_helper_damage_merged(&old_primary_plane_state->uapi,
> +					     &new_primary_plane_state->uapi,
> +					     damage_merged))
> +		/* Incase helper fails, mark whole plane region as damage */
> +		*damage_merged =
> +			drm_plane_state_src(&new_primary_plane_state->uapi);
> +}
> +
>  void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
>  				       const struct intel_plane_state *from_plane_state,
>  				       struct intel_crtc *crtc)
> @@ -691,6 +711,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>  	const struct intel_plane_state *old_plane_state =
>  		intel_atomic_get_old_plane_state(state, plane);
>  	const struct intel_plane_state *new_primary_crtc_plane_state;
> +	const struct intel_plane_state *old_primary_crtc_plane_state;
>  	struct intel_crtc *crtc = intel_crtc_for_pipe(display, plane->pipe);
>  	const struct intel_crtc_state *old_crtc_state =
>  		intel_atomic_get_old_crtc_state(state, crtc);
> @@ -705,10 +726,17 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>  
>  		new_primary_crtc_plane_state =
>  			intel_atomic_get_new_plane_state(state, primary_crtc_plane);
> +		old_primary_crtc_plane_state =
> +			intel_atomic_get_old_plane_state(state, primary_crtc_plane);
>  	} else {
>  		new_primary_crtc_plane_state = new_plane_state;
> +		old_primary_crtc_plane_state = old_plane_state;
>  	}
>  
> +	intel_plane_check_plane_damage(new_plane_state,
> +				       old_primary_crtc_plane_state,
> +				       new_primary_crtc_plane_state);
> +
>  	intel_plane_copy_uapi_to_hw_state(new_plane_state,
>  					  new_primary_crtc_plane_state,
>  					  crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index cb51b7936f93..8d53bcca9614 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -695,6 +695,8 @@ struct intel_plane_state {
>  	u64 ccval;
>  
>  	const char *no_fbc_reason;
> +
> +	struct drm_rect damage_merged;

Since this is only used for the fbc stuff I would just
call it 'fbc_dirty'. Though I suppose if we were to also
use this for the PSR stuff then "damage" might be a decent
name. The _merged part is pointless imo.

>  };
>  
>  struct intel_initial_plane_config {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 301ad3a22c4c..b90a7d52c071 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2249,11 +2249,42 @@ static void check_protection(struct intel_plane_state *plane_state)
>  		!plane_state->decrypt;
>  }
>  
> +static void
> +skl_plane_check_damage_with_viewport(struct intel_plane_state *plane_state)
> +{
> +	struct drm_rect *damage_merged = &plane_state->damage_merged;
> +	const struct drm_framebuffer *fb = plane_state->hw.fb;
> +	unsigned int rotation = plane_state->hw.rotation;
> +	struct drm_rect *src = &plane_state->uapi.src;

const

> +
> +	if (drm_rotation_90_or_270(rotation)) {
> +		drm_rect_rotate(damage_merged, fb->width, fb->height,

fb might be NULL here. 

I guess we might as well do something like:
if (!visible) -> make the dirty rect empty

> +				DRM_MODE_ROTATE_270);
> +		drm_rect_translate(damage_merged, -(src->y1 >> 16),
> +				   -(src->x1 >> 16));
> +	} else {
> +		drm_rect_translate(damage_merged, -(src->x1 >> 16),
> +				   -(src->y1 >> 16));
> +	}
> +}
> +
> +static void
> +skl_plane_check_damage_with_plane_surf(struct intel_plane_state *plane_state)

the "with" stuff in the name is a bit confusing. What we are doing 
is make the rectangle relative to plane SURF. Same story with the
other function.

> +{
> +	struct drm_rect *damage_merged = &plane_state->damage_merged;
> +	struct drm_rect src;
> +
> +	drm_rect_fp_to_int(&src, &plane_state->uapi.src);
> +	drm_rect_translate(damage_merged, src.x1, src.y1);
> +	drm_rect_intersect(damage_merged, &src);

Missing the "make it at last one scanline" here. Though if we do
decide to use this also for PSR then I guess we'd need to handle
that elsewhere. For now it could just be here.

> +}
> +
>  static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  			   struct intel_plane_state *plane_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>  	int min_scale = DRM_PLANE_NO_SCALING;
>  	int max_scale = DRM_PLANE_NO_SCALING;
> @@ -2266,7 +2297,7 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  	/* use scaler when colorkey is not required */
>  	if (!plane_state->ckey.flags && skl_fb_scalable(fb)) {
>  		min_scale = 1;
> -		max_scale = skl_plane_max_scale(dev_priv, fb);
> +		max_scale = skl_plane_max_scale(i915, fb);
>  	}
>  
>  	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
> @@ -2274,6 +2305,9 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>  
> +	if (HAS_FBC_DIRTY_RECT(display))
> +		skl_plane_check_damage_with_viewport(plane_state);
> +
>  	ret = skl_check_plane_surface(plane_state);
>  	if (ret)
>  		return ret;
> @@ -2289,6 +2323,9 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>  
> +	if (HAS_FBC_DIRTY_RECT(display))
> +		skl_plane_check_damage_with_plane_surf(plane_state);
> +
>  	ret = skl_plane_check_nv12_rotation(plane_state);
>  	if (ret)
>  		return ret;
> @@ -2301,12 +2338,12 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  
>  	plane_state->ctl = skl_plane_ctl(crtc_state, plane_state);
>  
> -	if (DISPLAY_VER(dev_priv) >= 10)
> +	if (DISPLAY_VER(display) >= 10)
>  		plane_state->color_ctl = glk_plane_color_ctl(crtc_state,
>  							     plane_state);
>  
>  	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> -	    icl_is_hdr_plane(dev_priv, plane->id))
> +	    icl_is_hdr_plane(i915, plane->id))
>  		/* Enable and use MPEG-2 chroma siting */
>  		plane_state->cus_ctl = PLANE_CUS_ENABLE |
>  			PLANE_CUS_HPHASE_0 |
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
