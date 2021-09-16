Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0B840E017
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 18:17:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EADDE6EE2A;
	Thu, 16 Sep 2021 16:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F10A6EE2A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 16:17:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="222258427"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="222258427"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 09:17:01 -0700
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="554149561"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 09:17:00 -0700
Date: Thu, 16 Sep 2021 19:17:42 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210916161742.GA30274@intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
 <20210514125751.17075-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210514125751.17075-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 01/14] drm/i915:
 s/crtc_state/new_crtc_state/ etc.
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

On Fri, May 14, 2021 at 03:57:38PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> intel_plane_atomic_calc_changes() deals with both the old and
> new crtc/plane states. Make the variable names reflect that
> more clearly.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 38 ++++++++++----------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0c2b194006f8..41683c529c3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6826,27 +6826,27 @@ static bool needs_scaling(const struct intel_plane_state *state)
>  }
>  
>  int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_state,
> -				    struct intel_crtc_state *crtc_state,
> +				    struct intel_crtc_state *new_crtc_state,
>  				    const struct intel_plane_state *old_plane_state,
> -				    struct intel_plane_state *plane_state)
> +				    struct intel_plane_state *new_plane_state)
>  {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> +	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
> +	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	bool mode_changed = intel_crtc_needs_modeset(crtc_state);
> +	bool mode_changed = intel_crtc_needs_modeset(new_crtc_state);
>  	bool was_crtc_enabled = old_crtc_state->hw.active;
> -	bool is_crtc_enabled = crtc_state->hw.active;
> +	bool is_crtc_enabled = new_crtc_state->hw.active;
>  	bool turn_off, turn_on, visible, was_visible;
>  	int ret;
>  
>  	if (DISPLAY_VER(dev_priv) >= 9 && plane->id != PLANE_CURSOR) {
> -		ret = skl_update_scaler_plane(crtc_state, plane_state);
> +		ret = skl_update_scaler_plane(new_crtc_state, new_plane_state);
>  		if (ret)
>  			return ret;
>  	}
>  
>  	was_visible = old_plane_state->uapi.visible;
> -	visible = plane_state->uapi.visible;
> +	visible = new_plane_state->uapi.visible;
>  
>  	if (!was_crtc_enabled && drm_WARN_ON(&dev_priv->drm, was_visible))
>  		was_visible = false;
> @@ -6862,7 +6862,7 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
>  	 * only combine the results from all planes in the current place?
>  	 */
>  	if (!is_crtc_enabled) {
> -		intel_plane_set_invisible(crtc_state, plane_state);
> +		intel_plane_set_invisible(new_crtc_state, new_plane_state);
>  		visible = false;
>  	}
>  
> @@ -6881,28 +6881,28 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
>  
>  	if (turn_on) {
>  		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
> -			crtc_state->update_wm_pre = true;
> +			new_crtc_state->update_wm_pre = true;
>  
>  		/* must disable cxsr around plane enable/disable */
>  		if (plane->id != PLANE_CURSOR)
> -			crtc_state->disable_cxsr = true;
> +			new_crtc_state->disable_cxsr = true;
>  	} else if (turn_off) {
>  		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
> -			crtc_state->update_wm_post = true;
> +			new_crtc_state->update_wm_post = true;
>  
>  		/* must disable cxsr around plane enable/disable */
>  		if (plane->id != PLANE_CURSOR)
> -			crtc_state->disable_cxsr = true;
> -	} else if (intel_wm_need_update(old_plane_state, plane_state)) {
> +			new_crtc_state->disable_cxsr = true;
> +	} else if (intel_wm_need_update(old_plane_state, new_plane_state)) {
>  		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv)) {
>  			/* FIXME bollocks */
> -			crtc_state->update_wm_pre = true;
> -			crtc_state->update_wm_post = true;
> +			new_crtc_state->update_wm_pre = true;
> +			new_crtc_state->update_wm_post = true;
>  		}
>  	}
>  
>  	if (visible || was_visible)
> -		crtc_state->fb_bits |= plane->frontbuffer_bit;
> +		new_crtc_state->fb_bits |= plane->frontbuffer_bit;
>  
>  	/*
>  	 * ILK/SNB DVSACNTR/Sprite Enable
> @@ -6941,8 +6941,8 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
>  	    (IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv) ||
>  	     IS_IVYBRIDGE(dev_priv)) &&
>  	    (turn_on || (!needs_scaling(old_plane_state) &&
> -			 needs_scaling(plane_state))))
> -		crtc_state->disable_lp_wm = true;
> +			 needs_scaling(new_plane_state))))
> +		new_crtc_state->disable_lp_wm = true;
>  
>  	return 0;
>  }
> -- 
> 2.26.3
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
