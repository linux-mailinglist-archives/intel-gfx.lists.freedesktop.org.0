Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 822679ACCD7
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 16:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2500710E7EF;
	Wed, 23 Oct 2024 14:40:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iGvjtxyI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8F1F10E7EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 14:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729694427; x=1761230427;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kYv74GMiCy8Pvyn3mgts/QZaJz5qrG/AB51JSiW8i1E=;
 b=iGvjtxyIVA3lYlpuLv6di0oZ/WXtdL0O6c7oTqP6OLftNmINgThyhY26
 zW/mY6iyTLyi83jijfiYvfFVqPPgsccVwC3LedNlqalBhPx3e46e2rcZz
 xZ/x1Ot8rGyFJH0yF/vXjv32wgU5F8qhBdnFVZBEPPee5tGImc2P6ocyQ
 IBUbqpLcOF9209k30/R7fko7Evoxz+xHUzNGyd84vJFw5XwBzNh6Rl0pF
 NUg+q/K7JksgxfA2NSIYT6nDGbxLDI9KC0cmMoHgQoJdEBwgGFQKDAYs5
 8WOk7FcvbJAJnA+RZSFLf3K8n6+Y+/5qPJHM3+mQAOsvYZ9oC90Q1sKZG g==;
X-CSE-ConnectionGUID: hNp5BUKWShG0Zpo7rtvlxA==
X-CSE-MsgGUID: EzqmJEHZSfagQe+98GJ4UA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29441631"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29441631"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 07:40:26 -0700
X-CSE-ConnectionGUID: 7ck6b0ypT32RL/7Ddx4j4g==
X-CSE-MsgGUID: UKqadUR2RuKWDD+CnM9Qhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="103502624"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 07:40:25 -0700
Date: Wed, 23 Oct 2024 17:40:56 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v4 4/8] drm/i915/dp: Track source OUI validity explicitly
Message-ID: <ZxkK-OneQNHH-WGC@ideak-desk.fi.intel.com>
References: <20241016132405.2231744-5-imre.deak@intel.com>
 <20241022094624.2696428-1-imre.deak@intel.com>
 <ZxjpC1QVavaq85Yj@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZxjpC1QVavaq85Yj@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 23, 2024 at 03:16:11PM +0300, Ville Syrjälä wrote:
