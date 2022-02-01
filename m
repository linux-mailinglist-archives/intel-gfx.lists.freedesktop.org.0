Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F8D4A5399
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 00:56:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B31C10E13B;
	Mon, 31 Jan 2022 23:56:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F40E10E13B
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 23:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643673396; x=1675209396;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tsFrefq8s9XXc+keyDjZm0Lg1KpPlTJbMUVgAK/UsKY=;
 b=N0R4zhu2mZFaFRJyYRsddm6wfDcz7WNzb1WG2XsRKZUPwUCmuBOOJukA
 v0FfO3j5jE4+GSYDAHsvS4pndHbsE2g8OeRpXOpZVCx0PWD5wZmbVjvny
 ffP1V3Z0PRdCm2ns6MDOTV3VVlGNyWumNSmlwxIzTnf7YUTvN9W8HwsNV
 RtJQ5k4XLRQdY3BU1gUW5V02wBgKxDjs1mBRzPqUsf0moS2WaDaUIhzjz
 YaHKTroLpLVV5K245jmJ9mIQM5HQyS2VC9sDcu7RHShV0sWt4ZNEMdz8F
 qYDCC9NZsPDo0kDWxxJIMRW7ljbezpTvECCIvx0qIwylBbTsZ/+7GKBRw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="245171519"
X-IronPort-AV: E=Sophos;i="5.88,332,1635231600"; d="scan'208";a="245171519"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 15:56:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,332,1635231600"; d="scan'208";a="770942667"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 15:56:35 -0800
Date: Mon, 31 Jan 2022 16:12:08 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220201001159.GA28093@labuser-Z97X-UD5H>
References: <20220126195304.8262-1-manasi.d.navare@intel.com>
 <87wnigum23.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wnigum23.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display/vrr: Reset VRR capable
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

On Mon, Jan 31, 2022 at 02:28:04PM +0200, Jani Nikula wrote:
> On Wed, 26 Jan 2022, Manasi Navare <manasi.d.navare@intel.com> wrote:
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
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++----
> >  1 file changed, 12 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 4d4579a301f6..687cb37bb22a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4446,6 +4446,12 @@ intel_dp_detect(struct drm_connector *connector,
> >  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
> >  		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
> >  
> > +		/* Reset VRR Capable property */
> > +		drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] VRR capable: FALSE\n",
> > +			    connector->base.id, connector->name);
> 
> Both the comment and the logging here seem excessive.

Okay will remove the comment, it is indeed redundant now
> 
> > +		drm_connector_set_vrr_capable_property(connector,
> > +						       false);
> > +
> 
> Fits on one line.

Sure will change that
> 
> >  		if (intel_dp->is_mst) {
> >  			drm_dbg_kms(&dev_priv->drm,
> >  				    "MST device may have disappeared %d vs %d\n",
> > @@ -4560,15 +4566,17 @@ static int intel_dp_get_modes(struct drm_connector *connector)
> >  {
> >  	struct intel_connector *intel_connector = to_intel_connector(connector);
> >  	struct edid *edid;
> > +	struct drm_i915_private *i915 = to_i915(connector->dev);
> >  	int num_modes = 0;
> >  
> >  	edid = intel_connector->detect_edid;
> >  	if (edid) {
> > -		num_modes = intel_connector_update_modes(connector, edid);
> > +		bool vrr_capable = intel_vrr_is_capable(connector);
> >  
> > -		if (intel_vrr_is_capable(connector))
> > -			drm_connector_set_vrr_capable_property(connector,
> > -							       true);
> > +		num_modes = intel_connector_update_modes(connector, edid);
> 
> intel_vrr_is_capable() probably needs to happen after
> intel_connector_update_modes(), right?

Thanks Jani yes that is correct, will move this after num_modes = intel_connector_update_modes(connector, edid);

Manasi

> 
> BR,
> Jani.
> 
> > +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
> > +			    connector->base.id, connector->name, yesno(vrr_capable));
> > +		drm_connector_set_vrr_capable_property(connector, vrr_capable);
> >  	}
> >  
> >  	/* Also add fixed mode, which may or may not be present in EDID */
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
