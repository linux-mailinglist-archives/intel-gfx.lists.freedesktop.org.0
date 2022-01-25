Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C3A49B7E0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 16:45:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED36C10E205;
	Tue, 25 Jan 2022 15:45:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B796910E205
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 15:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643125554; x=1674661554;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=C26vBs286DsGepHJ7YN0tnfMQQuIyuiD+H9PA468Twc=;
 b=K1WoY+um9+y/gf3q3D037apF1oK6ipydLU5E5W8Do6ApXjdE3Zth30MG
 pMa+0mDqi8GhY3S2m2LTNrZyhZzCETBnBW02GJsABbzbuLrBxDsFbocrv
 aUuTgWqVds5hg91RUJLwgyaMKT3a4bIMMTnp0lI9P7kI8TW+ZLItPH5VD
 IPBtcnThNeosMG0E8v6w2FLIi0XZi2L7bSMmu2q+WvJ3Hjs2X6Cf/g2LQ
 2h6rTjbfl4I9uPjtdp5GlW25Ku6V+jhDEvQOO01cgd9f1qU21ZDE+xPrd
 ORen6y7uYG64Q7bHTG/ucF6Z6cQgqVy+SdnW+znytH9M24JWT71KKbth3 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="246549687"
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="246549687"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 07:45:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="580792324"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga008.fm.intel.com with SMTP; 25 Jan 2022 07:45:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Jan 2022 17:45:51 +0200
Date: Tue, 25 Jan 2022 17:45:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <YfAbL+lP6TyFfV1B@intel.com>
References: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
 <20220124090653.14547-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220124090653.14547-2-stanislav.lisovskiy@intel.com>
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

