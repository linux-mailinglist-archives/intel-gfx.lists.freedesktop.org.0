Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB3A4D05DF
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 19:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3628E10E0FD;
	Mon,  7 Mar 2022 18:02:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B94D10E0FD
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 18:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646676148; x=1678212148;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cqniKUa337wad8TH5IM7+Gvx9jRVqJMLWldnTD7ezfM=;
 b=NqyeiQgz4GwLtJMXRgGgMWoNeRIghfCtlof3gdTT1QLkmQ4bKs3uNBX1
 9GVZGlHLXv6R+lus5y3aelzlwM9by4EMz9NSqHKjrLwTNJPAtzyXQWzdv
 9D/wAJA+/0fr2qLw2GTtk7sHzn9z+uTms/0CArrZXMwvkHGT+Sk9oypnw
 gfVA7OtxqnR9q/JE4vbzPY2Vm3J/HrRzzjws+5H8ULom8RK1tXNgwwPXS
 xC5UNbEIeaQTkIdK6K32uhgUrIGHIgaxn6+S5wWinRO29paqYX/VevZnk
 anWkjosRQVMlPyGG85is6NayM03UlnUD1kAn628yH8NOa3tDGTtumGvDB A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="254650931"
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="254650931"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 10:02:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="641420250"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 07 Mar 2022 10:02:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Mar 2022 20:02:25 +0200
Date: Mon, 7 Mar 2022 20:02:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YiZIsUp4c92nLnfZ@intel.com>
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
 <20220301173128.6988-8-ville.syrjala@linux.intel.com>
 <87sfry2blw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87sfry2blw.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915: Store the m2 divider as a
 whole in bxt_clk_div
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

On Fri, Mar 04, 2022 at 01:36:27PM +0200, Jani Nikula wrote:
> On Tue, 01 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Get rid of the pointless m2 int vs. frac split in bxt_clk_div
> > and just store the whole divider as one.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 33 +++++++++++--------
> >  1 file changed, 19 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 899aa42a858f..4a82e630cbec 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -2085,8 +2085,7 @@ struct bxt_clk_div {
> >  	int clock;
> >  	u32 p1;
> >  	u32 p2;
> > -	u32 m2_int;
> > -	u32 m2_frac;
> > +	u32 m2;
> >  	u32 n;
> >  
> >  	int vco;
> > @@ -2094,13 +2093,20 @@ struct bxt_clk_div {
> >  
> >  /* pre-calculated values for DP linkrates */
> >  static const struct bxt_clk_div bxt_dp_clk_val[] = {
> > -	{ .clock = 162000, .p1 = 4, .p2 = 2, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
> > -	{ .clock = 270000, .p1 = 4, .p2 = 1, .m2_int = 27, .m2_frac =       0, .n = 1, },
> > -	{ .clock = 540000, .p1 = 2, .p2 = 1, .m2_int = 27, .m2_frac =       0, .n = 1, },
> > -	{ .clock = 216000, .p1 = 3, .p2 = 2, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
> > -	{ .clock = 243000, .p1 = 4, .p2 = 1, .m2_int = 24, .m2_frac = 1258291, .n = 1, },
> > -	{ .clock = 324000, .p1 = 4, .p2 = 1, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
> > -	{ .clock = 432000, .p1 = 3, .p2 = 1, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
> > +	{ .clock = 162000, .p1 = 4, .p2 = 2, .n = 1,
> > +	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
> > +	{ .clock = 270000, .p1 = 4, .p2 = 1, .n = 1,
> > +	  .m2 = 0x6c00000 /* .m2_int = 27, m2_frac =       0 */ },
> > +	{ .clock = 540000, .p1 = 2, .p2 = 1, .n = 1,
> > +	  .m2 = 0x6c00000 /* .m2_int = 27, m2_frac =       0 */ },
> > +	{ .clock = 216000, .p1 = 3, .p2 = 2, .n = 1,
> > +	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
> > +	{ .clock = 243000, .p1 = 4, .p2 = 1, .n = 1,
> > +	  .m2 = 0x6133333 /* .m2_int = 24, m2_frac = 1258291 */ },
> > +	{ .clock = 324000, .p1 = 4, .p2 = 1, .n = 1,
> > +	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
> > +	{ .clock = 432000, .p1 = 3, .p2 = 1, .n = 1,
> > +	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
> 
> Mmh, I guess here I would've added some macros to construct m2 from
> m2_int and m2_frac.
> 
> #define M2_INT_SHIFT	22
> #define M2_FRAC_MASK	0x3fffff
> 
> #define M2(int, frac) ((int) << M2_INT_SHIFT) | (frac))

I don't think this weird decimal representation of m2 is useful
for anything actually. I just copy-pasted it from the chv side
for consistency. Should just probably nuke it for both.

I guess the sensible thing would be to just write the full m2 in
decimal in the comment, eg. ".m2 = 0x819999a /* 32.4 */"

Hmm. Or we could even go a bit further and just do:
.m2 = 32.4 * (1 << 22) + .5
and hope the compiler evaluates it at compile time instead
of getting upset about the floats.

> 
> And you get this:
> 
> 	{ .clock = 432000, .p1 = 3, .p2 = 1, .m2 = M2(32, 1677722), .n = 1, },
> 
> No need to retain the int/frac in comments. Can also use
> REG_FIELD_PREP/GET if you want to over-engineer...
> 
> >  };
> >  
> >  static bool
> > @@ -2127,8 +2133,7 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
> >  	clk_div->p2 = best_clock.p2;
> >  	drm_WARN_ON(&i915->drm, best_clock.m1 != 2);
> >  	clk_div->n = best_clock.n;
> > -	clk_div->m2_int = best_clock.m2 >> 22;
> > -	clk_div->m2_frac = best_clock.m2 & ((1 << 22) - 1);
> > +	clk_div->m2 = best_clock.m2;
> >  
> >  	clk_div->vco = best_clock.vco;
> >  
> > @@ -2197,11 +2202,11 @@ static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
> >  		lanestagger = 0x02;
> >  
> >  	dpll_hw_state->ebb0 = PORT_PLL_P1(clk_div->p1) | PORT_PLL_P2(clk_div->p2);
> > -	dpll_hw_state->pll0 = clk_div->m2_int;
> > +	dpll_hw_state->pll0 = clk_div->m2 >> 22;
> >  	dpll_hw_state->pll1 = PORT_PLL_N(clk_div->n);
> > -	dpll_hw_state->pll2 = clk_div->m2_frac;
> > +	dpll_hw_state->pll2 = clk_div->m2 & 0x3fffff;

I should probably use the REG_FIELD_PREP() macros consistently here.

> >  
> > -	if (clk_div->m2_frac)
> > +	if (clk_div->m2 & 0x3fffff)
> >  		dpll_hw_state->pll3 = PORT_PLL_M2_FRAC_ENABLE;

But here such usage would imply tht the reg value == m2
fractional part. That does happen to be the case here but 
not sure I want to write the code in a way that assumes that.

> 
> Also could reuse the shift and mask macros here.
> 
> Other than that, the direction seems good.
> 
> BR,
> Jani.
> 
> 
> >  
> >  	dpll_hw_state->pll6 = prop_coef | PORT_PLL_INT_COEFF(int_coef);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
