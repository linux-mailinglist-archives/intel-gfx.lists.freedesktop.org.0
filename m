Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C891FA17314
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 20:21:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0969110E473;
	Mon, 20 Jan 2025 19:21:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TVzaAJry";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C54410E473
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 19:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737400911; x=1768936911;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=InUVnEgzRh4+RVVm4Kx7eRXfUcA7WNRWAtVJ+8qLRFM=;
 b=TVzaAJryNP2RVT+0erPA30Z6U7sY9KGzYPTDTMBMjp/biBvNWyJu3c5M
 6mrj5HeYWA+kyyA6uWzWfIos9X/ZcckjPNdiTLcCgMWzAIaO3nrcZH8Os
 aiUMDShP8wqd8Mozv++/tE7fiH4utZPpqRAe/bJ58IURgqh4eAVMQFnpC
 PeVRSD8GuQG7MI21Ey9P1hDo2sOvSHaF2+8JW0PE1znUfBCvTiZBnojni
 XqSAT5KqofDl71qNOtPKbsdhLkGxew8kCbzi9mcYrD9Pg+OzX7IL4Flzi
 XCq9mTEf/SnxAnnftLDeU3Nwjwf96P8SXqnYtZiaEQYqJexGNDPwLMcCd g==;
X-CSE-ConnectionGUID: 0jycnxMDQZKaAYhp02CRmw==
X-CSE-MsgGUID: mrcievfeTd6BZneo6pRKtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37959345"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="37959345"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 11:21:51 -0800
X-CSE-ConnectionGUID: 0pX17Rm9SomNsqzBMt3GuA==
X-CSE-MsgGUID: irkAEaW1Qz60tQYnjMmsYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106723523"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Jan 2025 11:21:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jan 2025 21:21:47 +0200
Date: Mon, 20 Jan 2025 21:21:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Paz Zcharya <pazz@chromium.org>
Subject: Re: [PATCH 6/8] drm/i915: Allow fastboot to fix up the vblank delay
Message-ID: <Z46iSx1Wz-5BpDTZ@intel.com>
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
 <20250116201637.22486-7-ville.syrjala@linux.intel.com>
 <87r04xpgu3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87r04xpgu3.fsf@intel.com>
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

On Mon, Jan 20, 2025 at 06:53:24PM +0200, Jani Nikula wrote:
> On Thu, 16 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > GOP might not agree with our idea of what the vblank delay should be.
> > Reuse the LRR codepaths to fix that up via a fastset.
> >
> > The relevant registers aren't actually double buffered so this is a
> > little bit dodgy. While I've not seen any real issues from frobbing
> > these live, let's limit this to just the fastboot case (by only
> > allowing it when old_crtc_state->inherited==true).
> >
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 26 +++++++++++++++++---
> >  1 file changed, 22 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 9b42d980ed7e..471fe7d80f30 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5358,6 +5358,19 @@ pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
> >  	intel_cx0pll_dump_hw_state(display, b);
> >  }
> >  
> > +static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_state)
> > +{
> > +	struct intel_display *display = to_intel_display(old_crtc_state);
> > +
> > +	/*
> > +	 * Allow fastboot to fix up vblank delay (handled via LRR
> > +	 * codepaths), a bit dodgy as the registers aren't
> > +	 * double buffered but seems to be working more or less...
> > +	 */
> > +	return HAS_LRR(display) && old_crtc_state->inherited &&
> > +		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
> > +}
> > +
> >  bool
> >  intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >  			  const struct intel_crtc_state *pipe_config,
> > @@ -5490,7 +5503,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >  	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
> >  	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
> >  	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> > -	PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> > +	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
> > +		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> 
> Side note, part of me wants to change fastset to some variation of "full
> modeset" because *all* the compare checks are for !fastset.

fastset==true here indicates that we're checking whether fastset
is possible, fastset==false indicates we're running the actual
state checker. Not quite sure what the best naming for the
opposite situation would be.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Ta.

> 
> >  	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> >  	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
> >  	if (!fastset || !pipe_config->update_lrr) { \
> > @@ -6084,7 +6098,8 @@ static int intel_modeset_checks(struct intel_atomic_state *state)
> >  static bool lrr_params_changed(const struct drm_display_mode *old_adjusted_mode,
> >  			       const struct drm_display_mode *new_adjusted_mode)
> >  {
> > -	return old_adjusted_mode->crtc_vblank_end != new_adjusted_mode->crtc_vblank_end ||
> > +	return old_adjusted_mode->crtc_vblank_start != new_adjusted_mode->crtc_vblank_start ||
> > +		old_adjusted_mode->crtc_vblank_end != new_adjusted_mode->crtc_vblank_end ||
> >  		old_adjusted_mode->crtc_vtotal != new_adjusted_mode->crtc_vtotal;
> >  }
> >  
> > @@ -6098,11 +6113,14 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
> >  	if (old_crtc_state->vrr.in_range != new_crtc_state->vrr.in_range)
> >  		new_crtc_state->update_lrr = false;
> >  
> > -	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true))
> > +	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true)) {
> >  		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] fastset requirement not met, forcing full modeset\n",
> >  			    crtc->base.base.id, crtc->base.name);
> > -	else
> > +	} else {
> > +		if (allow_vblank_delay_fastset(old_crtc_state))
> > +			new_crtc_state->update_lrr = true;
> >  		new_crtc_state->uapi.mode_changed = false;
> > +	}
> >  
> >  	if (intel_compare_link_m_n(&old_crtc_state->dp_m_n,
> >  				   &new_crtc_state->dp_m_n))
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
