Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEE9AC6897
	for <lists+intel-gfx@lfdr.de>; Wed, 28 May 2025 13:47:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B397C10E5EC;
	Wed, 28 May 2025 11:47:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JKGAeIit";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F83310E57E;
 Wed, 28 May 2025 11:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748432850; x=1779968850;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5Oie+BucTWeiUmVXPCzcVJtoBQpmQeJdlF0gYn7P7F8=;
 b=JKGAeIitY713FAvCt+NpiWCTcixxFjOc7VinZCZ0CnqzRyvWbe0xWKTA
 Jpl8tG/XogUV68fXdGYlac6aZIJW6Bzl/q3Mj37GIuQWqk94dQf6xWOnR
 HOgRFykFqd0wAB9sNJKl3hyXk2bvczgxoZTiNcQdA3fhMzVMTw4AXJPgl
 /tUQUj+MKw0egmCzFbxmGmzlqCj/v4nLUuw9TFhO3ES9j0qZVZ1oLBD9H
 Gn17PKqFTXaDhG4Xx3AtVj4QN24cJq5OPBNshVHJxwIjdRLP96LBV0DsP
 lp4XLJdRXsBtf/caFJXQSFWiuvn7kKQHkGWQpvZe+OoaH3gPvY62hfmT3 w==;
X-CSE-ConnectionGUID: MmGsZ9quQRCV863aC3fDUg==
X-CSE-MsgGUID: IHKJZnqYRnyhSogn0klvyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="50450906"
X-IronPort-AV: E=Sophos;i="6.15,321,1739865600"; d="scan'208";a="50450906"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 04:47:28 -0700
X-CSE-ConnectionGUID: ja/bmrLcSWaijHMSwK3ocw==
X-CSE-MsgGUID: XM3WFfw7TIaRfFbDDVU5vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,321,1739865600"; d="scan'208";a="148505026"
Received: from abityuts-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.32])
 by orviesa005.jf.intel.com with SMTP; 28 May 2025 04:47:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 May 2025 14:47:25 +0300
Date: Wed, 28 May 2025 14:47:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/vrr: Set vrr.vmin to min Vtotal to re-enable
 LRR for PTL
Message-ID: <aDb3zdphjZ15amZR@intel.com>
References: <20250509031107.958280-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250509031107.958280-1-ankit.k.nautiyal@intel.com>
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

On Fri, May 09, 2025 at 08:41:07AM +0530, Ankit Nautiyal wrote:
> Currently in intel_vrr_compute_config, we set vrr.vmin to crtc_vtotal for
> all cases to avoid having vrr.vmin changed when we switch from
> fixed refresh rate timings to variable refresh rate timings. This works for
> all cases, except for LRR case where user can change the clock so as to
> seamlessly switch to a lower refresh rate only for a VRR supporting panel.
> 
> In LRR case the crtc_vtotal changes for the mode, and due to which vrr.vmin
> changes and therefore the guardband also changes. Since we cannot change
> the guardband on the fly when VRR Timing Generator is on, this gets
> rejected.
> 
> To overcome this, for panels that support VRR, instead of setting the
> vrr.vmin to crtc_vtotal, we set that to the lowest Vtotal (for highest
> Refresh rate supported by the panel). For non-vrr panels, the vrr.vmin
> stays the same i.e. crtc_vtotal.

The guardband must match the actual vblank length or else we'll end
up completely changing where the double buffered registers get
latched/vblank interrupts are generated. And nothing is prepared
for that.

> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 64 ++++++++++++++++--------
>  1 file changed, 42 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index c6565baf815a..f0949a598f53 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -278,6 +278,9 @@ int intel_vrr_fixed_rr_vmin(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  
> +	if (crtc_state->vrr.in_range)
> +		return crtc_state->vrr.vmin;
> +
>  	return intel_vrr_fixed_rr_vtotal(crtc_state) -
>  		intel_vrr_flipline_offset(display);
>  }
> @@ -308,26 +311,37 @@ static
>  void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
>  {
>  	/*
> -	 * For fixed rr,  vmin = vmax = flipline.
> -	 * vmin is already set to crtc_vtotal set vmax and flipline the same.
> +	 * For fixed rr vmax = flipline.
> +	 * set vmax and flipline same as vtotal.
>  	 */
>  	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
>  	crtc_state->vrr.flipline = crtc_state->hw.adjusted_mode.crtc_vtotal;
>  }
>  
>  static
> -int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
> +int intel_vrr_compute_fixed_vmin(struct intel_crtc_state *crtc_state)
>  {
>  	/*
> -	 * To make fixed rr and vrr work seamless the guardband/pipeline full
> -	 * should be set such that it satisfies both the fixed and variable
> -	 * timings.
> -	 * For this set the vmin as crtc_vtotal. With this we never need to
> -	 * change anything to do with the guardband.
> +	 * For non VRR supporting panels/config, set the vmin to crtc_vtotal.
> +	 * This will help the case where VRR TG is used even for non-vrr panels/config.
>  	 */
>  	return crtc_state->hw.adjusted_mode.crtc_vtotal;
>  }
>  
> +static
> +int intel_vrr_compute_vmin(struct intel_connector *connector,
> +			   const struct drm_display_mode *adjusted_mode)
> +{
> +	const struct drm_display_info *info = &connector->base.display_info;
> +	int vmin;
> +
> +	vmin = adjusted_mode->crtc_clock * 1000 /
> +		(adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
> +	vmin = min_t(int, vmin, adjusted_mode->crtc_vtotal);
> +
> +	return vmin;
> +}
> +
>  static
>  int intel_vrr_compute_vmax(struct intel_connector *connector,
>  			   const struct drm_display_mode *adjusted_mode)
> @@ -374,13 +388,13 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	if (crtc_state->joiner_pipes)
>  		crtc_state->vrr.in_range = false;
>  
> -	vmin = intel_vrr_compute_vmin(crtc_state);
> -
>  	if (crtc_state->vrr.in_range) {
>  		if (HAS_LRR(display))
>  			crtc_state->update_lrr = true;
>  		vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
> +		vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
>  	} else {
> +		vmin = intel_vrr_compute_fixed_vmin(crtc_state);
>  		vmax = vmin;
>  	}
>  
> @@ -671,8 +685,7 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>  bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>  {
>  	return crtc_state->vrr.flipline &&
> -	       crtc_state->vrr.flipline == crtc_state->vrr.vmax &&
> -	       crtc_state->vrr.flipline == intel_vrr_vmin_flipline(crtc_state);
> +	       crtc_state->vrr.flipline == crtc_state->vrr.vmax;
>  }
>  
>  void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> @@ -713,16 +726,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  		crtc_state->vrr.vmin = intel_de_read(display,
>  						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>  
> -		/*
> -		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> -		 * bits are not filled. Since for these platforms TRAN_VMIN is always
> -		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
> -		 * adjusted_mode.
> -		 */
> -		if (intel_vrr_always_use_vrr_tg(display))
> -			crtc_state->hw.adjusted_mode.crtc_vtotal =
> -				intel_vrr_vmin_vtotal(crtc_state);
> -
>  		if (HAS_AS_SDP(display)) {
>  			trans_vrr_vsync =
>  				intel_de_read(display,
> @@ -732,6 +735,23 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  			crtc_state->vrr.vsync_end =
>  				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
>  		}
> +		/*
> +		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +		 * bits are not filled. For fixed timings the vmax vtotal can be used to
> +		 * fill the VTOTAL. For variable timings, we need to compute the vtotal.
> +		 */
> +		if (intel_vrr_always_use_vrr_tg(display)) {
> +			u32 crtc_vtotal;
> +
> +			if (intel_vrr_is_fixed_rr(crtc_state))
> +				crtc_vtotal = intel_vrr_vmax_vtotal(crtc_state);
> +			else
> +				crtc_vtotal = intel_vrr_vmin_vtotal(crtc_state) +
> +					      crtc_state->vrr.guardband +
> +					      crtc_state->vrr.vsync_start +
> +					      crtc_state->vrr.vsync_end + 1;

This looks like nonsense to me. No idea what you're trying to do here.

> +			crtc_state->hw.adjusted_mode.crtc_vtotal = crtc_vtotal;
> +		}
>  	}
>  
>  	vrr_enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
