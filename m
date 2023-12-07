Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CE5808CE4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 17:06:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C30710E919;
	Thu,  7 Dec 2023 16:06:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20A3410E919
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 16:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701965202; x=1733501202;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/EOJdxRv0i0+lXsOZAA5KmkxCwSDYBA22Y+mp0aSFRQ=;
 b=farLZG5uMpZxZv8/xryaLonzMcV/O2SbnKHuXUE2+H08G9M+xcCkiDsI
 gQoVK422BUxBdfX5B2FYvGUpe1Cw8avXB0PYcZwpEDCV6SOdaJ7wmkBWf
 0IGMOPPPsdcT55qNV+YY4wfq+ZHDNwt7m9YMPUXwcGjByoJCkrpolQYIf
 +QnC9xhEp+79GZCaeJ9cMvteBdUkXrHheHFr2T1KGBKtMn1YcNPc4G1A+
 aN1ZosC4Z+kcG2R2vqQ2+2aoMwPRdt7E3EwXhZavfUwyavRkGVAxchLJu
 PSNY1Xva0Aa8nDehJdt9s0bHZjCq5ixnlGNveIgYBUTZ1r9Vuj1qFldBS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="397046138"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="397046138"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 08:06:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="765152781"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="765152781"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 07 Dec 2023 08:06:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Dec 2023 18:06:38 +0200
Date: Thu, 7 Dec 2023 18:06:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Suppress old PLL pipe_mask
 checks for MG/TC/TBT PLLs
Message-ID: <ZXHtjlRwLwmFmfwT@intel.com>
References: <20231124082735.25470-1-ville.syrjala@linux.intel.com>
 <20231124082735.25470-4-ville.syrjala@linux.intel.com>
 <ZXHcxvx/TZc4pE9p@ideak-desk.fi.intel.com>
 <ZXHjvHXJCA5oBeyo@intel.com>
 <ZXHo9vrURBBdDuNx@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXHo9vrURBBdDuNx@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
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

On Thu, Dec 07, 2023 at 05:47:02PM +0200, Imre Deak wrote:
> On Thu, Dec 07, 2023 at 05:24:44PM +0200, Ville Syrj�l� wrote:
> > On Thu, Dec 07, 2023 at 04:55:02PM +0200, Imre Deak wrote:
> > > On Fri, Nov 24, 2023 at 10:27:34AM +0200, Ville Syrjala wrote:
> > > > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > > 
> > > > TC ports have both the MG/TC and TBT PLLs selected simultanously (so
> > > > that we can switch from MG/TC to TBT as a fallback). This doesn't play
> > > > well with the state checker that assumes that the old PLL shouldn't
> > > > have the pipe in its pipe_mask anymore. Suppress that check for these
> > > > PLLs to avoid spurious WARNs when you disconnect a TC port and a
> > > > non-disabling modeset happens before actually disabling the port.
> > > > 
> > > > Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > 
> > > Looks ok to me:
> > > Reviewed-by: Imre Deak <imre.deak@intel.com>
> > > 
> > > I suppose the check would be still valid for MG PLLs, but the port
> > > PLL stuff makes doing that cumbersome.
> > 
> > You mean for legacy ports?
> 
> Yes, I suppose in that case too, but in general the state check doesn't
> work only if the shared_dpll in either the the old or new crtc state is
> the TBT PLL and in the other state it's MG PLL. If the PLL in both
> states are MG PLL the state check would be still valid, if I didn't miss
> something.

Oh you mean switching from one MG PLL to another MG PLL?
Yeah, that in theory we'd still want to check.

Hmm. Maybe if we flag only the TBT PLL as special and
then skip the assert only when either the old or new PLL
is the TBT PLL?

