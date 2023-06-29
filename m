Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAC17427EC
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 16:05:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4A1210E3D2;
	Thu, 29 Jun 2023 14:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DBFE10E3D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jun 2023 14:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688047512; x=1719583512;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VxU+5ycxkwTLO4igA43B7oQxkVhywqhIqN2peABuus4=;
 b=c5oJGDCWFHEwrPdz7pZJV45bj7v4B0GWjAEOwyfK00yucvzoljCQf9ix
 l8EHRCLSy0ejb2wuj1b6c7I02CuzeEWC7FZQJsqFWNJXaVWkmEP2X4yuk
 mAnGvppvAlAAw0A9El8P3yc5D+Khyyo6trV/TfkFy/203cEq/L05ILpha
 Tvk/ZWlVAuBSC4DUMoPW9zgj416emEaFBD51a8sUyW9eQQK7iQ6oZkDow
 1vgDYGbMRZu5fguBiDx64+4ERlpAvhcRykbhWxWWJ/5tpHXAvhXShD+9B
 qPLWnuyxyUlGBQLGLqBdJJ2Fw4b0YHlaweqI8N3rFqSqVmqtdkn5ImfGY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="392835583"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="392835583"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 07:05:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="752651291"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="752651291"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 29 Jun 2023 07:04:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Jun 2023 17:04:57 +0300
Date: Thu, 29 Jun 2023 17:04:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZJ2PiR3yaE1l8LBy@intel.com>
References: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
 <20230620173242.26923-4-ville.syrjala@linux.intel.com>
 <877crxfdup.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <877crxfdup.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915: Remove DDC pin sanitation
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

