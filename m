Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE464D3E0F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:25:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D50889AB3;
	Thu, 10 Mar 2022 00:25:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5AEC89AB3
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646871951; x=1678407951;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lTN6v+stm1/UDFhey9HaNLR4esM1iKe0He2IWu0PfRY=;
 b=HA40YqfnLu/5tO+fuUCpugo4X/uEVFUWS1NCR+EQXqcbPZvj0ccf3z8r
 b+/alRiOIebrPFNNf9gsxfgB8j1Bg8/zmT9oVuYpgblDkI4Hh3zcLx4TK
 h1WY1sYEwE77XKcmeXHE25RRe/Olcq2O30PiKDDq8HQDAqVuprI9Wjogh
 Oh8UJxNcnfCIlxuS8wLSJHWjv7PInanRyrMSvlIhCQ/9aMjIvIrUbaKAY
 e5ILyerTy6FC14cq3oLdhXy+f/P0Dhk+vQXER8OqAzyb3DMkMQAnFC+I9
 jsesZU7JOpFMwvTAr53Q2kjELfBA8p0M8+n7h0IOX1vltpYjiYfuJj7wO Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="315839621"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="315839621"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:25:51 -0800
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="644242790"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:25:51 -0800
Date: Wed, 9 Mar 2022 16:26:52 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220310002652.GA6158@labuser-Z97X-UD5H>
References: <20220303233222.4698-1-manasi.d.navare@intel.com>
 <Yik7vRBdA7qDmxHs@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yik7vRBdA7qDmxHs@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v7] drm/i915/display/vrr: Reset VRR capable
 property on a long hpd
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 10, 2022 at 01:43:57AM +0200, Ville Syrjälä wrote:
> On Thu, Mar 03, 2022 at 03:32:22PM -0800, Manasi Navare wrote:
> > With some VRR panels, user can turn VRR ON/OFF on the fly from the panel settings.
> > When VRR is turned OFF ,sends a long HPD to the driver clearing the Ignore MSA bit
> > in the DPCD. Currently the driver parses that onevery HPD but fails to reset
> > the corresponding VRR Capable Connector property.
> > Hence the userspace still sees this as VRR Capable panel which is incorrect.
> > 
> > Fix this by explicitly resetting the connector property.
> > 
> > v2: Reset vrr capable if status == connector_disconnected
> > v3: Use i915 and use bool vrr_capable (Jani Nikula)
> > v4: Move vrr_capable to after update modes call (Jani N)
> > Remove the redundant comment (Jan N)
> > v5: Fixes the regression on older platforms by reseting the VRR
> > only if HAS_VRR
> > v6: Remove the checks from driver, add in drm core before
> > setting VRR prop (Ville)
> > v7: Move VRR set/reset to set/unset_edid (Ville)
> > 
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Fixes: 390a1f8beb87 ("Revert "drm/i915/display/vrr: Reset VRR capable property on a long hpd")
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> 
> Looks reasoanble enough to me.
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> But be careful when pushing this since I don't think
> the drm_connector_set_vrr_capable_property() change has
> percolated into drm-intel-next yet.

Okay I can wait then to push until that gets percolated from drm-misc

Manasi

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++------
> >  1 file changed, 11 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index d6ef33096bb6..1d0f8fc39005 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4385,13 +4385,20 @@ intel_dp_update_420(struct intel_dp *intel_dp)
> >  static void
> >  intel_dp_set_edid(struct intel_dp *intel_dp)
> >  {
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >  	struct intel_connector *connector = intel_dp->attached_connector;
> >  	struct edid *edid;
> > +	bool vrr_capable;
> >  
> >  	intel_dp_unset_edid(intel_dp);
> >  	edid = intel_dp_get_edid(intel_dp);
> >  	connector->detect_edid = edid;
> >  
> > +	vrr_capable = intel_vrr_is_capable(&connector->base);
> > +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
> > +		    connector->base.base.id, connector->base.name, str_yes_no(vrr_capable));
> > +	drm_connector_set_vrr_capable_property(&connector->base, vrr_capable);
> > +
> >  	intel_dp_update_dfp(intel_dp, edid);
> >  	intel_dp_update_420(intel_dp);
> >  
> > @@ -4424,6 +4431,9 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
> >  
> >  	intel_dp->dfp.ycbcr_444_to_420 = false;
> >  	connector->base.ycbcr_420_allowed = false;
> > +
> > +	drm_connector_set_vrr_capable_property(&connector->base,
> > +					       false);
> >  }
> >  
> >  static int
> > @@ -4574,14 +4584,9 @@ static int intel_dp_get_modes(struct drm_connector *connector)
> >  	int num_modes = 0;
> >  
> >  	edid = intel_connector->detect_edid;
> > -	if (edid) {
> > +	if (edid)
> >  		num_modes = intel_connector_update_modes(connector, edid);
> >  
> > -		if (intel_vrr_is_capable(connector))
> > -			drm_connector_set_vrr_capable_property(connector,
> > -							       true);
> > -	}
> > -
> >  	/* Also add fixed mode, which may or may not be present in EDID */
> >  	if (intel_dp_is_edp(intel_attached_dp(intel_connector)) &&
> >  	    intel_connector->panel.fixed_mode) {
> > -- 
> > 2.19.1
> 
> -- 
> Ville Syrjälä
> Intel
