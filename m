Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBF1814459
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 10:17:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A97D10E297;
	Fri, 15 Dec 2023 09:17:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73E9D10E297
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 09:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702631819; x=1734167819;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+mM8AIkNLF00oK/0/5c71oIFg0uqOvz2wEUUYcLqhIs=;
 b=Alptb12pA46IZN+l4j31+T+mLVjDJshmY3CwW8tczMdSeXI6Uy8/+o+D
 VKfzkUE4mySMA/pqpbQ6yaThh86wH4mdzNH/R3F39h3duoMwgozi/Ybjq
 0CJtJbxECtCOb8uCuKtI9ldDfkYLHCmUnUKoFsDng4m/Gnr+5Mj6WqboU
 gseO/H0sXQo5qVNvlEg6zrPbA2MP0xMXJ3OSu6h33tzROPX2xXmaV8X8P
 enGQFXzu0iM7wzHSxF6J3ffpP+ZasZILanXjb62BsFxpWUA5FuHo2EF08
 ObJ2Rq6ESDKKlSLF+QmGoySvK4ylVtMAy3QXy7kKp5EUosSi7zoGPNP98 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="398042013"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="398042013"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 01:16:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="808906884"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="808906884"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 01:16:55 -0800
Date: Fri, 15 Dec 2023 11:17:02 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: C20 clock state verification
Message-ID: <ZXwZbeSm7p0xkYui@ideak-desk.fi.intel.com>
References: <20231215080057.663792-1-mika.kahola@intel.com>
 <ZXwUC0RMKLeH9PDe@ideak-desk.fi.intel.com>
 <ZXwYHPQh-F42aiy0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXwYHPQh-F42aiy0@intel.com>
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

On Fri, Dec 15, 2023 at 11:10:52AM +0200, Ville Syrjälä wrote:
> On Fri, Dec 15, 2023 at 10:53:31AM +0200, Imre Deak wrote:
> > On Fri, Dec 15, 2023 at 10:00:57AM +0200, Mika Kahola wrote:
> > > Add clock state verification for C20. Since we
> > > are usign either A or B contexts, which are
> > > selected based on clock rate, we first need to
> > > calculate hw clock and use that clock to select
> > > which context we are using.
> > 
> > Could the description be clearer that the patch _fixes_ the context
> > selection? (Also the subject line should always say _what_ the patch
> > does.)
> > 
> > > 
> > > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 +++++++-
> > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > index 775c1c4a8978..6757e9f941e4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > @@ -3079,8 +3079,9 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
> > >  	const struct intel_c20pll_state *mpll_sw_state = &state->cx0pll_state.c20;
> > >  	bool use_mplla;
> > >  	int i;
> > > +	int hw_clock = intel_c20pll_calc_port_clock(encoder, mpll_hw_state);
> > >  
> > > -	use_mplla = intel_c20_use_mplla(mpll_hw_state->clock);
> > > +	use_mplla = intel_c20_use_mplla(hw_clock);
> > 
> > It's mpll_hw_state->tx[0] C20_PHY_USE_MPLLB which tells the HW which
> > context to use, so I think it's better to use the same condition here.
> 
> Yes, one should never assume anything about how the register values
> were calculated/etc. That would pretty much defeat the whole purpose
> of doing readout and state check.
> 
> BTW I don't see even being set anywhere C20_PHY_USE_MPLLB.
> Do we not use it or is it encoded in that ugly hex soup in
> intel_c20_compute_hdmi_tmds_pll()? 

Yes, the pll_state->tx[0] line there. For DP, it's in the
intel_c20pll_state predefined tables.

> Instead of repeating the mistakes of the VLV PHY code someone should
> convert that into human readable form...
> 
> > 
> > >  	if (use_mplla) {
> > >  		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mplla); i++) {
> > >  			I915_STATE_WARN(i915, mpll_hw_state->mplla[i] != mpll_sw_state->mplla[i],
> > > @@ -3110,6 +3111,11 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
> > >  				crtc->base.base.id, crtc->base.name, i,
> > >  				mpll_sw_state->cmn[i], mpll_hw_state->cmn[i]);
> > >  	}
> > > +
> > > +	I915_STATE_WARN(i915, hw_clock != mpll_sw_state->clock,
> > > +			"[CRTC:%d:%s] mismatch in C20: Register CLOCK (expected %d, found %d)",
> > > +			crtc->base.base.id, crtc->base.name,
> > > +			mpll_sw_state->clock, hw_clock);
> > 
> > I think the intel_crtc_state::port_clock SW/HW state verification is
> > equivalent to the above, but it's good to verify it here as well. I
> > would store hw_clock to mpll_hw_state->clock in
> > intel_c20pll_readout_hw_state() though.
> > 
> > >  }
> > >  
> > >  void intel_cx0pll_state_verify(struct intel_atomic_state *state,
> > > -- 
> > > 2.34.1
> > > 
> 
> -- 
> Ville Syrjälä
> Intel
