Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C31E2C9F1D0
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 14:22:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51A4B10E7E0;
	Wed,  3 Dec 2025 13:22:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TmQ9gfuH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7B5110E7DF;
 Wed,  3 Dec 2025 13:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764768142; x=1796304142;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RS69TQmrEXqb1bk1NT8uSkrCj8EqwfEt70MvG1e+nPg=;
 b=TmQ9gfuH4MDhoF1v8hFMGJAcKeSfuK2ozYvVZXXmCQGNvryAZ4h+6MNU
 eTo1KPNiymiYmpp96q4c1ACPARXEeJlMOObTtteZRfwConZcL0viQMzqm
 FVlE0ceIa+k1xhxEX5xvuz67RSJP733EUL/wGZxH2hP/l6tDiM49eAQYP
 YjJVD74ngCkBwKRfEkVPOwm/vRab9c80+lcEgXOWyIzqZaIrRbD09KS5t
 yXZmHm1rWpcgfs5ytIkrqY7jrxuyDc6fzPwbiSV01mSrsqkgPf6FYzR38
 M1dXbalE88eEe8dlFvlvpCEBxQMX6jYTt/IspEyKHatRC+KVCPqHbnt8W Q==;
X-CSE-ConnectionGUID: WmuDkTk6Th2DNz6i6qyL8g==
X-CSE-MsgGUID: Ysw4jmEoRamTmSDG21rQ8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="77867579"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="77867579"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 05:22:21 -0800
X-CSE-ConnectionGUID: VybHBlPbR7+QxMi5c/unYw==
X-CSE-MsgGUID: HX/ePatgRD6PD5bcKlD6gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="194573231"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.70])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 05:22:20 -0800
Date: Wed, 3 Dec 2025 15:22:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 2/3] drm/i915/psr: Perform full frame update on async
 flip
Message-ID: <aTA5icuJ6UeHdH6g@intel.com>
References: <20251201132457.624358-1-jouni.hogander@intel.com>
 <20251201132457.624358-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251201132457.624358-3-jouni.hogander@intel.com>
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

On Mon, Dec 01, 2025 at 03:24:56PM +0200, Jouni Högander wrote:
> According to bspec selective fetch is not supported with async flips and
> instructing full frame update on async flip.
> 
> v3:
>   - rebase
>   - fix old_crtc_state->pipe_srcsz_early_tpt
>   - fix using intel_atomic_get_new_crtc_state
> v2:
>   - check also crtc_state->async_flip_planes in
>     psr2_sel_fetch_plane_state_supported
> 
> Bspec: 55229
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 72 ++++++++++++++----------
>  1 file changed, 41 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 15ef3b6caad6..53cf292247d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2728,13 +2728,20 @@ intel_psr2_sel_fetch_et_alignment(struct intel_atomic_state *state,
>   * Plane scaling and rotation is not supported by selective fetch and both
>   * properties can change without a modeset, so need to be check at every
>   * atomic commit.
> + *
> + * If plane was having async flip previously we can't use selective
> + * fetch as we don't know if the flip is completed.
>   */
> -static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state *plane_state)
> +static bool psr2_sel_fetch_plane_state_supported(const struct intel_crtc_state *old_crtc_state,
> +						 const struct intel_plane_state *plane_state)
>  {
> +	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> +
>  	if (plane_state->uapi.dst.y1 < 0 ||
>  	    plane_state->uapi.dst.x1 < 0 ||
>  	    plane_state->scaler_id >= 0 ||
> -	    plane_state->hw.rotation != DRM_MODE_ROTATE_0)
> +	    plane_state->hw.rotation != DRM_MODE_ROTATE_0 ||
> +	    old_crtc_state->async_flip_planes & plane->id)

Why are you looking at the old crtc state? There should be nothing of
interest to us there.

