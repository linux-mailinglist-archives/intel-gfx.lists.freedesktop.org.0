Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6834FB848EA
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 14:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB2F10E127;
	Thu, 18 Sep 2025 12:21:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WVEQho8U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E462B10E126;
 Thu, 18 Sep 2025 12:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758198079; x=1789734079;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OOWEvTLY7AEDGwMz+UKNeS7guRLYN2yqbptbRIs4RL4=;
 b=WVEQho8UE9NwsnbeXC49eEE5BkNwnKyMdetHSSlrCLPDr6fgGXtSm5Vt
 kmq2rQqjOg/1N/BhMw0qkBdsTIz218sLZjIPSTVvM6PUWdXEKh2gV3qbu
 phetmymkFyemjFn5afYPAvH0lJKL53AAN+YwunjBT40EzpdY7IojvGnFG
 EgVeb5axRaGe8uBwH0F1nq+HBHa64/6QpqsCCDdHASKzhnFnanqm7jHQT
 W1hr3xAeTpB6DAqwn1qtazAoh1OxDW9LHA/umJSJC0YhF2PAW5pWiUdHa
 nCLZ9ngNj24ZWlnWJ4B/1BniCk+oZJCB1UXJf2pn2wgzmSGxMpxX3tTf0 g==;
X-CSE-ConnectionGUID: 2rJDXeP0QXuLeAYiev95Ow==
X-CSE-MsgGUID: eD38aY16TEyQIRLVG4Eg/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64328020"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64328020"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:21:19 -0700
X-CSE-ConnectionGUID: Y2h13joITWyiU/04dMuDmQ==
X-CSE-MsgGUID: TVvoUdR+QvuCslJpwHywtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="176325239"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:21:17 -0700
Date: Thu, 18 Sep 2025 15:21:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/5] drm/i915/vrr: Store guardband in crtc state even for
 icl/tgl
Message-ID: <aMv5OqJuHCdAtQov@intel.com>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
 <20250917203446.14374-4-ville.syrjala@linux.intel.com>
 <6ba574f2-9ac3-4da2-aef1-a781f5eb97ed@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6ba574f2-9ac3-4da2-aef1-a781f5eb97ed@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Sep 18, 2025 at 03:07:20PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/18/2025 2:04 AM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > While ICL/TGL VRR hardware doesn't have a register for the guardband
> > value, our lives will be simpler if we pretend that it does. Start
> > by computing the guardband the same as on ADL+ and storing it in
> > the state, and only then we convert it into the corresponding
> > pipeline_full value that the hardware can consume. During readout we
> > do the opposite.
> >
> > I was debating whether to completely remove pipeline_full from the
> > crtc state, but decided to keep it for now. Mainly because we check
> > it in vrr_params_changed() and simply checking the guardband instead
> > isn't 100% equivalent; Theoretically, framestart_delay may have
> > changed in the opposite direction to pipeline_full, keeping the
> > derived guardband value unchaged. One solution would be to also check
> > framestart_delay, but that feels a bit leaky abstraction wise.
> >
> > Also note that we don't currently handle the maximum limit of 255
> > scanlines for the pipeline_full in a very nice way. The actual
> > position of the delayed vblank will move because of that clamping,
> > and so some of our code may get confused. But fixing this shall
> > wait a for now.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_display.c |  1 +
> >   drivers/gpu/drm/i915/display/intel_vrr.c     | 36 +++++++++++---------
> >   2 files changed, 21 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index c7d85fd38890..f4124c79bc83 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -3891,6 +3891,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> >   	intel_joiner_get_config(pipe_config);
> >   	intel_dsc_get_config(pipe_config);
> >   
> > +	/* intel_vrr_get_config() depends on .framestart_delay */
> >   	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
> >   		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
> >   
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 5fee85b0bc99..9cdcc2558ead 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -151,13 +151,7 @@ static int intel_vrr_pipeline_full_to_guardband(const struct intel_crtc_state *c
> >    */
> >   static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_state)
> >   {
> > -	struct intel_display *display = to_intel_display(crtc_state);
> > -
> > -	if (DISPLAY_VER(display) >= 13)
> > -		return crtc_state->vrr.guardband;
> > -	else
> > -		return intel_vrr_pipeline_full_to_guardband(crtc_state,
> > -							    crtc_state->vrr.pipeline_full);
> > +	return crtc_state->vrr.guardband;
> >   }
> >   
> >   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
> > @@ -431,18 +425,22 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
> >   {
> >   	struct intel_display *display = to_intel_display(crtc_state);
> >   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> > -	int guardband;
> >   
> >   	if (!intel_vrr_possible(crtc_state))
> >   		return;
> >   
> > -	guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
> > +	crtc_state->vrr.guardband =
> > +		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
> > +
> > +	if (DISPLAY_VER(display) < 13) {
> > +		/* FIXME handle the limit in a proper way */
> > +		crtc_state->vrr.guardband =
> > +			min(crtc_state->vrr.guardband,
> > +			    intel_vrr_pipeline_full_to_guardband(crtc_state, 255));
> >   
> > -	if (DISPLAY_VER(display) >= 13) {
> > -		crtc_state->vrr.guardband = guardband;
> > -	} else {
> >   		crtc_state->vrr.pipeline_full =
> > -			min(255, intel_vrr_guardband_to_pipeline_full(crtc_state, guardband));
> > +			intel_vrr_guardband_to_pipeline_full(crtc_state,
> > +							     crtc_state->vrr.guardband);
> 
> 
> For removing the #FIXME to handle the limit what can be required:
> 
> Do we need to abstract it with intel_vrr_clamp_pipeline_full()  or else 
> we need:

I haven't though in detail how we should do this, but basically we
have two constraints that limit the max guardband:
- actual vblank_length-SCL
- hardware register limit (~255 for icl/tgl, (apparently) 
  65535 for for adl+)

So when calculating the guardband we just have to clamp it
the minimum of those.

> 
> crtc_state->vrr.pipeline_full = min(255, 
> intel_vrr_guardband_to_pipeline_full(crtc_state, 
> crtc_state->vrr.guardband));
> 
> crtc_state->vrr.guardband = 
> intel_vrr_guardband_to_pipeline_full(crtc_state, 
> crtc_state->vrr.pipeline_full);
> 
> (Though this might be bit confusing since we use guardband to get 
> pipline and again change guardband.)
> 
> 
> Regards,
> 
> Ankit
> 
> 
> >   
> >   		/*
> >   		 * vmin/vmax/flipline also need to be adjusted by
> > @@ -734,14 +732,20 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> >   					     TRANS_CMRR_M_HI(display, cpu_transcoder));
> >   	}
> >   
> > -	if (DISPLAY_VER(display) >= 13)
> > +	if (DISPLAY_VER(display) >= 13) {
> >   		crtc_state->vrr.guardband =
> >   			REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);
> > -	else
> > -		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE)
> > +	} else {
> > +		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE) {
> >   			crtc_state->vrr.pipeline_full =
> >   				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
> >   
> > +			crtc_state->vrr.guardband =
> > +				intel_vrr_pipeline_full_to_guardband(crtc_state,
> > +								     crtc_state->vrr.pipeline_full);
> > +		}
> > +	}
> > +
> >   	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
> >   		crtc_state->vrr.flipline = intel_de_read(display,
> >   							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;

-- 
Ville Syrjälä
Intel
