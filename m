Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F11AA7179C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 14:35:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C3610E6C8;
	Wed, 26 Mar 2025 13:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nv+e+5pp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 479AE10E139;
 Wed, 26 Mar 2025 13:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742996135; x=1774532135;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gC7eo4vzb0YolEilD6kKv4wJGntmrKMi1i8DL2Ak3vs=;
 b=nv+e+5pphKDcLzo83TJQG0P5ufmg6qUjyCuUww4k9SB2PmUw14vB/kUr
 Hx4uWqmzaJfWXSlT/FoUI0eUhvfUsate2g9+26Pqz79PUBU4BOHZZBPOM
 AmDbE+jDtYtpldLIIWjlRy+isEO+sr3BB0yvPOW0rTyYUz+gRFdg0CqfC
 c6Vtn0CQE+ck8di1DAeDY3evpZ/FdUF2ZIYHmG+PWSiezy/LpGEBMUnoo
 3EXZbPgLdpPyljUcd5yivFJDoSgN3d7oKjpaSPdcIIs1GQK8SLnH7amqQ
 OF8sNsT7uOsKNehpiNUpx4MBK+cH/V5Y00gVr9mENE30vdKGkmaXJCUJm Q==;
X-CSE-ConnectionGUID: NP4Vbx9dRCaNUQbT4LmVlQ==
X-CSE-MsgGUID: l7u5bDGoQGW9Rsp1VidATg==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="55283525"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="55283525"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 06:35:14 -0700
X-CSE-ConnectionGUID: y4e5n/pyQgOOenn+X2XfSA==
X-CSE-MsgGUID: 7BNj3viZRJifaPIGdiAsTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="129961528"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 06:35:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 15:35:10 +0200
Date: Wed, 26 Mar 2025 15:35:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 2/2] drm/i915/display: Avoid use of VTOTAL.Vtotal bits
Message-ID: <Z-QCjqVlEpVVaJ3z@intel.com>
References: <20250326040538.504861-1-ankit.k.nautiyal@intel.com>
 <20250326040538.504861-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250326040538.504861-3-ankit.k.nautiyal@intel.com>
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

On Wed, Mar 26, 2025 at 09:35:38AM +0530, Ankit Nautiyal wrote:
> For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> bits are not required. Since the support for these bits is going to
> be deprecated in upcoming platforms, avoid writing these bits for the
> platforms that do not use legacy Timing Generator.
> 
> Since for these platforms TRAN_VMIN is always filled with crtc_vtotal,
> use TRAN_VRR_VMIN to get the vtotal for adjusted_mode.
> 
> v2: Avoid having a helper for manipulating VTOTAL register, and instead
> just make the change where required. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 41 ++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 15 +++++--
>  2 files changed, 50 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index bde53b2de70c..37e27dcfda05 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2639,6 +2639,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
> +	u32 vtotal_bits;
>  	int vsyncshift = 0;
>  
>  	drm_WARN_ON(display->drm, !transcoder_has_vrr(cpu_transcoder));
> @@ -2695,9 +2696,21 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>  		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>  
> +	/*
> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +	 * bits are not required. Since the support for these bits is going to
> +	 * be deprecated in upcoming platforms, avoid writing these bits for the
> +	 * platforms that do not use legacy Timing Generator.
> +	 */
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		vtotal_bits = 0;

I think just setting crtc_vtotal=1 here (like we do for crtc_vblank_start)
would take care of this without the need for extra variables.


> +	else
> +		vtotal_bits = VTOTAL(crtc_vtotal - 1);
> +
>  	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
> -		       VTOTAL(crtc_vtotal - 1));
> +		       vtotal_bits);
> +
>  	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
> @@ -2722,6 +2735,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
> +	u32 vtotal_bits;
>  
>  	drm_WARN_ON(display->drm, !transcoder_has_vrr(cpu_transcoder));
>  
> @@ -2755,13 +2769,24 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
> +	/*
> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +	 * bits are not required. Since the support for these bits is going to
> +	 * be deprecated in upcoming platforms, avoid writing these bits for the
> +	 * platforms that do not use legacy Timing Generator.
> +	 */
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		vtotal_bits = 0;
> +	else
> +		vtotal_bits = VTOTAL(crtc_vtotal - 1);
> +
>  	/*
>  	 * The double buffer latch point for TRANS_VTOTAL
>  	 * is the transcoder's undelayed vblank.
>  	 */
>  	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
> -		       VTOTAL(crtc_vtotal - 1));
> +		       vtotal_bits);
>  
>  	intel_vrr_set_fixed_rr_timings(crtc_state);
>  	intel_vrr_transcoder_enable(crtc_state);
> @@ -2824,7 +2849,17 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  
>  	tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
>  	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
> -	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
> +
> +	/*
> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +	 * bits are not filled. The value for adjusted_mode->crtc_vtotal is read
> +	 * from VRR_VMIN register in intel_vrr_get_config.
> +	 * Just set this to 0 here.
> +	 */
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		adjusted_mode->crtc_vtotal = 0;
> +	else
> +		adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
>  
>  	/* FIXME TGL+ DSI transcoders have this! */
>  	if (!transcoder_is_dsi(cpu_transcoder)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 414f93851059..cace1d7c99d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -674,9 +674,19 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	u32 trans_vrr_ctl, trans_vrr_vsync;
> +	u32 trans_vrr_ctl, trans_vrr_vsync, trans_vrr_vmin;
>  	bool vrr_enable;
>  
> +	/*
> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +	 * bits are not filled. Since for these platforms TRAN_VMIN is always
> +	 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
> +	 * adjusted_mode.
> +	 */
> +	trans_vrr_vmin = intel_de_read(display, TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		crtc_state->hw.adjusted_mode.crtc_vtotal = trans_vrr_vmin;

I think this should rather use intel_vrr_vmin_vtotal(), and for
reason it needs to be near the end so thaI guess for that
reason it has to be done after the actual vmin readout.

> +
>  	trans_vrr_ctl = intel_de_read(display,
>  				      TRANS_VRR_CTL(display, cpu_transcoder));
>  
> @@ -705,8 +715,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
>  		crtc_state->vrr.vmax = intel_de_read(display,
>  						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
> -		crtc_state->vrr.vmin = intel_de_read(display,
> -						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
> +		crtc_state->vrr.vmin = trans_vrr_vmin;
>  
>  		if (HAS_AS_SDP(display)) {
>  			trans_vrr_vsync =
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
