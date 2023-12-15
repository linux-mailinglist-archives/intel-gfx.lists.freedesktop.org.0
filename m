Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3989181441C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 10:03:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A5310E21C;
	Fri, 15 Dec 2023 09:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3466810E21C
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 09:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702631035; x=1734167035;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=t6vCzzL+8eYrs2YmPhwzKNJF92hHAX22iuI0vxvq5Uc=;
 b=mIvCdIub84UfDFk0H+l/7GIUU4Pt2dS5Ag0PJvrPHFfFsforBjS69J48
 xc6ncdu+oKFJrcl71BkyNoxt6HGa4PLb5sldia/lRB7bMgPFyTyp/kLkS
 SRFGR7tRY4DFGtlb7X9misIJ4JMggLGgB6CbTuEE2CfBJ4nTipUe3baT+
 yHClFfmLvI7uxD+tgIEmaE2xMa+ZWSjQ2+dUY3IbL0QD3zfrMzHaerVOO
 WNG4EXQm2Iy5lAhOj8k/zWALEilS/MQcIoevY/rV/kJw5WS2wUPQGE2pU
 Pf+/x35mZbfhi7menNl7mDAkiqIV6+G/QoyEE08C+oEh4E425xU3v8d/x Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="380245889"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="380245889"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 01:03:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="750869933"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="750869933"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 01:01:27 -0800
Date: Fri, 15 Dec 2023 11:01:30 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: C20 clock state verification
Message-ID: <ZXwV6vZpNywCu/Md@ideak-desk.fi.intel.com>
References: <20231215080057.663792-1-mika.kahola@intel.com>
 <ZXwUC0RMKLeH9PDe@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZXwUC0RMKLeH9PDe@ideak-desk.fi.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 15, 2023 at 10:53:36AM +0200, Imre Deak wrote:
> On Fri, Dec 15, 2023 at 10:00:57AM +0200, Mika Kahola wrote:
> > Add clock state verification for C20. Since we
> > are usign either A or B contexts, which are
> > selected based on clock rate, we first need to
> > calculate hw clock and use that clock to select
> > which context we are using.
> 
> Could the description be clearer that the patch _fixes_ the context
> selection? (Also the subject line should always say _what_ the patch
> does.)
> 
> > 
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index 775c1c4a8978..6757e9f941e4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -3079,8 +3079,9 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
> >  	const struct intel_c20pll_state *mpll_sw_state = &state->cx0pll_state.c20;
> >  	bool use_mplla;
> >  	int i;
> > +	int hw_clock = intel_c20pll_calc_port_clock(encoder, mpll_hw_state);
> >  
> > -	use_mplla = intel_c20_use_mplla(mpll_hw_state->clock);
> > +	use_mplla = intel_c20_use_mplla(hw_clock);
> 
> It's mpll_hw_state->tx[0] C20_PHY_USE_MPLLB which tells the HW which
> context to use, so I think it's better to use the same condition here.

You could also add a check intel_c20_use_mplla(clock) matches the above
flag.

> 
> >  	if (use_mplla) {
> >  		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mplla); i++) {
> >  			I915_STATE_WARN(i915, mpll_hw_state->mplla[i] != mpll_sw_state->mplla[i],
> > @@ -3110,6 +3111,11 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
> >  				crtc->base.base.id, crtc->base.name, i,
> >  				mpll_sw_state->cmn[i], mpll_hw_state->cmn[i]);
> >  	}
> > +
> > +	I915_STATE_WARN(i915, hw_clock != mpll_sw_state->clock,
> > +			"[CRTC:%d:%s] mismatch in C20: Register CLOCK (expected %d, found %d)",
> > +			crtc->base.base.id, crtc->base.name,
> > +			mpll_sw_state->clock, hw_clock);
> 
> I think the intel_crtc_state::port_clock SW/HW state verification is
> equivalent to the above, but it's good to verify it here as well. I
> would store hw_clock to mpll_hw_state->clock in
> intel_c20pll_readout_hw_state() though.
> 
> >  }
> >  
> >  void intel_cx0pll_state_verify(struct intel_atomic_state *state,
> > -- 
> > 2.34.1
> > 
