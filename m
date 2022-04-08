Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5015A4F989F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 16:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BADB210E4B4;
	Fri,  8 Apr 2022 14:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7C810E4B4
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 14:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649429467; x=1680965467;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6LoA6LB6KQZnCeoTHcZy1DXMyjJ2m/FG7s761RYK+us=;
 b=JBhVcu7LO+ipCiSTs3rIkoj3acQt9e33hCuWztjBMqiRmnnhgoxUGRbC
 z8Q+VzQgPCH38n7wECvT2RIWfQrUlw7IELztRMp42PBACUk3mg4oEP4bG
 jx2ocAvGlQj0XCzz0af4YRCCP9X03fzO7pAPBOwXABKv+Vi95Hj3AfkHz
 x5zOE3JE2XfGMRrMg3/0OwnqUUpFfdEinaQkaXYA90LpAOzJlN/wCHYj0
 mbltUzyUfFpxcloPpmp6DqDLr42q5nXSqI7T4KIuL5cNoaUcGqgzpI56J
 FIMhhw7P+cXzPM/tY23H7qzQ0ujM8az+j93hj3shbZFPtfj0+cE0m1v4C g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="249138513"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="249138513"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 07:51:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="525400276"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 08 Apr 2022 07:51:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Apr 2022 17:51:04 +0300
Date: Fri, 8 Apr 2022 17:51:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YlBL2K9ekrpovbyM@intel.com>
References: <20220405173410.11436-19-ville.syrjala@linux.intel.com>
 <20220406190932.29841-1-ville.syrjala@linux.intel.com>
 <8735io4w32.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8735io4w32.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 18/22] drm/i915/bios: Determine panel
 type via PNPID match
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

On Thu, Apr 07, 2022 at 08:55:29PM +0300, Jani Nikula wrote:
> On Wed, 06 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Apparently when the VBT panel_type==0xff we should trawl through
> > the PNPID table and check for a match against the EDID. If a
> > match is found the index gives us the panel_type.
> >
> > Tried to match the Windows behaviour here with first looking
> > for an exact match, and if one isn't found we fall back to
> > looking for a match w/o the mfg year/week.
> 
> Does Windows also probe the EDID first, or does it use some side channel
> to use the GOP probed EDID? ISTR there's something in the EFI interface
> for this, but never looked deeper.

Lost some hair while trawling through it, but it does look it tries
the OpRegion mailbox first, then falls back to standard i2c stuff.

In a totally different codepath there's also an implementation of
APCI _DDC, but that doesn't seem get called from the eDP init path
that I was looking at so dunno what that is for.

