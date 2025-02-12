Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB900A3313F
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 22:06:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A5210E125;
	Wed, 12 Feb 2025 21:06:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AR/o23u0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5D010E0E4;
 Wed, 12 Feb 2025 21:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739394389; x=1770930389;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wUhViXhejG+q3KgI/tp7QAaDUuRbwfb7asyhAjAEiLA=;
 b=AR/o23u0AJumJS0io0tTv1eIMkmU0g1JsoCXCKI89a9VruaEj66b9F14
 QemDB63Q7IEJAfSlwqFp/MRU685SqFxw/IMSu3KR5lPKIZQdeMYHHE5sz
 H0/7hPmOTum3tt7VFislvKMBfbd5AnneSWLWBDohikYbHfk6j/g1UzkHl
 RaCS+P6nWG7ASop817SORQdofR+MNyuhzVLWEc4321Y9kns2sSRrCWp1z
 J019ztX74JUcb8p6UoGkk9bQHp42rQw1E7nL53x97aAH4QBFwu82v9HB6
 9jPHUDyCbhC0ZuoMqHsRS+TqmF1Ii2ACaqqPWuULpW8CyZ9yPKjkD2SnZ g==;
X-CSE-ConnectionGUID: 3uRZW5CDTZCOVXohK1DnPA==
X-CSE-MsgGUID: hUiDAKbRQQanvjzxtUKJHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="39936860"
X-IronPort-AV: E=Sophos;i="6.13,281,1732608000"; d="scan'208";a="39936860"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 13:06:28 -0800
X-CSE-ConnectionGUID: /GJ1DMkwSlC8YgsxT48xbA==
X-CSE-MsgGUID: sUSGjFQ3QpavQmhxq3MB/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,281,1732608000"; d="scan'208";a="113136097"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 13:06:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 23:06:24 +0200
Date: Wed, 12 Feb 2025 23:06:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 06/28] drm/i915/vrr: Fill VRR timing generator mode for
 CMRR and VRR
Message-ID: <Z60NUJ6z8lGoeSpt@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
 <20250203123840.3855874-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250203123840.3855874-7-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 03, 2025 at 06:08:18PM +0530, Ankit Nautiyal wrote:
> Fill vrr.mode during compute_config and update intel_vrr_get_config() to
> read vrr.mode based on CMRR and VRR enable conditions.

This vrr.mode thing still feels like a bit of a distraction at this
point in the series. If we canskip this stuff for now I think we
should be able to get this done more simply. 

The other thing that seems to complicate things is the attempt at doing
something to intel_crtc_update_active_timings(). I think it'll be
easier to just essentially pretend that things are running with the
legacy timing generator when using fixed refresh rate. That way 
we don't have to touch intel_crtc_update_active_timings() at all.

So basically just:
- add the vmin/vmax/flipline reprogramming to vrr_disable() and vrr_enable()
- make the timing generator enable/disable optional in those places
- add the stuff to the modeset sequence to program the initial
  timings (ie. fixed timings) and enable/disable the timing generator
- also update to the new fixed timings in intel_set_transcoder_timings_lrr()
- adjust readout to not set vrr.enable when vmax==vmin_flipline

I think that should work perfectly fine for adl+. icl/tgl will be
slightly wrong due to the weird extra scanline delay after
vactive, but I don't think we should really have to care about that
since we aren't going to enable this on those platforms anyway.

> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 5 +++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a6383ddde871..9cff080d4ff9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5803,6 +5803,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  
>  	if (!fastset) {
>  		PIPE_CONF_CHECK_BOOL(vrr.enable);
> +		PIPE_CONF_CHECK_X(vrr.mode);
>  		PIPE_CONF_CHECK_I(vrr.vmin);
>  		PIPE_CONF_CHECK_I(vrr.vmax);
>  		PIPE_CONF_CHECK_I(vrr.flipline);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 6f314e209e96..ded5466c5214 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -227,6 +227,7 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>  {
>  	crtc_state->vrr.enable = true;
>  	crtc_state->cmrr.enable = true;
> +	crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
>  	/*
>  	 * TODO: Compute precise target refresh rate to determine
>  	 * if video_mode_required should be true. Currently set to
> @@ -243,6 +244,7 @@ static
>  void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>  {
>  	crtc_state->vrr.enable = true;
> +	crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
>  	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  }
>  
> @@ -506,12 +508,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  
>  	if (HAS_CMRR(display) && trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) {
>  		crtc_state->cmrr.enable = true;
> +		crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
>  		crtc_state->cmrr.cmrr_n =
>  			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
>  					     TRANS_CMRR_N_HI(display, cpu_transcoder));
>  		crtc_state->cmrr.cmrr_m =
>  			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
>  					     TRANS_CMRR_M_HI(display, cpu_transcoder));
> +	} else if (trans_vrr_ctl & VRR_CTL_VRR_ENABLE) {
> +		crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
>  	}
>  
>  	if (DISPLAY_VER(display) >= 13)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
