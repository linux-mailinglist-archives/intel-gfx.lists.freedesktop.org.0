Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBB54C1C1F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 20:25:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E0B10E34B;
	Wed, 23 Feb 2022 19:25:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C5A910E34B
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 19:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645644352; x=1677180352;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iN4wpDEaw/QQ2NQEdWclzV5viDBwQLUjYx1fUsO6xlg=;
 b=Cb6EoNhWIhEnHosOVQ2QYEBiaB89C4qMbSMQllMV7Sw/jiJRctiYLV3S
 E1l0jpP29HM+bgGKFGS1Ynp9BiOFN1hDdL3SMvpQN4yBUyn/xPgOPE5bG
 9P82jgD3rq9QcmtSnMpQpCDqbYcS1/Mt08VgCuRoadYAw+yg4z2VVqGFJ
 3WNNFctrQFUzhHuU11fGG4FxXxkp6oWtQMiEGr/YSG0pGq+Ev7+nkfsP3
 PA8eZ2sNb6hAN28W0OXWZqZZCrdylcKYCiVqz+iZxCKRbqQDkEYJkYKzo
 hlmf/Stj9qDcHQAfI9yEoT7of0F04i0z6rzJABeGuvFc8r+mfS4rzflf3 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="250890713"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="250890713"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:25:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="532817117"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:25:51 -0800
Date: Wed, 23 Feb 2022 11:26:25 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220223192625.GA9839@labuser-Z97X-UD5H>
References: <20220223081810.19917-1-ville.syrjala@linux.intel.com>
 <87mtii6l5v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87mtii6l5v.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/display/vrr: Reset VRR
 capable property on a long hpd"
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

On Wed, Feb 23, 2022 at 10:29:16AM +0200, Jani Nikula wrote:
> On Wed, 23 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > This reverts commit 9bc34b4d0f3cb368241684cc5e0445d435dded44.
> >
> > Just oopses on most machines.
> >
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Auch, "ERROR: It appears as if the changes made in Patchwork_22288
> prevented too many machines from booting." [1].

Why would it prevent machines from booting where this only sets the property to false and we tested this
on VRR panels and it works as expected and infact is needed to turn VRR off if disabled from
the panel and also on the connector disconnect.

Our customers already want this.

We should look at whther this prevented the machines from booting or this just revealed some other issue.

> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> [1] https://lore.kernel.org/r/164506400291.18053.4904919379639827273@emeril.freedesktop.org
> 
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++-------------
> >  1 file changed, 4 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 929e9b6febf1..1046e7fe310a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4455,12 +4455,6 @@ intel_dp_detect(struct drm_connector *connector,
> >  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
> >  		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
> >  
> > -		/* Reset VRR Capable property */
> > -		drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] VRR capable: FALSE\n",
> > -			    connector->base.id, connector->name);
> > -		drm_connector_set_vrr_capable_property(connector,
> > -						       false);

Do we perhaps need a condition here to reset this only if it was set previously or if it is a VRR panel?

Manasi

> > -
> >  		if (intel_dp->is_mst) {
> >  			drm_dbg_kms(&dev_priv->drm,
> >  				    "MST device may have disappeared %d vs %d\n",
> > @@ -4575,18 +4569,15 @@ static int intel_dp_get_modes(struct drm_connector *connector)
> >  {
> >  	struct intel_connector *intel_connector = to_intel_connector(connector);
> >  	struct edid *edid;
> > -	struct drm_i915_private *i915 = to_i915(connector->dev);
> >  	int num_modes = 0;
> >  
> >  	edid = intel_connector->detect_edid;
> >  	if (edid) {
> > -		bool vrr_capable;
> > -
> >  		num_modes = intel_connector_update_modes(connector, edid);
> > -		vrr_capable = intel_vrr_is_capable(connector);
> > -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
> > -			    connector->base.id, connector->name, yesno(vrr_capable));
> > -		drm_connector_set_vrr_capable_property(connector, vrr_capable);
> > +
> > +		if (intel_vrr_is_capable(connector))
> > +			drm_connector_set_vrr_capable_property(connector,
> > +							       true);
> >  	}
> >  
> >  	/* Also add fixed mode, which may or may not be present in EDID */
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
