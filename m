Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBD74C52F6
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 02:10:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0ECA10EC1F;
	Sat, 26 Feb 2022 01:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0E4010EC1F
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Feb 2022 01:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645837824; x=1677373824;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=noFAleZeQ4DtjUvEC2xjsJgsXGTN3gjxvL1MvVexSao=;
 b=L5449yRokpBmKQxsywYqEBtBFisLs/C0OFFre4a/FqJ33FlJVI7OPa0s
 Tp1WspNfXCVgJjWya2QG2VIPSIVyU9vqOwAYOSnbNIwonBo/Pc34Y4+X/
 vvpVI1WYxYqYZ3EgjQmWeYhZn20N3vAdOX+RzNEliW/I5I1tFAY88FygL
 fyFIa6d6qN2xtdszow5SANA5v2IXotM1jeE6gQ3iiTrHYQSP9R0phGV+C
 Z7cvxvhKLoGiRXN2n9I1hzTY7DYulzraiiW8Gy/fa0atJpgnF6e4MJcgD
 IJoUPoKTVT6TennbtBbYY1M4anL0kFzBSG/shZBO02+Rj4kO8gcWlBwVf Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="252810240"
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="252810240"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 17:10:24 -0800
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="549499189"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 17:10:23 -0800
Date: Fri, 25 Feb 2022 17:11:02 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220226011055.GA13404@labuser-Z97X-UD5H>
References: <20220225013055.9282-1-manasi.d.navare@intel.com>
 <20220225013055.9282-2-manasi.d.navare@intel.com>
 <YhidvyZ0vvxmHBwP@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YhidvyZ0vvxmHBwP@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v6 2/2] drm/i915/display/vrr: Reset VRR
 capable property on a long hpd
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

On Fri, Feb 25, 2022 at 11:13:35AM +0200, Ville Syrjälä wrote:
> On Thu, Feb 24, 2022 at 05:30:55PM -0800, Manasi Navare wrote:
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
> > 
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Fixes: 390a1f8beb87 ("Revert "drm/i915/display/vrr: Reset VRR capable property on a long hpd")
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 15 +++++++++++----
> >  1 file changed, 11 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 1046e7fe310a..f96123b56935 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4455,6 +4455,10 @@ intel_dp_detect(struct drm_connector *connector,
> >  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
> >  		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
> >  
> > +		/* Reset VRR Capable property on disconnect */
> > +		drm_connector_set_vrr_capable_property(connector,
> > +						       false);
> > +
> >  		if (intel_dp->is_mst) {
> >  			drm_dbg_kms(&dev_priv->drm,
> >  				    "MST device may have disappeared %d vs %d\n",
> > @@ -4569,15 +4573,18 @@ static int intel_dp_get_modes(struct drm_connector *connector)
> >  {
> >  	struct intel_connector *intel_connector = to_intel_connector(connector);
> >  	struct edid *edid;
> > +	struct drm_i915_private *i915 = to_i915(connector->dev);
> >  	int num_modes = 0;
> >  
> >  	edid = intel_connector->detect_edid;
> >  	if (edid) {
> > -		num_modes = intel_connector_update_modes(connector, edid);
> > +		bool vrr_capable;
> >  
> > -		if (intel_vrr_is_capable(connector))
> > -			drm_connector_set_vrr_capable_property(connector,
> > -							       true);
> > +		num_modes = intel_connector_update_modes(connector, edid);
> > +		vrr_capable = intel_vrr_is_capable(connector);
> > +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
> > +			    connector->base.id, connector->name, yesno(vrr_capable));
> > +		drm_connector_set_vrr_capable_property(connector, vrr_capable);
> 
> As mentioned on irc I think intel_dp_(un)set_edid() would be a better
> place for these.

Yes I guess I can add the above to check for vrr_capable and set it to true/false in intel_dp_set_edid()

But the resetting part needs to happen outside of intel_dp_unset_edid so that we dont always set it to false
before set_edid. It can just stay in intel_dp_detect where we clear other othing on connect status == disconnected.
Is that fine?

Manasi

> 
> >  	}
> >  
> >  	/* Also add fixed mode, which may or may not be present in EDID */
> > -- 
> > 2.19.1
> 
> -- 
> Ville Syrjälä
> Intel
