Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KtqCqGWy2l0JQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 11:40:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 854AD367384
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 11:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 046F910E1F8;
	Tue, 31 Mar 2026 09:40:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SER31P1/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E2FC10E1F8;
 Tue, 31 Mar 2026 09:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774950046; x=1806486046;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KUEXuS227GemB6dHzz+wZkt+CzeH5FrDpcCDHHjZ6js=;
 b=SER31P1/RebpvZY798qLMyCithjRfLiEAyG/v/IlYa3Fa5ZaBtZAZj/G
 era0qB2isd1j6efDTsSprt0lcNgV3ILifXpc4uEqjY671KU+ErMcthR5F
 eFbZs79R5lWilYMbFC/MEDZrnGvuDgcY4AKyQ+6XxxuDQu9gLi2VZWdB9
 5UekVX6n7nyWOgyxnGV6KuUVV/WpCGCIWhiQnRwj6gDcC3oYTFnymHROO
 BX1YTo5/BMxo6aZiUPQeG75r5uiMvD0J8WcjZ3nd2dSdQKBNBXPPtAeFZ
 NFnJE+w1oBJh6FQWt08to+bRc9I6W7nOmqYjPXQu8jRQw7xE8Hh1MQ41P A==;
X-CSE-ConnectionGUID: 1SyeOCFLQLiZTYZb09bQ0A==
X-CSE-MsgGUID: SDKJnvN/S/eBrf8At97ZVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="86256940"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="86256940"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 02:40:45 -0700
X-CSE-ConnectionGUID: ygA0XozSSsa4cBiwRT01iw==
X-CSE-MsgGUID: xx+Jj1koQmOFlPSk1WHnIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="230789011"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 02:40:41 -0700
Date: Tue, 31 Mar 2026 12:40:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 9/9] drm/i915/casf: Integrate the sharpness filter
 properly into the scaler code
