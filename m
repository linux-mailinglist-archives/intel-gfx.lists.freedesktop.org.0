Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E785C495E8B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 12:47:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC6410EB17;
	Fri, 21 Jan 2022 11:47:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39C510EB17
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 11:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642765672; x=1674301672;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WlhZJyUNxFOjH7RtNrd1yIEeCN9EqdCwXL4kO39d5mw=;
 b=PppRw6ZRONkT+Lyeuuq7se29qrlQzflkNMsDOA0/Hy7iXE+QK9zv+xV+
 9t4Z5pkWYCx6aBFIji6aaFLSRB3z5m/DHJ2oih33f3pu8eRV4zTMVF1mQ
 mikho2jeqHzhTojvLXfyQITgRU7jUTLtCaLHVK/ozzDGYGAPvAyZLy9ao
 u6O0CZFsq9DL9gnvpb8/CUs0xCsOepRPfU3MJtucvxO5x82wZp+iuxYZ7
 0/Xy9ZTzEX2Q08MgJX4ra+y46NsIw0DQ843dzlBoEDIoAvHvoAHn6esp7
 nwhBP0d9CCWWIfxEvporlMXoKNlTKmJKjjC4C+Rj7J4voQKpRfdaIbqcp g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="244457550"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="244457550"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 03:47:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="623293037"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga002.fm.intel.com with SMTP; 21 Jan 2022 03:47:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 13:47:49 +0200
Date: Fri, 21 Jan 2022 13:47:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <YeqdZVTHvDLmQe/7@intel.com>
References: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
 <20220121080615.9936-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220121080615.9936-2-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Pass plane to watermark
 calculation functions
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 21, 2022 at 10:06:12AM +0200, Stanislav Lisovskiy wrote:
> Sometimes we might need to change the way we calculate
> watermarks, based on which particular plane it is calculated
> for. Thus it would be convenient to pass plane struct to those
> functions.
> 
> v2: Pass plane instead of plane_id
> v3: Do not pass plane to skl_cursor_allocation(Ville Syrjälä)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +++
>  drivers/gpu/drm/i915/intel_pm.c               | 20 +++++++++++++------
>  3 files changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index c2c512cd8ec0..d1344e9c06de 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -373,7 +373,7 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
>  					       old_plane_state, new_plane_state);
>  }
>  
> -static struct intel_plane *
> +struct intel_plane *
>  intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
>  {
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> index 7907f601598e..c1499bb7370e 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -16,10 +16,13 @@ struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_plane;
>  struct intel_plane_state;
> +enum plane_id;
>  
>  unsigned int intel_adjusted_rate(const struct drm_rect *src,
>  				 const struct drm_rect *dst,
>  				 unsigned int rate);
> +struct intel_plane *intel_crtc_get_plane(struct intel_crtc *crtc,
> +					 enum plane_id plane_id);

You're no longer using that, so can stay static.

>  unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
>  				    const struct intel_plane_state *plane_state);
>  
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 3981aa856cc2..35d0bd8c6e57 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4252,7 +4252,9 @@ static int skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
>  				 u64 modifier, unsigned int rotation,
>  				 u32 plane_pixel_rate, struct skl_wm_params *wp,
>  				 int color_plane);
> +
>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
> +				 const struct intel_plane *plane,
>  				 int level,
>  				 unsigned int latency,
>  				 const struct skl_wm_params *wp,
> @@ -4268,6 +4270,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
>  	struct skl_wm_level wm = {};
>  	int ret, min_ddb_alloc = 0;
>  	struct skl_wm_params wp;
> +	const struct intel_plane *cursor_plane = to_intel_plane(crtc_state->uapi.crtc->cursor);

I think just 'plane' would suffice since we know from the context what
it is. Also sticking to the reverse christmas tree order would look a
bit neater imo.

>  
>  	ret = skl_compute_wm_params(crtc_state, 256,
>  				    drm_format_info(DRM_FORMAT_ARGB8888),
> @@ -4279,7 +4282,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
>  	for (level = 0; level <= max_level; level++) {
>  		unsigned int latency = dev_priv->wm.skl_latency[level];
>  
> -		skl_compute_plane_wm(crtc_state, level, latency, &wp, &wm, &wm);
> +		skl_compute_plane_wm(crtc_state, cursor_plane, level, latency, &wp, &wm, &wm);
>  		if (wm.min_ddb_alloc == U16_MAX)
>  			break;
>  
> @@ -5508,6 +5511,7 @@ static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
>  }
>  
>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
> +				 const struct intel_plane *plane,
>  				 int level,
>  				 unsigned int latency,
>  				 const struct skl_wm_params *wp,
> @@ -5635,6 +5639,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  
>  static void
>  skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
> +		      const struct intel_plane *plane,
>  		      const struct skl_wm_params *wm_params,
>  		      struct skl_wm_level *levels)
>  {
> @@ -5646,7 +5651,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
>  		struct skl_wm_level *result = &levels[level];
>  		unsigned int latency = dev_priv->wm.skl_latency[level];
>  
> -		skl_compute_plane_wm(crtc_state, level, latency,
> +		skl_compute_plane_wm(crtc_state, plane, level, latency,
>  				     wm_params, result_prev, result);
>  
>  		result_prev = result;
> @@ -5654,6 +5659,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
>  }
>  
>  static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
> +				const struct intel_plane *plane,
>  				const struct skl_wm_params *wm_params,
>  				struct skl_plane_wm *plane_wm)
>  {
> @@ -5662,7 +5668,7 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
>  	struct skl_wm_level *levels = plane_wm->wm;
>  	unsigned int latency = dev_priv->wm.skl_latency[0] + dev_priv->sagv_block_time_us;
>  
> -	skl_compute_plane_wm(crtc_state, 0, latency,
> +	skl_compute_plane_wm(crtc_state, plane, 0, latency,
>  			     wm_params, &levels[0],
>  			     sagv_wm);
>  }
> @@ -5737,6 +5743,7 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane_id];
> +	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);

Hmm. I was first going to suggest not plumbing plane_id through
to here at all anymore, but thanks to the Y plane shenanigans we
can't actually do that.

I think to make this totally consistent we should actually plumb
the whole plane into skl_build_plane_wm_{single,uv}() instead
of just the plane_id.

>  	struct skl_wm_params wm_params;
>  	int ret;
>  
> @@ -5745,13 +5752,13 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>  
> -	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
> +	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->wm);
>  
>  	skl_compute_transition_wm(dev_priv, &wm->trans_wm,
>  				  &wm->wm[0], &wm_params);
>  
>  	if (DISPLAY_VER(dev_priv) >= 12) {
> -		tgl_compute_sagv_wm(crtc_state, &wm_params, wm);
> +		tgl_compute_sagv_wm(crtc_state, plane, &wm_params, wm);
>  
>  		skl_compute_transition_wm(dev_priv, &wm->sagv.trans_wm,
>  					  &wm->sagv.wm0, &wm_params);
> @@ -5765,6 +5772,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
>  				 enum plane_id plane_id)
>  {
>  	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane_id];
> +	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
>  	struct skl_wm_params wm_params;
>  	int ret;
>  
> @@ -5776,7 +5784,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>  
> -	skl_compute_wm_levels(crtc_state, &wm_params, wm->uv_wm);
> +	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->uv_wm);
>  
>  	return 0;
>  }
> -- 
> 2.24.1.485.gad05a3d8e5

-- 
Ville Syrjälä
Intel
