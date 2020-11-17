Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8AE2B67EB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 15:53:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D606EA9E;
	Tue, 17 Nov 2020 14:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 854966EA9E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 14:53:32 +0000 (UTC)
IronPort-SDR: u9f4eNxNXqA9BEnI/dM5mBJ8QFWdhOXBuUA2z2zsJs/LTMS9wLcx5iamJp/U8Hu3IZeRrzt9ef
 Zizgl5kQs5oQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="235083914"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="235083914"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 06:53:30 -0800
IronPort-SDR: +en+uybvip/ordBOCJfmOeev1ledHQQFtOCQ5Sr0s0QbTA0gS0/byCZ+hHVBpW/JEaO5fl4bht
 da41B4Kmh+0g==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="310236164"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 06:53:29 -0800
Date: Tue, 17 Nov 2020 16:54:11 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201117145404.GA31218@intel.com>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-19-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113220358.24794-19-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 18/23] drm/i915: Add bigjoiner aware plane
 clipping checks
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Nov 14, 2020 at 12:03:53AM +0200, Ville Syrjala wrote:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> 
> We need to look at hw.fb for the framebuffer, and add the translation
> for the slave_plane_state. With these changes we set the correct
> rectangle on the bigjoiner slave, and don't set incorrect
> src/dst/visibility on the slave plane.
> 
> v2:
> * Manual rebase (Manasi)
> 
> v3:
> * hw.rotation instead of uapi.rotation (Ville)
> 

Looks good to me, 

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 60 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  4 ++
>  drivers/gpu/drm/i915/display/intel_display.c  | 19 +++---
>  drivers/gpu/drm/i915/display/intel_sprite.c   | 21 +++----
>  4 files changed, 80 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 7abb0e3d6c0b..7e9f84b00859 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -271,6 +271,9 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
>  	plane_state->hw.color_encoding = from_plane_state->uapi.color_encoding;
>  	plane_state->hw.color_range = from_plane_state->uapi.color_range;
>  	plane_state->hw.scaling_filter = from_plane_state->uapi.scaling_filter;
> +
> +	plane_state->uapi.src = drm_plane_state_src(&from_plane_state->uapi);
> +	plane_state->uapi.dst = drm_plane_state_dest(&from_plane_state->uapi);
>  }
>  
>  void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
> @@ -514,6 +517,63 @@ void i9xx_update_planes_on_crtc(struct intel_atomic_state *state,
>  	}
>  }
>  
> +int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
> +				      struct intel_crtc_state *crtc_state,
> +				      int min_scale, int max_scale,
> +				      bool can_position)
> +{
> +	struct drm_framebuffer *fb = plane_state->hw.fb;
> +	struct drm_rect *src = &plane_state->uapi.src;
> +	struct drm_rect *dst = &plane_state->uapi.dst;
> +	unsigned int rotation = plane_state->hw.rotation;
> +	struct drm_rect clip = {};
> +	int hscale, vscale;
> +
> +	if (!fb) {
> +		plane_state->uapi.visible = false;
> +		return 0;
> +	}
> +
> +	drm_rect_rotate(src, fb->width << 16, fb->height << 16, rotation);
> +
> +	/* Check scaling */
> +	hscale = drm_rect_calc_hscale(src, dst, min_scale, max_scale);
> +	vscale = drm_rect_calc_vscale(src, dst, min_scale, max_scale);
> +	if (hscale < 0 || vscale < 0) {
> +		DRM_DEBUG_KMS("Invalid scaling of plane\n");
> +		drm_rect_debug_print("src: ", src, true);
> +		drm_rect_debug_print("dst: ", dst, false);
> +		return -ERANGE;
> +	}
> +
> +	if (crtc_state->hw.enable) {
> +		clip.x2 = crtc_state->pipe_src_w;
> +		clip.y2 = crtc_state->pipe_src_h;
> +	}
> +
> +	/* right side of the image is on the slave crtc, adjust dst to match */
> +	if (crtc_state->bigjoiner_slave)
> +		drm_rect_translate(dst, -crtc_state->pipe_src_w, 0);
> +
> +	/*
> +	 * FIXME: This might need further adjustment for seamless scaling
> +	 * with phase information, for the 2p2 and 2p1 scenarios.
> +	 */
> +	plane_state->uapi.visible = drm_rect_clip_scaled(src, dst, &clip);
> +
> +	drm_rect_rotate_inv(src, fb->width << 16, fb->height << 16, rotation);
> +
> +	if (!can_position && plane_state->uapi.visible &&
> +	    !drm_rect_equals(dst, &clip)) {
> +		DRM_DEBUG_KMS("Plane must cover entire CRTC\n");
> +		drm_rect_debug_print("dst: ", dst, false);
> +		drm_rect_debug_print("clip: ", &clip, false);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  const struct drm_plane_helper_funcs intel_plane_helper_funcs = {
>  	.prepare_fb = intel_prepare_plane_fb,
>  	.cleanup_fb = intel_cleanup_plane_fb,
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> index 5cae9db41062..5c78a087ed86 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -55,6 +55,10 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
>  int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
>  			       struct intel_plane *plane,
>  			       bool *need_cdclk_calc);
> +int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
> +				      struct intel_crtc_state *crtc_state,
> +				      int min_scale, int max_scale,
> +				      bool can_position);
>  void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
>  			       struct intel_plane_state *plane_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 55e0a2f21d98..eeb50413fc8e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4315,12 +4315,10 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>  
> -	ret = drm_atomic_helper_check_plane_state(&plane_state->uapi,
> -						  &crtc_state->uapi,
> -						  DRM_PLANE_HELPER_NO_SCALING,
> -						  DRM_PLANE_HELPER_NO_SCALING,
> -						  i9xx_plane_has_windowing(plane),
> -						  true);
> +	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						i9xx_plane_has_windowing(plane));
>  	if (ret)
>  		return ret;
>  
> @@ -11660,11 +11658,10 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
>  		return -EINVAL;
>  	}
>  
> -	ret = drm_atomic_helper_check_plane_state(&plane_state->uapi,
> -						  &crtc_state->uapi,
> -						  DRM_PLANE_HELPER_NO_SCALING,
> -						  DRM_PLANE_HELPER_NO_SCALING,
> -						  true, true);
> +	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						true);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index a3ab44694118..019a2d6d807a 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -2187,10 +2187,8 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
>  		}
>  	}
>  
> -	ret = drm_atomic_helper_check_plane_state(&plane_state->uapi,
> -						  &crtc_state->uapi,
> -						  min_scale, max_scale,
> -						  true, true);
> +	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						min_scale, max_scale, true);
>  	if (ret)
>  		return ret;
>  
> @@ -2245,11 +2243,10 @@ vlv_sprite_check(struct intel_crtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>  
> -	ret = drm_atomic_helper_check_plane_state(&plane_state->uapi,
> -						  &crtc_state->uapi,
> -						  DRM_PLANE_HELPER_NO_SCALING,
> -						  DRM_PLANE_HELPER_NO_SCALING,
> -						  true, true);
> +	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						true);
>  	if (ret)
>  		return ret;
>  
> @@ -2456,10 +2453,8 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  		max_scale = skl_plane_max_scale(dev_priv, fb);
>  	}
>  
> -	ret = drm_atomic_helper_check_plane_state(&plane_state->uapi,
> -						  &crtc_state->uapi,
> -						  min_scale, max_scale,
> -						  true, true);
> +	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						min_scale, max_scale, true);
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.26.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
