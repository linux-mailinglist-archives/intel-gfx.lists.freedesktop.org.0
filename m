Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 680D74C02D5
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 21:07:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBAF110E385;
	Tue, 22 Feb 2022 20:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3748110E385
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 20:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645560443; x=1677096443;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dRATuUoajovsZxIz1z+lbmdlgp41G992PkX1oKu7tBg=;
 b=CkAJHIM8b8aoYAaRUo05aPlRFjgm0yyFOOyM0i4Sf2KmT9SgPdLizlSk
 FwUEZIYuYWK9uq+1AlirReLQQx2HSYvTU3UyS6GE10FL6NUGl3q9svj3R
 XB8u9lwiDzjadH6+UcFH2lRAD/XGGobpsiKWakZuqVSzPPG+6jcUiZ1wL
 yyba3Yvd8WDTV8Fwix6kjTaZC4nZBO8x52ctPwiNCZwg98yFNgyafGNRx
 wl21vqgvd9YeKwe1Eue3A4rmpGDYhEq/fBrPTR1iy1Kqgng8+n6Nml0uq
 oGfmcD39UhuTPL2eF4Zf5iuCR5S3xc8x0VeRRPji+8bLzlihYj7cudqB2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="250629109"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="250629109"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 12:07:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="573564792"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 12:07:22 -0800
Date: Tue, 22 Feb 2022 12:07:54 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220222200754.GA22644@labuser-Z97X-UD5H>
References: <20220215202601.22943-1-manasi.d.navare@intel.com>
 <20220217220108.GA31689@labuser-Z97X-UD5H>
 <87v8xc372n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87v8xc372n.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display/vrr: Reset VRR capable
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 18, 2022 at 10:36:00AM +0200, Jani Nikula wrote:
> On Thu, 17 Feb 2022, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> > Hi Jani,
> >
> > This addresses the review comments, could you please take a look at thsi patch?
> 
> Sorry for the delay,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks for the comments and review, pushed now to din

Regards
Manasi

> 
> 
> >
> > Manasi
> >
> > On Tue, Feb 15, 2022 at 12:26:01PM -0800, Manasi Navare wrote:
> >> With some VRR panels, user can turn VRR ON/OFF on the fly from the panel settings.
> >> When VRR is turned OFF ,sends a long HPD to the driver clearing the Ignore MSA bit
> >> in the DPCD. Currently the driver parses that onevery HPD but fails to reset
> >> the corresponding VRR Capable Connector property.
> >> Hence the userspace still sees this as VRR Capable panel which is incorrect.
> >> 
> >> Fix this by explicitly resetting the connector property.
> >> 
> >> v2: Reset vrr capable if status == connector_disconnected
> >> v3: Use i915 and use bool vrr_capable (Jani Nikula)
> >> v4: Move vrr_capable to after update modes call (Jani N)
> >> Remove the redundant comment (Jan N)
> >> 
> >> Cc: Jani Nikula <jani.nikula@intel.com>
> >> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++----
> >>  1 file changed, 13 insertions(+), 4 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 1046e7fe310a..929e9b6febf1 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -4455,6 +4455,12 @@ intel_dp_detect(struct drm_connector *connector,
> >>  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
> >>  		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
> >>  
> >> +		/* Reset VRR Capable property */
> >> +		drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] VRR capable: FALSE\n",
> >> +			    connector->base.id, connector->name);
> >> +		drm_connector_set_vrr_capable_property(connector,
> >> +						       false);
> >> +
> >>  		if (intel_dp->is_mst) {
> >>  			drm_dbg_kms(&dev_priv->drm,
> >>  				    "MST device may have disappeared %d vs %d\n",
> >> @@ -4569,15 +4575,18 @@ static int intel_dp_get_modes(struct drm_connector *connector)
> >>  {
> >>  	struct intel_connector *intel_connector = to_intel_connector(connector);
> >>  	struct edid *edid;
> >> +	struct drm_i915_private *i915 = to_i915(connector->dev);
> >>  	int num_modes = 0;
> >>  
> >>  	edid = intel_connector->detect_edid;
> >>  	if (edid) {
> >> -		num_modes = intel_connector_update_modes(connector, edid);
> >> +		bool vrr_capable;
> >>  
> >> -		if (intel_vrr_is_capable(connector))
> >> -			drm_connector_set_vrr_capable_property(connector,
> >> -							       true);
> >> +		num_modes = intel_connector_update_modes(connector, edid);
> >> +		vrr_capable = intel_vrr_is_capable(connector);
> >> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
> >> +			    connector->base.id, connector->name, yesno(vrr_capable));
> >> +		drm_connector_set_vrr_capable_property(connector, vrr_capable);
> >>  	}
> >>  
> >>  	/* Also add fixed mode, which may or may not be present in EDID */
> >> -- 
> >> 2.19.1
> >> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
