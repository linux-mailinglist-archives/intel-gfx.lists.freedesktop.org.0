Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iB2pKV+Yy2mYJQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 11:48:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB63367521
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 11:48:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4BB10E29D;
	Tue, 31 Mar 2026 09:48:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hpD8UyLN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 298AD10E29D;
 Tue, 31 Mar 2026 09:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774950492; x=1806486492;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Thr3fBuFUevzQGZm8ctnVcohTkoiA9EbvZmTYaXqvxI=;
 b=hpD8UyLNYqoVhZDvME1yp5ZLlU0rOZPG5RIFGd646YU9Nt6vLE9pDSwX
 VYkbJTly7zNQ44nR4fcKU6aJyrXoht+jXopQCUMwoN09TmcoEOPWtJ2Pc
 rrKyo+0TvCgyz+Tq65FI+h6n9wLcpTItKfMTPSIs4glz+y225c5DHUZGV
 n53p1RuVqsWaySb1JkzaqPknc2W8r7phmT+Zb5tso8egkDU3/aRzDHPqp
 tdf/26A5YMTX4M898wXrXZ6zRG8niaUMTDUFYAW12fBQwJCmQQs/Hd2KG
 KGsfynv9/OrGKsS2a8UhyL43RIRUKsy4duO7sPITKKQLuCVZAMrPifZ/J w==;
X-CSE-ConnectionGUID: 1HCDLtvdQOKWey8+cFOoaQ==
X-CSE-MsgGUID: vH3RUIdTT4yAW4NSVwj7MA==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="78550668"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="78550668"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 02:48:11 -0700
X-CSE-ConnectionGUID: bOSPu/UUQgSBnQivu8Q9pA==
X-CSE-MsgGUID: xO4T7tiGQaqAXon91+s3fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="221916909"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 02:48:10 -0700
Date: Tue, 31 Mar 2026 12:48:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH 9/9] drm/i915/casf: Integrate the sharpness filter
 properly into the scaler code
