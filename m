Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE16A46039
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C320810E90D;
	Wed, 26 Feb 2025 13:07:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SFDujDcO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A01AF10E90B;
 Wed, 26 Feb 2025 13:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740575267; x=1772111267;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wk6MtdFKK1+DM1Qz0TPl/hFOMUP77AG8OUK2PCqelWk=;
 b=SFDujDcOiMN5zqrf8//n3pudCv1Qr5k19JVOJVYPjvyFP7nuD/8pPUck
 aT36Jo7bHzke+bUB3BofR/nuH7gQEeDbTD5/JQZ9S1udEi+h8hAVI0OC8
 ir7+aqIVj7MEihSmuVHq8sPwIuJD+QtvF+EstboAJmzQsPptcpZ5Phwz0
 r3B60wyRdlxuFYZS5nXlH2B2LpNuDOX4IqihvKoZQY8uxde+L5hT1FXfR
 o//av0+/YhR3ivqx0E2bx/nFJBHDj3ZxZ5HAZKwmozAr+OFhJZzv3AE/i
 Cbv+JEUAyHl9GPPpGXyUXo/ORKunsnRAuVF1hC1nitM6VX4gMPZeP5OIg g==;
X-CSE-ConnectionGUID: 2fzWY8xgS46coPXel+zyAw==
X-CSE-MsgGUID: xUPUO2mYTViSUMYU7nfX6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52051496"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52051496"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:07:47 -0800
X-CSE-ConnectionGUID: +DvMBWBMQ++XVYa5GGnL6g==
X-CSE-MsgGUID: 6I2Fe7bNRdOUHV4yyLHbSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121947604"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 05:07:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 15:07:43 +0200
Date: Wed, 26 Feb 2025 15:07:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 03/20] drm/i915/vrr: Make helpers for cmrr and vrr timings
Message-ID: <Z78SH7h_wBtJ7YDJ@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-4-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:00AM +0530, Ankit Nautiyal wrote:
> Separate out functions for computing cmrr and vrr timings.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 45 +++++++++++++++---------
>  1 file changed, 28 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index a435b8d5b631..008a9c3e152d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -222,6 +222,30 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
>  	return vtotal;
>  }
>  
> +static
> +void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
> +{
> +	crtc_state->vrr.enable = true;
> +	crtc_state->cmrr.enable = true;
> +	/*
> +	 * TODO: Compute precise target refresh rate to determine
> +	 * if video_mode_required should be true. Currently set to
> +	 * false due to uncertainty about the precise target
> +	 * refresh Rate.
> +	 */
> +	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
> +	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> +	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> +	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +}
> +
> +static
> +void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
> +{
> +	crtc_state->vrr.enable = true;
> +	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +}

The name of that function is a bit misleading now, but I guess
it'll get more ppropriate once we get further along.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
>  static
>  int intel_vrr_compute_vmin(struct intel_connector *connector,
>  			   struct drm_display_mode *adjusted_mode)
> @@ -299,23 +323,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	 */
>  	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
>  
> -	if (crtc_state->uapi.vrr_enabled) {
> -		crtc_state->vrr.enable = true;
> -		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> -	} else if (is_cmrr_frac_required(crtc_state) && is_edp) {
> -		crtc_state->vrr.enable = true;
> -		crtc_state->cmrr.enable = true;
> -		/*
> -		 * TODO: Compute precise target refresh rate to determine
> -		 * if video_mode_required should be true. Currently set to
> -		 * false due to uncertainty about the precise target
> -		 * refresh Rate.
> -		 */
> -		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
> -		crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> -		crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> -		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> -	}
> +	if (crtc_state->uapi.vrr_enabled)
> +		intel_vrr_compute_vrr_timings(crtc_state);
> +	else if (is_cmrr_frac_required(crtc_state) && is_edp)
> +		intel_vrr_compute_cmrr_timings(crtc_state);
>  
>  	if (HAS_AS_SDP(display)) {
>  		crtc_state->vrr.vsync_start =
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
