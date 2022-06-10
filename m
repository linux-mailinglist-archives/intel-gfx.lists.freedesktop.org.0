Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 690F9546B16
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 18:56:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C033D10E132;
	Fri, 10 Jun 2022 16:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3516910E132
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 16:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654880169; x=1686416169;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FbpiqdUzYHf7tmm4wHDdJas9unAWtSVuTCs3VwF7SXQ=;
 b=i4gCRcMviQ87YKzk4XDRS5YdP2eRU+b7h7VqD7zz7PiyO2yiwblW1rbC
 5A9JdSjS47/HwgwbjTFdY35ei96tEO5EviccYj56tY8UZfxWOFdWLabnH
 XTEbMQFjqq3s/ExtF/GrdLNuagtJP5597Ru4GaaVPvxZNpk+n4yUBmlD0
 PVFbGFs1AJFQ8dNMEr+9NJVT0CCxEOjwExi/9hv9lx4wgGhkTcSxbyQr4
 tZFjpJYIZo6kxL0CugHmMqgJ9d24xtjlP04JMCJCw1ny6EotUQoKWvL/K
 r5GWejJmf4vzCDSujMjLNcq24lTSILMgup9l2maiNHgOP9EpcRXpSqw+w w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="278817658"
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="278817658"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 09:56:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="671930070"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 10 Jun 2022 09:56:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Jun 2022 19:56:04 +0300
Date: Fri, 10 Jun 2022 19:56:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YqN3pJfgnZR97SrK@intel.com>
References: <20220609181014.21694-1-animesh.manna@intel.com>
 <87tu8szt4b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87tu8szt4b.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/bios: calculate panel type as
 per child device index in VBT
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

