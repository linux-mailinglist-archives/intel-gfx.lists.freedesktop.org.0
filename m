Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D23A46075
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:13:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 920D410E90E;
	Wed, 26 Feb 2025 13:13:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZrNws97y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A730110E90E;
 Wed, 26 Feb 2025 13:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740575605; x=1772111605;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cAVmhhWhtZQ71b46MHtZPf0cckznGrnjjaZKrvmdcbo=;
 b=ZrNws97ylFPZaLZ9ZuNW2YYUqYeItwSmIxITPXKChB9eW04/Mq9F4J2W
 LDq8zfkr0e62rdKZH1KTjZAARjChwvVSYlQQHJtdIq/nEkbe/sNWBILrA
 kebPK+5oArmt5jD/awTRpmAEcg1dxbEr31PThz/73jhZGgPFQNYA2f3aY
 iGtWuYF8nuTyci4XVDL+Ft0Z5mNQeggc/DlkRWbBKS7oglFya1D35YnHd
 NXdjZG5hfXR+wkKDzKpM3m/yEsucysoGfvgVpId0HaFT2ZVytqmkht/hE
 ynzO2wlXK4S0weDxwiKxEwIRCs3MvjLjW7qlv7ujhK0IFfAVzqCfWNvQn A==;
X-CSE-ConnectionGUID: Oxk/RVXuQKKIduKNadCipA==
X-CSE-MsgGUID: 5WN3enKDRLCvBya34r8IOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52052684"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52052684"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:13:24 -0800
X-CSE-ConnectionGUID: QivU5/L/SJ+SANJZoidARw==
X-CSE-MsgGUID: RSAnyH6SQ+KViVPOzBX4Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121948557"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 05:13:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 15:13:19 +0200
Date: Wed, 26 Feb 2025 15:13:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 07/20] drm/i915/vrr: Prepare for fixed refresh rate timings
Message-ID: <Z78Tb0VoSiMiDXRY@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-8-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:04AM +0530, Ankit Nautiyal wrote:
> Currently we always compute the timings as if vrr is enabled.
> With this approach the state checker becomes complicated when we
> introduce fixed refresh rate mode with vrr timing generator.
> 
> To avoid the complications, instead of always computing vrr timings, we
> compute vrr timings based on uapi.vrr_enable knob.
> So when the knob is disabled we always compute vmin=flipline=vmax.
> 
> v2: Use actual timings without any adjustments while preparing for
> fixed timings in compute_config. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 70 ++++++++++++++++++++++++
>  1 file changed, 70 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b6120ff1a87c..45efcb57c77a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -246,6 +246,65 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>  	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  }
>  
> +/*
> + * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
> + * Vtotal value.
> + */
> +static
> +int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
> +
> +	if (DISPLAY_VER(display) >= 13)
> +		return crtc_vtotal;
> +	else
> +		return crtc_vtotal -
> +			intel_vrr_real_vblank_delay(crtc_state);
> +}
> +
> +static
> +int intel_vrr_fixed_rr_vmax(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_vrr_fixed_rr_vtotal(crtc_state);
> +}
> +
> +static
> +int intel_vrr_fixed_rr_vmin(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	return intel_vrr_fixed_rr_vtotal(crtc_state) -
> +		intel_vrr_flipline_offset(display);
> +}
> +
> +static
> +int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_vrr_fixed_rr_vtotal(crtc_state);
> +}
> +
> +static
> +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> +		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
> +	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> +		       intel_vrr_fixed_rr_vmax(crtc_state) - 1);
> +	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> +		       intel_vrr_fixed_rr_flipline(crtc_state) - 1);
> +}
> +
> +static
> +void intel_vrr_prepare_fixed_timings(struct intel_crtc_state *crtc_state)
> +{
> +	crtc_state->vrr.vmax = intel_vrr_vmin_flipline(crtc_state);
> +	crtc_state->vrr.flipline = intel_vrr_vmin_flipline(crtc_state);
> +}
> +
>  static
>  int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
>  {
> @@ -326,6 +385,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  		intel_vrr_compute_vrr_timings(crtc_state);
>  	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>  		intel_vrr_compute_cmrr_timings(crtc_state);
> +	else
> +		intel_vrr_prepare_fixed_timings(crtc_state);
>  
>  	if (HAS_AS_SDP(display)) {
>  		crtc_state->vrr.vsync_start =
> @@ -497,6 +558,13 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> +	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> +		       crtc_state->vrr.vmin - 1);
> +	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> +		       crtc_state->vrr.vmax - 1);
> +	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> +		       crtc_state->vrr.flipline - 1);
> +
>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>  		       TRANS_PUSH_EN);
>  
> @@ -524,6 +592,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  				TRANS_VRR_STATUS(display, cpu_transcoder),
>  				VRR_STATUS_VRR_EN_LIVE, 1000);
>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +
> +	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>  }
>  
>  static
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
