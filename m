Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B931868E561
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 02:27:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A05710E03B;
	Wed,  8 Feb 2023 01:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E4910E03B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 01:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675819654; x=1707355654;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=F+/Gx/hntDd0m5oVpRN9sq140tavkCaYM+m9nwu7F6U=;
 b=eVRFawV2T9FyVnIXfE7oM6ODdp6SSmgAUDdKs8Q/0CuP2E/DufwufTv9
 A3obBZJpImmh+ydMNX8x4vBjS7wvHW7ltN4O7gJFzALTotb6T9rxW+Qah
 yOvQTrh+7S2AS+E9SqV3gEw1ju6mjkhTkKGX9+mS/QkeMTCnnl0JI9Dx0
 yBaxq4DrGx/yk8l5S6PT165VSQNlsn36W54YP7z5PkyktOzbnzI4BDj3n
 Gy/CBgY9FusgQrntztltTVVjDT23RELJEG3vpyne0Aso8VwNP8tSXJFmW
 zBEt19Wcx8ToghsSvxi6thPIF1FvUWY8bpSt8KQsoQrQl/7OEf2AVNjgu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="331808829"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="331808829"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 17:27:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644667730"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="644667730"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2023 17:27:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 03:27:22 +0200
Date: Wed, 8 Feb 2023 03:27:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+L6ekageHB4cwI8@intel.com>
References: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
 <20230207064337.18697-3-ville.syrjala@linux.intel.com>
 <874jrxzvye.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <874jrxzvye.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Populate encoder->devdata for
 DSI on icl+
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

On Tue, Feb 07, 2023 at 11:06:01AM +0200, Jani Nikula wrote:
> On Tue, 07 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We now have some eDP+DSI dual panel systems floating around
> > where the DSI panel is the secondary LFP and thus needs to
> > consult "panel type 2" in VBT in order to locate all the
> > other panel type dependante stuff correctly.
> >
> > To that end we need to pass in the devdata to
> > intel_bios_init_panel_late(), otherwise it'll just assume
> > we want the primary panel type. So let's try to just populate
> > the vbt.ports[] stuff and encoder->devdata for icl+ DSI
> > panels as well.
> >
> > We can't do this on older platforms as there we risk a DSI
> > port aliasing with a HDMI/DP port, which is a totally legal
> > thing as the DSI ports live in their own little parallel
> > universe.
> 
> Btw the series should probably be Cc: stable.

Slapped that on optimistically and pushed the lot.
Thanks for the review.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8016
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c    |  3 ++-
> >  drivers/gpu/drm/i915/display/intel_bios.c | 15 ++++++++++++---
> >  2 files changed, 14 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 003cac918228..05e749861658 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1951,7 +1951,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
> >  	/* attach connector to encoder */
> >  	intel_connector_attach_encoder(intel_connector, encoder);
> >  
> > -	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, NULL, NULL);
> > +	encoder->devdata = intel_bios_encoder_data_lookup(dev_priv, port);
> > +	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, encoder->devdata, NULL);
> >  
> >  	mutex_lock(&dev_priv->drm.mode_config.mutex);
> >  	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 06a2d98d2277..1cd8af88ce50 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2593,6 +2593,12 @@ intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata)
> >  		devdata->child.device_type & DEVICE_TYPE_INTERNAL_CONNECTOR;
> >  }
> >  
> > +static bool
> > +intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata)
> > +{
> > +	return devdata->child.device_type & DEVICE_TYPE_MIPI_OUTPUT;
> > +}
> > +
> >  static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
> >  {
> >  	if (!devdata || devdata->i915->display.vbt.version < 158)
> > @@ -2643,7 +2649,7 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
> >  {
> >  	struct drm_i915_private *i915 = devdata->i915;
> >  	const struct child_device_config *child = &devdata->child;
> > -	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
> > +	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb, supports_tbt;
> >  	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
> >  
> >  	is_dvi = intel_bios_encoder_supports_dvi(devdata);
> > @@ -2651,13 +2657,14 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
> >  	is_crt = intel_bios_encoder_supports_crt(devdata);
> >  	is_hdmi = intel_bios_encoder_supports_hdmi(devdata);
> >  	is_edp = intel_bios_encoder_supports_edp(devdata);
> > +	is_dsi = intel_bios_encoder_supports_dsi(devdata);
> >  
> >  	supports_typec_usb = intel_bios_encoder_supports_typec_usb(devdata);
> >  	supports_tbt = intel_bios_encoder_supports_tbt(devdata);
> >  
> >  	drm_dbg_kms(&i915->drm,
> > -		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d LSPCON:%d USB-Type-C:%d TBT:%d DSC:%d\n",
> > -		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp,
> > +		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d DSI:%d LSPCON:%d USB-Type-C:%d TBT:%d DSC:%d\n",
> > +		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp, is_dsi,
> >  		    HAS_LSPCON(i915) && child->lspcon,
> >  		    supports_typec_usb, supports_tbt,
> >  		    devdata->dsc != NULL);
> > @@ -2710,6 +2717,8 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
> >  	enum port port;
> >  
> >  	port = dvo_port_to_port(i915, child->dvo_port);
> > +	if (port == PORT_NONE && DISPLAY_VER(i915) >= 11)
> > +		port = dsi_dvo_port_to_port(i915, child->dvo_port);
> >  	if (port == PORT_NONE)
> >  		return;
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