On Fri, Jun 10, 2022 at 01:54:12PM +0300, Jani Nikula wrote:
> On Thu, 09 Jun 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> > Each LFP may have different panel type which is stored in LFP data
> > data block. Based on the child device index respective panel-type/
> > panel-type2 field will be used.
> >
> > v1: Initial rfc verion.
> > v2: Based on review comments from Jani,
> > - Used panel-type instead addition panel-index variable.
> > - DEVICE_HANDLE_* name changed and placed before DEVICE_TYPE_*
> > macro.
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
> >  drivers/gpu/drm/i915/display/intel_bios.c     | 40 +++++++++++++------
> >  drivers/gpu/drm/i915/display/intel_bios.h     |  3 +-
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
> >  drivers/gpu/drm/i915/display/intel_lvds.c     |  3 +-
> >  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++
> >  drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
> >  8 files changed, 39 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 3b5305c219ba..b3aa430abd03 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
> >  	/* attach connector to encoder */
> >  	intel_connector_attach_encoder(intel_connector, encoder);
> >  
> > -	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
> > +	intel_bios_init_panel(dev_priv, intel_connector, NULL);
> >  
> >  	mutex_lock(&dev->mode_config.mutex);
> >  	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index aaea27fe5d16..f74e63823c08 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -604,13 +604,15 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
> >  }
> >  
> >  static int opregion_get_panel_type(struct drm_i915_private *i915,
> > -				   const struct edid *edid)
> > +				   const struct edid *edid,
> > +				   const struct intel_bios_encoder_data *devdata)
> >  {
> >  	return intel_opregion_get_panel_type(i915);
> >  }
> >  
> >  static int vbt_get_panel_type(struct drm_i915_private *i915,
> > -			      const struct edid *edid)
> > +			      const struct edid *edid,
> > +			      const struct intel_bios_encoder_data *devdata)
> 
> This is nitpicking, but semantically feels like the devdata parameter
> should be before edid.
> 
> >  {
> >  	const struct bdb_lvds_options *lvds_options;
> >  
> > @@ -625,11 +627,17 @@ static int vbt_get_panel_type(struct drm_i915_private *i915,
> >  		return -1;
> >  	}
> >  
> > -	return lvds_options->panel_type;
> > +	if (devdata->child.handle == DEVICE_HANDLE_LFP1)
> > +		return lvds_options->panel_type;
> > +	else if (devdata->child.handle == DEVICE_HANDLE_LFP2)
> > +		return lvds_options->panel_type2;
> > +	else
> > +		return -1;
> 
> Not all legacy panels have encoder data (i.e. VBT child device
> config). I'd go for something like this:
> 
> 	if (devdata && devdata->child.handle == DEVICE_HANDLE_LFP2)
> 		return lvds_options->panel_type2;
> 
> 	drm_WARN_ON(&i915->drm, devdata && devdata->child.handle != DEVICE_HANDLE_LFP1)
> 
> 	return lvds_options->panel_type;
> 
> I don't know if that's going to lead to a bunch of warnings, but I'd
> want to know. Or we can demote it to drm_dbg_kms(), now or later.

I went through my VBT stash and looks like handle==LFP1 should
hold for everything (even my ancient i830 has that). So I'd go
with a WARN.

> >  }
> >  
> >  static int pnpid_get_panel_type(struct drm_i915_private *i915,
> > -				const struct edid *edid)
> > +				const struct edid *edid,
> > +				const struct intel_bios_encoder_data *devdata)
> >  {
> >  	const struct bdb_lvds_lfp_data *data;
> >  	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> > @@ -675,7 +683,8 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
> >  }
> >  
> >  static int fallback_get_panel_type(struct drm_i915_private *i915,
> > -				   const struct edid *edid)
> > +				   const struct edid *edid,
> > +				   const struct intel_bios_encoder_data *devdata)
> >  {
> >  	return 0;
> >  }
> > @@ -688,12 +697,14 @@ enum panel_type {
> >  };
> >  
> >  static int get_panel_type(struct drm_i915_private *i915,
> > -			  const struct edid *edid)
> > +			  const struct edid *edid,
> > +			  const struct intel_bios_encoder_data *devdata)
> >  {
> >  	struct {
> >  		const char *name;
> >  		int (*get_panel_type)(struct drm_i915_private *i915,
> > -				      const struct edid *edid);
> > +				      const struct edid *edid,
> > +				      const struct intel_bios_encoder_data *devdata);
> >  		int panel_type;
> >  	} panel_types[] = {
> >  		[PANEL_TYPE_OPREGION] = {
> > @@ -716,7 +727,7 @@ static int get_panel_type(struct drm_i915_private *i915,
> >  	int i;
> >  
> >  	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
> > -		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, edid);
> > +		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, edid, devdata);
> >  
> >  		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
> >  			    panel_types[i].panel_type != 0xff);
> > @@ -747,7 +758,8 @@ static int get_panel_type(struct drm_i915_private *i915,
> >  static void
> >  parse_panel_options(struct drm_i915_private *i915,
> >  		    struct intel_panel *panel,
> > -		    const struct edid *edid)
> > +		    const struct edid *edid,
> > +		    const struct intel_bios_encoder_data *devdata)
> >  {
> >  	const struct bdb_lvds_options *lvds_options;
> >  	int panel_type;
> > @@ -759,7 +771,7 @@ parse_panel_options(struct drm_i915_private *i915,
> >  
> >  	panel->vbt.lvds_dither = lvds_options->pixel_dither;
> >  
> > -	panel_type = get_panel_type(i915, edid);
> > +	panel_type = get_panel_type(i915, edid, devdata);
> >  
> >  	panel->vbt.panel_type = panel_type;
> >  
> > @@ -3103,12 +3115,16 @@ void intel_bios_init(struct drm_i915_private *i915)
> >  }
> >  
> >  void intel_bios_init_panel(struct drm_i915_private *i915,
> > -			   struct intel_panel *panel,
> > +			   struct intel_connector *intel_connector,
> >  			   const struct edid *edid)
> >  {
> > +	struct intel_panel *panel = &intel_connector->panel;
> > +	struct intel_encoder *encoder = intel_connector->encoder;
> 
> At least vlv_dsi_init() calls intel_bios_init_panel() before setting
> intel_connector->encoder, which would oops on the next line.

The different order of stuff for vlv_dsi_init() vs. icl_dsi_init()
is rather annoying. Some kind of unification effort might be nice.

> 
> > +	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
> > +
> 
> intel_bios_init_panel() gets called:
> 
> * On platforms/outputs where encoder->port does not make sense,
>   e.g. intel_lvds_init() sets it to PORT_NONE.
> 
> * On platforms where i915->vbt.ports[] is not initialized at all. See
>   has_ddi_port_info().
> 
> * On platforms/outputs where i915->vbt.ports[] is not
>   initialized. Specifically, DSI is not handled by parse_ddi_port()
>   because on VLV, at least in theory, the DSI ports can coexist and
>   collide with other ports.
> 
> I'm wondering if maybe it's best to have the caller figure out const
> struct intel_bios_encoder_data *, and pass that along. If it's not
> possible, just pass NULL. For DP on DDI platforms it's already set in
> encoder->devdata. (We should basically set that on all platforms where
> it's available, but we're not there yet.)
> 
> This should work trivially for the immediate goal of enabling multiple
> eDP panels, and be compatible with enabling multiple DSI or combo
> eDP/DSI panels in the future once we've figured out how to fix devdata
> for DSI.
> 
> Ville, thoughts?

Sounds reasonable enough to me.

-- 
Ville Syrjälä
Intel