> 
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 56 +++++++++++++------
> > > >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  4 ++
> > > >  2 files changed, 42 insertions(+), 18 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > > > index d86b02de2923..5c6c4fc50b1d 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > > > @@ -4023,11 +4023,16 @@ static const struct intel_shared_dpll_funcs mg_pll_funcs = {
> > > >  static const struct dpll_info icl_plls[] = {
> > > >  	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
> > > >  	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
> > > > -	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL, },
> > > > -	{ .name = "MG PLL 1", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
> > > > -	{ .name = "MG PLL 2", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
> > > > -	{ .name = "MG PLL 3", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
> > > > -	{ .name = "MG PLL 4", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL4, },
> > > > +	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "MG PLL 1", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL1,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "MG PLL 2", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL2,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "MG PLL 3", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL3,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "MG PLL 4", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL4,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > >  	{}
> > > >  };
> > > >  
> > > > @@ -4068,13 +4073,20 @@ static const struct intel_shared_dpll_funcs dkl_pll_funcs = {
> > > >  static const struct dpll_info tgl_plls[] = {
> > > >  	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
> > > >  	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
> > > > -	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL, },
> > > > -	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
> > > > -	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
> > > > -	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
> > > > -	{ .name = "TC PLL 4", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4, },
> > > > -	{ .name = "TC PLL 5", .funcs = &dkl_pll_funcs, .id = DPLL_ID_TGL_MGPLL5, },
> > > > -	{ .name = "TC PLL 6", .funcs = &dkl_pll_funcs, .id = DPLL_ID_TGL_MGPLL6, },
> > > > +	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "TC PLL 4", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "TC PLL 5", .funcs = &dkl_pll_funcs, .id = DPLL_ID_TGL_MGPLL5,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "TC PLL 6", .funcs = &dkl_pll_funcs, .id = DPLL_ID_TGL_MGPLL6,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > >  	{}
> > > >  };
> > > >  
> > > > @@ -4141,11 +4153,16 @@ static const struct intel_dpll_mgr adls_pll_mgr = {
> > > >  static const struct dpll_info adlp_plls[] = {
> > > >  	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
> > > >  	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
> > > > -	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL, },
> > > > -	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
> > > > -	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
> > > > -	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
> > > > -	{ .name = "TC PLL 4", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4, },
> > > > +	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > > +	{ .name = "TC PLL 4", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4,
> > > > +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> > > >  	{}
> > > >  };
> > > >  
> > > > @@ -4535,7 +4552,10 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
> > > >  		I915_STATE_WARN(i915, pll->active_mask & pipe_mask,
> > > >  				"%s: pll active mismatch (didn't expect pipe %c in active mask (0x%x))\n",
> > > >  				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
> > > > -		I915_STATE_WARN(i915, pll->state.pipe_mask & pipe_mask,
> > > > +
> > > > +		/* TC ports have both MG/TC and TBT PLL referenced simultaneously */
> > > > +		I915_STATE_WARN(i915, !(pll->info->flags & INTEL_DPLL_HAS_ALT_PORT_DPLL) &&
> > > > +				pll->state.pipe_mask & pipe_mask,
> > > >  				"%s: pll enabled crtcs mismatch (found pipe %c in enabled mask (0x%x))\n",
> > > >  				pll->info->name, pipe_name(crtc->pipe), pll->state.pipe_mask);
> > > >  	}
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > > > index 2e7ea0d8d3ff..594658087b4a 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > > > @@ -277,12 +277,16 @@ struct dpll_info {
> > > >  	enum intel_display_power_domain power_domain;
> > > >  
> > > >  #define INTEL_DPLL_ALWAYS_ON	(1 << 0)
> > > > +#define INTEL_DPLL_HAS_ALT_PORT_DPLL	(1 << 1)
> > > >  	/**
> > > >  	 * @flags:
> > > >  	 *
> > > >  	 * INTEL_DPLL_ALWAYS_ON
> > > >  	 *     Inform the state checker that the DPLL is kept enabled even if
> > > >  	 *     not in use by any CRTC.
> > > > +	 * INTEL_DPLL_HAS_ALT_PORT_DPLL
> > > > +	 *     Inform the state checker that the CRTC will have two port DPLLs
> > > > +	 *     referenced simultanously (for TC->TBT fallback).
> > > >  	 */
> > > >  	u32 flags;
> > > >  };
> > > > -- 
> > > > 2.41.0
> > > > 
> > 
> > -- 
> > Ville Syrj�l�
> > Intel

-- 
Ville Syrj�l�
Intel
