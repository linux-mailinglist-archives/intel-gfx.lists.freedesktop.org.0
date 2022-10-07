Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2290F5F740C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 07:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A07C410E56F;
	Fri,  7 Oct 2022 05:58:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74C2D10E56F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Oct 2022 05:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665122284; x=1696658284;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WqxFiu0hTVPlATnl/yh8sA8NAAGTVyRqBMhpzUxgCOA=;
 b=CLVuYdhNlMSHNdMyLtUg5c80LY7zt0up/P0wG9V7+DGPc6j5ol0QeQiL
 F3MCL5wukhSBrESQxAdxku6EbHTIbCckBnsXbwn0o2NvbuwNMgvz5gnbU
 buxSBb2MzoY9QI6Cef+JVBh8+k4hWIvqBx5kBxCSEVAJi91TnsIw0ePd5
 t5ixuOtc9JRUyQ15mS/b7EV20W0IuWNXWHJcVJynhWgmgKHFaF3EUu6RG
 391Y1CsVLa8NRI4kGe4Cdlxl9CF36dzc+i+/SPmz4BEg49j8PXfqI//dc
 jjhhG54MgSbUd3EiFmKNoIOgr6sXhg1613KE60xZ37AmeV8LH5jBZijbM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="302376568"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="302376568"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 22:58:03 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="620120266"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="620120266"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 22:58:02 -0700
Date: Fri, 7 Oct 2022 08:57:55 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Yz+/42F7ie9R+f9m@intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
 <20220622155452.32587-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220622155452.32587-7-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 6/9] drm/i915: Fix g4x/vlv/chv CxSR vs.
 format/tiling/rotation changes
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

On Wed, Jun 22, 2022 at 06:54:49PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On g4x/vlv/chv the hardware seems incapable of changing the pixel
> format, rotation, or YUV->RGB CSC matrix while in CxSR.
> 
> Additionally on VLV/CHV the sprites seem incapable of tiling
> changes while in CxSR. On g4x CxSR is not even possible with
> the sprite enabled. Curiously the primary plane seems perfectly
> happy when changing tiling during CxSR.
> 
> Pimp up the code to account for these when determining whether
> CxSR needs to be disabled. Since it looks like most of the plane
> control register bits are affected let's just compare that.
> But in the name of efficiency we'll make an exception for the
> primary plane tiling changes (avoids some extra vblank waits).
> 
> v2: Just use the pre-computed plane control register values
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 53 ++++++++++++++++---
>  1 file changed, 45 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index efe8591619e3..e5ad6a437a97 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -426,6 +426,47 @@ static bool intel_plane_do_async_flip(struct intel_plane *plane,
>  	return DISPLAY_VER(i915) < 13 || old_crtc_state->uapi.async_flip;
>  }
>  
> +static bool i9xx_must_disable_cxsr(const struct intel_crtc_state *new_crtc_state,
> +				   const struct intel_plane_state *old_plane_state,
> +				   const struct intel_plane_state *new_plane_state)
> +{
> +	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
> +	bool old_visible = old_plane_state->uapi.visible;
> +	bool new_visible = new_plane_state->uapi.visible;
> +	u32 old_ctl = old_plane_state->ctl;
> +	u32 new_ctl = new_plane_state->ctl;
> +	bool modeset, turn_on, turn_off;
> +
> +	if (plane->id == PLANE_CURSOR)
> +		return false;
> +
> +	modeset = intel_crtc_needs_modeset(new_crtc_state);
> +	turn_off = old_visible && (!new_visible || modeset);
> +	turn_on = new_visible && (!old_visible || modeset);
> +
> +	/* Must disable CxSR around plane enable/disable */
> +	if (turn_on || turn_off)
> +		return true;
> +
> +	if (!old_visible || !new_visible)
> +		return false;
> +
> +	/*
> +	 * Most plane control register updates are blocked while in CxSR.
> +	 *
> +	 * Tiling mode is one exception where the primary plane can
> +	 * apparently handle it, whereas the sprites can not (the
> +	 * sprite issue being only relevant on VLV/CHV where CxSR
> +	 * is actually possible with a sprite enabled).
> +	 */
> +	if (plane->id == PLANE_PRIMARY) {
> +		old_ctl &= ~DISP_TILED;
> +		new_ctl &= ~DISP_TILED;
> +	}
> +
> +	return old_ctl != new_ctl;
> +}
> +
>  static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_state,
>  					   struct intel_crtc_state *new_crtc_state,
>  					   const struct intel_plane_state *old_plane_state,
> @@ -483,17 +524,9 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
>  	if (turn_on) {
>  		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
>  			new_crtc_state->update_wm_pre = true;
> -
> -		/* must disable cxsr around plane enable/disable */
> -		if (plane->id != PLANE_CURSOR)
> -			new_crtc_state->disable_cxsr = true;
>  	} else if (turn_off) {
>  		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
>  			new_crtc_state->update_wm_post = true;
> -
> -		/* must disable cxsr around plane enable/disable */
> -		if (plane->id != PLANE_CURSOR)
> -			new_crtc_state->disable_cxsr = true;
>  	} else if (intel_wm_need_update(old_plane_state, new_plane_state)) {
>  		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv)) {
>  			/* FIXME bollocks */
> @@ -505,6 +538,10 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
>  	if (visible || was_visible)
>  		new_crtc_state->fb_bits |= plane->frontbuffer_bit;
>  
> +	if (HAS_GMCH(dev_priv) &&
> +	    i9xx_must_disable_cxsr(new_crtc_state, old_plane_state, new_plane_state))
> +		new_crtc_state->disable_cxsr = true;
> +
>  	/*
>  	 * ILK/SNB DVSACNTR/Sprite Enable
>  	 * IVB SPR_CTL/Sprite Enable
> -- 
> 2.35.1
> 
