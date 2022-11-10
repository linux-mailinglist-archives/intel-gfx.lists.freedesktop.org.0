Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 644C062447D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 15:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D43D10E81F;
	Thu, 10 Nov 2022 14:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9454C10E81F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 14:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668091288; x=1699627288;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gwtZ7Bi/GhKpfpu3nWjAGXIH/rNSfam0l8bVlOKfyXo=;
 b=FFbMVSJUH/o/AgFIZiHOIBLWrHB3FVSj9R6euBeaczcBMSnV48g3X8UU
 eJdUyMOTFfmSKXE+vZlZcCci6HWpLVWkL0iBO7xvZtFsQqgMzF6470/wJ
 7fRNN/6eW+EE8Yar9TslzRGom59Xm9SnjLd0leFPZ7mn9Plt2r70K3tuy
 ypALTNZHcDgRkdd43ZNi9aw5O3HXGVGB0V0WxusFicf4bN2vzVZQR5Bk6
 buuZl1AmdPPV5UzPbsAH7IKWHpoB5z2zStoq2hy95yYWpVOUS4K9FdqC1
 fwyrS9p6/8DzgAn9JzH/doXby1FUhASFl1nImQ5J7i1lgyvMH7HjzpMyN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="375568786"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="375568786"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 06:41:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="700819249"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="700819249"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 10 Nov 2022 06:41:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 16:41:24 +0200