>  		return false;
>  
>  	return true;
> @@ -2749,7 +2756,8 @@ static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state
>   */
>  static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *crtc_state)
>  {
> -	if (crtc_state->scaler_state.scaler_id >= 0)
> +	if (crtc_state->scaler_state.scaler_id >= 0 ||
> +	    crtc_state->uapi.async_flip)

I think just checking crtc_state->async_flip_planes!=0 here should be
sufficient. The rest of the patch seems unnecessary.

On a related note, someone should add a new igt that does async flips
while eg. the cursor is enabled and overlapping the plane doing the
async flips. That's basically how I noticed the problem in the first
place (with Xorg), so would be good to have an igt to make sure we
don't break this in the future.

>  		return false;
>  
>  	return true;
> @@ -2808,24 +2816,25 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc)
>  {
>  	struct intel_display *display = to_intel_display(state);
> -	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_crtc_state *new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_crtc_state *old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_plane_state *new_plane_state, *old_plane_state;
>  	struct intel_plane *plane;
>  	bool full_update = false, cursor_in_su_area = false;
>  	int i, ret;
>  
> -	if (!crtc_state->enable_psr2_sel_fetch)
> +	if (!new_crtc_state->enable_psr2_sel_fetch)
>  		return 0;
>  
> -	if (!psr2_sel_fetch_pipe_state_supported(crtc_state)) {
> +	if (!psr2_sel_fetch_pipe_state_supported(new_crtc_state)) {
>  		full_update = true;
>  		goto skip_sel_fetch_set_loop;
>  	}
>  
> -	crtc_state->psr2_su_area.x1 = 0;
> -	crtc_state->psr2_su_area.y1 = -1;
> -	crtc_state->psr2_su_area.x2 = drm_rect_width(&crtc_state->pipe_src);
> -	crtc_state->psr2_su_area.y2 = -1;
> +	new_crtc_state->psr2_su_area.x1 = 0;
> +	new_crtc_state->psr2_su_area.y1 = -1;
> +	new_crtc_state->psr2_su_area.x2 = drm_rect_width(&new_crtc_state->pipe_src);
> +	new_crtc_state->psr2_su_area.y2 = -1;
>  
>  	/*
>  	 * Calculate minimal selective fetch area of each plane and calculate
> @@ -2838,14 +2847,14 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  		struct drm_rect src, damaged_area = { .x1 = 0, .y1 = -1,
>  						      .x2 = INT_MAX };
>  
> -		if (new_plane_state->hw.crtc != crtc_state->uapi.crtc)
> +		if (new_plane_state->hw.crtc != new_crtc_state->uapi.crtc)
>  			continue;
>  
>  		if (!new_plane_state->uapi.visible &&
>  		    !old_plane_state->uapi.visible)
>  			continue;
>  
> -		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
> +		if (!psr2_sel_fetch_plane_state_supported(old_crtc_state, new_plane_state)) {
>  			full_update = true;
>  			break;
>  		}
> @@ -2861,23 +2870,23 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  			if (old_plane_state->uapi.visible) {
>  				damaged_area.y1 = old_plane_state->uapi.dst.y1;
>  				damaged_area.y2 = old_plane_state->uapi.dst.y2;
> -				clip_area_update(&crtc_state->psr2_su_area, &damaged_area,
> -						 &crtc_state->pipe_src);
> +				clip_area_update(&new_crtc_state->psr2_su_area, &damaged_area,
> +						 &new_crtc_state->pipe_src);
>  			}
>  
>  			if (new_plane_state->uapi.visible) {
>  				damaged_area.y1 = new_plane_state->uapi.dst.y1;
>  				damaged_area.y2 = new_plane_state->uapi.dst.y2;
> -				clip_area_update(&crtc_state->psr2_su_area, &damaged_area,
> -						 &crtc_state->pipe_src);
> +				clip_area_update(&new_crtc_state->psr2_su_area, &damaged_area,
> +						 &new_crtc_state->pipe_src);
>  			}
>  			continue;
>  		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha) {
>  			/* If alpha changed mark the whole plane area as damaged */
>  			damaged_area.y1 = new_plane_state->uapi.dst.y1;
>  			damaged_area.y2 = new_plane_state->uapi.dst.y2;
> -			clip_area_update(&crtc_state->psr2_su_area, &damaged_area,
> -					 &crtc_state->pipe_src);
> +			clip_area_update(&new_crtc_state->psr2_su_area, &damaged_area,
> +					 &new_crtc_state->pipe_src);
>  			continue;
>  		}
>  
> @@ -2893,7 +2902,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  		damaged_area.x1 += new_plane_state->uapi.dst.x1 - src.x1;
>  		damaged_area.x2 += new_plane_state->uapi.dst.x1 - src.x1;
>  
> -		clip_area_update(&crtc_state->psr2_su_area, &damaged_area, &crtc_state->pipe_src);
> +		clip_area_update(&new_crtc_state->psr2_su_area, &damaged_area,
> +				 &new_crtc_state->pipe_src);
>  	}
>  
>  	/*
> @@ -2902,7 +2912,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  	 * should identify cases where this happens and fix the area
>  	 * calculation for those.
>  	 */
> -	if (crtc_state->psr2_su_area.y1 == -1) {
> +	if (new_crtc_state->psr2_su_area.y1 == -1) {
>  		drm_info_once(display->drm,
>  			      "Selective fetch area calculation failed in pipe %c\n",
>  			      pipe_name(crtc->pipe));
> @@ -2912,7 +2922,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  	if (full_update)
>  		goto skip_sel_fetch_set_loop;
>  
> -	intel_psr_apply_su_area_workarounds(crtc_state);
> +	intel_psr_apply_su_area_workarounds(new_crtc_state);
>  
>  	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
>  	if (ret)
> @@ -2926,7 +2936,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  	 */
>  	intel_psr2_sel_fetch_et_alignment(state, crtc, &cursor_in_su_area);
>  
> -	intel_psr2_sel_fetch_pipe_alignment(crtc_state);
> +	intel_psr2_sel_fetch_pipe_alignment(new_crtc_state);
>  
>  	/*
>  	 * Now that we have the pipe damaged area check if it intersect with
> @@ -2937,11 +2947,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  		struct drm_rect *sel_fetch_area, inter;
>  		struct intel_plane *linked = new_plane_state->planar_linked_plane;
>  
> -		if (new_plane_state->hw.crtc != crtc_state->uapi.crtc ||
> +		if (new_plane_state->hw.crtc != new_crtc_state->uapi.crtc ||
>  		    !new_plane_state->uapi.visible)
>  			continue;
>  
> -		inter = crtc_state->psr2_su_area;
> +		inter = new_crtc_state->psr2_su_area;
>  		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
>  		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst)) {
>  			sel_fetch_area->y1 = -1;
> @@ -2951,12 +2961,12 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  			 * disable it
>  			 */
>  			if (drm_rect_height(&old_plane_state->psr2_sel_fetch_area) > 0)
> -				crtc_state->update_planes |= BIT(plane->id);
> +				new_crtc_state->update_planes |= BIT(plane->id);
>  
>  			continue;
>  		}
>  
> -		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
> +		if (!psr2_sel_fetch_plane_state_supported(old_crtc_state, new_plane_state)) {
>  			full_update = true;
>  			break;
>  		}
> @@ -2964,7 +2974,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
>  		sel_fetch_area->y1 = inter.y1 - new_plane_state->uapi.dst.y1;
>  		sel_fetch_area->y2 = inter.y2 - new_plane_state->uapi.dst.y1;
> -		crtc_state->update_planes |= BIT(plane->id);
> +		new_crtc_state->update_planes |= BIT(plane->id);
>  
>  		/*
>  		 * Sel_fetch_area is calculated for UV plane. Use
> @@ -2981,14 +2991,14 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  			linked_sel_fetch_area = &linked_new_plane_state->psr2_sel_fetch_area;
>  			linked_sel_fetch_area->y1 = sel_fetch_area->y1;
>  			linked_sel_fetch_area->y2 = sel_fetch_area->y2;
> -			crtc_state->update_planes |= BIT(linked->id);
> +			new_crtc_state->update_planes |= BIT(linked->id);
>  		}
>  	}
>  
>  skip_sel_fetch_set_loop:
> -	psr2_man_trk_ctl_calc(crtc_state, full_update);
> -	crtc_state->pipe_srcsz_early_tpt =
> -		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update);
> +	psr2_man_trk_ctl_calc(new_crtc_state, full_update);
> +	new_crtc_state->pipe_srcsz_early_tpt =
> +		psr2_pipe_srcsz_early_tpt_calc(new_crtc_state, full_update);
>  	return 0;
>  }
>  
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
