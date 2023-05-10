Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0696FDFAD
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 16:09:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAC5A10E49D;
	Wed, 10 May 2023 14:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E90B10E49D
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 14:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683727786; x=1715263786;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gFyuhdIN8X43mEFuLy7NpHsIBevA2UdihxBDK+P0i34=;
 b=bKKfUsoromapI08BUYQA9lbNZQEgtwc8BDa9k0nb+eC/r6zc/3VbtL5i
 uT9BbR+fme5oaHUrGYk+XbV+jcpDNlvGy4CwsCuFsbCRsGMPZ69e+LoZi
 pPFjmC3yJF/iJoxEESoLqVvNhhYZM8vj4dsUge6tDfbCrSaEFVWw4DfFU
 Qy9a36oArpW3GrVWgUEGpA03FYMXScjiyBKLvHP7yBRnCstxxXdkwwJ29
 2XKatJPwMmRDV3EBHmaA0vIee9R5CXyAYSDIdJELP5jTEpvtxhezCsquS
 qUfZRQfJ19SijULxtUp4e7yN5bhOMItwMzyv2h2Gc814eg8n4dcNs2Z5K Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="334689425"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="334689425"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 07:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="699313517"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="699313517"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 07:09:44 -0700
Date: Wed, 10 May 2023 17:10:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZFulrgn/Tf5IHMEv@ideak-desk.fi.intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
 <20230510103131.1618266-14-imre.deak@intel.com>
 <ZFukJRgC27CS3r_B@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFukJRgC27CS3r_B@intel.com>
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

On Wed, May 10, 2023 at 05:03:17PM +0300, Ville Syrjälä wrote:
> On Wed, May 10, 2023 at 01:31:30PM +0300, Imre Deak wrote:
> > Call the TypeC port flush_work and cleanup handlers without the modeset
> > locks held. These don't require the locks, as the work takes - as it
> > should be able to at any point in time - any locks it needs and by the
> > time cleanup is called and after cleanup returns the encoder is not in
> > use.
> > 
> > This is required by the next patch canceling a TypeC port work
> > synchronously during encoder suspend and shutdown, where the work can
> > take modeset locks as well, hence the canceling must be done without
> > holding the locks.
> > 
> > I also considered moving the modeset locking down to each encoder
> > suspend()/shutdown() hook instead, however locking the full modeset
> > state for each encoder separately would be odd, and the bigger change -
> > affecting all encoders - is beyond the scope of this patchset.
> 
> Hmm. What is it in the encoder shutdown/suspend hooks that
> actually needs the modeset locks?

In the case of intel_dp_encoder_suspend() for instance, I assume
nothing, since the VDD work and intel_pps_vdd_off_sync() should take
whatever locks they require.

So presumably most (all) of those could be made lockless. However, I
would like to leave that kind of change for a follow-up if possible, not
to affect in this patchset any other encoder types (again because of
possible need for CC stable).

> 
> > 
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c      | 27 +++++++++----------
> >  .../drm/i915/display/intel_display_types.h    | 12 +++++++++
> >  drivers/gpu/drm/i915/i915_driver.c            |  8 ++++++
> >  3 files changed, 33 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 813be957ed11b..7d09bd2412352 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4617,31 +4617,27 @@ static bool intel_ddi_is_tc(struct drm_i915_private *i915, enum port port)
> >  
> >  static void intel_ddi_encoder_suspend(struct intel_encoder *encoder)
> >  {
> > -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > -	enum phy phy = intel_port_to_phy(i915, encoder->port);
> > -
> >  	intel_dp_encoder_suspend(encoder);
> > +}
> >  
> > -	if (!intel_phy_is_tc(i915, phy))
> > -		return;
> > +static void intel_ddi_tc_encoder_suspend_complete(struct intel_encoder *encoder)
> > +{
> > +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> >  
> >  	intel_tc_port_flush_work(dig_port);
> >  }
> >  
> >  static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
> >  {
> > -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > -	enum phy phy = intel_port_to_phy(i915, encoder->port);
> > -
> >  	intel_dp_encoder_shutdown(encoder);
> >  	intel_hdmi_encoder_shutdown(encoder);
> > +}
> >  
> > -	if (!intel_phy_is_tc(i915, phy))
> > -		return;
> > +static void intel_ddi_tc_encoder_shutdown_complete(struct intel_encoder *encoder)
> > +{
> > +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> >  
> >  	intel_tc_port_cleanup(dig_port);
> >  }
> > @@ -4908,6 +4904,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> >  				    is_legacy ? "legacy" : "non-legacy");
> >  		}
> >  
> > +		encoder->suspend_complete = intel_ddi_tc_encoder_suspend_complete;
> > +		encoder->shutdown_complete = intel_ddi_tc_encoder_shutdown_complete;
> > +
> >  		if (intel_tc_port_init(dig_port, is_legacy) < 0)
> >  			goto err;
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 270c4c84a2920..88b2a55d19f21 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -233,13 +233,25 @@ struct intel_encoder {
> >  	 * Called during system suspend after all pending requests for the
> >  	 * encoder are flushed (for example for DP AUX transactions) and
> >  	 * device interrupts are disabled.
> > +	 * All modeset locks are held while the hook is called.
> >  	 */
> >  	void (*suspend)(struct intel_encoder *);
> > +	/*
> > +	 * Called without the modeset locks held after the suspend() hook for
> > +	 * all encoders have been called.
> > +	 */
> > +	void (*suspend_complete)(struct intel_encoder *encoder);
> >  	/*
> >  	 * Called during system reboot/shutdown after all the
> >  	 * encoders have been disabled and suspended.
> > +	 * All modeset locks are held while the hook is called.
> >  	 */
> >  	void (*shutdown)(struct intel_encoder *encoder);
> > +	/*
> > +	 * Called without the modeset locks held after the shutdown() hook for
> > +	 * all encoders have been called.
> > +	 */
> > +	void (*shutdown_complete)(struct intel_encoder *encoder);
> >  	/*
> >  	 * Enable/disable the clock to the port.
> >  	 */
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index fd198700272b1..705ba65f2ff9a 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -964,6 +964,10 @@ static void intel_suspend_encoders(struct drm_i915_private *dev_priv)
> >  		if (encoder->suspend)
> >  			encoder->suspend(encoder);
> >  	drm_modeset_unlock_all(&dev_priv->drm);
> > +
> > +	for_each_intel_encoder(&dev_priv->drm, encoder)
> > +		if (encoder->suspend_complete)
> > +			encoder->suspend_complete(encoder);
> >  }
> >  
> >  static void intel_shutdown_encoders(struct drm_i915_private *dev_priv)
> > @@ -978,6 +982,10 @@ static void intel_shutdown_encoders(struct drm_i915_private *dev_priv)
> >  		if (encoder->shutdown)
> >  			encoder->shutdown(encoder);
> >  	drm_modeset_unlock_all(&dev_priv->drm);
> > +
> > +	for_each_intel_encoder(&dev_priv->drm, encoder)
> > +		if (encoder->shutdown_complete)
> > +			encoder->shutdown_complete(encoder);
> >  }
> >  
> >  void i915_driver_shutdown(struct drm_i915_private *i915)
> > -- 
> > 2.37.2
> 
> -- 
> Ville Syrjälä
> Intel
