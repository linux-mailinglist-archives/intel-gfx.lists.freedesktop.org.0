Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096FD617BFD
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 12:54:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F19210E5D9;
	Thu,  3 Nov 2022 11:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BE3910E5D9
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 11:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667476468; x=1699012468;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=pPIbmNnWcgZ8Of5r3HXa+LG+fg7vKNTXSYoxusdBEU4=;
 b=KumEoyKnVwKQ/jORyMCO3kt2naKKFrESWr7/BkcpVaObTWpJD0DpmLD0
 Dq9e+PKhs030AljOhRTgbPgLelkXxaPNpFGC3o1U59zbbKjUle/RIsThp
 S0Izx0NzCBYjnXQMCf5gxT5HcgNtK5busfwjDgxIJqlYdTzTICVRwRiz2
 pa1k1iSTtHFSmID7KdSsNU8GE77SZVbltY2p9o16kVLg0J6bUzFfdPehK
 HvCxM7Q6xd0qPt0xbb3TLwI63WJiB1S81kS0BdG2CD5awnCy4kZH4GjgY
 a1pKhnHRu5hvdm2FNtl8go30RZ2iJYKqDBpR6gZYD2sRJzadIHvdu+vrH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="371763056"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="371763056"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 04:54:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="740162175"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="740162175"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 04:54:26 -0700
Date: Thu, 3 Nov 2022 13:54:22 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y2Or7h3iqB0iM//I@ideak-desk.fi.intel.com>
References: <20221102171530.3261282-1-imre.deak@intel.com>
 <20221102171530.3261282-7-imre.deak@intel.com>
 <875yfxch7y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875yfxch7y.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Factor out function to
 get/put AUX_IO power for main link
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 02, 2022 at 09:02:41PM +0200, Jani Nikula wrote:
> On Wed, 02 Nov 2022, Imre Deak <imre.deak@intel.com> wrote:
> > Factor out functions to get/put the AUX_IO power domain for the main
> > link on DDI ports.
> >
> > While at it clarify the corresponding code comment.
> >
> > No functional change.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 84 ++++++++++++++----------
> >  1 file changed, 51 insertions(+), 33 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 00b577a5b9a76..7453772d2073d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -846,26 +846,63 @@ bool intel_ddi_get_hw_state(struct intel_encoder *encoder,
> >  }
> >  
> >  static enum intel_display_power_domain
> > -intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
> > +intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
> > +			       const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> >  
> > -	/* ICL+ HW requires corresponding AUX IOs to be powered up for PSR with
> > +	/*
> > +	 * ICL+ HW requires corresponding AUX IOs to be powered up for PSR with
> >  	 * DC states enabled at the same time, while for driver initiated AUX
> >  	 * transfers we need the same AUX IOs to be powered but with DC states
> > -	 * disabled. Accordingly use the AUX power domain here which leaves DC
> > -	 * states enabled.
> > -	 * However, for non-A AUX ports the corresponding non-EDP transcoders
> > -	 * would have already enabled power well 2 and DC_OFF. This means we can
> > -	 * acquire a wider POWER_DOMAIN_AUX_{B,C,D,F} reference instead of a
> > -	 * specific AUX_IO reference without powering up any extra wells.
> > -	 * Note that PSR is enabled only on Port A even though this function
> > -	 * returns the correct domain for other ports too.
> > +	 * disabled. Accordingly use the AUX_IO_<port> power domain here which
> > +	 * leaves DC states enabled.
> > +	 *
> > +	 * Before MTL all DP ports and HDMI ports on TypeC PHYs also require
> > +	 * AUX IO to be enabled, but all these require DC_OFF to be enabled as
> > +	 * well, so we can acquire a wider AUX_<port> power domain reference
> > +	 * instead of a specific AUX_IO_<port> reference without powering up any
> > +	 * extra wells.
> >  	 */
> >  	if (intel_dp_is_edp(&dig_port->dp))
> >  		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
> > -	else
> > +	else if (intel_crtc_has_dp_encoder(crtc_state) ||
> > +		 intel_phy_is_tc(i915, phy))
> >  		return intel_aux_power_domain(dig_port);
> > +	else
> > +		return POWER_DOMAIN_INVALID;
> > +}
> > +
> > +static void
> > +get_aux_power_for_main_link(struct intel_digital_port *dig_port,
> > +			    const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +	enum intel_display_power_domain domain =
> > +		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
> > +
> > +	drm_WARN_ON(&i915->drm, dig_port->aux_wakeref);
> > +
> > +	if (domain == POWER_DOMAIN_INVALID)
> > +		return;
> > +
> > +	dig_port->aux_wakeref = intel_display_power_get(i915, domain);
> > +}
> > +
> > +static void
> > +put_aux_power_for_main_link(struct intel_digital_port *dig_port,
> > +			    const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +	intel_wakeref_t wf = fetch_and_zero(&dig_port->aux_wakeref);
> > +	enum intel_display_power_domain domain =
> > +		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
> > +
> > +	if (!wf)
> > +		return;
> > +
> > +	intel_display_power_put(i915, domain, wf);
> >  }
> 
> Nitpick, I think foo_get()/foo_put() are much more common in the driver
> than get_foo()/put_foo().

