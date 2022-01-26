Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 956B649D18D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 19:17:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCA3610E4C2;
	Wed, 26 Jan 2022 18:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1759410E4C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 18:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643221048; x=1674757048;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5/XBCvmprpQABc0+sKrb83JZbjixsIq9rCllobsmn1Q=;
 b=J3dppF5Yak/S8ebN5TckyJ6uSwIg2q5cg2/vrXI0Vsk1HGwNTza8r01X
 ijyw6IW2OkLXveSpM5mpnTMjnXVQehGH/KhO+hoAGl8eI5u4fi37TGMPj
 QKder1Oa4y7FcOhxH8agDQasZkw5T1SkXpDiJaP4zpEqAk9/UztfOhOFz
 PQbgJ079EFZMJWDmi5Y/GZirTSqkaYobSEClGAemHxNJkL5/gpz2Ip1r9
 Lvf626ZF/CWW+JvhY1udJDm6BC+0txoYrNVgCzQ6IbRdy0t3lRPM6lEdo
 fwFjk8xV98jDwN0knKY729IjOcbPk9lQ099+TRheTIA6zDDDCisrqQr77 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="233990564"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="233990564"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 10:17:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="628386980"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 10:17:27 -0800
Date: Wed, 26 Jan 2022 10:32:51 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220126183251.GA8244@labuser-Z97X-UD5H>
References: <20220112195722.16639-1-manasi.d.navare@intel.com>
 <87zgny5wfa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87zgny5wfa.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/vrr: Reset VRR capable
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

On Fri, Jan 14, 2022 at 02:33:29PM +0200, Jani Nikula wrote:
> On Wed, 12 Jan 2022, Manasi Navare <manasi.d.navare@intel.com> wrote:
> > With some VRR panels, user can turn VRR ON/OFF on the fly from the panel settings.
> > When VRR is turned OFF ,sends a long HPD to the driver clearing the Ignore MSA bit
> > in the DPCD. Currently the driver parses that onevery HPD but fails to reset
> > the corresponding VRR Capable Connector property.
> > Hence the userspace still sees this as VRR Capable panel which is incorrect.
> >
> > Fix this by explicitly resetting the connector property.
> >
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++++++-
> >  1 file changed, 10 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index df2a7d86aef0..4f1418f02b76 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4539,15 +4539,24 @@ static int intel_dp_get_modes(struct drm_connector *connector)
> >  {
> >  	struct intel_connector *intel_connector = to_intel_connector(connector);
> >  	struct edid *edid;
> > +	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> 
> Please call it "i915" for new stuff.

Okay yes will change this to i915
> 
> >  	int num_modes = 0;
> >  
> >  	edid = intel_connector->detect_edid;
> >  	if (edid) {
> >  		num_modes = intel_connector_update_modes(connector, edid);
> >  
> > -		if (intel_vrr_is_capable(connector))
> > +		if (intel_vrr_is_capable(connector)) {
> > +			drm_dbg_kms(&dev_priv->drm, "VRR capable  = TRUE for [CONNECTOR:%d:%s]\n",
> > +				    connector->base.id, connector->name);
> >  			drm_connector_set_vrr_capable_property(connector,
> >  							       true);
> > +		} else {
> > +			drm_dbg_kms(&dev_priv->drm, "VRR capable = false for [CONNECTOR:%d:%s]\n",
> > +				    connector->base.id, connector->name);
> > +			drm_connector_set_vrr_capable_property(connector,
> > +							       false);
> > +		}
> 
> Please don't repeat yourself! Also, prefer having [CONNECTOR:%d:%s] at
> the beginning.
> 
> 		bool capable = intel_vrr_is_capable(connector);
> 
> 		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
> 			    connector->base.id, connector->name, yesno(capable));
>                 drm_connector_set_vrr_capable_property(connector, capable);

Okay agree, thanks for the suggestion, will change in the v2 and resend

Regards
Manasi

> 
> BR,
> Jani.
> 
> 
> >  	}
> >  
> >  	/* Also add fixed mode, which may or may not be present in EDID */
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
