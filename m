Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7C6A38B11
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 19:09:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D39610E596;
	Mon, 17 Feb 2025 18:08:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TCTm4iEK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E3F610E595;
 Mon, 17 Feb 2025 18:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739815737; x=1771351737;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XRujir9PAo2N/fl02B21mtBCvLoOGWauttdYB08YMM8=;
 b=TCTm4iEKnvIqeJMP/+bEoTHTk77frVHk5p+4w+lEQAQiMfkmcfnMfwgQ
 BBDezVdO9YTW5cMzYK0Bto5KmTRXfVCHwMw/oPK1dnNKv+FbpFpj+zs36
 aJBdVa8e3IUPpYlw6IpkRJlgVpOk+Q0xNNCtR6/YSaAT5G6Uc3TFlb/ZY
 L5Q5Rxw9cvE+V6UfzAzgyS7HJhJXsmCPM1fQune68tr69UPb3gDPnpP5d
 EToR0YscTNUQgOF7xV/zpI4VpTcnJMOHDikRo+FltiIPzIdpOQgobrksj
 2HPyQ1DTImnMJT5zAIRBnPPsTCYkcESJ9EWHg5TaY+/oL3tHTnqoAY4TK Q==;
X-CSE-ConnectionGUID: 9BsHc7UcRaqKi0701q5kTg==
X-CSE-MsgGUID: ZWzhjvYDRDuAZ1pXlM+Nng==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="57906935"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="57906935"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 10:08:56 -0800
X-CSE-ConnectionGUID: 1AoIN/IpTAyyxd31ZgloaQ==
X-CSE-MsgGUID: L6InR+S+QBOv+jr+pAEUIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114382455"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Feb 2025 10:08:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 20:08:52 +0200
Date: Mon, 17 Feb 2025 20:08:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 06/19] drm/i915/vrr: Use crtc_vtotal for vmin
Message-ID: <Z7N7NHKqNrHpSH4g@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250214121130.1808451-7-ankit.k.nautiyal@intel.com>
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

On Fri, Feb 14, 2025 at 05:41:16PM +0530, Ankit Nautiyal wrote:
> To have fixed refresh rate with VRR timing generator the
> guardband/pipeline full can't be programmed on the fly. So we need to
> ensure that the values satisfy both the fixed and variable refresh
> rates.
> 
> Since we compute these value based on vmin, lets set the vmin to
> crtc_vtotal for both fixed and variable timings instead of using the
> current refresh rate based approach. This way the guardband remains
> sufficient for both cases.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 34 +++++++++++++++++-------
>  1 file changed, 25 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index efa2aa284285..3bcf2a026ad3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -246,18 +246,34 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>  	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  }
>  
> +/*
> + * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
> + * Vtotal value.
> + */
>  static
> -int intel_vrr_compute_vmin(struct intel_connector *connector,
> -			   struct drm_display_mode *adjusted_mode)
> +int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
>  {
> -	int vmin;
> -	const struct drm_display_info *info = &connector->base.display_info;
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
>  
> -	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> -			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
> -	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
> +	if (DISPLAY_VER(display) >= 13)
> +		return crtc_vtotal;
> +	else
> +		return crtc_vtotal -
> +			intel_vrr_real_vblank_delay(crtc_state);
> +}
>  
> -	return vmin;
> +static
> +int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
> +{
> +	/*
> +	 * To make fixed rr and vrr work seamless the guardband/pipeline full
> +	 * should be set such that it satisfies both the fixed and variable
> +	 * timings.
> +	 * For this set the vmin as crtc_vtotal. With this we never need to
> +	 * change anything to do with the guardband.
> +	 */
> +	return intel_vrr_fixed_rr_vtotal(crtc_state);

We don't have the vblank delay dialed in at this point. So this
needs to be just the normal vtotal wihtout any adjustments.

>  }
>  
>  static
> @@ -305,7 +321,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	if (HAS_LRR(display))
>  		crtc_state->update_lrr = true;
>  
> -	vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
> +	vmin = intel_vrr_compute_vmin(crtc_state);
>  	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
>  
>  	if (vmin >= vmax)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
