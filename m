Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE3DA328FE
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 15:47:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 126F810E8D2;
	Wed, 12 Feb 2025 14:47:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OW+6TWzL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EFC310E8CB;
 Wed, 12 Feb 2025 14:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739371665; x=1770907665;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=kcba3QTJKbfgKFXr2+1d0Hnt8gBUDfLl5lUn+S8jWQ0=;
 b=OW+6TWzL2a/oo/7TH5a82xc85tdyYtoo7cKtVquE+Pa8Yntl00q9p9wW
 FFivOkkM/4djol5Tc9qnh98XyURcZVg+00R7dYGkfIFav3qoYi/sYoXPS
 bv45EAO79Pi/iEZcfZWlZQArvbJq6RtFHD2PNiDzWZ7iOp7SRkAFUDx2Z
 AR8gm/mAEqsh7dt8LG8n4zh3mxAIi6cYa40iOqAh+tDz76fakbH5gL8H1
 bvJIw1Ae/ILKcQT0qdltsClPxmLugmZYQF6ZTOk0waXAO999LeBd9jXtv
 ExT8pfxS78/xu1QMnuOiC3yM45kAEoYEVbLI0kAZK3TFAgu/DhJR0zQp8 g==;
X-CSE-ConnectionGUID: pbHTpJwvQdiuA4lg3rC9wg==
X-CSE-MsgGUID: f+FjK1+IQCyhaBitqCvtHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51461637"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51461637"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 06:47:45 -0800
X-CSE-ConnectionGUID: 94oANo5SRFSrmeSUEsL8Dg==
X-CSE-MsgGUID: L7Mlu0aGSMCrEr5p+8Or+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="112614432"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 06:47:43 -0800
Date: Wed, 12 Feb 2025 16:48:42 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com
Subject: Re: [PATCH v2 2/2] drm/i915/display: Allow display PHYs to reset
 power state
Message-ID: <Z6y0yl57reBtvk7l@ideak-desk.fi.intel.com>
References: <20250204105358.284687-1-mika.kahola@intel.com>
 <20250204105358.284687-3-mika.kahola@intel.com>
 <Z6yyaeTnGaJnZniR@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6yyaeTnGaJnZniR@ideak-desk.fi.intel.com>
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

On Wed, Feb 12, 2025 at 04:38:33PM +0200, Imre Deak wrote:
> On Tue, Feb 04, 2025 at 12:53:58PM +0200, Mika Kahola wrote:
> > The dedicated display PHYs reset to a power state that blocks S0ix,
> > increasing idle system power. After a system reset (cold boot,
> > S3/4/5, warm reset) if a dedicated PHY is not being brought up
> > shortly, use these steps to move the PHY to the lowest power state
> > to save power.
> > 
> > 1. Follow the PLL Enable Sequence, using any valid frequency such as DP 1.62 GHz.
> >    This brings lanes out of reset and enables the PLL to allow powerdown to be moved
> >    to the Disable state.
> > 2. Follow PLL Disable Sequence. This moves powerdown to the Disable state and disables the PLL.
> > 
> > v2: Rename WA function to more descriptive (Jani)
> >     For PTL, only port A needs this wa
> >     Add helpers to check presence of C10 phy and pll enabling (Imre)
> > 
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 45 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  1 +
> >  .../drm/i915/display/intel_display_reset.c    |  2 +
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +
> >  4 files changed, 50 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index bffe3d4bbe8b..bd33ebb8c71e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -3559,3 +3559,48 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
> >  	else
> >  		intel_c20pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c20);
> >  }
> > +
> > +static bool intel_cx0_pll_is_enabled(struct intel_display *display, enum port port)
> > +{
> > +	u32 val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, port));
> > +
> > +	if (REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val) == XELPDP_DDI_CLOCK_SELECT_NONE)
> > +		return false;
> 
> Shouldn't this check if the PLL request for either lane is set in
> XELPDP_PORT_CLOCK_CTL? AFAICS that's what actually enables the PLL,
> while the above is just some configuration.
> 
> > +
> > +	return true;
> > +}
> > +/*
> > + * WA 14022081154
> > + * The dedicated display PHYs reset to a power state that blocks S0ix, increasing idle
> > + * system power. After a system reset (cold boot, S3/4/5, warm reset) if a dedicated
> > + * PHY is not being brought up shortly, use these steps to move the PHY to the lowest
> > + * power state to save power. For PTL the workaround is needed only for port A. Port B
> > + * is not connected.
> > + *
> > + * 1. Follow the PLL Enable Sequence, using any valid frequency such as DP 1.62 GHz.
> > + *    This brings lanes out of reset and enables the PLL to allow powerdown to be moved
> > + *    to the Disable state.
> > + * 2. Follow PLL Disable Sequence. This moves powerdown to the Disable state and disables the PLL.
> > + */
> > +void ptl_power_save_wa(struct intel_display *display)
> 
> I'd call it intel_cx0_pll_power_save_wa() following the naming rule for
> exported functions.
> 
> > +{
> > +	struct intel_encoder *encoder;
> > +
> > +	if (DISPLAY_VER(display) != 30)
> > +		return;
> > +
> > +	for_each_intel_encoder(display->drm, encoder) {
> > +		struct intel_cx0pll_state pll_state = {};
> > +		int port_clock = 162000;
> > +
> > +		if (!intel_encoder_is_c10phy(encoder))
> > +			continue;
> > +
> > +		if (intel_cx0_pll_is_enabled(display, encoder->port))
> > +			continue;
> > +
> > +		intel_c10pll_calc_state_from_table(encoder, mtl_c10_edp_tables, port_clock, true, &pll_state);
> > +		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock, 4);
> > +		intel_cx0pll_disable(encoder);
> > +	}
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > index 573fa7d3e88f..06346e4c5079 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > @@ -42,5 +42,6 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
> >  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
> >  				     const struct intel_crtc_state *crtc_state);
> >  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
> > +void ptl_power_save_wa(struct intel_display *display);
> >  
> >  #endif /* __INTEL_CX0_PHY_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> > index 093b386c95e8..b75827ff9c7e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> > @@ -7,6 +7,7 @@
> >  
> >  #include "i915_drv.h"
> >  #include "intel_clock_gating.h"
> > +#include "intel_cx0_phy.h"
> >  #include "intel_display_driver.h"
> >  #include "intel_display_reset.h"
> >  #include "intel_display_types.h"
> > @@ -116,6 +117,7 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
> >  		intel_pps_unlock_regs_wa(display);
> >  		intel_display_driver_init_hw(display);
> >  		intel_clock_gating_init(i915);
> > +		ptl_power_save_wa(display);
> >  		intel_hpd_init(i915);
> >  
> >  		ret = __intel_display_driver_resume(display, state, ctx);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index b8fa04d3cd5c..24893d2f79e3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -27,6 +27,7 @@
> >  #include "bxt_dpio_phy_regs.h"
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> > +#include "intel_cx0_phy.h"
> >  #include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dkl_phy.h"
> > @@ -4552,6 +4553,7 @@ static void sanitize_dpll_state(struct drm_i915_private *i915,
> >  		return;
> >  
> >  	adlp_cmtg_clock_gating_wa(i915, pll);
> > +	ptl_power_save_wa(&i915->display);
> 
> The WA is applied if the PLL is not on, so at least logically it should
> be applied before the !pll->on check above.

Also, sanitize_dpll_state() is called for each shared PLLs, which is not
yet implemented on PTL, so the WA should be called from
intel_dpll_sanitize_state().

> 
> >  
> >  	if (pll->active_mask)
> >  		return;
> > -- 
> > 2.43.0
> > 
