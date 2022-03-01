Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 615164C9463
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 20:35:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9070310E7F6;
	Tue,  1 Mar 2022 19:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D55A510E7F6
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 19:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646163298; x=1677699298;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KKl9/Vwb+pzWVbPxB9HnDUMRdFbrB1z1Z1nlTDatuUk=;
 b=iSA5mpAng4vB9HAFzgw5XafotT6miQq6LAlsfTgsqtyR5WDP2dEG/Vqz
 0MTxi7J1Wm9j3AF9kVqvVbLd36h1OQiFe0XOocKkVVF8p3Z9qQw8jPkUw
 RLpqjRV4o8EW2emqlt0N/2OEK88LyeCVi0o78XbXD0nrVlfXPSXLRa71H
 cVzyJBmvhqHGur885ULV2c7MR3xRJNHew+LNWXgAjTWIyL1U/q9wrzGHl
 EFFbEWv5xZprfn9juhyzy767KmN38qBf6HET6zFzdjWrRUxihkcLAPHSR
 ifBUM+rtBHsi/qZ9gm/5yp8GIplLNYtkdmoEJmmkxjjc4t4H9KVQ4fXco g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="252050307"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="252050307"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 11:34:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="550861371"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 01 Mar 2022 11:34:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 21:34:54 +0200
Date: Tue, 1 Mar 2022 21:34:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <Yh51XiI/cuj01kiu@intel.com>
References: <20220225013055.9282-1-manasi.d.navare@intel.com>
 <20220225013055.9282-2-manasi.d.navare@intel.com>
 <YhidvyZ0vvxmHBwP@intel.com>
 <20220226011055.GA13404@labuser-Z97X-UD5H>
 <20220301193052.GA31895@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220301193052.GA31895@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
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

On Tue, Mar 01, 2022 at 11:30:52AM -0800, Navare, Manasi wrote:
> Hi Ville,
> 
> Does it make sense to add the set prop in intel_dp_Set_edid but keep the reset to false
> in intel_dp_detect where we clear other parameters?

We don't clear stuff in .detect(), or at least shouldn't. .detect() doesn't
even get run when forcing the connector status.

> 
> Manasi
> 
> 
> On Fri, Feb 25, 2022 at 05:11:02PM -0800, Navare, Manasi wrote:
> > On Fri, Feb 25, 2022 at 11:13:35AM +0200, Ville Syrj�l� wrote:
> > > On Thu, Feb 24, 2022 at 05:30:55PM -0800, Manasi Navare wrote:
> > > > With some VRR panels, user can turn VRR ON/OFF on the fly from the panel settings.
> > > > When VRR is turned OFF ,sends a long HPD to the driver clearing the Ignore MSA bit
> > > > in the DPCD. Currently the driver parses that onevery HPD but fails to reset
> > > > the corresponding VRR Capable Connector property.
> > > > Hence the userspace still sees this as VRR Capable panel which is incorrect.
> > > > 
> > > > Fix this by explicitly resetting the connector property.
> > > > 
> > > > v2: Reset vrr capable if status == connector_disconnected
> > > > v3: Use i915 and use bool vrr_capable (Jani Nikula)
> > > > v4: Move vrr_capable to after update modes call (Jani N)
> > > > Remove the redundant comment (Jan N)
> > > > v5: Fixes the regression on older platforms by reseting the VRR
> > > > only if HAS_VRR
> > > > v6: Remove the checks from driver, add in drm core before
> > > > setting VRR prop (Ville)
> > > > 
> > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > > Fixes: 390a1f8beb87 ("Revert "drm/i915/display/vrr: Reset VRR capable property on a long hpd")
> > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 15 +++++++++++----
> > > >  1 file changed, 11 insertions(+), 4 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 1046e7fe310a..f96123b56935 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -4455,6 +4455,10 @@ intel_dp_detect(struct drm_connector *connector,
> > > >  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
> > > >  		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
> > > >  
> > > > +		/* Reset VRR Capable property on disconnect */
> > > > +		drm_connector_set_vrr_capable_property(connector,
> > > > +						       false);
> > > > +
> > > >  		if (intel_dp->is_mst) {
> > > >  			drm_dbg_kms(&dev_priv->drm,
> > > >  				    "MST device may have disappeared %d vs %d\n",
> > > > @@ -4569,15 +4573,18 @@ static int intel_dp_get_modes(struct drm_connector *connector)
> > > >  {
> > > >  	struct intel_connector *intel_connector = to_intel_connector(connector);
> > > >  	struct edid *edid;
> > > > +	struct drm_i915_private *i915 = to_i915(connector->dev);
> > > >  	int num_modes = 0;
> > > >  
> > > >  	edid = intel_connector->detect_edid;
> > > >  	if (edid) {
> > > > -		num_modes = intel_connector_update_modes(connector, edid);
> > > > +		bool vrr_capable;
> > > >  
> > > > -		if (intel_vrr_is_capable(connector))
> > > > -			drm_connector_set_vrr_capable_property(connector,
> > > > -							       true);
> > > > +		num_modes = intel_connector_update_modes(connector, edid);
> > > > +		vrr_capable = intel_vrr_is_capable(connector);
> > > > +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
> > > > +			    connector->base.id, connector->name, yesno(vrr_capable));
> > > > +		drm_connector_set_vrr_capable_property(connector, vrr_capable);
> > > 
> > > As mentioned on irc I think intel_dp_(un)set_edid() would be a better
> > > place for these.
> > 
> > Yes I guess I can add the above to check for vrr_capable and set it to true/false in intel_dp_set_edid()
> > 
> > But the resetting part needs to happen outside of intel_dp_unset_edid so that we dont always set it to false
> > before set_edid. It can just stay in intel_dp_detect where we clear other othing on connect status == disconnected.
> > Is that fine?
> > 
> > Manasi
> > 
> > > 
> > > >  	}
> > > >  
> > > >  	/* Also add fixed mode, which may or may not be present in EDID */
> > > > -- 
> > > > 2.19.1
> > > 
> > > -- 
> > > Ville Syrj�l�
> > > Intel

-- 
Ville Syrj�l�
Intel
