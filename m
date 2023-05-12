Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E34AD700943
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 15:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7A710E6B6;
	Fri, 12 May 2023 13:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37CC510E6B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 13:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683898652; x=1715434652;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DnWI4AEEoZavw4X23Z2n2BCzUFUyNveVzwJvW0UWzPU=;
 b=ccAeo4Yk5upoyiexc+hq46kW4vlVRimotLK7sv1JhTEj4kfTIPLB5PsD
 MtyUz5IxXBKRF+/wJvtSOFULkGLaLkvef/Yi1iiBz7Q5pKetYyOBAWY5I
 U6OOWkL3VjXRFPalYeyVtfxcbUxw8ik0CKpy2mc6RVb0Opyumk1/AKRg6
 Gfe9u23b5N09iNDBOROLF/frGUG/R+81rGKierJxfXrR5374+v1JO1LQa
 1AXBYBFqyGS5geDuN9DwL9Via4g36EO9Rt8T7g1gAf37AOnDXL7BqU5ex
 +5IJm1t21lYYlFfuieK4XoA/qFDYAWhHOxw7YWyRPupiToQOpEMsSZ2te Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="437124006"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="437124006"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 06:37:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="700187453"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="700187453"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 06:37:28 -0700
Date: Fri, 12 May 2023 16:38:07 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZF5BP68S41e26o8x@ideak-desk.fi.intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
 <20230510103131.1618266-14-imre.deak@intel.com>
 <ZFukJRgC27CS3r_B@intel.com>
 <ZFulrgn/Tf5IHMEv@ideak-desk.fi.intel.com>
 <ZF0oqq8BD62Hl7Xo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZF0oqq8BD62Hl7Xo@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 13/14] drm/i915/tc: Call TypeC port
 flush_work/cleanup without modeset locks held
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 11, 2023 at 08:40:58PM +0300, Ville Syrjälä wrote:
> On Wed, May 10, 2023 at 05:10:22PM +0300, Imre Deak wrote:
> > On Wed, May 10, 2023 at 05:03:17PM +0300, Ville Syrjälä wrote:
> > > On Wed, May 10, 2023 at 01:31:30PM +0300, Imre Deak wrote:
> > > > Call the TypeC port flush_work and cleanup handlers without the modeset
> > > > locks held. These don't require the locks, as the work takes - as it
> > > > should be able to at any point in time - any locks it needs and by the
> > > > time cleanup is called and after cleanup returns the encoder is not in
> > > > use.
> > > > 
> > > > This is required by the next patch canceling a TypeC port work
> > > > synchronously during encoder suspend and shutdown, where the work can
> > > > take modeset locks as well, hence the canceling must be done without
> > > > holding the locks.
> > > > 
> > > > I also considered moving the modeset locking down to each encoder
> > > > suspend()/shutdown() hook instead, however locking the full modeset
> > > > state for each encoder separately would be odd, and the bigger change -
> > > > affecting all encoders - is beyond the scope of this patchset.
> > > 
> > > Hmm. What is it in the encoder shutdown/suspend hooks that
> > > actually needs the modeset locks?
> > 
> > In the case of intel_dp_encoder_suspend() for instance, I assume
> > nothing, since the VDD work and intel_pps_vdd_off_sync() should take
> > whatever locks they require.
> > 
> > So presumably most (all) of those could be made lockless. However, I
> > would like to leave that kind of change for a follow-up if possible, not
> > to affect in this patchset any other encoder types (again because of
> > possible need for CC stable).
> 
> Yeah sure.

Ok, will add a TODO comment about this.

> A bit irksome to have to add vfuncs and whatnot for
> it though, but it's not the end of the world.

Direct intel_tc calls from intel_suspend/shutdown_encoders didn't seem
ideal either, but can do that if you think that's better.

> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> > 
> > > 
> > > > 
> > > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_ddi.c      | 27 +++++++++----------
> > > >  .../drm/i915/display/intel_display_types.h    | 12 +++++++++
> > > >  drivers/gpu/drm/i915/i915_driver.c            |  8 ++++++
> > > >  3 files changed, 33 insertions(+), 14 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > index 813be957ed11b..7d09bd2412352 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > @@ -4617,31 +4617,27 @@ static bool intel_ddi_is_tc(struct drm_i915_private *i915, enum port port)
> > > >  
> > > >  static void intel_ddi_encoder_suspend(struct intel_encoder *encoder)
> > > >  {
> > > > -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > > > -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > > -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > > > -	enum phy phy = intel_port_to_phy(i915, encoder->port);
> > > > -
> > > >  	intel_dp_encoder_suspend(encoder);
> > > > +}
> > > >  
> > > > -	if (!intel_phy_is_tc(i915, phy))
> > > > -		return;
> > > > +static void intel_ddi_tc_encoder_suspend_complete(struct intel_encoder *encoder)
> > > > +{
> > > > +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > > > +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > > >  
> > > >  	intel_tc_port_flush_work(dig_port);
> > > >  }
> > > >  
> > > >  static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
> > > >  {
> > > > -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > > > -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > > -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > > > -	enum phy phy = intel_port_to_phy(i915, encoder->port);
> > > > -
> > > >  	intel_dp_encoder_shutdown(encoder);
> > > >  	intel_hdmi_encoder_shutdown(encoder);
> > > > +}
> > > >  
> > > > -	if (!intel_phy_is_tc(i915, phy))
> > > > -		return;
> > > > +static void intel_ddi_tc_encoder_shutdown_complete(struct intel_encoder *encoder)
> > > > +{
> > > > +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > > > +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > > >  
> > > >  	intel_tc_port_cleanup(dig_port);
> > > >  }
> > > > @@ -4908,6 +4904,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> > > >  				    is_legacy ? "legacy" : "non-legacy");
> > > >  		}
> > > >  
> > > > +		encoder->suspend_complete = intel_ddi_tc_encoder_suspend_complete;
> > > > +		encoder->shutdown_complete = intel_ddi_tc_encoder_shutdown_complete;
> > > > +
> > > >  		if (intel_tc_port_init(dig_port, is_legacy) < 0)
> > > >  			goto err;
> > > >  	}
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index 270c4c84a2920..88b2a55d19f21 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -233,13 +233,25 @@ struct intel_encoder {
> > > >  	 * Called during system suspend after all pending requests for the
> > > >  	 * encoder are flushed (for example for DP AUX transactions) and
> > > >  	 * device interrupts are disabled.
> > > > +	 * All modeset locks are held while the hook is called.
> > > >  	 */
> > > >  	void (*suspend)(struct intel_encoder *);
> > > > +	/*
> > > > +	 * Called without the modeset locks held after the suspend() hook for
> > > > +	 * all encoders have been called.
> > > > +	 */
> > > > +	void (*suspend_complete)(struct intel_encoder *encoder);
> > > >  	/*
> > > >  	 * Called during system reboot/shutdown after all the
> > > >  	 * encoders have been disabled and suspended.
> > > > +	 * All modeset locks are held while the hook is called.
> > > >  	 */
> > > >  	void (*shutdown)(struct intel_encoder *encoder);
> > > > +	/*
> > > > +	 * Called without the modeset locks held after the shutdown() hook for
> > > > +	 * all encoders have been called.
> > > > +	 */
> > > > +	void (*shutdown_complete)(struct intel_encoder *encoder);
> > > >  	/*
> > > >  	 * Enable/disable the clock to the port.
> > > >  	 */
> > > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > > index fd198700272b1..705ba65f2ff9a 100644
> > > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > > @@ -964,6 +964,10 @@ static void intel_suspend_encoders(struct drm_i915_private *dev_priv)
> > > >  		if (encoder->suspend)
> > > >  			encoder->suspend(encoder);
> > > >  	drm_modeset_unlock_all(&dev_priv->drm);
> > > > +
> > > > +	for_each_intel_encoder(&dev_priv->drm, encoder)
> > > > +		if (encoder->suspend_complete)
> > > > +			encoder->suspend_complete(encoder);
> > > >  }
> > > >  
> > > >  static void intel_shutdown_encoders(struct drm_i915_private *dev_priv)
> > > > @@ -978,6 +982,10 @@ static void intel_shutdown_encoders(struct drm_i915_private *dev_priv)
> > > >  		if (encoder->shutdown)
> > > >  			encoder->shutdown(encoder);
> > > >  	drm_modeset_unlock_all(&dev_priv->drm);
> > > > +
> > > > +	for_each_intel_encoder(&dev_priv->drm, encoder)
> > > > +		if (encoder->shutdown_complete)
> > > > +			encoder->shutdown_complete(encoder);
> > > >  }
> > > >  
> > > >  void i915_driver_shutdown(struct drm_i915_private *i915)
> > > > -- 
> > > > 2.37.2
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