Message-ID: <acuYVhpNeDzvHJ7e@intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
 <20260326223139.19116-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260326223139.19116-10-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.78 / 15.00];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: ECB63367521
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 12:31:39AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The sharpness filter is just a special mode of the pipe scaler.
> It doesn't warrant all this special casing everywhere. Just
> integrate it properly into the scaler code so that it's treated
> no different from the other pipe scaler uses (scaling,centering,
> YCbCr 4:2:0 output).
> 
> Cc: Nemesa Garg <nemesa.garg@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_casf.c    | 62 ++------------
>  drivers/gpu/drm/i915/display/intel_casf.h    |  6 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 34 +-------
>  drivers/gpu/drm/i915/display/intel_pfit.c    | 13 ++-
>  drivers/gpu/drm/i915/display/skl_scaler.c    | 85 ++++++++------------
>  drivers/gpu/drm/i915/display/skl_scaler.h    |  2 -
>  6 files changed, 53 insertions(+), 149 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> index 21e84a4f9ff5..c2d2746c5f04 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -75,20 +75,6 @@ static void intel_casf_filter_lut_load(const struct intel_crtc_state *crtc_state
>  			       sharpness_lut[i]);
>  }
>  
> -void intel_casf_update_strength(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_display *display = to_intel_display(crtc_state);
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	int win_size;
> -
> -	intel_de_rmw(display, SHARPNESS_CTL(crtc->pipe), FILTER_STRENGTH_MASK,
> -		     FILTER_STRENGTH(crtc_state->pch_pfit.casf.strength));
> -
> -	win_size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, 1));
> -
> -	intel_de_write_fw(display, SKL_PS_WIN_SZ(crtc->pipe, 1), win_size);
> -}
> -
>  static void intel_casf_compute_win_size(struct intel_crtc_state *crtc_state)
>  {
>  	const struct drm_display_mode *mode = &crtc_state->hw.adjusted_mode;
> @@ -102,19 +88,15 @@ static void intel_casf_compute_win_size(struct intel_crtc_state *crtc_state)
>  		crtc_state->pch_pfit.casf.win_size = SHARPNESS_FILTER_SIZE_7X7;
>  }
>  
> +static void intel_casf_scaler_compute_coef(struct intel_crtc_state *crtc_state);
> +
>  int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  
> -	if (!HAS_CASF(display))
> +	if (crtc_state->hw.sharpness_strength == 0)
>  		return 0;
>  
> -	if (crtc_state->hw.sharpness_strength == 0) {
> -		crtc_state->pch_pfit.casf.enable = false;
> -		crtc_state->pch_pfit.casf.strength = 0;
> -		return 0;
> -	}
> -
>  	/* CASF with joiner not supported in hardware */
>  	if (crtc_state->joiner_pipes) {
>  		drm_dbg_kms(display->drm, "CASF not supported with joiner\n");
> @@ -136,7 +118,7 @@ int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
>  
>  	intel_casf_compute_win_size(crtc_state);
>  
> -	intel_casf_scaler_compute_config(crtc_state);
> +	intel_casf_scaler_compute_coef(crtc_state);
>  
>  	return 0;
>  }
> @@ -161,14 +143,6 @@ void intel_casf_sharpness_get_config(struct intel_crtc_state *crtc_state)
>  	}
>  }
>  
> -bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state)
> -{
> -	if (crtc_state->pch_pfit.casf.enable)
> -		return true;
> -
> -	return false;
> -}
> -
>  static int casf_coeff_tap(int i)
>  {
>  	return i % SCALER_FILTER_NUM_TAPS;
> @@ -240,7 +214,7 @@ static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
>  	}
>  }
>  
> -void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
> +static void intel_casf_scaler_compute_coef(struct intel_crtc_state *crtc_state)
>  {
>  	const u16 *filtercoeff;
>  	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
> @@ -264,32 +238,8 @@ void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
>  	}
>  }
>  
> -void intel_casf_enable(const struct intel_crtc_state *crtc_state)
> +void intel_casf_setup(const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_display *display = to_intel_display(crtc_state);
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	u32 sharpness_ctl;
> -
>  	intel_casf_filter_lut_load(crtc_state);
> -
>  	intel_casf_write_coeff(crtc_state);
> -
> -	sharpness_ctl = FILTER_EN | FILTER_STRENGTH(crtc_state->pch_pfit.casf.strength);
> -
> -	sharpness_ctl |= crtc_state->pch_pfit.casf.win_size;
> -
> -	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), sharpness_ctl);
> -
> -	skl_scaler_setup_casf(crtc_state);
> -}
> -
> -void intel_casf_disable(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_display *display = to_intel_display(crtc_state);
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -
> -	intel_de_write(display, SKL_PS_CTRL(crtc->pipe, 1), 0);
> -	intel_de_write(display, SKL_PS_WIN_POS(crtc->pipe, 1), 0);
> -	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), 0);
> -	intel_de_write(display, SKL_PS_WIN_SZ(crtc->pipe, 1), 0);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
> index c4f984b73348..3ebb7522af0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.h
> +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> @@ -11,11 +11,7 @@
>  struct intel_crtc_state;
>  
>  int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
> -void intel_casf_update_strength(const struct intel_crtc_state *new_crtc_state);
>  void intel_casf_sharpness_get_config(struct intel_crtc_state *crtc_state);
> -void intel_casf_enable(const struct intel_crtc_state *crtc_state);
> -void intel_casf_disable(const struct intel_crtc_state *crtc_state);
> -void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
> -bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state);
> +void intel_casf_setup(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_CASF_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e02e69467871..58a654ca0d20 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -58,7 +58,6 @@
>  #include "intel_audio.h"
>  #include "intel_bo.h"
>  #include "intel_bw.h"
> -#include "intel_casf.h"
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
>  #include "intel_color.h"
> @@ -988,24 +987,6 @@ static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
>  		 memcmp(old_crtc_state->eld, new_crtc_state->eld, MAX_ELD_BYTES) != 0);
>  }
>  
> -static bool intel_casf_enabling(const struct intel_crtc_state *new_crtc_state,
> -				const struct intel_crtc_state *old_crtc_state)
> -{
> -	if (!new_crtc_state->hw.active)
> -		return false;
> -
> -	return is_enabling(pch_pfit.casf.enable, old_crtc_state, new_crtc_state);
> -}
> -
> -static bool intel_casf_disabling(const struct intel_crtc_state *old_crtc_state,
> -				 const struct intel_crtc_state *new_crtc_state)
> -{
> -	if (!new_crtc_state->hw.active)
> -		return false;
> -
> -	return is_disabling(pch_pfit.casf.enable, old_crtc_state, new_crtc_state);
> -}
> -
>  static bool intel_crtc_lobf_enabling(const struct intel_crtc_state *old_crtc_state,
>  				     const struct intel_crtc_state *new_crtc_state)
>  {
> @@ -1187,9 +1168,6 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  	if (audio_disabling(old_crtc_state, new_crtc_state))
>  		intel_encoders_audio_disable(state, crtc);
>  
> -	if (intel_casf_disabling(old_crtc_state, new_crtc_state))
> -		intel_casf_disable(new_crtc_state);
> -
>  	intel_drrs_deactivate(old_crtc_state);
>  
>  	if (hsw_ips_pre_update(state, crtc))
> @@ -4308,14 +4286,9 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  		return ret;
>  	}
>  
> -	ret = intel_casf_compute_config(crtc_state);
> -	if (ret)
> -		return ret;
> -
>  	if (DISPLAY_VER(display) >= 9) {
>  		if (intel_crtc_needs_modeset(crtc_state) ||
> -		    intel_crtc_needs_fastset(crtc_state) ||
> -		    intel_casf_needs_scaler(crtc_state)) {
> +		    intel_crtc_needs_fastset(crtc_state)) {
>  			ret = skl_update_scaler_crtc(crtc_state);
>  			if (ret)
>  				return ret;
> @@ -6817,11 +6790,6 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
>  			intel_vrr_set_transcoder_timings(new_crtc_state);
>  	}
>  
> -	if (intel_casf_enabling(new_crtc_state, old_crtc_state))
> -		intel_casf_enable(new_crtc_state);
> -	else if (new_crtc_state->pch_pfit.casf.strength != old_crtc_state->pch_pfit.casf.strength)
> -		intel_casf_update_strength(new_crtc_state);
> -
>  	intel_fbc_update(state, crtc);
>  
>  	drm_WARN_ON(display->drm, !intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF));
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> index 6dda496190e0..e04ca960f115 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> @@ -186,6 +186,7 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
> @@ -195,7 +196,8 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  	/* Native modes don't need fitting */
>  	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
>  	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
> -	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
> +	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420 &&
> +	    crtc_state->hw.sharpness_strength == 0)
>  		return 0;
>  
>  	switch (conn_state->scaling_mode) {
> @@ -249,6 +251,15 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  		return -EINVAL;
>  	}
>  
> +	if (crtc_state->hw.sharpness_strength &&
> +	    (width != pipe_src_w || height != pipe_src_h ||
> +	     crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)) {

We should probably also reject
 sharpness_strength != 0 && scaling_filter != DEFAULT

I suppose it's not strictly needed because we only allow sharpness
with 1:1 scaling, and that makes the nearest neighbor filter a NOP.
But probably a good idea to make the uapi behaviour consistent,
especially if we later add other filter modes that maybe aren't 
NOPs.

> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] no scaling/YCbCr output with sharpness filter\n",
> +			    crtc->base.base.id, crtc->base.name);
> +		return -EINVAL;
> +	}
> +
>  	drm_rect_init(&crtc_state->pch_pfit.dst,
>  		      x, y, width, height);
>  	crtc_state->pch_pfit.enabled = true;

-- 
Ville Syrjälä
Intel