On Mon, Jan 24, 2022 at 11:06:50AM +0200, Stanislav Lisovskiy wrote:
> Sometimes we might need to change the way we calculate
> watermarks, based on which particular plane it is calculated
> for. Thus it would be convenient to pass plane struct to those
> functions.
> 
> v2: Pass plane instead of plane_id
> v3: Do not pass plane to skl_cursor_allocation(Ville Syrjälä)
> v4: - Make intel_crtc_get_plane static again(Ville Syrjälä)
>     - s/cursor_plane/plane(Ville Syrjälä)
>     - Pass plane to skl_compute_wm_* instead of plane_id(Ville Syrjälä)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  1 +
>  drivers/gpu/drm/i915/intel_pm.c               | 37 +++++++++++--------
>  2 files changed, 22 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> index 7907f601598e..ead789709477 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -16,6 +16,7 @@ struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_plane;
>  struct intel_plane_state;
> +enum plane_id;
>  
>  unsigned int intel_adjusted_rate(const struct drm_rect *src,
>  				 const struct drm_rect *dst,
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 2ec8e48806b6..06707d2b5fc5 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4240,7 +4240,9 @@ static int skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
>  				 u64 modifier, unsigned int rotation,
>  				 u32 plane_pixel_rate, struct skl_wm_params *wp,
>  				 int color_plane);
> +
>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
> +				 struct intel_plane *plane,
>  				 int level,
>  				 unsigned int latency,
>  				 const struct skl_wm_params *wp,
> @@ -4251,6 +4253,7 @@ static unsigned int
>  skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
>  		      int num_active)
>  {
> +	struct intel_plane *plane = to_intel_plane(crtc_state->uapi.crtc->cursor);
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  	int level, max_level = ilk_wm_max_level(dev_priv);
>  	struct skl_wm_level wm = {};
> @@ -4267,7 +4270,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
>  	for (level = 0; level <= max_level; level++) {
>  		unsigned int latency = dev_priv->wm.skl_latency[level];
>  
> -		skl_compute_plane_wm(crtc_state, level, latency, &wp, &wm, &wm);
> +		skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm, &wm);
>  		if (wm.min_ddb_alloc == U16_MAX)
>  			break;
>  
> @@ -5495,6 +5498,7 @@ static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
>  }
>  
>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
> +				 struct intel_plane *plane,
>  				 int level,
>  				 unsigned int latency,
>  				 const struct skl_wm_params *wp,
> @@ -5622,6 +5626,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  
>  static void
>  skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
> +		      struct intel_plane *plane,
>  		      const struct skl_wm_params *wm_params,
>  		      struct skl_wm_level *levels)
>  {
> @@ -5633,7 +5638,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
>  		struct skl_wm_level *result = &levels[level];
>  		unsigned int latency = dev_priv->wm.skl_latency[level];
>  
> -		skl_compute_plane_wm(crtc_state, level, latency,
> +		skl_compute_plane_wm(crtc_state, plane, level, latency,
>  				     wm_params, result_prev, result);
>  
>  		result_prev = result;
> @@ -5641,6 +5646,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
>  }
>  
>  static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
> +				struct intel_plane *plane,
>  				const struct skl_wm_params *wm_params,
>  				struct skl_plane_wm *plane_wm)
>  {
> @@ -5649,7 +5655,7 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
>  	struct skl_wm_level *levels = plane_wm->wm;
>  	unsigned int latency = dev_priv->wm.skl_latency[0] + dev_priv->sagv_block_time_us;
>  
> -	skl_compute_plane_wm(crtc_state, 0, latency,
> +	skl_compute_plane_wm(crtc_state, plane, 0, latency,
>  			     wm_params, &levels[0],
>  			     sagv_wm);
>  }
> @@ -5719,11 +5725,11 @@ static void skl_compute_transition_wm(struct drm_i915_private *dev_priv,
>  
>  static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
>  				     const struct intel_plane_state *plane_state,
> -				     enum plane_id plane_id, int color_plane)
> +				     struct intel_plane *plane, int color_plane)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane_id];
> +	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane->id];
>  	struct skl_wm_params wm_params;
>  	int ret;
>  
> @@ -5732,13 +5738,13 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
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
> @@ -5749,9 +5755,9 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
>  
>  static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
>  				 const struct intel_plane_state *plane_state,
> -				 enum plane_id plane_id)
> +				 struct intel_plane *plane)
>  {
> -	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane_id];
> +	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane->id];
>  	struct skl_wm_params wm_params;
>  	int ret;
>  
> @@ -5763,7 +5769,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>  
> -	skl_compute_wm_levels(crtc_state, &wm_params, wm->uv_wm);
> +	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->uv_wm);
>  
>  	return 0;
>  }
> @@ -5783,13 +5789,13 @@ static int skl_build_plane_wm(struct intel_crtc_state *crtc_state,
>  		return 0;
>  
>  	ret = skl_build_plane_wm_single(crtc_state, plane_state,
> -					plane_id, 0);
> +					plane, 0);
>  	if (ret)
>  		return ret;
>  
>  	if (fb->format->is_yuv && fb->format->num_planes > 1) {
>  		ret = skl_build_plane_wm_uv(crtc_state, plane_state,
> -					    plane_id);
> +					    plane);
>  		if (ret)
>  			return ret;
>  	}
> @@ -5814,7 +5820,6 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>  
>  	if (plane_state->planar_linked_plane) {
>  		const struct drm_framebuffer *fb = plane_state->hw.fb;
> -		enum plane_id y_plane_id = plane_state->planar_linked_plane->id;
>  
>  		drm_WARN_ON(&dev_priv->drm,
>  			    !intel_wm_plane_visible(crtc_state, plane_state));
> @@ -5822,17 +5827,17 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>  			    fb->format->num_planes == 1);
>  
>  		ret = skl_build_plane_wm_single(crtc_state, plane_state,
> -						y_plane_id, 0);
> +						plane_state->planar_linked_plane, 0);
>  		if (ret)
>  			return ret;
>  
>  		ret = skl_build_plane_wm_single(crtc_state, plane_state,
> -						plane_id, 1);
> +						plane, 1);
>  		if (ret)
>  			return ret;
>  	} else if (intel_wm_plane_visible(crtc_state, plane_state)) {
>  		ret = skl_build_plane_wm_single(crtc_state, plane_state,
> -						plane_id, 0);
> +						plane, 0);
>  		if (ret)
>  			return ret;
>  	}
> -- 
> 2.24.1.485.gad05a3d8e5

-- 
Ville Syrjälä
Intel