> On Tue, Oct 22, 2024 at 12:46:23PM +0300, Imre Deak wrote:
> > While updating the source OUI on the sink the driver should avoid
> > writing the OUI if it's already up-to-date to prevent the sink from
> > resetting itself in response to the update. On eDP - the only output
> > type where the OUI was updated so far - the driver ensured this by
> > comparing the current source OUI DPCD register values with the expected
> > Intel OUI value, skipping the update in case of a match. On some non-eDP
> > sinks - at least on Synaptics branch devices - this method doesn't work,
> > since the source OUI DPCD registers read back as all 0, even after
> > updating the registers.
> > 
> > Handle the above kind of sinks by tracking when the OUI was updated and
> > so should be valid, regardless of what the DPCD registers contain.
> > 
> > eDP sinks reset the written source OUI value when the panel power is
> > disabled, invalidate the OUI state accordingly.
> > 
> > This is required by a follow-up patch updating the source OUI for
> > non-eDP sink types as well.
> > 
> > v2: Fix setting intel_dp::oui_valid=true, if the DPCD register contains
> >     already the expected value.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 38 ++++++++++++-------
> >  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
> >  drivers/gpu/drm/i915/display/intel_pps.c      |  6 ++-
> >  6 files changed, 34 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> > index 440fb3002f286..596e926ef0894 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > @@ -1251,6 +1251,7 @@ static void intel_dp_encoder_reset(struct drm_encoder *encoder)
> >  	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
> >  
> >  	intel_dp->reset_link_params = true;
> > +	intel_dp_invalidate_source_oui(intel_dp);
> >  
> >  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> >  		vlv_pps_pipe_reset(intel_dp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index fe1ded6707f90..465f245a53c48 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4392,6 +4392,7 @@ static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
> >  	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
> >  
> >  	intel_dp->reset_link_params = true;
> > +	intel_dp_invalidate_source_oui(intel_dp);
> >  
> >  	intel_pps_encoder_reset(intel_dp);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 2bb1fa64da2f1..9b46427806c6d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1765,6 +1765,7 @@ struct intel_dp {
> >  
> >  	/* When we last wrote the OUI for eDP */
> >  	unsigned long last_oui_write;
> > +	bool oui_valid;
> >  
> >  	bool colorimetry_support;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 96ee5de719a2c..a6f84b8f770d0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3400,33 +3400,46 @@ void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
> >  }
> >  
> >  static void
> > -intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
> > +intel_dp_init_source_oui(struct intel_dp *intel_dp)
> >  {
> >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >  	u8 oui[] = { 0x00, 0xaa, 0x01 };
> >  	u8 buf[3] = {};
> >  
> > +	if (!intel_dp_is_edp(intel_dp))
> > +		return;
> > +
> > +	if (READ_ONCE(intel_dp->oui_valid))
> > +		return;
> > +
> > +	WRITE_ONCE(intel_dp->oui_valid, true);
> 
> Would seem nicer if this is set alognside the timestamp.
> Are we actually always setting both?

Yes. In case DPCD contained already the correct value, it's not known
when it was written, so the code assumes it's written now.

> In that case maybe extract both into a small helper?

You mean setting both at the same place, but not sure how it would work:
I set the flag before writing the register to account for the
T1: oui_valid=true -> T2: HPD/oui_valid=false -> T1: write DPCD case,
guaranteeing that oui_valid remains false. OTOH last_oui_write should be
set after the DPCD write so that the wait duration can't get shorter
than needed.

> > +
> >  	/*
> >  	 * During driver init, we want to be careful and avoid changing the source OUI if it's
> >  	 * already set to what we want, so as to avoid clearing any state by accident
> >  	 */
> > -	if (careful) {
> > -		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
> > -			drm_err(&i915->drm, "Failed to read source OUI\n");
> > +	if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
> > +		drm_err(&i915->drm, "Failed to read source OUI\n");
> >  
> > -		if (memcmp(oui, buf, sizeof(oui)) == 0) {
> > -			/* Assume the OUI was written now. */
> > -			intel_dp->last_oui_write = jiffies;
> > -			return;
> > -		}
> > +	if (memcmp(oui, buf, sizeof(oui)) == 0) {
> > +		/* Assume the OUI was written now. */
> > +		intel_dp->last_oui_write = jiffies;
> > +		return;
> >  	}
> >  
> > -	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
> > +	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0) {
> >  		drm_err(&i915->drm, "Failed to write source OUI\n");
> > +		WRITE_ONCE(intel_dp->oui_valid, false);
> > +	}
> >  
> >  	intel_dp->last_oui_write = jiffies;
> >  }
> >  
> > +void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp)
> > +{
> > +	WRITE_ONCE(intel_dp->oui_valid, false);
> > +}
> > +
> >  void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
> >  {
> >  	struct intel_connector *connector = intel_dp->attached_connector;
> > @@ -3462,8 +3475,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
> >  		lspcon_resume(dp_to_dig_port(intel_dp));
> >  
> >  		/* Write the source OUI as early as possible */
> > -		if (intel_dp_is_edp(intel_dp))
> > -			intel_edp_init_source_oui(intel_dp, false);
> > +		intel_dp_init_source_oui(intel_dp);
> >  
> >  		/*
> >  		 * When turning on, we need to retry for 1ms to give the sink
> > @@ -4184,7 +4196,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
> >  	 * If needed, program our source OUI so we can make various Intel-specific AUX services
> >  	 * available (such as HDR backlight controls)
> >  	 */
> > -	intel_edp_init_source_oui(intel_dp, true);
> > +	intel_dp_init_source_oui(intel_dp);
> >  
> >  	return true;
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > index 4efb9605a50e0..48f10876be656 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -189,6 +189,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp);
> >  void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
> >  				 const struct intel_crtc_state *crtc_state);
> >  
> > +void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp);
> >  void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
> >  int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> > index 64f1f7ea94993..3d1f9b17034d0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -861,8 +861,10 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
> >  		    intel_de_read(display, pp_stat_reg),
> >  		    intel_de_read(display, pp_ctrl_reg));
> >  
> > -	if ((pp & PANEL_POWER_ON) == 0)
> > +	if ((pp & PANEL_POWER_ON) == 0) {
> >  		intel_dp->pps.panel_power_off_time = ktime_get_boottime();
> > +		intel_dp_invalidate_source_oui(intel_dp);
> 
> Hmm. I was thinking the rsulting long HPD would be enough, but I
> guess we do have at least one example of a machine with no HPD on
> eDP :(

Ok, didn't think of an HPD getting always generated (is that guaranteed
vs. only an artifact?) Another reason for doing the above synchronously
here would be to guarantee that a modeset disabling/reenabling the panel
power will be guaranteed to see oui_valid=false during reenabling, so
that reenabling will rewrite the OUI (the HPD might be handled at any
point wrt. the reenabling).

> > +	}
> >  
> >  	intel_display_power_put(dev_priv,
> >  				intel_aux_power_domain(dig_port),
> > @@ -1074,6 +1076,8 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
> >  	wait_panel_off(intel_dp);
> >  	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
> >  
> > +	intel_dp_invalidate_source_oui(intel_dp);
> > +
> >  	/* We got a reference when we enabled the VDD. */
> >  	intel_display_power_put(dev_priv,
> >  				intel_aux_power_domain(dig_port),
> > -- 
> > 2.44.2
> 
> -- 
> Ville Syrjälä
> Intel
