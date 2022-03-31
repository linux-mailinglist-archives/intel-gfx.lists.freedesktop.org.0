Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7394EDF2A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 18:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B1E10E36E;
	Thu, 31 Mar 2022 16:55:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4230610E36E
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 16:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648745721; x=1680281721;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Z2ip+Co2z4CeJQsoxzGMmPstZvyOB1byw1faED6KtOY=;
 b=mCB3LMFCbN3Ukn+s1U1w8wAKq+3tKHFXdBKq8b4SDwQsnAJtZ04AfxMN
 EKNw8e/BfgQzureuAAS6Zs7DfNGHXOldMcqkOC384/1EYR0Ezl1jNh9aB
 VIwAzo+z1PZzFLcak2Jw6SZMdJQWwbBoAXZX+RfW12oVzSHPSrgBPZj0U
 C2AWYzU+v3cYGmQYESOgJy6OWFYf3kaNnJPPFoWRnKT++SZL8Rluf5Ijl
 PSecMM9CW0uqbTDM/Koqs9j8HXOKVwHUKTCPxzQl6uXIfQgz91D+PO9Yo
 u6Vjv2bhH5N9+jtE0AXeZQjSnXJRu+I5Aph38UzdWu9Mc2J7kOpKGCvOX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="284815512"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="284815512"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 09:55:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566642713"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga008.jf.intel.com with SMTP; 31 Mar 2022 09:55:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 19:55:07 +0300
Date: Thu, 31 Mar 2022 19:55:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YkXc6y4SVYWHrVQ0@intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-9-ville.syrjala@linux.intel.com>
 <87y20q8cfh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87y20q8cfh.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 08/11] drm/i915: Allow higher refresh
 rate alternate fixed modes
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

On Thu, Mar 31, 2022 at 04:43:46PM +0300, Jani Nikula wrote:
> On Thu, 31 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We shouldn't restrict ourselves to just downclock modes with
> > lower refresh rate than the preferred mode. Laptops these
> > days can offer higher refresh rate modes as well.
> >
> > Remove the arbitrary limit and allow all modes that, apart
> > from the clock, match the preferred mode.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/125
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_panel.c | 18 +++++++++---------
> >  1 file changed, 9 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> > index d359c8050fdc..f3e52e7413fe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_panel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> > @@ -149,29 +149,29 @@ int intel_panel_compute_config(struct intel_connector *connector,
> >  	return 0;
> >  }
> >  
> > -static bool is_downclock_mode(const struct drm_display_mode *downclock_mode,
> > -			      const struct drm_display_mode *fixed_mode)
> > +static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
> > +			      const struct drm_display_mode *preferred_mode)
> >  {
> > -	return drm_mode_match(downclock_mode, fixed_mode,
> > +	return drm_mode_match(mode, preferred_mode,
> >  			      DRM_MODE_MATCH_TIMINGS |
> >  			      DRM_MODE_MATCH_FLAGS |
> >  			      DRM_MODE_MATCH_3D_FLAGS) &&
> > -		downclock_mode->clock < fixed_mode->clock;
> > +		mode->clock != preferred_mode->clock;
> >  }
> >  
> >  static void intel_panel_add_edid_downclock_modes(struct intel_connector *connector)
> 
> Nitpick, I guess this is now ill-named.

Doh. Lost the rename when reordering the patches.

> 
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> > -	const struct drm_display_mode *fixed_mode =
> > +	const struct drm_display_mode *preferred_mode =
> >  		intel_panel_preferred_fixed_mode(connector);
> >  	struct drm_display_mode *mode, *next;
> >  
> >  	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, head) {
> > -		if (!is_downclock_mode(mode, fixed_mode))
> > +		if (!is_alt_fixed_mode(mode, preferred_mode))
> >  			continue;
> >  
> >  		drm_dbg_kms(&dev_priv->drm,
> > -			    "[CONNECTOR:%d:%s] using EDID downclock mode: " DRM_MODE_FMT "\n",
> > +			    "[CONNECTOR:%d:%s] using alternate EDID fixed mode: " DRM_MODE_FMT "\n",
> >  			    connector->base.base.id, connector->base.name,
> >  			    DRM_MODE_ARG(mode));
> >  
> > @@ -179,7 +179,7 @@ static void intel_panel_add_edid_downclock_modes(struct intel_connector *connect
> >  	}
> >  }
> >  
> > -static void intel_panel_add_edid_fixed_mode(struct intel_connector *connector)
> > +static void intel_panel_add_edid_preferred_mode(struct intel_connector *connector)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> >  	struct drm_display_mode *scan, *fixed_mode = NULL;
> > @@ -223,7 +223,7 @@ static void intel_panel_destroy_probed_modes(struct intel_connector *connector)
> >  
> >  void intel_panel_add_edid_fixed_modes(struct intel_connector *connector, bool has_drrs)
> >  {
> > -	intel_panel_add_edid_fixed_mode(connector);
> > +	intel_panel_add_edid_preferred_mode(connector);
> >  	if (intel_panel_preferred_fixed_mode(connector) && has_drrs)
> >  		intel_panel_add_edid_downclock_modes(connector);
> 
> Nitpick, support for multiple fixed modes still depends on drrs
> support. I mean this patch is clearly forward progress, but I'm not sure
> if this fully closes the referenced issue. In practical terms it might,
> considering the machines with high refresh rate panels are probably
> fairly new.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >  	intel_panel_destroy_probed_modes(connector);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
