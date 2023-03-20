Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C86AF6C23C2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 22:35:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2C1810E31A;
	Mon, 20 Mar 2023 21:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65D8610E31D
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 21:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679348101; x=1710884101;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dfO4F89CdPJ0EJfbbywLU15bELRPanMVA5qxRo0+65M=;
 b=MLw/vrcAlZDD9zMGee16knyNcpYa8KXzh543GJAHXbDTA4ui8Cq4bYn0
 LEu9Aj0WSVN2jq7sWfO0MkNzLn6b5qE/F4KAKcuUyTOE0JZx/KZTZl97d
 kXgqLpPdLhiu+o7QelnYvYZqaPCJbo4v5xvY/dfpCU+l0JS6HSwXJrheK
 LmuHR6T+sW0F6zzVC8nRlpYRDs6gLMj7nFnYURdv0DnyRGqMaqCLmryK0
 bNIBvTYbJI+m8fH3UO6mC5Eizuov5BU4yZ8VPfR0Jp8EhaH5zDDmXtBZJ
 rgqWqtXrKcNQNTBDnwBopCeym5/V/j90+BnXIpv4tmTi3lbXB5YAqDKBH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="403657223"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="403657223"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 14:35:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="713709948"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="713709948"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 14:34:59 -0700
Date: Mon, 20 Mar 2023 23:34:56 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZBjRgFzAx1AUdj2O@ideak-desk.fi.intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-14-imre.deak@intel.com>
 <ZBi8dKHt2btDdzqI@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBi8dKHt2btDdzqI@intel.com>
Subject: Re: [Intel-gfx] [PATCH 13/14] drm/i915/tc: Factor out a function
 querying active links on a TC port
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

On Mon, Mar 20, 2023 at 10:05:08PM +0200, Ville Syrjälä wrote:
> On Thu, Mar 16, 2023 at 03:17:23PM +0200, Imre Deak wrote:
> > For clarity factor out the function to determine if there are active
> > links on a TC port. This prepares for the next patch also checking the
> > port's PLL type.
> > 
> > No functional changes.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_tc.c | 35 ++++++++++++++++---------
> >  1 file changed, 22 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > index 5d040f0c5f630..8481018d0fdaa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -872,6 +872,27 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
> >  	mutex_unlock(&dig_port->tc_lock);
> >  }
> >  
> > +static bool tc_port_has_active_links(struct intel_digital_port *dig_port)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +	struct intel_encoder *encoder = &dig_port->base;
> > +	struct intel_crtc *crtc = to_intel_crtc(encoder->base.crtc);
> > +	int active_links = 0;
> > +
> > +	if (dig_port->dp.is_mst) {
> > +		active_links = intel_dp_mst_encoder_active_links(dig_port);
> > +	} else if (crtc && crtc->active) {
> 
> Uff. Can we get rid of this legacy encoder->crtc and crtc->active usage?

Yes, can pass crtc_state here instead and check hw.active in that.

> 
> > +		active_links = 1;
> > +	}
> > +
> > +	if (active_links && !icl_tc_phy_is_connected(dig_port))
> > +		drm_err(&i915->drm,
> > +			"Port %s: PHY disconnected with %d active link(s)\n",
> > +			dig_port->tc_port_name, active_links);
> > +
> > +	return active_links;
> > +}
> > +
> >  /**
> >   * intel_tc_port_sanitize_mode: Sanitize the given port's TypeC mode
> >   * @dig_port: digital port
> > @@ -885,23 +906,11 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
> >  void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > -	struct intel_encoder *encoder = &dig_port->base;
> > -	int active_links = 0;
> >  
> >  	mutex_lock(&dig_port->tc_lock);
> >  
> > -	if (dig_port->dp.is_mst)
> > -		active_links = intel_dp_mst_encoder_active_links(dig_port);
> > -	else if (encoder->base.crtc)
> > -		active_links = to_intel_crtc(encoder->base.crtc)->active;
> > -
> >  	drm_WARN_ON(&i915->drm, dig_port->tc_link_refcount != 1);
> > -	if (active_links) {
> > -		if (!icl_tc_phy_is_connected(dig_port))
> > -			drm_dbg_kms(&i915->drm,
> > -				    "Port %s: PHY disconnected with %d active link(s)\n",
> > -				    dig_port->tc_port_name, active_links);
> > -	} else {
> > +	if (!tc_port_has_active_links(dig_port)) {
> >  		/*
> >  		 * TBT-alt is the default mode in any case the PHY ownership is not
> >  		 * held (regardless of the sink's connected live state), so
> > -- 
> > 2.37.1
> 
> -- 
> Ville Syrjälä
> Intel
