Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E76EA38BA9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 19:56:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F9F910E111;
	Mon, 17 Feb 2025 18:56:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ek6uwti1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7481610E111;
 Mon, 17 Feb 2025 18:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739818602; x=1771354602;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MllQt/cVFyr5FuQ3Khnc8Qv/C029oxjTQK0zQlH3gNc=;
 b=ek6uwti1Q3BPnOTBZX4J2TIgAPnsZdIYRQp6u2FAWFRG1fYVoypSpyAL
 6v/JrgOAebRH3mnG7Mh8j/8YIFPqMGP2HP+gKwKS79gIyLnBGQfhZivpP
 YZmocoiE/6eMaHD63cb6MYtq/msz4d1IOUdY1kMJwXUIRqe178SDUmkcP
 sjg9iSHBKk+3jYpTJekLIb4RIb7J0KFGenQWcObyKEQ13VciaHmVAqyio
 I8VEvRSNED2yNr6cmC1BBW7MxgcTcimBT0o+IZvGED2tyaJ5HlDkyHB/u
 rmxIx8NL0iHu7+9Tk2+tW/2VX6ljOmsNXNb0yyKxOMVxD+qIhUXR03r0x Q==;
X-CSE-ConnectionGUID: 1FJBavWLT5CkS+cLQEv37g==
X-CSE-MsgGUID: OKhYpUJXRZ+ibgWebmqMSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40215566"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="40215566"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 10:56:41 -0800
X-CSE-ConnectionGUID: u2WFO3LXSGa0H05+4NthjA==
X-CSE-MsgGUID: HEJbaSoeQ42CMwHt9WoX9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114389071"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Feb 2025 10:56:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 20:56:37 +0200
Date: Mon, 17 Feb 2025 20:56:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 16/19] drm/i915/display: Use fixed_rr timings in modeset
 sequence
Message-ID: <Z7OGZY3mBy24LHYy@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-17-ankit.k.nautiyal@intel.com>
 <Z7OBP8kdGZLtWCAK@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z7OBP8kdGZLtWCAK@intel.com>
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

On Mon, Feb 17, 2025 at 08:34:39PM +0200, Ville Syrjälä wrote:
> On Fri, Feb 14, 2025 at 05:41:26PM +0530, Ankit Nautiyal wrote:
> > During modeset enable sequence, program the fixed timings,
> > and turn on the VRR Timing Generator (VRR TG) for platforms
> > that always use VRR TG.
> > 
> > Later if vrr timings are required, vrr_enable() will switch
> > to the real VRR timings.
> > 
> > With this we dont want to reset TRANS_CTL_VRR Enable bit while updating
> > the vrr transcoder timings.
> > 
> > v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
> > v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
> >     Add TRANS_PUSH while enabling VRR for fixed_rr.
> > 
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 10 +++++--
> >  drivers/gpu/drm/i915/display/intel_vrr.c     | 29 ++++++++++++++++++--
> >  drivers/gpu/drm/i915/display/intel_vrr.h     |  3 ++
> >  3 files changed, 36 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 66c5ad46bfea..c9d1c091b109 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1755,6 +1755,7 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
> >  
> >  static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
> >  {
> > +	struct intel_display *display = to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> > @@ -1770,9 +1771,12 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
> >  	}
> >  
> >  	intel_set_transcoder_timings(crtc_state);
> > -	if (HAS_VRR(dev_priv))
> > -		intel_vrr_set_transcoder_timings(crtc_state);
> > -
> > +	if (HAS_VRR(dev_priv)) {
> > +		if (intel_vrr_always_use_vrr_tg(display))
> > +			intel_vrr_enable_fixed_rr_timings(crtc_state);
> > +		else
> > +			intel_vrr_set_transcoder_timings(crtc_state);
> 
> I think intel_vrr_set_transcoder_timings() should just program the
> fixed timings always. And we shouldn't do anything else here.
> 
> And I think the VRR_CTL enable/disable for the always_use_vrr_tg==true
> case should be done at some more appropriate spot in the modeset
> sequence. We can add eg. intel_vrr_trancoder_{enable,disable}() for
> that part.
> 
> > +	}
> >  	if (cpu_transcoder != TRANSCODER_EDP)
> >  		intel_de_write(dev_priv, TRANS_MULT(dev_priv, cpu_transcoder),
> >  			       crtc_state->pixel_multiplier - 1);
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index e247055bc486..4151fcd0f978 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -456,8 +456,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> >  		       crtc_state->vrr.vmin - 1);
> >  	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> >  		       crtc_state->vrr.vmax - 1);
> > -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> > -		       trans_vrr_ctl(crtc_state));
> > +	if (intel_vrr_always_use_vrr_tg(display))
> > +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> > +			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> > +	else
> > +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> > +			       trans_vrr_ctl(crtc_state));
> 
> We should probably remove this VRR_CTL frobbing from here entirely,
> and just always do it from the intel_vrr_trancoder_{enable,disable}().
> And obviously for the !always_use_vrr_tg case we just skip setting
> the enable bit there.

Hmm. One thing that might screw us over here is the fastboot vs.
vblank_delay stuff. We might have to allow that to reconfigure
the guardband...

In that case we need to reprogram VRR_CTL from
intel_set_transcoder_timings_lrr(), and be careful what
we do with the enable bit. So it'd perhaps have to be
something like:
 vrr_ctl = trans_vrr_ctl();
 if (always_use_vrr_tg && !needs_modeset)
	vrr_ctl |= VRR_CTL_VRR_ENABLE;

Either way we should move the guardbad and pipeline_full checks
out from the pure !fastset block in intel_pipe_config_compare().
And if we do need the fastboot stuff for them then we need to use
the allow_vblank_delay_fastset() stuff for them as well.

> 
> >  	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> >  		       crtc_state->vrr.flipline - 1);
> >  
> > @@ -536,7 +540,6 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
> >  	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
> >  }
> >  
> > -static
> >  bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
> >  {
> >  	if (!HAS_VRR(display))
> > @@ -616,6 +619,26 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> >  	intel_vrr_set_fixed_rr_timings(old_crtc_state);
> >  }
> >  
> > +void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_display *display = to_intel_display(crtc_state);
> > +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> > +
> > +	intel_vrr_set_fixed_rr_timings(crtc_state);
> > +
> > +	if (HAS_AS_SDP(display))
> > +		intel_de_write(display,
> > +			       TRANS_VRR_VSYNC(display, cpu_transcoder),
> > +			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> > +			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
> > +
> > +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> > +		       TRANS_PUSH_EN);
> > +
> > +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> > +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> > +}
> > +
> >  static
> >  bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> > index 514822577e8a..9259964978b1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > @@ -12,6 +12,7 @@ struct drm_connector_state;
> >  struct intel_atomic_state;
> >  struct intel_connector;
> >  struct intel_crtc_state;
> > +struct intel_display;
> >  struct intel_dsb;
> >  
> >  bool intel_vrr_is_capable(struct intel_connector *connector);
> > @@ -35,5 +36,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
> >  int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
> >  int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
> >  int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
> > +bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
> > +void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
> >  
> >  #endif /* __INTEL_VRR_H__ */
> > -- 
> > 2.45.2
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
