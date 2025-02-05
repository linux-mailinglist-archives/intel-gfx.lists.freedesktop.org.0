Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE401A28B87
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 14:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E06010E086;
	Wed,  5 Feb 2025 13:19:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AdwjhBUR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C03BE10E086;
 Wed,  5 Feb 2025 13:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738761556; x=1770297556;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=QTe0Ok0VdxIc5LCLdeWsbJvIc5Adlm14a7gIW4d+D+4=;
 b=AdwjhBURvJwXbstLoWYZqicis4X9BH/yiRkvpSn64Li6t0qziwmyd9gl
 gb8pVmAPiELAwV0aXzulcAobxCKVHPQdMnODSQKQUV6abkPSIeLz4uPS3
 bVqJPQ+EgIqgyniBXC43jeEakD7HypNZndWXsvJpfiYymgYptHPqOxdnk
 ZoX9Ey4/R/vr4gZriQfYk9lplF1/0sQ6jTXxo9MT2Xns3z2xLhJUzCCP4
 QUrebuFIvb3lNtXL+m53tqGOLj8dOeqStTf6NL1hIQl+0Q0tXa3K9RM7v
 w65mWJfS++VeYXnBf1g9ERpBaVuh8Dgc1f+NzXAbGFOSUK3NFfP5PBDzS g==;
X-CSE-ConnectionGUID: MPLaJuVDSUC5Op2oEWpiPw==
X-CSE-MsgGUID: 0oPsQF9QTjWYlhTY7nquww==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="38531955"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="38531955"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 05:19:15 -0800
X-CSE-ConnectionGUID: BIw2d+pLSzadQLaz5vTOWA==
X-CSE-MsgGUID: VW+hX6h6RB+RZXZqOGVxAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111784677"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 05:19:13 -0800
Date: Wed, 5 Feb 2025 15:20:10 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Imre Deak <imre.deak@gmail.com>
Subject: Re: [PATCH 04/17] drm/i915/ddi: Set missing TC DP PHY lane stagger
 delay in DDI_BUF_CTL
Message-ID: <Z6NlioWUEobJ76dE@ideak-desk.fi.intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-5-imre.deak@intel.com>
 <87tt984m3j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87tt984m3j.fsf@intel.com>
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

On Wed, Feb 05, 2025 at 02:22:56PM +0200, Jani Nikula wrote:
> On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> > From: Imre Deak <imre.deak@gmail.com>
> >
> > Add the missing PHY lane stagger delay programming for ICL-ADL
> > platforms on TypeC DP outputs.
> >
> > Bspec: 7534, 49533
> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 18 ++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h          |  3 +++
> >  2 files changed, 21 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 76e8296cb134b..6192c0d3c87a5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -328,9 +328,21 @@ static u32 ddi_buf_phy_link_rate(int port_clock)
> >  	}
> >  }
> >  
> > +static int dp_phy_lane_stagger_delay(int port_clock)
> > +{
> > +	/*
> > +	 * Return the number of link symbols per 100 ns:
> > +	 * port_clock (10 kHz) -> bits    / 100 us
> > +	 * / symbol_size       -> symbols / 100 us
> > +	 * / 1000              -> symbols / 100 ns
> > +	 */
> > +	return DIV_ROUND_UP(port_clock, intel_dp_link_symbol_size(port_clock) * 1000);
> 
> Okay, this checks out, but it was incredibly difficult (for me) to
> follow, even with the comment. The meaning of 100 ns is also not
> documented i.e. we want a lane stagger delay of 100 ns or greater, and
> we must express this in terms of symbols in the register.

I could clarify the above one-line code comment based on the bspec
description as (i.e. replace "Return the number of link symbols per 100
ns" with):

"""
Return the number of symbol clocks delay used to stagger the
assertion/desassertion of the port lane enables. The target delay time
is 100 ns or greater, return the number of symbols specific to
the provided port_clock (aka link clock) corresponding to this delay
time, i.e. so that

   number_of_symbols * duration_of_one_symbol >= 100 ns

The delay must be applied only on TypeC DP outputs, for everything else
the delay must be set to 0.
"""

followed by the above unit conversion hints.

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > +}
> > +
> >  static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
> >  				      const struct intel_crtc_state *crtc_state)
> >  {
> > +	struct intel_display *display = to_intel_display(encoder);
> >  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> >  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> >  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > @@ -356,6 +368,12 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
> >  		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
> >  			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> >  	}
> > +
> > +	if (IS_DISPLAY_VER(display, 11, 13) && intel_encoder_is_tc(encoder)) {
> > +		int delay = dp_phy_lane_stagger_delay(crtc_state->port_clock);
> > +
> > +		intel_dp->DP |= DDI_BUF_LANE_STAGGER_DELAY(delay);
> > +	}
> >  }
> >  
> >  static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 04e47d0a8ab92..7fe4e71fc08ec 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3632,6 +3632,9 @@ enum skl_power_gate {
> >  #define  DDI_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 1)
> >  #define  DDI_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 2)
> >  #define  DDI_BUF_PORT_REVERSAL			(1 << 16)
> > +#define  DDI_BUF_LANE_STAGGER_DELAY_MASK	REG_GENMASK(15, 8)
> > +#define  DDI_BUF_LANE_STAGGER_DELAY(symbols)	REG_FIELD_PREP(DDI_BUF_LANE_STAGGER_DELAY_MASK, \
> > +							       symbols)
> >  #define  DDI_BUF_IS_IDLE			(1 << 7)
> >  #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
> >  #define  DDI_A_4_LANES				(1 << 4)
> 
> -- 
> Jani Nikula, Intel
