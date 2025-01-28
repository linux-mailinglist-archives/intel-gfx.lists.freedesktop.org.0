Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2CAA20E29
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 17:14:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CE8510E69E;
	Tue, 28 Jan 2025 16:14:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LnRwc79R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ACD610E69E;
 Tue, 28 Jan 2025 16:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738080854; x=1769616854;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5hdr4jknme8B55OyocrY1Q527lSyHaa19Sc25wTSq1w=;
 b=LnRwc79R6fLJLvlBRYYQDGzCRv/XyDuJ2ewZ6OiCa/9+HuUORs+ebkgg
 27y5ozus48hnffPOmGew/E+Bq7gKD5pgKEdsz5hdGvfkG1Rk/8cK0BZyt
 IoYYHzFVHCq9Yq6K0eyoV9yz04qZM9kNI0xyejww59GQnwWLHNeg0JgSN
 hY/Eg1deyaztk+FoZBSBTFDmOyeZAqd70Kad/uFXXj5geH7CGVIPyG+S+
 1YHLXHjPHLkXmqoWypVftxb8grqYEliAgtM19mfFSR+gtOr+2lf2B3GEG
 feXSd+MDy1aF8AAQ9am10/t9lzzb3HJkbSnhRKHvXzumAiIV2pwezgiFX g==;
X-CSE-ConnectionGUID: wrre8V7jSDCJtiUpPzpCbw==
X-CSE-MsgGUID: M44cTOvXQSWDq+6wh3CUYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="38455712"
X-IronPort-AV: E=Sophos;i="6.13,241,1732608000"; d="scan'208";a="38455712"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 08:14:13 -0800
X-CSE-ConnectionGUID: Ke3iGX/MQVSNZdmCfis5CA==
X-CSE-MsgGUID: Td5WTlxLR2SDAEdwHA+aSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,241,1732608000"; d="scan'208";a="108879558"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Jan 2025 08:14:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Jan 2025 18:14:09 +0200
Date: Tue, 28 Jan 2025 18:14:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@intel.com, santhosh.reddy.guddati@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH v5 4/7] drm/i915/display: update and store the plane
 damage clips
Message-ID: <Z5kCUciT96HT6IBI@intel.com>
References: <20250128155418.305595-1-vinod.govindapillai@intel.com>
 <20250128155418.305595-5-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250128155418.305595-5-vinod.govindapillai@intel.com>
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

On Tue, Jan 28, 2025 at 05:54:15PM +0200, Vinod Govindapillai wrote:
> Userspace can pass damage area clips per plane to track
> changes in a plane and some display components can utilze
> these damage clips for efficiently handling use cases like
> FBC, PSR etc. A merged damage area is generated and its
> coordinates are updated relative to viewport and HW and
> stored in the plane_state. This merged damage areas will be
> used for FBC dirty rect support in xe3 in the follow-up
> patch.
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  5 ++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  .../drm/i915/display/skl_universal_plane.c    | 47 +++++++++++++++++++
>  3 files changed, 54 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 8da7ee13447c..3d463cfe1f3c 100644
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
> @@ -713,6 +714,10 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>  					  new_primary_crtc_plane_state,
>  					  crtc);
>  
> +	/* Verify plane damage - damage discarded on full modeset */
> +	drm_atomic_helper_check_plane_damage(&state->base,
> +					     &new_plane_state->uapi);

That guy doesn't seem to do anything that we want.

> +
>  	new_plane_state->uapi.visible = false;
>  	if (!new_crtc_state)
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index bc65c4bd9dc0..495c497645c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -695,6 +695,8 @@ struct intel_plane_state {
>  	u64 ccval;
>  
>  	const char *no_fbc_reason;
> +
> +	struct drm_rect damage_merged;
>  };
>  
>  struct intel_initial_plane_config {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 8d09a1f8c3e1..fc5b9d56c8bc 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2249,6 +2249,47 @@ static void check_protection(struct intel_plane_state *plane_state)
>  		!plane_state->decrypt;
>  }
>  
> +static void
> +skl_plane_check_plane_damage(const struct intel_plane_state *old_plane_state,
> +			     struct intel_plane_state *new_plane_state)
> +{
> +	struct drm_rect *damage_merged = &new_plane_state->damage_merged;
> +
> +	drm_atomic_helper_damage_merged(&old_plane_state->uapi,
> +					&new_plane_state->uapi,
> +					damage_merged);

You're calling that too late. With bigjoiner it's now going to
use the uapi state from the wrong plane. This thing needs to be
done in intel_plane_copy_uapi_to_hw_state().

> +}
> +
> +static void
> +skl_plane_check_damage_with_viewport(struct intel_plane_state *plane_state)
> +{
> +	struct drm_rect *damage_merged = &plane_state->damage_merged;
> +	const struct drm_framebuffer *fb = plane_state->hw.fb;
> +	unsigned int rotation = plane_state->hw.rotation;
> +	struct drm_rect *src = &plane_state->uapi.src;
> +
> +	if (drm_rotation_90_or_270(rotation)) {
> +		drm_rect_rotate(damage_merged, fb->width, fb->height,
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
> +{
> +	struct drm_rect *damage_merged = &plane_state->damage_merged;
> +	struct drm_rect src;
> +
> +	drm_rect_fp_to_int(&src, &plane_state->uapi.src);
> +	drm_rect_translate(damage_merged, src.x1, src.y1);
> +	drm_rect_intersect(damage_merged, &src);
> +}
> +
>  static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  			   const struct intel_plane_state *old_plane_state,
>  			   struct intel_plane_state *plane_state)
> @@ -2275,6 +2316,10 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>  
> +	skl_plane_check_plane_damage(old_plane_state, plane_state);
> +
> +	skl_plane_check_damage_with_viewport(plane_state);
> +
>  	ret = skl_check_plane_surface(plane_state);
>  	if (ret)
>  		return ret;
> @@ -2290,6 +2335,8 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>  
> +	skl_plane_check_damage_with_plane_surf(plane_state);
> +
>  	ret = skl_plane_check_nv12_rotation(plane_state);
>  	if (ret)
>  		return ret;
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
