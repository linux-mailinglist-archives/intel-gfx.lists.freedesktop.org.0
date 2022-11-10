Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FE3624262
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 13:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B185110E14E;
	Thu, 10 Nov 2022 12:29:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6214F10E14E
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 12:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668083361; x=1699619361;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=By2x8f+xwcXFekFmQg52WH3oBFnNWtaPhLDgy5mI/E4=;
 b=LdppsjIZSJNMd6kTfA34YmWqYJKMcV7hr2T4vACOi9xQgT69T6AuRyky
 h3Onc+gbTGSyiBgDZWboNtHH9KC0HDGCbq3TcdS+xdmuyIff8n0WiKKNm
 KoCWHbBRvEl+/a/v7Q/NXH+bU4nQACl0Ur4PRJz8i5/DZ1wzEXKAKMQXp
 jqvEDgQdkruNlx81BpDby4qZanKYqGXpFRouP0KMyemXlAFO12ZSFg5lu
 H6NO0oT9N32IYq89jQtRPqByVFO8Q/lEt6dEigHEcewOKdCbzwKuw/FhQ
 Mp85E8Fju7/SAuL/w1JQ6UOqSUR/6Ly70LtgdKFzPRbT9gBC2cG5w+1iV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="308919139"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="308919139"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 04:29:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="670339595"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="670339595"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 04:29:19 -0800
Date: Thu, 10 Nov 2022 14:29:14 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y2zumkGMdXviwXm7@ideak-desk.fi.intel.com>
References: <20221107170917.3566758-8-imre.deak@intel.com>
 <20221108151828.3761358-4-imre.deak@intel.com>
 <Y2zQpjgTsBHW/hNs@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y2zQpjgTsBHW/hNs@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 7/9] drm/i915: Factor out function to
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 10, 2022 at 12:21:26PM +0200, Ville Syrjälä wrote:
> On Tue, Nov 08, 2022 at 05:18:26PM +0200, Imre Deak wrote:
> > Factor out functions to get/put the AUX_IO power domain for the main
> > link on DDI ports.
> > 
> > While at it clarify the corresponding code comment.
> > 
> > No functional change.
> > 
> > v2:
> > - s/(get/put)_aux_power_for_main_link/main_link_aux_power_domain_(get/put)
> >   (Jani)
> > - Clarify in the code comment that AUX_IO is needed only by TypeC besides
> >   eDP/PSR.
> > v3:
> > - Rebased on checking intel_encoder_can_psr() instead of crtc->has_psr.
> > 
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 84 ++++++++++++++----------
> >  1 file changed, 51 insertions(+), 33 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index a087609223c60..21f1a68a57598 100644
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
> > +	 * Before MTL TypeC PHYs (in all TypeC modes and both DP/HDMI) also require
> > +	 * AUX IO to be enabled, but all these require DC_OFF to be enabled as
> > +	 * well, so we can acquire a wider AUX_<port> power domain reference
> > +	 * instead of a specific AUX_IO_<port> reference without powering up any
> > +	 * extra wells.
> >  	 */
> >  	if (intel_encoder_can_psr(&dig_port->base))
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
> > +main_link_aux_power_domain_get(struct intel_digital_port *dig_port,
> > +			       const struct intel_crtc_state *crtc_state)
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
> > +main_link_aux_power_domain_put(struct intel_digital_port *dig_port,
> > +			       const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +	intel_wakeref_t wf = fetch_and_zero(&dig_port->aux_wakeref);
> 
> Please don't call functions with side effects in variable
> declaration blocks. Far too easy to miss them and then you end up
> scratching your head for a day or two debugging the wrong thing.

Ok, can change this.

> > +	enum intel_display_power_domain domain =
> > +		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
> > +
> > +	if (!wf)
> > +		return;
> > +
> > +	intel_display_power_put(i915, domain, wf);
> >  }
> >  
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
> > +	main_link_aux_power_domain_get(dig_port, crtc_state);
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
> > +	main_link_aux_power_domain_put(dig_port, old_crtc_state);
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
> > +	main_link_aux_power_domain_get(dig_port, crtc_state);
> >  
> >  	if (is_tc_port && !intel_tc_port_in_tbt_alt_mode(dig_port))
> >  		/*
> > -- 
> > 2.37.1
> 
> -- 
> Ville Syrjälä
> Intel
