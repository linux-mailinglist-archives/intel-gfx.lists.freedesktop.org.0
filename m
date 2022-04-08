Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B20784F977B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 16:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC4C910F272;
	Fri,  8 Apr 2022 13:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0066410F272
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 13:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649426397; x=1680962397;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=F68zODiVpzV7ggdJyG7sfvWsQ8mr+YmGDWWjeCldBF0=;
 b=kV/fXoNydpIPEl+1mM7vj0dZw6VuCES4+m7NLk4HpKnD3v6pcC3OEz4R
 nSXSa4/uFezAPs46CixdDY0e2bu0svNvj49PvIv7EareilkA87dYoyjae
 D46efa5S10zbbdxCAp9DbldtrVB2V3w7jYp39fPXCTPh5/n7/Vvk4o4lB
 Y6KqlUUg80GDEikt94RqkytD+q2SsjU2Ro/4Z72irsqNz57GC5xpZ8rJl
 mcUqq46wRlLY+o+pF/bF+BRpCN7yqv2oFIbXOCD2iqpDYtHfmntNbGkmF
 yn3c9HpZhQjIHJTbfsFBAW3G1PihbbSZluUn7zEaqR3756y0J8cLriYV7 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="348034663"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="348034663"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 06:59:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="525383031"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 08 Apr 2022 06:59:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Apr 2022 16:59:54 +0300
Date: Fri, 8 Apr 2022 16:59:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YlA/2jXvIU46jlaQ@intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-8-ville.syrjala@linux.intel.com>
 <87sfqo50fb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87sfqo50fb.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 07/22] drm/i915/bios: Reorder panel DTD
 parsing
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

On Thu, Apr 07, 2022 at 07:21:44PM +0300, Jani Nikula wrote:
> On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Reorder things so that we can parse the entier LFP data block
> 
> *entire
> 
> > in one go. For now we just stick to parsing the DTD from it.
> >
> > Also fix the misleading comment about block 42 being deprecated.
> > Only the DTD part is deprecated, the rest is still very much needed.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 62 ++++++++++++-----------
> >  1 file changed, 32 insertions(+), 30 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 799c1fe36b23..f90991cac438 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -488,25 +488,16 @@ parse_panel_options(struct drm_i915_private *i915)
> >  	}
> >  }
> >  
> > -/* Try to find integrated panel timing data */
> >  static void
> > -parse_lfp_panel_dtd(struct drm_i915_private *i915)
> > +parse_lfp_panel_dtd(struct drm_i915_private *i915,
> > +		    const struct bdb_lvds_lfp_data *lvds_lfp_data,
> > +		    const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs)
> >  {
> > -	const struct bdb_lvds_lfp_data *lvds_lfp_data;
> > -	const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs;
> >  	const struct lvds_dvo_timing *panel_dvo_timing;
> >  	const struct lvds_fp_timing *fp_timing;
> >  	struct drm_display_mode *panel_fixed_mode;
> >  	int panel_type = i915->vbt.panel_type;
> >  
> > -	lvds_lfp_data = find_section(i915, BDB_LVDS_LFP_DATA);
> > -	if (!lvds_lfp_data)
> > -		return;
> > -
> > -	lvds_lfp_data_ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> > -	if (!lvds_lfp_data_ptrs)
> > -		return;
> > -
> >  	panel_dvo_timing = get_lvds_dvo_timing(lvds_lfp_data,
> >  					       lvds_lfp_data_ptrs,
> >  					       panel_type);
> > @@ -537,6 +528,24 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915)
> >  	}
> >  }
> >  
> > +static void
> > +parse_lfp_data(struct drm_i915_private *i915)
> > +{
> > +	const struct bdb_lvds_lfp_data *data;
> > +	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> > +
> > +	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> > +	if (!ptrs)
> > +		return;
> > +
> > +	data = find_section(i915, BDB_LVDS_LFP_DATA);
> > +	if (!data)
> > +		return;
> > +
> > +	if (!i915->vbt.lfp_lvds_vbt_mode)
> > +		parse_lfp_panel_dtd(i915, data, ptrs);
> 
> Could do an early return on i915->vbt.lfp_lvds_vbt_mode.

I'm adding more stuff that we don't want to skip to the end of
the function in later patches.

> 
> > +}
> > +
> >  static void
> >  parse_generic_dtd(struct drm_i915_private *i915)
> >  {
> > @@ -615,23 +624,6 @@ parse_generic_dtd(struct drm_i915_private *i915)
> >  	i915->vbt.lfp_lvds_vbt_mode = panel_fixed_mode;
> >  }
> >  
> > -static void
> > -parse_panel_dtd(struct drm_i915_private *i915)
> > -{
> > -	/*
> > -	 * Older VBTs provided provided DTD information for internal displays
> > -	 * through the "LFP panel DTD" block (42).  As of VBT revision 229,
> > -	 * that block is now deprecated and DTD information should be provided
> > -	 * via a newer "generic DTD" block (58).  Just to be safe, we'll
> > -	 * try the new generic DTD block first on VBT >= 229, but still fall
> > -	 * back to trying the old LFP block if that fails.
> > -	 */
> > -	if (i915->vbt.version >= 229)
> > -		parse_generic_dtd(i915);
> > -	if (!i915->vbt.lfp_lvds_vbt_mode)
> > -		parse_lfp_panel_dtd(i915);
> > -}
> > -
> >  static void
> >  parse_lfp_backlight(struct drm_i915_private *i915)
> >  {
> > @@ -2708,7 +2700,17 @@ void intel_bios_init(struct drm_i915_private *i915)
> >  	parse_general_features(i915);
> >  	parse_general_definitions(i915);
> >  	parse_panel_options(i915);
> > -	parse_panel_dtd(i915);
> > +	/*
> > +	 * Older VBTs provided DTD information for internal displays through
> > +	 * the "LFP panel tables" block (42).  As of VBT revision 229 the
> > +	 * DTD information should be provided via a newer "generic DTD"
> > +	 * block (58).  Just to be safe, we'll try the new generic DTD block
> > +	 * first on VBT >= 229, but still fall back to trying the old LFP
> > +	 * block if that fails.
> > +	 */
> > +	if (i915->vbt.version >= 229)
> 
> I'd probably stick the vbt version check and the comment in
> parse_generic_dtd() instead of polluting the top level.

I suppose. Although that does make the ordering requirement between
parse_generic_dtd() vs. parse_lfp_data() a bit less clear. But maybe
this will all be rather temporary and we'll start transitioning
to a more on-demand based parsing of each thing.

> 
> Up to you if you want to do anything about the nitpicks,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > +		parse_generic_dtd(i915);
> > +	parse_lfp_data(i915);
> >  	parse_lfp_backlight(i915);
> >  	parse_sdvo_panel_data(i915);
> >  	parse_driver_features(i915);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