Message-ID: <acuWldOw3zvuAMZm@intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
 <20260326223139.19116-10-ville.syrjala@linux.intel.com>
 <IA1PR11MB6467B06893C17925195AA384E353A@IA1PR11MB6467.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA1PR11MB6467B06893C17925195AA384E353A@IA1PR11MB6467.namprd11.prod.outlook.com>
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 854AD367384
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 08:11:48AM +0000, Garg, Nemesa wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Sent: Friday, March 27, 2026 4:02 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: [PATCH 9/9] drm/i915/casf: Integrate the sharpness filter properly
> > into the scaler code
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The sharpness filter is just a special mode of the pipe scaler.
> > It doesn't warrant all this special casing everywhere. Just integrate it properly
> > into the scaler code so that it's treated no different from the other pipe scaler
> > uses (scaling,centering, YCbCr 4:2:0 output).
> > 
> > Cc: Nemesa Garg <nemesa.garg@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_casf.c    | 62 ++------------
> >  drivers/gpu/drm/i915/display/intel_casf.h    |  6 +-
> >  drivers/gpu/drm/i915/display/intel_display.c | 34 +-------
> >  drivers/gpu/drm/i915/display/intel_pfit.c    | 13 ++-
> >  drivers/gpu/drm/i915/display/skl_scaler.c    | 85 ++++++++------------
> >  drivers/gpu/drm/i915/display/skl_scaler.h    |  2 -
> >  6 files changed, 53 insertions(+), 149 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_casf.c
> > b/drivers/gpu/drm/i915/display/intel_casf.c
> > index 21e84a4f9ff5..c2d2746c5f04 100644
> > --- a/drivers/gpu/drm/i915/display/intel_casf.c
> > +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> > @@ -75,20 +75,6 @@ static void intel_casf_filter_lut_load(const struct
> > intel_crtc_state *crtc_state
> >  			       sharpness_lut[i]);
> >  }
> > 
> > -void intel_casf_update_strength(const struct intel_crtc_state *crtc_state) -{
> > -	struct intel_display *display = to_intel_display(crtc_state);
> > -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > -	int win_size;
> > -
> > -	intel_de_rmw(display, SHARPNESS_CTL(crtc->pipe),
> > FILTER_STRENGTH_MASK,
> > -		     FILTER_STRENGTH(crtc_state->pch_pfit.casf.strength));
> > -
> > -	win_size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, 1));
> > -
> > -	intel_de_write_fw(display, SKL_PS_WIN_SZ(crtc->pipe, 1), win_size);
> > -}
> > -
> >  static void intel_casf_compute_win_size(struct intel_crtc_state *crtc_state)  {
> >  	const struct drm_display_mode *mode = &crtc_state-
> > >hw.adjusted_mode; @@ -102,19 +88,15 @@ static void
> > intel_casf_compute_win_size(struct intel_crtc_state *crtc_state)
> >  		crtc_state->pch_pfit.casf.win_size =
> > SHARPNESS_FILTER_SIZE_7X7;  }
> > 
> > +static void intel_casf_scaler_compute_coef(struct intel_crtc_state
> > +*crtc_state);
> > +
> >  int intel_casf_compute_config(struct intel_crtc_state *crtc_state)  {
> >  	struct intel_display *display = to_intel_display(crtc_state);
> > 
> > -	if (!HAS_CASF(display))
> > +	if (crtc_state->hw.sharpness_strength == 0)
> >  		return 0;
> > 
> > -	if (crtc_state->hw.sharpness_strength == 0) {
> > -		crtc_state->pch_pfit.casf.enable = false;
> > -		crtc_state->pch_pfit.casf.strength = 0;
> > -		return 0;
> > -	}
> > -
> >  	/* CASF with joiner not supported in hardware */
> >  	if (crtc_state->joiner_pipes) {
> >  		drm_dbg_kms(display->drm, "CASF not supported with
> > joiner\n"); @@ -136,7 +118,7 @@ int intel_casf_compute_config(struct
> > intel_crtc_state *crtc_state)
> > 
> >  	intel_casf_compute_win_size(crtc_state);
> > 
> > -	intel_casf_scaler_compute_config(crtc_state);
> > +	intel_casf_scaler_compute_coef(crtc_state);
> > 
> >  	return 0;
> >  }
> > @@ -161,14 +143,6 @@ void intel_casf_sharpness_get_config(struct
> > intel_crtc_state *crtc_state)
> >  	}
> >  }
> > 
> > -bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state) -{
> > -	if (crtc_state->pch_pfit.casf.enable)
> > -		return true;
> > -
> > -	return false;
> > -}
> > -
> >  static int casf_coeff_tap(int i)
> >  {
> >  	return i % SCALER_FILTER_NUM_TAPS;
> > @@ -240,7 +214,7 @@ static void convert_sharpness_coef_binary(struct
> > scaler_filter_coeff *coeff,
> >  	}
> >  }
> > 
> > -void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
> > +static void intel_casf_scaler_compute_coef(struct intel_crtc_state
> > +*crtc_state)
> >  {
> >  	const u16 *filtercoeff;
> >  	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
> > @@ -264,32 +238,8 @@ void intel_casf_scaler_compute_config(struct
> > intel_crtc_state *crtc_state)
> >  	}
> >  }
> > 
> > -void intel_casf_enable(const struct intel_crtc_state *crtc_state)
> > +void intel_casf_setup(const struct intel_crtc_state *crtc_state)
> >  {
> > -	struct intel_display *display = to_intel_display(crtc_state);
> > -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > -	u32 sharpness_ctl;
> > -
> >  	intel_casf_filter_lut_load(crtc_state);
> > -
> >  	intel_casf_write_coeff(crtc_state);
> > -
> > -	sharpness_ctl = FILTER_EN | FILTER_STRENGTH(crtc_state-
> > >pch_pfit.casf.strength);
> > -
> > -	sharpness_ctl |= crtc_state->pch_pfit.casf.win_size;
> > -
> > -	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), sharpness_ctl);
> > -
> > -	skl_scaler_setup_casf(crtc_state);
> > -}
> > -
> > -void intel_casf_disable(const struct intel_crtc_state *crtc_state) -{
> > -	struct intel_display *display = to_intel_display(crtc_state);
> > -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > -
> > -	intel_de_write(display, SKL_PS_CTRL(crtc->pipe, 1), 0);
> > -	intel_de_write(display, SKL_PS_WIN_POS(crtc->pipe, 1), 0);
> > -	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), 0);
> > -	intel_de_write(display, SKL_PS_WIN_SZ(crtc->pipe, 1), 0);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_casf.h
> > b/drivers/gpu/drm/i915/display/intel_casf.h
> > index c4f984b73348..3ebb7522af0a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_casf.h
> > +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> > @@ -11,11 +11,7 @@
> >  struct intel_crtc_state;
> > 
> >  int intel_casf_compute_config(struct intel_crtc_state *crtc_state); -void
> > intel_casf_update_strength(const struct intel_crtc_state *new_crtc_state);
> > void intel_casf_sharpness_get_config(struct intel_crtc_state *crtc_state); -void
> > intel_casf_enable(const struct intel_crtc_state *crtc_state); -void
> > intel_casf_disable(const struct intel_crtc_state *crtc_state); -void
> > intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state); -bool
> > intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state);
> > +void intel_casf_setup(const struct intel_crtc_state *crtc_state);
> > 
> >  #endif /* __INTEL_CASF_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index e02e69467871..58a654ca0d20 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -58,7 +58,6 @@
> >  #include "intel_audio.h"
> >  #include "intel_bo.h"
> >  #include "intel_bw.h"
> > -#include "intel_casf.h"
> >  #include "intel_cdclk.h"
> >  #include "intel_clock_gating.h"
> >  #include "intel_color.h"
> > @@ -988,24 +987,6 @@ static bool audio_disabling(const struct
> > intel_crtc_state *old_crtc_state,
> >  		 memcmp(old_crtc_state->eld, new_crtc_state->eld,
> > MAX_ELD_BYTES) != 0);  }
> > 
> > -static bool intel_casf_enabling(const struct intel_crtc_state *new_crtc_state,
> > -				const struct intel_crtc_state *old_crtc_state)
> > -{
> > -	if (!new_crtc_state->hw.active)
> > -		return false;
> > -
> > -	return is_enabling(pch_pfit.casf.enable, old_crtc_state,
> > new_crtc_state);
> > -}
> > -
> > -static bool intel_casf_disabling(const struct intel_crtc_state *old_crtc_state,
> > -				 const struct intel_crtc_state *new_crtc_state)
> > -{
> > -	if (!new_crtc_state->hw.active)
> > -		return false;
> > -
> > -	return is_disabling(pch_pfit.casf.enable, old_crtc_state,
> > new_crtc_state);
> > -}
> > -
> >  static bool intel_crtc_lobf_enabling(const struct intel_crtc_state
> > *old_crtc_state,
> >  				     const struct intel_crtc_state
> > *new_crtc_state)  { @@ -1187,9 +1168,6 @@ static void
> > intel_pre_plane_update(struct intel_atomic_state *state,
> >  	if (audio_disabling(old_crtc_state, new_crtc_state))
> >  		intel_encoders_audio_disable(state, crtc);
> > 
> > -	if (intel_casf_disabling(old_crtc_state, new_crtc_state))
> > -		intel_casf_disable(new_crtc_state);
> > -
> >  	intel_drrs_deactivate(old_crtc_state);
> > 
> >  	if (hsw_ips_pre_update(state, crtc))
> > @@ -4308,14 +4286,9 @@ static int intel_crtc_atomic_check(struct
> > intel_atomic_state *state,
> >  		return ret;
> >  	}
> > 
> > -	ret = intel_casf_compute_config(crtc_state);
> > -	if (ret)
> > -		return ret;
> > -
> >  	if (DISPLAY_VER(display) >= 9) {
> >  		if (intel_crtc_needs_modeset(crtc_state) ||
> > -		    intel_crtc_needs_fastset(crtc_state) ||
> > -		    intel_casf_needs_scaler(crtc_state)) {
> > +		    intel_crtc_needs_fastset(crtc_state)) {
> >  			ret = skl_update_scaler_crtc(crtc_state);
> >  			if (ret)
> >  				return ret;
> > @@ -6817,11 +6790,6 @@ static void intel_pre_update_crtc(struct
> > intel_atomic_state *state,
> >  			intel_vrr_set_transcoder_timings(new_crtc_state);
> >  	}
> > 
> > -	if (intel_casf_enabling(new_crtc_state, old_crtc_state))
> > -		intel_casf_enable(new_crtc_state);
> > -	else if (new_crtc_state->pch_pfit.casf.strength != old_crtc_state-
> > >pch_pfit.casf.strength)
> > -		intel_casf_update_strength(new_crtc_state);
> > -
> >  	intel_fbc_update(state, crtc);
> > 
> >  	drm_WARN_ON(display->drm,
> > !intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF)); diff --
> > git a/drivers/gpu/drm/i915/display/intel_pfit.c
> > b/drivers/gpu/drm/i915/display/intel_pfit.c
> > index 6dda496190e0..e04ca960f115 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> > @@ -186,6 +186,7 @@ static int pch_panel_fitting(struct intel_crtc_state
> > *crtc_state,
> >  			     const struct drm_connector_state *conn_state)  {
> >  	struct intel_display *display = to_intel_display(crtc_state);
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	const struct drm_display_mode *adjusted_mode =
> >  		&crtc_state->hw.adjusted_mode;
> >  	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
> > @@ -195,7 +196,8 @@ static int pch_panel_fitting(struct intel_crtc_state
> > *crtc_state,
> >  	/* Native modes don't need fitting */
> >  	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
> >  	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
> > -	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
> > +	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420
> > &&
> > +	    crtc_state->hw.sharpness_strength == 0)
> >  		return 0;
> > 
> >  	switch (conn_state->scaling_mode) {
> > @@ -249,6 +251,15 @@ static int pch_panel_fitting(struct intel_crtc_state
> > *crtc_state,
> >  		return -EINVAL;
> >  	}
> > 
> > +	if (crtc_state->hw.sharpness_strength &&
> > +	    (width != pipe_src_w || height != pipe_src_h ||
> > +	     crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)) {
> > +		drm_dbg_kms(display->drm,
> > +			    "[CRTC:%d:%s] no scaling/YCbCr output with
> > sharpness filter\n",
> > +			    crtc->base.base.id, crtc->base.name);
> > +		return -EINVAL;
> > +	}
> > +
> >  
> 
> Hi Ville,
> 
> Earlier I couldn’t understand much about how to integrate sharpness with pch_pfit but now I got it.
> Thank you for addressing this.
> 
> 	drm_rect_init(&crtc_state->pch_pfit.dst,
> >  		      x, y, width, height);
> >  	crtc_state->pch_pfit.enabled = true;
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index 762f4bb46c2d..308b8d363bba 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -270,6 +270,11 @@ int skl_update_scaler_crtc(struct intel_crtc_state
> > *crtc_state)  {
> >  	const struct drm_display_mode *pipe_mode = &crtc_state-
> > >hw.pipe_mode;
> >  	int width, height;
> > +	int ret;
> > +
> > +	ret = intel_casf_compute_config(crtc_state);
> > +	if (ret)
> > +		return ret;
> > 
> >  	if (crtc_state->pch_pfit.enabled) {
> >  		width = drm_rect_width(&crtc_state->pch_pfit.dst);
> > @@ -284,8 +289,7 @@ int skl_update_scaler_crtc(struct intel_crtc_state
> > *crtc_state)
> >  				 drm_rect_width(&crtc_state->pipe_src),
> >  				 drm_rect_height(&crtc_state->pipe_src),
> >  				 width, height, NULL, 0,
> > -				 crtc_state->pch_pfit.enabled ||
> > -				 intel_casf_needs_scaler(crtc_state));
> > +				 crtc_state->pch_pfit.enabled);
> >  }
> > 
> >  /**
> > @@ -534,14 +538,11 @@ static int setup_crtc_scaler(struct intel_atomic_state
> > *state,
> >  	struct intel_crtc_scaler_state *scaler_state =
> >  		&crtc_state->scaler_state;
> > 
> > -	if (intel_casf_needs_scaler(crtc_state) && crtc_state-
> > >pch_pfit.enabled)
> > -		return -EINVAL;
> > -
> >  	return intel_atomic_setup_scaler(crtc_state,
> >  					 hweight32(scaler_state-
> > >scaler_users),
> >  					 crtc, "CRTC", crtc->base.base.id,
> >  					 NULL, &scaler_state->scaler_id,
> > -					 intel_casf_needs_scaler(crtc_state));
> > +					 crtc_state->pch_pfit.casf.enable);
> >  }
> > 
> >  static int setup_plane_scaler(struct intel_atomic_state *state, @@ -757,43
> > +758,14 @@ static void skl_scaler_setup_filter(struct intel_display *display,
> >  	}
> >  }
> > 
> > -void skl_scaler_setup_casf(const struct intel_crtc_state *crtc_state)
> > +static u32 casf_sharpness_ctl(const struct intel_crtc_state
> > +*crtc_state)
> >  {
> > -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct intel_display *display = to_intel_display(crtc);
> > -	const struct drm_display_mode *adjusted_mode =
> > -		&crtc_state->hw.adjusted_mode;
> > -	const struct intel_crtc_scaler_state *scaler_state =
> > -		&crtc_state->scaler_state;
> > -	struct drm_rect src, dest;
> > -	int id, width, height;
> > -	int x = 0, y = 0;
> > -	enum pipe pipe = crtc->pipe;
> > -	u32 ps_ctrl;
> > +	if (!crtc_state->pch_pfit.casf.enable)
> > +		return 0;
> > 
> > -	width = adjusted_mode->crtc_hdisplay;
> > -	height = adjusted_mode->crtc_vdisplay;
> > -
> > -	drm_rect_init(&dest, x, y, width, height);
> > -
> > -	width = drm_rect_width(&dest);
> > -	height = drm_rect_height(&dest);
> > -	id = scaler_state->scaler_id;
> > -
> > -	drm_rect_init(&src, 0, 0,
> > -		      drm_rect_width(&crtc_state->pipe_src) << 16,
> > -		      drm_rect_height(&crtc_state->pipe_src) << 16);
> > -
> > -	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
> > -
> > -	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state-
> > >scalers[id].mode |
> > -		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, true);
> > -
> > -	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
> > -	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, id),
> > -			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
> > -	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
> > -			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
> > +	return FILTER_EN |
> > +		FILTER_STRENGTH(crtc_state->pch_pfit.casf.strength) |
> > +		crtc_state->pch_pfit.casf.win_size;
> >  }
> > 
> >  void skl_pfit_enable(const struct intel_crtc_state *crtc_state) @@ -837,12
> > +809,20 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
> >  	id = scaler_state->scaler_id;
> > 
> >  	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state-
> > >scalers[id].mode |
> > -		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter,
> > false);
> > +		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter,
> > +					     crtc_state->pch_pfit.casf.enable);
> > 
> >  	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
> > 
> > -	skl_scaler_setup_filter(display, NULL, pipe, id, 0,
> > -				crtc_state->hw.scaling_filter);
> > +	if (crtc_state->pch_pfit.casf.enable)
> > +		intel_casf_setup(crtc_state);
> > +	else
> > +		skl_scaler_setup_filter(display, NULL, pipe, id, 0,
> > +					crtc_state->hw.scaling_filter);
> > +
> > +	if (scaler_has_casf(display, id))
> > +		intel_de_write_fw(display, SHARPNESS_CTL(crtc->pipe),
> > +				  casf_sharpness_ctl(crtc_state));
> > 
> >  	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
> > 
> 
> I added intel_casf_update_strength() thinking that we should update only  SHARPNESS_CTL register
> only whenever there is a change in sharpness strength from user side.
> So is it ok if we write all other things again ie all SKL registers along with SHARPNESS register, can there be any issue with this.

Apart from the slight performance cost there is generally no problem
with rewriting most registers. Though registers with side effects
(eg. arming registers) are an exception to the rule. One must
consider the side effects before blindly writing to such registers.
That's not an issue here since we do want to write to the arming
registers as well, though we do want to make sure those are
written last.

> What is the correct way in general, I mean we should update only required things or we can update 
> whole part.

For the most part we just blast in the whole thing. See eg. all
the plane .update_(no)arm() implementations. Optimizing out redundant
writes would be possible, but the complexity of figuring out what is
redundant is probably not worth it.

> Also should we write VPHASE and HPHASE registers for sharpness.

I don't know if there's some magic in the hardware to ignore the
phase registers when the sharpness filter is active. I suspect
it's still using them. In any case it's best to write everything
to make sure it's always consistent. We only skip some of the heavier
stuff like the programmable coefficients, when we know for sure that
they're not going to be used.

> 
> Thanks and Regards,
> Nemesa
> 
> > @@ -930,6 +910,9 @@ static void skl_detach_scaler(struct intel_dsb *dsb,
> > 
> >  	trace_intel_scaler_disable_arm(crtc, id);
> > 
> > +	if (scaler_has_casf(display, id))
> > +		intel_de_write_dsb(display, dsb, SHARPNESS_CTL(crtc->pipe),
> > 0);
> > +
> >  	intel_de_write_dsb(display, dsb, SKL_PS_CTRL(crtc->pipe, id), 0);
> >  	intel_de_write_dsb(display, dsb, SKL_PS_WIN_POS(crtc->pipe, id), 0);
> >  	intel_de_write_dsb(display, dsb, SKL_PS_WIN_SZ(crtc->pipe, id), 0);
> > @@ -983,18 +966,16 @@ void skl_scaler_get_config(struct intel_crtc_state
> > *crtc_state)
> >  		if (scaler_has_casf(display, i))
> >  			intel_casf_sharpness_get_config(crtc_state);
> > 
> > -		if (!crtc_state->pch_pfit.casf.enable)
> > -			crtc_state->pch_pfit.enabled = true;
> > +		crtc_state->pch_pfit.enabled = true;
> > 
> >  		pos = intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, i));
> >  		size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, i));
> > 
> > -		if (!crtc_state->pch_pfit.casf.enable)
> > -			drm_rect_init(&crtc_state->pch_pfit.dst,
> > -				      REG_FIELD_GET(PS_WIN_XPOS_MASK,
> > pos),
> > -				      REG_FIELD_GET(PS_WIN_YPOS_MASK,
> > pos),
> > -				      REG_FIELD_GET(PS_WIN_XSIZE_MASK,
> > size),
> > -				      REG_FIELD_GET(PS_WIN_YSIZE_MASK,
> > size));
> > +		drm_rect_init(&crtc_state->pch_pfit.dst,
> > +			      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
> > +			      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
> > +			      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
> > +			      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
> > 
> >  		scaler_state->scalers[i].in_use = true;
> >  		break;
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> > b/drivers/gpu/drm/i915/display/skl_scaler.h
> > index 20ecf373eb19..5deabca909e6 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> > @@ -36,8 +36,6 @@ void skl_scaler_disable(const struct intel_crtc_state
> > *old_crtc_state);
> > 
> >  void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
> > 
> > -void skl_scaler_setup_casf(const struct intel_crtc_state *crtc_state);
> > -
> >  enum drm_mode_status
> >  skl_scaler_mode_valid(struct intel_display *display,
> >  		      const struct drm_display_mode *mode,
> > --
> > 2.52.0
> 

-- 
Ville Syrjälä
Intel
