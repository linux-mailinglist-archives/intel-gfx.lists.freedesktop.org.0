Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA00B969EF9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 15:25:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E7F510E5AA;
	Tue,  3 Sep 2024 13:25:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ATyZd7Mn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 051FD10E5AA
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725369934; x=1756905934;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=M4S9HLYA5PrVYHPFXBVVDFh+R7WGgIcb+Mqt8LM7Fjo=;
 b=ATyZd7Mn94DDKS3EhB8VkYNdq4K2219IGFAVftCK4jTpcsbvZYXlbiBD
 IlZNN50tlCuvctKoRhIyblJkl+xPcgw9+ER80FKWaR7Xc39C6cT5gyC2v
 J6mE0Txx276O5jJVWC4ukQ7xiqdS+xqBp8bO7E+Rw2KT3/cyzaqpfSd1U
 Kcap6qKllCL/5/vdJVvDLjbQZFdM/JWDZo37IDulZINLUXEWc13vSip/E
 +sC6IlSrGiRer0Yt/vAVS70BSZSYfbGJtpB1Pxnwwp+XF7QNatzQSwwCs
 65PrLarcmQt6sNNdpdlbPZQLnBF9N4I+F+ZjpeKlhXZ6fQeS33PZVkkqy g==;
X-CSE-ConnectionGUID: /rANmb8wTEWBDgUZYOSJDQ==
X-CSE-MsgGUID: e+L+VIhoTd29WRZ5rjWM2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23842642"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="23842642"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 06:25:33 -0700
X-CSE-ConnectionGUID: Rw8+dK5lQm2sPvQ8fgf6og==
X-CSE-MsgGUID: jriYrLLgSWWSofIrb8EIpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="64926932"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Sep 2024 06:25:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Sep 2024 16:25:30 +0300
Date: Tue, 3 Sep 2024 16:25:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 12/13] drm/i915/vrr: Always use VRR timing generator for
 XELPD+
Message-ID: <ZtcOSkceU1iuaATL@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
 <20240902080635.2946858-13-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240902080635.2946858-13-ankit.k.nautiyal@intel.com>
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

On Mon, Sep 02, 2024 at 01:36:33PM +0530, Ankit Nautiyal wrote:
> Currently VRR timing generator is used only when VRR is enabled by
> userspace. From XELPD+, gradually move away from older timing
> generator and use VRR timing generator for fixed refresh rate also.
> In such a case, Flipline VMin and VMax all are set to the Vtotal of the
> mode, which effectively makes the VRR timing generator work in
> fixed refresh rate mode.
> 
> v2: Use VRR Timing Generator from XELPD+ instead of MTL as it needs
> Wa_14015406119.
> v3: Set vrr.fixed during vrr_get_config (Mitul)
> v4: Avoid setting vrr.fixed when vrr.cmrr is enabled.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 61 +++++++++++++++---------
>  1 file changed, 39 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index e01d4b4b8fa7..625728aff5a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -172,41 +172,54 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		return;
>  
> -	crtc_state->vrr.in_range =
> -		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
> -	if (!crtc_state->vrr.in_range)
> -		return;
> -
>  	if (HAS_LRR(display))
>  		crtc_state->update_lrr = true;

We aren't supposed to do a LRR update unless the refresh rates are
within the VRR range. So this needs to be moved as well.

>  
> -	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> -			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
> -	vmax = adjusted_mode->crtc_clock * 1000 /
> -		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
> +	if (!crtc_state->uapi.vrr_enabled && DISPLAY_VER(display) >= 20) {
> +		/*
> +		 * for XELPD+ always go for VRR timing generator even for
> +		 * fixed refresh rate.
> +		 */
> +		crtc_state->vrr.vmin = adjusted_mode->crtc_vtotal;
> +		crtc_state->vrr.vmax = adjusted_mode->crtc_vtotal;
> +		crtc_state->vrr.flipline = adjusted_mode->crtc_vtotal;

Has the "flipline can't be below vmin+1" issue been changed in the hardware?

> +		crtc_state->vrr.fixed_rr = true;
> +	} else {
> +		crtc_state->vrr.in_range =
> +			intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
>  
> -	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
> -	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
> +		if (!crtc_state->vrr.in_range)
> +			return;
>  
> -	if (vmin >= vmax)
> -		return;
> +		vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> +				    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
> +		vmax = adjusted_mode->crtc_clock * 1000 /
> +			(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
>  
> -	/*
> -	 * flipline determines the min vblank length the hardware will
> -	 * generate, and flipline>=vmin+1, hence we reduce vmin by one
> -	 * to make sure we can get the actual min vblank length.
> -	 */
> -	crtc_state->vrr.vmin = vmin - 1;
> -	crtc_state->vrr.vmax = vmax;
> +		vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
> +		vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
> +
> +		if (vmin >= vmax)
> +			return;
> +
> +		/*
> +		 * flipline determines the min vblank length the hardware will
> +		 * generate, and flipline>=vmin+1, hence we reduce vmin by one
> +		 * to make sure we can get the actual min vblank length.
> +		 */
> +		crtc_state->vrr.vmin = vmin - 1;
> +		crtc_state->vrr.vmax = vmax;
>  
> -	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
> +		crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
> +		crtc_state->vrr.fixed_rr = false;
> +	}
>  
>  	/*
>  	 * When panel is VRR capable and userspace has
>  	 * not enabled adaptive sync mode then Fixed Average
>  	 * Vtotal mode should be enabled.
>  	 */
> -	if (crtc_state->uapi.vrr_enabled) {
> +	if (crtc_state->uapi.vrr_enabled || crtc_state->vrr.fixed_rr) {
>  		crtc_state->vrr.enable = true;
>  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;

Hmm. This is now a bit of a mess. We need to come up with a sane way to
deal with the vblank timestamping code. Dunno if we want to make it so
that we'd always use VRR timings or the non-VRR timings. Should be
identical from HW POV so technically might not matter, apart from the
software state tracking POV. And from that angle it seems to me that
for the dynamic fixed vs. variable swithcing we might want to keep the
code using the non-VRR timings for fixed refresh rate.

There seems to other stuff amiss still:
- We don't enable/disable the VRR timings generator early/late
  in the modeset sequence?
- How do we atomically switch between the fixed vs. variable
  timings since we can't temporarily disable the VRR timing generator?

>  	} else if (is_cmrr_frac_required(crtc_state) && is_edp) {
> @@ -421,6 +434,10 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
>  		crtc_state->vrr.vmin = intel_de_read(display,
>  						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
> +		if (!crtc_state->cmrr.enable &&
> +		    crtc_state->vrr.vmax == crtc_state->vrr.flipline &&
> +		    crtc_state->vrr.vmin == crtc_state->vrr.flipline)
> +			crtc_state->vrr.fixed_rr = true;
>  	}
>  
>  	if (crtc_state->vrr.enable) {
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