> 
> >
> > v2: Rebase due to vlv_dsi changes
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5545
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c    |  2 +-
> >  drivers/gpu/drm/i915/display/intel_bios.c | 82 ++++++++++++++++++++---
> >  drivers/gpu/drm/i915/display/intel_bios.h |  4 +-
> >  drivers/gpu/drm/i915/display/intel_dp.c   |  2 +-
> >  drivers/gpu/drm/i915/display/intel_lvds.c |  2 +-
> >  drivers/gpu/drm/i915/display/intel_sdvo.c |  2 +-
> >  drivers/gpu/drm/i915/display/vlv_dsi.c    |  2 +-
> >  7 files changed, 82 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 688176d4a54a..49715485a3a6 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -2048,7 +2048,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
> >  	/* attach connector to encoder */
> >  	intel_connector_attach_encoder(intel_connector, encoder);
> >  
> > -	intel_bios_init_panel(dev_priv);
> > +	intel_bios_init_panel(dev_priv, NULL);
> >  
> >  	mutex_lock(&dev->mode_config.mutex);
> >  	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 0e76c554581a..4c0680356134 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -582,6 +582,14 @@ get_lvds_fp_timing(const struct bdb_lvds_lfp_data *data,
> >  	return (const void *)data + ptrs->ptr[index].fp_timing.offset;
> >  }
> >  
> > +static const struct lvds_pnp_id *
> > +get_lvds_pnp_id(const struct bdb_lvds_lfp_data *data,
> > +		const struct bdb_lvds_lfp_data_ptrs *ptrs,
> > +		int index)
> > +{
> > +	return (const void *)data + ptrs->ptr[index].panel_pnp_id.offset;
> > +}
> > +
> >  static const struct bdb_lvds_lfp_data_tail *
> >  get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
> >  		  const struct bdb_lvds_lfp_data_ptrs *ptrs)
> > @@ -592,6 +600,52 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
> >  		return NULL;
> >  }
> >  
> > +static int pnp_id_panel_type(struct drm_i915_private *i915,
> > +			     const struct edid *edid)
> > +{
> > +	const struct bdb_lvds_lfp_data *data;
> > +	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> > +	const struct lvds_pnp_id *edid_id;
> > +	struct lvds_pnp_id edid_id_nodate;
> > +	int i, best = -1;
> > +
> > +	if (!edid)
> > +		return -1;
> > +
> > +	edid_id = (const void *)&edid->mfg_id[0];
> > +
> > +	edid_id_nodate = *edid_id;
> > +	edid_id_nodate.mfg_week = 0;
> > +	edid_id_nodate.mfg_year = 0;
> > +
> > +	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> > +	if (!ptrs)
> > +		return -1;
> > +
> > +	data = find_section(i915, BDB_LVDS_LFP_DATA);
> > +	if (!data)
> > +		return -1;
> > +
> > +	for (i = 0; i < 16; i++) {
> > +		const struct lvds_pnp_id *vbt_id =
> > +			get_lvds_pnp_id(data, ptrs, i);
> > +
> > +		/* full match? */
> > +		if (!memcmp(vbt_id, edid_id, sizeof(*vbt_id)))
> > +			return i;
> > +
> > +		/*
> > +		 * Accept a match w/o date if no full match is found,
> > +		 * and the VBT entry does not specify a date.
> > +		 */
> > +		if (best < 0 &&
> > +		    !memcmp(vbt_id, &edid_id_nodate, sizeof(*vbt_id)))
> > +			best = i;
> > +	}
> > +
> > +	return best;
> > +}
> > +
> >  static int vbt_panel_type(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_lvds_options *lvds_options;
> > @@ -600,7 +654,8 @@ static int vbt_panel_type(struct drm_i915_private *i915)
> >  	if (!lvds_options)
> >  		return -1;
> >  
> > -	if (lvds_options->panel_type > 0xf) {
> > +	if (lvds_options->panel_type > 0xf &&
> > +	    lvds_options->panel_type != 0xff) {
> >  		drm_dbg_kms(&i915->drm, "Invalid VBT panel type 0x%x\n",
> >  			    lvds_options->panel_type);
> >  		return -1;
> > @@ -612,10 +667,12 @@ static int vbt_panel_type(struct drm_i915_private *i915)
> >  enum panel_type {
> >  	PANEL_TYPE_OPREGION,
> >  	PANEL_TYPE_VBT,
> > +	PANEL_TYPE_PNPID,
> >  	PANEL_TYPE_FALLBACK,
> >  };
> >  
> > -static int get_panel_type(struct drm_i915_private *i915)
> > +static int get_panel_type(struct drm_i915_private *i915,
> > +			  const struct edid *edid)
> >  {
> >  	struct {
> >  		const char *name;
> > @@ -623,15 +680,18 @@ static int get_panel_type(struct drm_i915_private *i915)
> >  	} panel_types[] = {
> >  		[PANEL_TYPE_OPREGION] = { .name = "OpRegion", .panel_type = -1, },
> >  		[PANEL_TYPE_VBT] = { .name = "VBT", .panel_type = -1, },
> > +		[PANEL_TYPE_PNPID] = { .name = "PNPID", .panel_type = -1, },
> >  		[PANEL_TYPE_FALLBACK] = { .name = "fallback", .panel_type = 0, },
> >  	};
> >  	int i;
> >  
> >  	panel_types[PANEL_TYPE_OPREGION].panel_type = intel_opregion_get_panel_type(i915);
> >  	panel_types[PANEL_TYPE_VBT].panel_type = vbt_panel_type(i915);
> > +	panel_types[PANEL_TYPE_PNPID].panel_type = pnp_id_panel_type(i915, edid);
> >  
> >  	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
> > -		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf);
> > +		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
> > +			    panel_types[i].panel_type != 0xff);
> >  
> >  		if (panel_types[i].panel_type >= 0)
> >  			drm_dbg_kms(&i915->drm, "Panel type (%s): %d\n",
> > @@ -640,7 +700,11 @@ static int get_panel_type(struct drm_i915_private *i915)
> >  
> >  	if (panel_types[PANEL_TYPE_OPREGION].panel_type >= 0)
> >  		i = PANEL_TYPE_OPREGION;
> > -	else if (panel_types[PANEL_TYPE_VBT].panel_type >= 0)
> > +	else if (panel_types[PANEL_TYPE_VBT].panel_type == 0xff &&
> > +		 panel_types[PANEL_TYPE_PNPID].panel_type >= 0)
> > +		i = PANEL_TYPE_PNPID;
> > +	else if (panel_types[PANEL_TYPE_VBT].panel_type != 0xff &&
> > +		 panel_types[PANEL_TYPE_VBT].panel_type >= 0)
> >  		i = PANEL_TYPE_VBT;
> >  	else
> >  		i = PANEL_TYPE_FALLBACK;
> > @@ -653,7 +717,8 @@ static int get_panel_type(struct drm_i915_private *i915)
> >  
> >  /* Parse general panel options */
> >  static void
> > -parse_panel_options(struct drm_i915_private *i915)
> > +parse_panel_options(struct drm_i915_private *i915,
> > +		    const struct edid *edid)
> >  {
> >  	const struct bdb_lvds_options *lvds_options;
> >  	int panel_type;
> > @@ -665,7 +730,7 @@ parse_panel_options(struct drm_i915_private *i915)
> >  
> >  	i915->vbt.lvds_dither = lvds_options->pixel_dither;
> >  
> > -	panel_type = get_panel_type(i915);
> > +	panel_type = get_panel_type(i915, edid);
> >  
> >  	i915->vbt.panel_type = panel_type;
> >  
> > @@ -2953,9 +3018,10 @@ void intel_bios_init(struct drm_i915_private *i915)
> >  	kfree(oprom_vbt);
> >  }
> >  
> > -void intel_bios_init_panel(struct drm_i915_private *i915)
> > +void intel_bios_init_panel(struct drm_i915_private *i915,
> > +			   const struct edid *edid)
> >  {
> > -	parse_panel_options(i915);
> > +	parse_panel_options(i915, edid);
> >  	/*
> >  	 * Older VBTs provided DTD information for internal displays through
> >  	 * the "LFP panel tables" block (42).  As of VBT revision 229 the
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> > index c744d75fa435..be6d57bd0f5a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -33,6 +33,7 @@
> >  #include <linux/types.h>
> >  
> >  struct drm_i915_private;
> > +struct edid;
> >  struct intel_bios_encoder_data;
> >  struct intel_crtc_state;
> >  struct intel_encoder;
> > @@ -230,7 +231,8 @@ struct mipi_pps_data {
> >  } __packed;
> >  
> >  void intel_bios_init(struct drm_i915_private *dev_priv);
> > -void intel_bios_init_panel(struct drm_i915_private *dev_priv);
> > +void intel_bios_init_panel(struct drm_i915_private *dev_priv,
> > +			   const struct edid *edid);
> >  void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
> >  bool intel_bios_is_valid_vbt(const void *buf, size_t size);
> >  bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index a1b5d7f5388b..41ac55a700e9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5179,7 +5179,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
> >  	}
> >  	intel_connector->edid = edid;
> >  
> > -	intel_bios_init_panel(dev_priv);
> > +	intel_bios_init_panel(dev_priv, IS_ERR(edid) ? NULL : edid);
> >  
> >  	intel_panel_add_edid_fixed_modes(intel_connector,
> >  					 dev_priv->vbt.drrs_type != DRRS_TYPE_NONE);
> > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> > index 554badf041f2..660bb95f2bf7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> > @@ -967,7 +967,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
> >  	}
> >  	intel_connector->edid = edid;
> >  
> > -	intel_bios_init_panel(dev_priv);
> > +	intel_bios_init_panel(dev_priv, IS_ERR(edid) ? NULL : edid);
> >  
> >  	/* Try EDID first */
> >  	intel_panel_add_edid_fixed_modes(intel_connector,
> > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > index 661a1057a073..25195bc1edca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > @@ -2900,7 +2900,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
> >  	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
> >  		goto err;
> >  
> > -	intel_bios_init_panel(i915);
> > +	intel_bios_init_panel(i915, NULL);
> >  
> >  	/*
> >  	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
> > diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > index 08fb554ff7ad..1af6e927af9b 100644
> > --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > @@ -1929,7 +1929,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
> >  	else
> >  		intel_dsi->ports = BIT(port);
> >  
> > -	intel_bios_init_panel(dev_priv);
> > +	intel_bios_init_panel(dev_priv, NULL);
> >  
> >  	intel_dsi->dcs_backlight_ports = dev_priv->vbt.dsi.bl_ports;
> >  	intel_dsi->dcs_cabc_ports = dev_priv->vbt.dsi.cabc_ports;
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
