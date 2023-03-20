Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE756C23D6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 22:36:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0B5E10E31D;
	Mon, 20 Mar 2023 21:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5EEC10E31D
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 21:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679348176; x=1710884176;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bGwfzYgvaUEMt5Yi5D0I4shjNAdoKPOHY+yZwL0Ci3U=;
 b=PYRCPETG+c5N5+/kSXtUm9Tz3OlKbBcEMurapjWfukivEL7LMa8pMeVh
 DRx7SBREU8M/HnNCA/fMqpS3dchrYD/AoYn3rs/Lu4j+OhakH0IUv9p5U
 5rgdDphJU3p3Jre8KsoVll1FZ6Ckc1H7HIAQPKN5KLwRJ8/xzZrDLAfFS
 VGjLLcmI7BCBucwTpD8bSdkwICdFQrfnHl7epf0hjCF7fZUOIkbkdUHH0
 FfIFM1yA7V5+DQTs9MC3C/SYLy2OdxJSCmg/B8NIApcWRLu04M/zCiQhM
 8HruwO2LiosygKGCk+oyYIvohLbryDat+Pem+xkKT+KenMHB9l62VeSa0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="403657430"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="403657430"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 14:36:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="745559263"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="745559263"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 14:36:15 -0700
Date: Mon, 20 Mar 2023 23:36:12 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZBjRzOlGchwseLHI@ideak-desk.fi.intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-5-imre.deak@intel.com>
 <ZBi/GHy8oqt/Mpln@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBi/GHy8oqt/Mpln@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915/tc: Fix system resume MST
 mode restore for DP-alt sinks
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

On Mon, Mar 20, 2023 at 10:16:24PM +0200, Ville Syrjälä wrote:
> On Thu, Mar 16, 2023 at 03:17:14PM +0200, Imre Deak wrote:
> > At least restoring the MST topology during system resume needs to use
> > AUX before the display HW readout->sanitization sequence is complete,
> > but on TC ports the PHY may be in the wrong mode for this, resulting in
> > the AUX transfers to fail.
> > 
> > The initial TC port mode is kept fixed as BIOS left it for the above HW
> > readout sequence (to prevent changing the mode on an enabled port).  If
> > the port is disabled this initial mode is TBT - as in any case the PHY
> > ownership is not held - even if a DP-alt sink is connected. Thus, the
> > AUX transfers during this time will use TBT mode instead of the expected
> > DP-alt mode and so time out.
> > 
> > Fix the above by connecting the PHY during port initialization if the
> > port is disabled, which will switch to the expected mode (DP-alt in the
> > above case).
> > 
> > As the encoder/pipe HW state isn't read-out yet at this point, check if
> > the port is enabled based on the DDI_BUF enabled flag. Save the read-out
> > initial mode, so intel_tc_port_sanitize_mode() can check this wrt. the
> > read-out encoder HW state.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_tc.c       | 48 +++++++++++++++++--
> >  2 files changed, 46 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index c32bfba06ca1f..06bbfd426ac70 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1783,6 +1783,7 @@ struct intel_digital_port {
> >  	bool tc_legacy_port:1;
> >  	char tc_port_name[8];
> >  	enum tc_port_mode tc_mode;
> > +	enum tc_port_mode tc_init_mode;
> >  	enum phy_fia tc_phy_fia;
> >  	u8 tc_phy_fia_idx;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > index fd826b9657e93..e8cf3b506fb7f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -118,6 +118,24 @@ assert_tc_cold_blocked(struct intel_digital_port *dig_port)
> >  	drm_WARN_ON(&i915->drm, !enabled);
> >  }
> >  
> > +static enum intel_display_power_domain
> > +tc_port_power_domain(struct intel_digital_port *dig_port)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
> > +
> > +	return POWER_DOMAIN_PORT_DDI_LANES_TC1 + tc_port - TC_PORT_1;
> > +}
> > +
> > +static void
> > +assert_tc_port_power_enabled(struct intel_digital_port *dig_port)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +
> > +	drm_WARN_ON(&i915->drm,
> > +		    !intel_display_power_is_enabled(i915, tc_port_power_domain(dig_port)));
> > +}
> > +
> >  u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > @@ -670,6 +688,16 @@ static void __intel_tc_port_put_link(struct intel_digital_port *dig_port)
> >  	dig_port->tc_link_refcount--;
> >  }
> >  
> > +static bool tc_port_is_enabled(struct intel_digital_port *dig_port)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +
> > +	assert_tc_port_power_enabled(dig_port);
> > +
> > +	return intel_de_read(i915, DDI_BUF_CTL(dig_port->base.port)) &
> > +	       DDI_BUF_CTL_ENABLE;
> > +}
> > +
> >  /**
> >   * intel_tc_port_init_mode: Read out HW state and init the given port's TypeC mode
> >   * @dig_port: digital port
> > @@ -692,9 +720,23 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
> >  	tc_cold_wref = tc_cold_block(dig_port, &domain);
> >  
> >  	dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
> > +	/*
> > +	 * Save the initial mode for the state check in
> > +	 * intel_tc_port_sanitize_mode().
> > +	 */
> > +	dig_port->tc_init_mode = dig_port->tc_mode;
> > +	dig_port->tc_lock_wakeref = tc_cold_block(dig_port, &dig_port->tc_lock_power_domain);
> > +
> > +	/*
> > +	 * The PHY needs to be connected for AUX to work during HW readout and
> > +	 * MST topology resume, but the PHY mode can only be changed if the
> > +	 * port is disabled.
> > +	 */
> > +	if (!tc_port_is_enabled(dig_port))
> > +		intel_tc_port_update_mode(dig_port, 1, false);
> > +
> >  	/* Prevent changing dig_port->tc_mode until intel_tc_port_sanitize_mode() is called. */
> >  	__intel_tc_port_get_link(dig_port);
> > -	dig_port->tc_lock_wakeref = tc_cold_block(dig_port, &dig_port->tc_lock_power_domain);
> >  
> >  	tc_cold_unblock(dig_port, domain, tc_cold_wref);
> >  
> > @@ -741,11 +783,11 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
> >  		 * we'll just switch to disconnected mode from it here without
> >  		 * a note.
> >  		 */
> > -		if (dig_port->tc_mode != TC_PORT_TBT_ALT)
> > +		if (dig_port->tc_init_mode != TC_PORT_TBT_ALT)
> >  			drm_dbg_kms(&i915->drm,
> >  				    "Port %s: PHY left in %s mode on disabled port, disconnecting it\n",
> >  				    dig_port->tc_port_name,
> > -				    tc_port_mode_name(dig_port->tc_mode));
> > +				    tc_port_mode_name(dig_port->tc_init_mode));
> 
> So we just have the tc_init_mode to get the debug correct,
> or was it supposed be used elsewhere too?

Yes, it's only used to keep the above check working.

> >  		icl_tc_phy_disconnect(dig_port);
> >  		__intel_tc_port_put_link(dig_port);
> >  
> > -- 
> > 2.37.1
> 
> -- 
> Ville Syrjälä
> Intel
