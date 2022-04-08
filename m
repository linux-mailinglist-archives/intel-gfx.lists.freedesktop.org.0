Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D26714F98A2
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 16:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1869E10E4BA;
	Fri,  8 Apr 2022 14:52:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E91910E4BA
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 14:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649429537; x=1680965537;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WSL1boiRMi/WgDc4tKMjL7Q31Kb/n4Qxkx1OmRii9Uk=;
 b=OYxe3CVefgeTWbzP0q0yivG1JogON6wqOY1DRFJ99ReaAN+oGcR2xXJ2
 EMi5OXQxqUH9Sen2aQ1RY81Gqk3wrAVfZuXpYQB8yVuqVYZ0Si6L4h3+G
 PWHRA2JyLh2JfYKEbPAsROHcwmHXozh7uw4lPcy6FJPgCgM6Ebx9KEJHB
 HtuGIi4+gvrnrM7LwrEewi7DBA3nS+rvvIlFLqThab/QoNysYzKcfkMOE
 TJa6PP517DEPQaPQRY8CIvfUGM7QsQpm9Urx5ZO0ZyvLj/CNRjw5mEnsO
 vBCL6gbl2sNqvYoOuN2Tu5U84KhQdebfw2D3tJfit5SHyPUG/UtmWdDIW Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="249138691"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="249138691"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 07:52:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="589240780"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga001.jf.intel.com with SMTP; 08 Apr 2022 07:52:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Apr 2022 17:52:14 +0300
Date: Fri, 8 Apr 2022 17:52:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YlBMHsaaJStyYDOV@intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-23-ville.syrjala@linux.intel.com>
 <87r1683gyw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87r1683gyw.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 22/22] drm/i915/bios: Dump PNPID and
 panel name
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

On Thu, Apr 07, 2022 at 09:07:19PM +0300, Jani Nikula wrote:
> On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Dump the panel PNPID and name from the VBT.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 24 +++++++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index d561551d6324..953526a7dc5d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -25,6 +25,7 @@
> >   *
> >   */
> >  
> > +#include <drm/drm_edid.h>
> >  #include <drm/dp/drm_dp_helper.h>
> >  
> >  #include "display/intel_display.h"
> > @@ -597,6 +598,19 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
> >  		return NULL;
> >  }
> >  
> > +static void dump_pnp_id(struct drm_i915_private *i915,
> > +			const struct lvds_pnp_id *pnp_id,
> > +			const char *name)
> > +{
> > +	u16 mfg_name = be16_to_cpu((__force __be16)pnp_id->mfg_name);
> 
> Might just add the __be16 in the struct member?

Do we want that there since we copy the header to igt as well?

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > +	char vend[4];
> > +
> > +	drm_dbg_kms(&i915->drm, "%s PNPID mfg: %s (0x%x), prod: %u, serial: %u, week: %d, year: %d\n",
> > +		    name, drm_edid_decode_mfg_id(mfg_name, vend),
> > +		    pnp_id->mfg_name, pnp_id->product_code, pnp_id->serial,
> > +		    pnp_id->mfg_week, pnp_id->mfg_year + 1990);
> > +}
> > +
> >  static int pnp_id_panel_type(struct drm_i915_private *i915,
> >  			     const struct edid *edid)
> >  {
> > @@ -615,6 +629,8 @@ static int pnp_id_panel_type(struct drm_i915_private *i915,
> >  	edid_id_nodate.mfg_week = 0;
> >  	edid_id_nodate.mfg_year = 0;
> >  
> > +	dump_pnp_id(i915, edid_id, "EDID");
> > +
> >  	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> >  	if (!ptrs)
> >  		return -1;
> > @@ -802,6 +818,7 @@ parse_lfp_data(struct drm_i915_private *i915)
> >  	const struct bdb_lvds_lfp_data *data;
> >  	const struct bdb_lvds_lfp_data_tail *tail;
> >  	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> > +	const struct lvds_pnp_id *pnp_id;
> >  	int panel_type = i915->vbt.panel_type;
> >  
> >  	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> > @@ -815,10 +832,17 @@ parse_lfp_data(struct drm_i915_private *i915)
> >  	if (!i915->vbt.lfp_lvds_vbt_mode)
> >  		parse_lfp_panel_dtd(i915, data, ptrs);
> >  
> > +	pnp_id = get_lvds_pnp_id(data, ptrs, panel_type);
> > +	dump_pnp_id(i915, pnp_id, "Panel");
> > +
> >  	tail = get_lfp_data_tail(data, ptrs);
> >  	if (!tail)
> >  		return;
> >  
> > +	drm_dbg_kms(&i915->drm, "Panel name: %.*s\n",
> > +		    (int)sizeof(tail->panel_name[0].name),
> > +		    tail->panel_name[panel_type].name);
> > +
> >  	if (i915->vbt.version >= 188) {
> >  		i915->vbt.seamless_drrs_min_refresh_rate =
> >  			tail->seamless_drrs_min_refresh_rate[panel_type];
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
