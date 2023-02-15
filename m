Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F066979F6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 11:36:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE37010EA9F;
	Wed, 15 Feb 2023 10:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABB0C10EA9F
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 10:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676457362; x=1707993362;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1NN9c7vDhnMk6MOIYaxYpcSVnJ6BxRGkL9yjoB8QVqE=;
 b=iZIJUAZpA7rxzMOFHPvEjkoZebsx6HoT0Ce1VwF9XJwcgZr1aN3KDFVX
 bzcDyGI+4a65h674psPRvGmEpUGJJCwTYtdPAc6avOVXLUtUcoON76xi4
 nt4qpQGKjJaelzpcJvGh17LlMWfMxUfmTYRcdNDxJyhU2xB0K9Vt7rm7H
 Kv1s1wbTDphQ8eNkAOpaAJhlN7MHrn4ROZ1SJ3t9o7RC6flqur4MBnIjM
 vgOLpKLMBXBhbXGGrzhg6Cu4yrizdYOTcJv8wsns5j227N+PNMtKmNHs4
 gcckPqUmvHV93iN+JxRJbWiJtF6YKbRKJTsgxeFr1vt6JmY/xGvzahC0B A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="319429841"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="319429841"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 02:35:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="662875183"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="662875183"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 15 Feb 2023 02:35:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Feb 2023 12:35:52 +0200
Date: Wed, 15 Feb 2023 12:35:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+y1iLfg6X8cbCRJ@intel.com>
References: <20230214231925.26535-1-ville.syrjala@linux.intel.com>
 <875yc3s0u6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875yc3s0u6.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Use encoder->devdata more
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

On Wed, Feb 15, 2023 at 12:02:41PM +0200, Jani Nikula wrote:
> On Wed, 15 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Switch a lot of the intel_bios_foo() stuff to just accept the
> > devdata (VBT child device info) directly, instead of taking
> > detours via vbt.ports[].
> >
> > Also unify the function naming scheme.
> >
> > TODO: is intel_bios_encoder_{dp,hdmi}_ too much? Or should we
> > shorten to just intel_bios_{dp,hdmi}_ ?
> 
> I think I added encoder in the name to distinguish from the old stuff,
> but if everything's going to be based on encoder->devdata, I don't see
> what the point is. Could just shorten it I guess?

Agreed. I'll drop the extra junk in v2.