On Wed, Jun 21, 2023 at 10:56:14AM +0300, Jani Nikula wrote:
> On Tue, 20 Jun 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Stop with the VBT DDC pin sanitation, and instead just check
> > that the appropriate DDC pin is still available when initializing
> > a HDMI connector.
> 
> Could be more verbose about the why here.
> 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 69 ----------------------
> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 72 +++++++++++++++++++----
> >  2 files changed, 59 insertions(+), 82 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 34a397adbd6b..439ab5b3cbe5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2230,72 +2230,6 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
> >  	return 0;
> >  }
> >  
> > -static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
> > -{
> > -	enum port port;
> > -
> > -	if (!ddc_pin)
> > -		return PORT_NONE;
> > -
> > -	for_each_port(port) {
> > -		const struct intel_bios_encoder_data *devdata =
> > -			i915->display.vbt.ports[port];
> > -
> > -		if (devdata && ddc_pin == devdata->child.ddc_pin)
> > -			return port;
> > -	}
> > -
> > -	return PORT_NONE;
> > -}
> > -
> > -static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
> > -			     enum port port)
> > -{
> > -	struct drm_i915_private *i915 = devdata->i915;
> > -	struct child_device_config *child;
> > -	u8 mapped_ddc_pin;
> > -	enum port p;
> > -
> > -	if (!devdata->child.ddc_pin)
> > -		return;
> > -
> > -	mapped_ddc_pin = map_ddc_pin(i915, devdata->child.ddc_pin);
> > -	if (!intel_gmbus_is_valid_pin(i915, mapped_ddc_pin)) {
> > -		drm_dbg_kms(&i915->drm,
> > -			    "Port %c has invalid DDC pin %d, "
> > -			    "sticking to defaults\n",
> > -			    port_name(port), mapped_ddc_pin);
> > -		devdata->child.ddc_pin = 0;
> > -		return;
> > -	}
> > -
> > -	p = get_port_by_ddc_pin(i915, devdata->child.ddc_pin);
> > -	if (p == PORT_NONE)
> > -		return;
> > -
> > -	drm_dbg_kms(&i915->drm,
> > -		    "port %c trying to use the same DDC pin (0x%x) as port %c, "
> > -		    "disabling port %c DVI/HDMI support\n",
> > -		    port_name(port), mapped_ddc_pin,
> > -		    port_name(p), port_name(p));
> > -
> > -	/*
> > -	 * If we have multiple ports supposedly sharing the pin, then dvi/hdmi
> > -	 * couldn't exist on the shared port. Otherwise they share the same ddc
> > -	 * pin and system couldn't communicate with them separately.
> > -	 *
> > -	 * Give inverse child device order the priority, last one wins. Yes,
> > -	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
> > -	 * port A and port E with the same AUX ch and we must pick port E :(
> > -	 */
> 
> The priority order gets changed, right? Needs explanation.
> 
> > -	child = &i915->display.vbt.ports[p]->child;
> > -
> > -	child->device_type &= ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
> > -	child->device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT;
> > -
> > -	child->ddc_pin = 0;
> > -}
> > -
> >  static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
> >  {
> >  	enum port port;
> > @@ -2753,9 +2687,6 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
> >  
> >  	sanitize_device_type(devdata, port);
> >  
> > -	if (intel_bios_encoder_supports_dvi(devdata))
> > -		sanitize_ddc_pin(devdata, port);
> > -
> >  	if (intel_bios_encoder_supports_dp(devdata))
> >  		sanitize_aux_ch(devdata, port);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 7ac5e6c5e00d..8d1c8abfcffa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2880,21 +2880,12 @@ static u8 g4x_port_to_ddc_pin(struct drm_i915_private *dev_priv,
> >  	return ddc_pin;
> >  }
> >  
> > -static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
> > +static u8 intel_hdmi_default_ddc_pin(struct intel_encoder *encoder)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  	enum port port = encoder->port;
> >  	u8 ddc_pin;
> >  
> > -	ddc_pin = intel_bios_hdmi_ddc_pin(encoder->devdata);
> > -	if (ddc_pin) {
> > -		drm_dbg_kms(&dev_priv->drm,
> > -			    "[ENCODER:%d:%s] Using DDC pin 0x%x (VBT)\n",
> > -			    encoder->base.base.id, encoder->base.name,
> > -			    ddc_pin);
> > -		return ddc_pin;
> > -	}
> > -
> >  	if (IS_ALDERLAKE_S(dev_priv))
> >  		ddc_pin = adls_port_to_ddc_pin(dev_priv, port);
> >  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
> > @@ -2916,10 +2907,62 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
> >  	else
> >  		ddc_pin = g4x_port_to_ddc_pin(dev_priv, port);
> >  
> > -	drm_dbg_kms(&dev_priv->drm,
> > -		    "[ENCODER:%d:%s] Using DDC pin 0x%x (platform default)\n",
> > +	return ddc_pin;
> > +}
> > +
> > +static struct intel_encoder *
> > +get_encoder_by_ddc_pin(struct intel_encoder *encoder, u8 ddc_pin)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	struct intel_encoder *other;
> > +
> > +	for_each_intel_encoder(&i915->drm, other) {
> > +		if (other == encoder)
> > +			continue;
> > +
> > +		if (!intel_encoder_is_dig_port(other))
> > +			continue;
> > +
> > +		if (enc_to_dig_port(other)->hdmi.ddc_bus == ddc_pin)
> > +			return other;
> > +	}
> > +
> > +	return NULL;
> > +}
> > +
> > +static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	struct intel_encoder *other;
> > +	const char *source;
> > +	u8 ddc_pin;
> > +
> > +	ddc_pin = intel_bios_hdmi_ddc_pin(encoder->devdata);
> > +	source = "VBT";
> > +
> > +	if (!ddc_pin) {
> > +		ddc_pin = intel_hdmi_default_ddc_pin(encoder);
> > +		source = "platform default";
> > +	}
> > +
> > +	if (!intel_gmbus_is_valid_pin(i915, ddc_pin)) {
> > +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Invalid DDC pin %d\n",
> > +			    encoder->base.base.id, encoder->base.name, ddc_pin);
> > +		return 0;
> > +	}
> 
> The existing code checks the vbt ddc pin for validity, and if it's
> invalid, falls back to platform default.
> 
> The above skips the platform default fallback if vbt has invalid but
> non-zero ddc pin.
> 
> I'm not sure if it really matters, but at the very least deserves a
> mention in the commit message.

Right. That one is subtle enough detail that I missed it myself.

> 
> 
> BR,
> Jani.
> 
> 
> > +
> > +	other = get_encoder_by_ddc_pin(encoder, ddc_pin);
> > +	if (other) {
> > +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] DDC pin %d already claimed by [ENCODER:%d:%s]\n",
> > +			    encoder->base.base.id, encoder->base.name, ddc_pin,
> > +			    other->base.base.id, other->base.name);
> > +		return 0;
> > +	}
> > +
> > +	drm_dbg_kms(&i915->drm,
> > +		    "[ENCODER:%d:%s] Using DDC pin 0x%x (%s)\n",
> >  		    encoder->base.base.id, encoder->base.name,
> > -		    ddc_pin);
> > +		    ddc_pin, source);
> >  
> >  	return ddc_pin;
> >  }
> > @@ -2990,6 +3033,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
> >  		return;
> >  
> >  	intel_hdmi->ddc_bus = intel_hdmi_ddc_pin(intel_encoder);
> > +	if (!intel_hdmi->ddc_bus)
> > +		return;
> > +
> >  	ddc = intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
> >  
> >  	drm_connector_init_with_ddc(dev, connector,
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