Date: Thu, 10 Nov 2022 16:41:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <Y20NlH61LOxQu8uE@intel.com>
References: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
 <20221109111649.23062-5-ville.syrjala@linux.intel.com>
 <PH7PR11MB5981B28DC6D4C07ED07E5C1FF9019@PH7PR11MB5981.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH7PR11MB5981B28DC6D4C07ED07E5C1FF9019@PH7PR11MB5981.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Try to use the correct power
 sequencer intiially on bxt/glk
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 10, 2022 at 01:56:46PM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, November 9, 2022 4:47 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Manna, Animesh <animesh.manna@intel.com>
> > Subject: [PATCH 4/6] drm/i915: Try to use the correct power sequencer intiially
> > on bxt/glk
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Currently on bxt/glk we just grab the power sequencer index from the VBT data
> > even though it may not have been parsed yet. That could lead us to using the
> > incorrect power sequencer during the initial panel probe.
> > 
> > To avoid that let's try to read out the current state of the power sequencer from
> > the hardware. Unfortunately the power sequencer no longer has anything in its
> > registers to associate it with the port, so the best we can do is just iterate
> > through the power sequencers and pick the first one. This should be sufficient
> > for single panel cases.
> > 
> > For the dual panel cases we probably need to go back to parsing the VBT before
> > the panel probe (and hope that panel_type=0xff is never a thing in those cases).
> > To that end the code always prefers the VBT panel sequencer, if available.
> > 
> > TODO: Deal with all the modern platforms too
> >       Maybe add checks to make sure the same power
> >       sequencer doesn't get assigned to multiple ports?
> > 
> > Cc: Animesh Manna <animesh.manna@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  8 +-
> >  drivers/gpu/drm/i915/display/intel_panel.c    |  1 +
> >  drivers/gpu/drm/i915/display/intel_pps.c      | 78 +++++++++++++++++--
> >  3 files changed, 80 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index aec06cb24e23..25165110142b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -330,7 +330,7 @@ struct intel_vbt_panel_data {
> >  		bool present;
> >  		bool active_low_pwm;
> >  		u8 min_brightness;	/* min_brightness/255 of max */
> > -		u8 controller;		/* brightness controller number */
> > +		s8 controller;		/* brightness controller number */
> >  		enum intel_backlight_type type;
> >  	} backlight;
> > 
> > @@ -1571,9 +1571,13 @@ struct intel_pps {
> >  	enum pipe active_pipe;
> >  	/*
> >  	 * Set if the sequencer may be reset due to a power transition,
> > -	 * requiring a reinitialization. Only relevant on BXT.
> > +	 * requiring a reinitialization. Only relevant on BXT+.
> >  	 */
> >  	bool pps_reset;
> > +	/*
> > +	 * Power sequencer index. Only relevant on BXT+.
> > +	 */
> > +	s8 pps_idx;
> >  	struct edp_power_seq pps_delays;
> >  	struct edp_power_seq bios_pps_delays;
> >  };
> > diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
> > b/drivers/gpu/drm/i915/display/intel_panel.c
> > index 918b3b9d9ebe..1794e5eecf90 100644
> > --- a/drivers/gpu/drm/i915/display/intel_panel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> > @@ -665,6 +665,7 @@ void intel_panel_init_alloc(struct intel_connector
> > *connector)
> >  	struct intel_panel *panel = &connector->panel;
> > 
> >  	connector->panel.vbt.panel_type = -1;
> > +	connector->panel.vbt.backlight.controller = -1;
> >  	INIT_LIST_HEAD(&panel->fixed_modes);
> >  }
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > b/drivers/gpu/drm/i915/display/intel_pps.c
> > index 84265096f751..ff4f1def59d2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -211,8 +211,7 @@ static int
> >  bxt_power_sequencer_idx(struct intel_dp *intel_dp)  {
> >  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > -	struct intel_connector *connector = intel_dp->attached_connector;
> > -	int backlight_controller = connector->panel.vbt.backlight.controller;
> > +	int pps_idx = intel_dp->pps.pps_idx;
> > 
> >  	lockdep_assert_held(&dev_priv->display.pps.mutex);
> > 
> > @@ -220,7 +219,7 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
> >  	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
> > 
> >  	if (!intel_dp->pps.pps_reset)
> > -		return backlight_controller;
> > +		return pps_idx;
> > 
> >  	intel_dp->pps.pps_reset = false;
> > 
> > @@ -230,7 +229,7 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
> >  	 */
> >  	pps_init_registers(intel_dp, false);
> > 
> > -	return backlight_controller;
> > +	return pps_idx;
> >  }
> > 
> >  typedef bool (*pps_check)(struct drm_i915_private *dev_priv, int pps_idx); @@
> > -310,6 +309,54 @@ vlv_initial_power_sequencer_setup(struct intel_dp
> > *intel_dp)
> >  		    pipe_name(intel_dp->pps.pps_pipe));
> >  }
> > 
> > +static int
> > +bxt_initial_pps_idx(struct drm_i915_private *i915, pps_check check) {
> > +	int pps_idx, pps_num = 2;
> > +
> > +	for (pps_idx = 0; pps_idx < pps_num; pps_idx++) {
> > +		if (check(i915, pps_idx))
> > +			return pps_idx;
> > +	}
> > +
> > +	return -1;
> > +};
> > +
> > +static void
> > +bxt_initial_power_sequencer_setup(struct intel_dp *intel_dp) {
> > +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> > +	struct intel_connector *connector = intel_dp->attached_connector;
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +
> > +	lockdep_assert_held(&i915->display.pps.mutex);
> > +
> > +	/* first ask the VBT */
> > +	intel_dp->pps.pps_idx = connector->panel.vbt.backlight.controller;
> > +  
> > +	/* VBT wasn't parsed yet? pick one where the panel is on */
> > +	if (intel_dp->pps.pps_idx < 0)
> > +		intel_dp->pps.pps_idx = bxt_initial_pps_idx(i915,
> > pps_has_pp_on);
> 
> Always we will get 0 here even if bios enabled correctly two pps instance for dual EDP.

Yeah, dual eDP isn't really 100% possible to get right here since the
hardware doesn't tell us which port is associated with which pps.

> Can pps be mapped with port number, like pps1 for portA and pps2 for portB?

I guess we could try something like that as the initial pass. Dunno if
that sort of behaviour is really documented anywhere though, or is it
just assumed that VBT will tell us the mapping explicitly in dual eDP
cases? Also it's not clear what mapping we should use for port != A|B.

Another idea I was thinking is to mark each PPS as in use once we manage
to probe something with it, and then skip those on subsequent probes.
But that still doesn't guarantee the mapping is correct if both PPSes
are enable when we do the EDID read.

>  
> > +	/* didn't find one? pick one where vdd is on */
> > +	if (intel_dp->pps.pps_idx < 0)
> > +		intel_dp->pps.pps_idx = bxt_initial_pps_idx(i915,
> > pps_has_vdd_on);
> 
> Same as above for vdd.
> 
> > +	/* didn't find one? pick any */
> > +	if (intel_dp->pps.pps_idx < 0) {
> > +		intel_dp->pps.pps_idx = bxt_initial_pps_idx(i915, pps_any);
> 
> pps_any() is returning bool, any specific reason? Can we return 0 from it. 

They all return bool.

> 
> Regards,
> Animesh 
> 
> > +
> > +		drm_dbg_kms(&i915->drm,
> > +			    "[ENCODER:%d:%s] no initial power sequencer,
> > assuming %d\n",
> > +			    encoder->base.base.id, encoder->base.name,
> > +			    intel_dp->pps.pps_idx);
> > +		return;
> > +	}
> > +
> > +	drm_dbg_kms(&i915->drm,
> > +		    "[ENCODER:%d:%s] initial power sequencer: %d\n",
> > +		    encoder->base.base.id, encoder->base.name,
> > +		    intel_dp->pps.pps_idx);
> > +}
> > +
> >  void intel_pps_reset_all(struct drm_i915_private *dev_priv)  {
> >  	struct intel_encoder *encoder;
> > @@ -1431,7 +1478,9 @@ void intel_pps_init(struct intel_dp *intel_dp)
> >  	pps_init_timestamps(intel_dp);
> > 
> >  	with_intel_pps_lock(intel_dp, wakeref) {
> > -		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> > +		if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> > +			bxt_initial_power_sequencer_setup(intel_dp);
> > +		else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> >  			vlv_initial_power_sequencer_setup(intel_dp);
> > 
> >  		pps_init_delays(intel_dp);
> > @@ -1440,12 +1489,31 @@ void intel_pps_init(struct intel_dp *intel_dp)
> >  	}
> >  }
> > 
> > +static void bxt_pps_init_late(struct intel_dp *intel_dp) {
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> > +	struct intel_connector *connector = intel_dp->attached_connector;
> > +
> > +	drm_WARN(&i915->drm, connector->panel.vbt.backlight.controller >= 0
> > &&
> > +		 intel_dp->pps.pps_idx != connector-
> > >panel.vbt.backlight.controller,
> > +		 "[ENCODER:%d:%s] power sequencer mismatch: %d (initial) vs.
> > %d (VBT)\n",
> > +		 encoder->base.base.id, encoder->base.name,
> > +		 intel_dp->pps.pps_idx, connector-
> > >panel.vbt.backlight.controller);
> > +
> > +	if (connector->panel.vbt.backlight.controller >= 0)
> > +		intel_dp->pps.pps_idx = connector-
> > >panel.vbt.backlight.controller;
> > +}
> > +
> >  void intel_pps_init_late(struct intel_dp *intel_dp)  {
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >  	intel_wakeref_t wakeref;
> > 
> >  	with_intel_pps_lock(intel_dp, wakeref) {
> >  		/* Reinit delays after per-panel info has been parsed from VBT
> > */
> > +		if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> > +			bxt_pps_init_late(intel_dp);
> >  		memset(&intel_dp->pps.pps_delays, 0, sizeof(intel_dp-
> > >pps.pps_delays));
> >  		pps_init_delays(intel_dp);
> >  		pps_init_registers(intel_dp, false);
> > --
> > 2.37.4
> 

-- 
Ville Syrjälä
Intel
