Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C830814B48
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 16:10:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0281610E9E1;
	Fri, 15 Dec 2023 15:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAACF10E9E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 15:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702653007; x=1734189007;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=7PjeIObOtBBSgIk7/REHp97engY7nMKK6FJEGpLKq00=;
 b=G0O9CGOcXSYcQm7oXj6Gg8XaXyTKLobA/WeTRKn9B/DLpRoxtP0VpKuU
 6SakdvciQblvz0rMeubs96wtgm+4M8gelt/0EK92ypx6UEn5FCH3PRYPg
 S9ciw1BxE2xI2r7XNHRTFuT/pBCeWrbHtUDcsPkksN6M5G6yMpm9bIUzj
 2/d3UIy0FluNhyhJTmm9SovjF07o9QlPHacA7pvmxgsTB201XcgVWwwmw
 X8q95T+F+73XNZ2Jn9q0ppDscj2Y4Z24/rGL/tiLD+Gw1X9SNztlTTk/n
 nlb5I1Dytew25aN07tC4GJY86IOkdO5gjn9G8kSHd8i+QA23DZe2Gnbla Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="2454190"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; 
   d="scan'208";a="2454190"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 07:10:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="809001764"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="809001764"
Received: from eparshut-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.224])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 07:10:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: C20 clock state verification
In-Reply-To: <MW4PR11MB7054CB8800BAB88AB9CA3B3EEF93A@MW4PR11MB7054.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231215080057.663792-1-mika.kahola@intel.com>
 <ZXwUC0RMKLeH9PDe@ideak-desk.fi.intel.com>
 <ZXwV6vZpNywCu/Md@ideak-desk.fi.intel.com>
 <MW4PR11MB7054CB8800BAB88AB9CA3B3EEF93A@MW4PR11MB7054.namprd11.prod.outlook.com>
Date: Fri, 15 Dec 2023 17:10:01 +0200
Message-ID: <87sf43v6wm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 15 Dec 2023, "Kahola, Mika" <mika.kahola@intel.com> wrote:
>> -----Original Message-----
>> From: Deak, Imre <imre.deak@intel.com>
>> Sent: Friday, December 15, 2023 11:02 AM
>> To: Kahola, Mika <mika.kahola@intel.com>; intel-gfx@lists.freedesktop.org
>> Subject: Re: [PATCH] drm/i915/display: C20 clock state verification
>> 
>> On Fri, Dec 15, 2023 at 10:53:36AM +0200, Imre Deak wrote:
>> > On Fri, Dec 15, 2023 at 10:00:57AM +0200, Mika Kahola wrote:
>> > > Add clock state verification for C20. Since we are usign either A or
>> > > B contexts, which are selected based on clock rate, we first need to
>> > > calculate hw clock and use that clock to select which context we are
>> > > using.
>> >
>> > Could the description be clearer that the patch _fixes_ the context
>> > selection? (Also the subject line should always say _what_ the patch
>> > does.)
> OK, should I add the fixes tag as well? I will reword the commit message to better describe what's going on in this patch.
>
>> >
>> > >
>> > > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 +++++++-
>> > >  1 file changed, 7 insertions(+), 1 deletion(-)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > index 775c1c4a8978..6757e9f941e4 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > @@ -3079,8 +3079,9 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
>> > >  	const struct intel_c20pll_state *mpll_sw_state = &state->cx0pll_state.c20;
>> > >  	bool use_mplla;
>> > >  	int i;
>> > > +	int hw_clock = intel_c20pll_calc_port_clock(encoder,
>> > > +mpll_hw_state);
>> > >
>> > > -	use_mplla = intel_c20_use_mplla(mpll_hw_state->clock);
>> > > +	use_mplla = intel_c20_use_mplla(hw_clock);
>> >
>> > It's mpll_hw_state->tx[0] C20_PHY_USE_MPLLB which tells the HW which
>> > context to use, so I think it's better to use the same condition here.
>
> Maybe I will ditch the use_mplla completely and go directly with
>
> if (mpll_hw_state->tx]0] & C20_PHY_USE_MPLLB) { .. }
>
> instead?

You should first verify that the hw and sw states for use_mplla agree.

If they don't, it doesn't matter which one you use.

BR,
Jani.


>
>> 
>> You could also add a check intel_c20_use_mplla(clock) matches the above flag.
>> 
>> >
>> > >  	if (use_mplla) {
>> > >  		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mplla); i++) {
>> > >  			I915_STATE_WARN(i915, mpll_hw_state->mplla[i] !=
>> > > mpll_sw_state->mplla[i], @@ -3110,6 +3111,11 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
>> > >  				crtc->base.base.id, crtc->base.name, i,
>> > >  				mpll_sw_state->cmn[i], mpll_hw_state->cmn[i]);
>> > >  	}
>> > > +
>> > > +	I915_STATE_WARN(i915, hw_clock != mpll_sw_state->clock,
>> > > +			"[CRTC:%d:%s] mismatch in C20: Register CLOCK (expected %d, found %d)",
>> > > +			crtc->base.base.id, crtc->base.name,
>> > > +			mpll_sw_state->clock, hw_clock);
>> >
>> > I think the intel_crtc_state::port_clock SW/HW state verification is
>> > equivalent to the above, but it's good to verify it here as well. I
>> > would store hw_clock to mpll_hw_state->clock in
>> > intel_c20pll_readout_hw_state() though.
> Well, clock is part of pll structure anyway, so it might as well be checked here too.
>
> I will store hw clock too in intel_c20pll_readout_hw_state()
>
> Thanks!
> Mika  
>
>> >
>> > >  }
>> > >
>> > >  void intel_cx0pll_state_verify(struct intel_atomic_state *state,
>> > > --
>> > > 2.34.1
>> > >

-- 
Jani Nikula, Intel