Ok, can rename these.

> >  static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
> > @@ -873,7 +910,6 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  	struct intel_digital_port *dig_port;
> > -	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
> >  
> >  	/*
> >  	 * TODO: Add support for MST encoders. Atm, the following should never
> > @@ -892,17 +928,7 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
> >  								   dig_port->ddi_io_power_domain);
> >  	}
> >  
> > -	/*
> > -	 * AUX power is only needed for (e)DP mode, and for HDMI mode on TC
> > -	 * ports.
> > -	 */
> > -	if (intel_crtc_has_dp_encoder(crtc_state) ||
> > -	    intel_phy_is_tc(dev_priv, phy)) {
> > -		drm_WARN_ON(&dev_priv->drm, dig_port->aux_wakeref);
> > -		dig_port->aux_wakeref =
> > -			intel_display_power_get(dev_priv,
> > -						intel_ddi_main_link_aux_domain(dig_port));
> > -	}
> > +	get_aux_power_for_main_link(dig_port, crtc_state);
> >  }
> >  
> >  void intel_ddi_enable_pipe_clock(struct intel_encoder *encoder,
> > @@ -2741,10 +2767,7 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
> >  		intel_ddi_post_disable_dp(state, encoder, old_crtc_state,
> >  					  old_conn_state);
> >  
> > -	if (intel_crtc_has_dp_encoder(old_crtc_state) || is_tc_port)
> > -		intel_display_power_put(dev_priv,
> > -					intel_ddi_main_link_aux_domain(dig_port),
> > -					fetch_and_zero(&dig_port->aux_wakeref));
> > +	put_aux_power_for_main_link(dig_port, old_crtc_state);
> >  
> >  	if (is_tc_port)
> >  		intel_tc_port_put_link(dig_port);
> > @@ -3065,12 +3088,7 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
> >  	if (is_tc_port)
> >  		intel_tc_port_get_link(dig_port, crtc_state->lane_count);
> >  
> > -	if (intel_crtc_has_dp_encoder(crtc_state) || is_tc_port) {
> > -		drm_WARN_ON(&dev_priv->drm, dig_port->aux_wakeref);
> > -		dig_port->aux_wakeref =
> > -			intel_display_power_get(dev_priv,
> > -						intel_ddi_main_link_aux_domain(dig_port));
> > -	}
> > +	get_aux_power_for_main_link(dig_port, crtc_state);
> >  
> >  	if (is_tc_port && !intel_tc_port_in_tbt_alt_mode(dig_port))
> >  		/*
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