> 
> BR,
> Jani.
> 
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 54 +++++------------------
> >  drivers/gpu/drm/i915/display/intel_bios.h | 15 ++++---
> >  drivers/gpu/drm/i915/display/intel_ddi.c  |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dp.c   |  4 +-
> >  drivers/gpu/drm/i915/display/intel_hdmi.c |  4 +-
> >  5 files changed, 23 insertions(+), 56 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 229f9782e226..22bbbca171dc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2520,7 +2520,7 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
> >  	}
> >  }
> >  
> > -static int _intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
> > +int intel_bios_encoder_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
> >  {
> >  	if (!devdata || devdata->i915->display.vbt.version < 216)
> >  		return 0;
> > @@ -2531,7 +2531,7 @@ static int _intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *de
> >  		return parse_bdb_216_dp_max_link_rate(devdata->child.dp_max_link_rate);
> >  }
> >  
> > -static int _intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
> > +int intel_bios_encoder_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
> >  {
> >  	if (!devdata || devdata->i915->display.vbt.version < 244)
> >  		return 0;
> > @@ -2604,7 +2604,8 @@ intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata)
> >  	return devdata && HAS_LSPCON(devdata->i915) && devdata->child.lspcon;
> >  }
> >  
> > -static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
> > +/* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
> > +int intel_bios_encoder_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
> >  {
> >  	if (!devdata || devdata->i915->display.vbt.version < 158)
> >  		return -1;
> > @@ -2612,7 +2613,7 @@ static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *de
> >  	return devdata->child.hdmi_level_shifter_value;
> >  }
> >  
> > -static int _intel_bios_max_tmds_clock(const struct intel_bios_encoder_data *devdata)
> > +int intel_bios_encoder_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata)
> >  {
> >  	if (!devdata || devdata->i915->display.vbt.version < 204)
> >  		return 0;
> > @@ -2674,14 +2675,14 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
> >  		    supports_typec_usb, supports_tbt,
> >  		    devdata->dsc != NULL);
> >  
> > -	hdmi_level_shift = _intel_bios_hdmi_level_shift(devdata);
> > +	hdmi_level_shift = intel_bios_encoder_hdmi_level_shift(devdata);
> >  	if (hdmi_level_shift >= 0) {
> >  		drm_dbg_kms(&i915->drm,
> >  			    "Port %c VBT HDMI level shift: %d\n",
> >  			    port_name(port), hdmi_level_shift);
> >  	}
> >  
> > -	max_tmds_clock = _intel_bios_max_tmds_clock(devdata);
> > +	max_tmds_clock = intel_bios_encoder_hdmi_max_tmds_clock(devdata);
> >  	if (max_tmds_clock)
> >  		drm_dbg_kms(&i915->drm,
> >  			    "Port %c VBT HDMI max TMDS clock: %d kHz\n",
> > @@ -2700,7 +2701,7 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
> >  			    "Port %c VBT HDMI boost level: %d\n",
> >  			    port_name(port), hdmi_boost_level);
> >  
> > -	dp_max_link_rate = _intel_bios_dp_max_link_rate(devdata);
> > +	dp_max_link_rate = intel_bios_encoder_dp_max_link_rate(devdata);
> >  	if (dp_max_link_rate)
> >  		drm_dbg_kms(&i915->drm,
> >  			    "Port %c VBT DP max link rate: %d\n",
> > @@ -3665,22 +3666,6 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
> >  	return aux_ch;
> >  }
> >  
> > -int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
> > -{
> > -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > -	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
> > -
> > -	return _intel_bios_max_tmds_clock(devdata);
> > -}
> > -
> > -/* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
> > -int intel_bios_hdmi_level_shift(struct intel_encoder *encoder)
> > -{
> > -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > -	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
> > -
> > -	return _intel_bios_hdmi_level_shift(devdata);
> > -}
> >  
> >  int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devdata)
> >  {
> > @@ -3698,31 +3683,12 @@ int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *de
> >  	return translate_iboost(devdata->child.hdmi_iboost_level);
> >  }
> >  
> > -int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
> > +int intel_bios_encoder_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata)
> >  {
> > -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > -	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
> > -
> > -	return _intel_bios_dp_max_link_rate(devdata);
> > -}
> > -
> > -int intel_bios_dp_max_lane_count(struct intel_encoder *encoder)
> > -{
> > -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > -	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
> > -
> > -	return _intel_bios_dp_max_lane_count(devdata);
> > -}
> > -
> > -int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
> > -{
> > -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > -	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
> > -
> >  	if (!devdata || !devdata->child.ddc_pin)
> >  		return 0;
> >  
> > -	return map_ddc_pin(i915, devdata->child.ddc_pin);
> > +	return map_ddc_pin(devdata->i915, devdata->child.ddc_pin);
> >  }
> >  
> >  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata)
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> > index 1a6ae38bd4f6..0ce7ed7f28c9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -254,11 +254,6 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
> >  bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
> >  			       struct intel_crtc_state *crtc_state,
> >  			       int dsc_max_bpc);
> > -int intel_bios_max_tmds_clock(struct intel_encoder *encoder);
> > -int intel_bios_hdmi_level_shift(struct intel_encoder *encoder);
> > -int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
> > -int intel_bios_dp_max_lane_count(struct intel_encoder *encoder);
> > -int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder);
> >  bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, enum port port);
> >  bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port);
> >  
> > @@ -272,9 +267,15 @@ bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devda
> >  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
> >  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
> >  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
> > -int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devdata);
> > -int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *devdata);
> >  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
> >  bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata);
> > +int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devdata);
> > +int intel_bios_encoder_dp_max_link_rate(const struct intel_bios_encoder_data *devdata);
> > +int intel_bios_encoder_dp_max_lane_count(const struct intel_bios_encoder_data *devdata);
> > +int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *devdata);
> > +int intel_bios_encoder_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata);
> > +int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *devdata);
> > +int intel_bios_encoder_hdmi_level_shift(const struct intel_bios_encoder_data *devdata);
> > +int intel_bios_encoder_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata);
> >  
> >  #endif /* _INTEL_BIOS_H_ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index bfd1e30a27b4..655309ff5b55 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -89,7 +89,7 @@ static int intel_ddi_hdmi_level(struct intel_encoder *encoder,
> >  {
> >  	int level;
> >  
> > -	level = intel_bios_hdmi_level_shift(encoder);
> > +	level = intel_bios_encoder_hdmi_level_shift(encoder->devdata);
> >  	if (level < 0)
> >  		level = trans->hdmi_default_entry;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index b92e0b0f5369..7fd4c5ccf7e5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -288,7 +288,7 @@ static int intel_dp_max_common_rate(struct intel_dp *intel_dp)
> >  
> >  static int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
> >  {
> > -	int vbt_max_lanes = intel_bios_dp_max_lane_count(&dig_port->base);
> > +	int vbt_max_lanes = intel_bios_encoder_dp_max_lane_count(dig_port->base.devdata);
> >  	int max_lanes = dig_port->max_lanes;
> >  
> >  	if (vbt_max_lanes)
> > @@ -425,7 +425,7 @@ static int vbt_max_link_rate(struct intel_dp *intel_dp)
> >  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> >  	int max_rate;
> >  
> > -	max_rate = intel_bios_dp_max_link_rate(encoder);
> > +	max_rate = intel_bios_encoder_dp_max_link_rate(encoder->devdata);
> >  
> >  	if (intel_dp_is_edp(intel_dp)) {
> >  		struct intel_connector *connector = intel_dp->attached_connector;
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 619865b45eca..07a1495bd55f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -1795,7 +1795,7 @@ static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
> >  	else
> >  		max_tmds_clock = 165000;
> >  
> > -	vbt_max_tmds_clock = intel_bios_max_tmds_clock(encoder);
> > +	vbt_max_tmds_clock = intel_bios_encoder_hdmi_max_tmds_clock(encoder->devdata);
> >  	if (vbt_max_tmds_clock)
> >  		max_tmds_clock = min(max_tmds_clock, vbt_max_tmds_clock);
> >  
> > @@ -2871,7 +2871,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
> >  	enum port port = encoder->port;
> >  	u8 ddc_pin;
> >  
> > -	ddc_pin = intel_bios_alternate_ddc_pin(encoder);
> > +	ddc_pin = intel_bios_encoder_hdmi_ddc_pin(encoder->devdata);
> >  	if (ddc_pin) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Using DDC pin 0x%x for port %c (VBT)\n",
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
