Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C22076F1E19
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 20:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AEEE10E0EF;
	Fri, 28 Apr 2023 18:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 986FB10E0EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 18:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682706818; x=1714242818;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Cap5qn8c6OFZn+y4XwfGfvQEtKITCZ2QYxnGrsY/bFU=;
 b=X5kCtlZbiC8B7kycxBQNpw3KmZK1YGu0nt/7akNCtkp9LTem1Suj6VTg
 a13SHPu6ku+glyMAbolj/z77OQK58xYFgVHQHUqGUKlJs6eKVjMragHt5
 GY9Nz9V+dGEFHHN9Q3PmC7gM04y2SrcCvYNu/CeRyCJl3Oo187yISMHDm
 lRGawI1RS/UGff7vZSuaA2SnW3lCJ4TpmNZa8yZNO7JULoAf7mjJgma8J
 JehqS3o4uUWvfxnw9uYU1iZ4hpqE4JEUwCMYJ52VPch1vQil73zLjmuVA
 jzPVVu8YobdnttS5mtgdwToTl5ULNWSmFiCBznv05OSIas19D5fqY6iYv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="413222380"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="413222380"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 11:33:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="697629070"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="697629070"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 11:33:36 -0700
Date: Fri, 28 Apr 2023 21:34:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZEwRnltHDpsafTYb@ideak-desk.fi.intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
 <20230426165305.2049341-11-imre.deak@intel.com>
 <ZEvZDP5vxENwuJmk@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZEvZDP5vxENwuJmk@intel.com>
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915: Factor out
 call_with_modeset_ctx()
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

On Fri, Apr 28, 2023 at 05:32:44PM +0300, Ville Syrjälä wrote:
> On Wed, Apr 26, 2023 at 07:53:04PM +0300, Imre Deak wrote:
> > Factor out a helper to call a function with the atomic locks held,
> > required by a follow-up patch resetting an active DP link.
> > 
> > No functional changes.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 53 ++++++++++++++----------
> >  1 file changed, 31 insertions(+), 22 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 29e4bfab46358..0c8bc32f293b0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4370,35 +4370,18 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
> >  	return modeset_pipe(&crtc->base, ctx);
> >  }
> >  
> > -static enum intel_hotplug_state
> > -intel_ddi_hotplug(struct intel_encoder *encoder,
> > -		  struct intel_connector *connector)
> > +static void call_with_modeset_ctx(int (*fn)(struct intel_encoder *encoder,
> > +					    struct drm_modeset_acquire_ctx *ctx),
> > +				  struct intel_encoder *encoder)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > -	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > -	struct intel_dp *intel_dp = &dig_port->dp;
> > -	enum phy phy = intel_port_to_phy(i915, encoder->port);
> > -	bool is_tc = intel_phy_is_tc(i915, phy);
> >  	struct drm_modeset_acquire_ctx ctx;
> > -	enum intel_hotplug_state state;
> >  	int ret;
> >  
> > -	if (intel_dp->compliance.test_active &&
> > -	    intel_dp->compliance.test_type == DP_TEST_LINK_PHY_TEST_PATTERN) {
> > -		intel_dp_phy_test(encoder);
> > -		/* just do the PHY test and nothing else */
> > -		return INTEL_HOTPLUG_UNCHANGED;
> > -	}
> > -
> > -	state = intel_encoder_hotplug(encoder, connector);
> > -
> >  	drm_modeset_acquire_init(&ctx, 0);
> >  
> >  	for (;;) {
> > -		if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
> > -			ret = intel_hdmi_reset_link(encoder, &ctx);
> > -		else
> > -			ret = intel_dp_retrain_link(encoder, &ctx);
> > +		ret = fn(encoder, &ctx);
> >  
> >  		if (ret == -EDEADLK) {
> >  			drm_modeset_backoff(&ctx);
> > @@ -4410,8 +4393,34 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
> >  
> >  	drm_modeset_drop_locks(&ctx);
> >  	drm_modeset_acquire_fini(&ctx);
> > -	drm_WARN(encoder->base.dev, ret,
> > +	drm_WARN(&i915->drm, ret,
> >  		 "Acquiring modeset locks failed with %i\n", ret);
> > +}
> 
> Seems pretty much a less general version of
> https://patchwork.freedesktop.org/series/92607/
> Unfortuantely that died in the bikeshed.
> 
> Maybe we should look into doing something like that
> just for i915 initially...

Yes, looks better, can adopt an i915 version of that unless you want to
do that.

> 
> > +
> > +static enum intel_hotplug_state
> > +intel_ddi_hotplug(struct intel_encoder *encoder,
> > +		  struct intel_connector *connector)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > +	struct intel_dp *intel_dp = &dig_port->dp;
> > +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> > +	bool is_tc = intel_phy_is_tc(i915, phy);
> > +	enum intel_hotplug_state state;
> > +
> > +	if (intel_dp->compliance.test_active &&
> > +	    intel_dp->compliance.test_type == DP_TEST_LINK_PHY_TEST_PATTERN) {
> > +		intel_dp_phy_test(encoder);
> > +		/* just do the PHY test and nothing else */
> > +		return INTEL_HOTPLUG_UNCHANGED;
> > +	}
> > +
> > +	state = intel_encoder_hotplug(encoder, connector);
> > +
> > +	if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
> > +		call_with_modeset_ctx(intel_hdmi_reset_link, encoder);
> > +	else
> > +		call_with_modeset_ctx(intel_dp_retrain_link, encoder);
> >  
> >  	/*
> >  	 * Unpowered type-c dongles can take some time to boot and be
> > -- 
> > 2.37.2
> 
> -- 
> Ville Syrjälä
> Intel
