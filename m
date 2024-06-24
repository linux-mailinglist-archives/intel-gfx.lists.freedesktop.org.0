Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 998FC914DE9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 15:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B553D895B9;
	Mon, 24 Jun 2024 13:06:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YZezsQLb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF13895B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 13:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719234399; x=1750770399;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=apjzRDVnZ2Q2Tl2LvSt15w8DU81uwoZTL3d+dEgXtxM=;
 b=YZezsQLb8dgrn+1eFHh+WC32ClI1SZ7j175Zd84d+Guyvkthqf/lb0Gm
 7sqC5qDfmEFc1rIyoP2r0l07nAA+qP6urbnxohqj4iIAxjlfmdVRHAMJl
 5vMbQaP9WdvmkOB+VIRXF2uS9weVG+4HbY7DT6FFc9CeJugVF/gKau8gP
 Pd2o1Hg/P2XkmtuYl6PH4uuTEzFEf53K/ymkBMPg5jgQx6PmLb8oUowVq
 EWqCzkAllEgZaFrYsesZnc7a1OZnZrrfNccQovDEBFKah0vOKdxYMO4Bb
 XTuJJ8NRlA+unYmSmIwVKoIdgr+P2mVA08mmJ5QjlTBaRhSuVa5S2agY6 A==;
X-CSE-ConnectionGUID: nTeW0phISLeVGA5bUNq6yQ==
X-CSE-MsgGUID: s7VjTP7jRJiWweR2iM36aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="16345826"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16345826"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 06:06:38 -0700
X-CSE-ConnectionGUID: 6LA4Kxa5TFejMOmFzR6vdA==
X-CSE-MsgGUID: 1Moi+mRoS7ilOm6N8cr5Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43274254"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 06:06:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 16:06:34 +0300
Date: Mon, 24 Jun 2024 16:06:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH v7] drm/i915/panelreplay: Panel replay workaround with VRR
Message-ID: <ZnlvWk-sOzDfMa0E@intel.com>
References: <20240618112215.2892017-1-animesh.manna@intel.com>
 <ZnLWjdUXvxGz8Bux@intel.com> <ZnRobyNJljwUY-Zr@intel.com>
 <PH7PR11MB59814EE33D5DC1D6B5F4460BF9C92@PH7PR11MB5981.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH7PR11MB59814EE33D5DC1D6B5F4460BF9C92@PH7PR11MB5981.namprd11.prod.outlook.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 21, 2024 at 05:55:13AM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Thursday, June 20, 2024 11:06 PM
> > To: Manna, Animesh <animesh.manna@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>;
> > Hogander, Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> > <arun.r.murthy@intel.com>; Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>
> > Subject: Re: [PATCH v7] drm/i915/panelreplay: Panel replay workaround with
> > VRR
> > 
> > On Wed, Jun 19, 2024 at 04:01:01PM +0300, Ville Syrjälä wrote:
> > > On Tue, Jun 18, 2024 at 04:52:15PM +0530, Animesh Manna wrote:
> > > > Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and
> > > > W2 are 0. So Program Set Context Latency in
> > > > TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
> > > >
> > > > HSD: 14015406119
> > > >
> > > > v1: Initial version.
> > > > v2: Update timings stored in adjusted_mode struct. [Ville]
> > > > v3: Add WA in compute_config(). [Ville]
> > > > v4:
> > > > - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> > > > - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> > > > v5: Move to crtc_compute_config(). [Ville]
> > > > v6: Restrict DISPLAY_VER till 14. [Mitul]
> > > > v7:
> > > > - Corrected code-comment. [Mitul]
> > > > - dev_priv local variable removed. [Jani]
> > > >
> > > > Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 21
> > > > ++++++++++++++++++++  drivers/gpu/drm/i915/display/intel_display.h |
> > > > 1 +
> > > >  2 files changed, 22 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index 7bc4f3de691e..c3ff3a5c5fa3 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -2515,6 +2515,10 @@ static int intel_crtc_compute_config(struct
> > intel_atomic_state *state,
> > > >  		intel_atomic_get_new_crtc_state(state, crtc);
> > > >  	int ret;
> > > >
> > > > +	/* wa_14015401596: display versions 13, 14 */
> > > > +	if (IS_DISPLAY_VER(to_i915(crtc->base.dev), 13, 14))
> > > > +		intel_crtc_vblank_delay(crtc_state);
> > > > +
> > > >  	ret = intel_dpll_crtc_compute_clock(state, crtc);
> > > >  	if (ret)
> > > >  		return ret;
> > > > @@ -3924,6 +3928,23 @@ bool intel_crtc_get_pipe_config(struct
> > intel_crtc_state *crtc_state)
> > > >  	return true;
> > > >  }
> > > >
> > > > +void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state) {
> > > > +	struct drm_display_mode *adjusted_mode =
> > > > +&crtc_state->hw.adjusted_mode;
> > > > +
> > > > +	/*
> > > > +	 * wa_14015401596 for display versions 13, 14.
> > > > +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> > register
> > > > +	 * to at least a value of 1 when Panel Replay is enabled with VRR.
> > > > +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> > substracting
> > > > +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> > crtc_vblank_start
> > > > +	 * by 1 if both are equal.
> > > > +	 */
> > > > +	if (crtc_state->vrr.enable && crtc_state->has_panel_replay &&
> > > > +	    adjusted_mode->crtc_vblank_start == adjusted_mode-
> > >crtc_vdisplay)
> > > > +		adjusted_mode->crtc_vblank_start += 1; }
> > >
> > > This is probably too late actually. We already used the previous value
> > > to calculate the VRR guardband/pipeline full values, which may or may
> > > not now be incorrect. So NAK for now until someone actually checks how
> > > it all works (I don't recall the details right now).
> > 
> > I double checked this and the guardband/pipeline full values do indeed need
> > to be calculated based on the delayed vblank. So unfortunately this needs to
> > be done before VRR computation, which is a bit annoying if we'd need to
> > tweak this also for HDMI or DSI.
> > But for now we shouldn't actually need other adjustements as I'm going to
> > be doing the DSB stuff without relying on delayed vblank.
> 
> Sure, I will add a change for recalculating guardband.
> No need to change pipeline full value as this workaround is for display version >= 13.

I don't want to see any platform specific hacks for this.
The code must do the right thing on any platform if the
vblank delay gets changed.

> Currently this workaround is only for panel replay, so HDMI and DSI is out of scope.
> As I understood, DSB stuff will be taken care separately, is it ok if I move the adjustment in encoder-compute-config, more specifically in psr-compute-config where we will know about vrr and panel replay is enabled or not and recalculate the guardband ?

Recalculating stuff twice is not great. I suppose we'll just
have to split the VRR computation into two phases, with the
second phase calculating the guardband/pipeline full values.
I guess that could even get called from intel_crtc_compute_config()
so we could keep the vblank delay adjustement there as well.

> 
> Regards,
> Animesh
> 
> > 
> > >
> > > > +
> > > >  int intel_dotclock_calculate(int link_freq,
> > > >  			     const struct intel_link_m_n *m_n)  { diff --git
> > > > a/drivers/gpu/drm/i915/display/intel_display.h
> > > > b/drivers/gpu/drm/i915/display/intel_display.h
> > > > index b0cf6ca70952..f99a24e76608 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > > > @@ -428,6 +428,7 @@ bool intel_crtc_is_joiner_primary(const struct
> > > > intel_crtc_state *crtc_state);
> > > >  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state
> > > > *crtc_state);  struct intel_crtc *intel_primary_crtc(const struct
> > > > intel_crtc_state *crtc_state);  bool
> > > > intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> > > > +void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state);
> > > >  bool intel_pipe_config_compare(const struct intel_crtc_state
> > *current_config,
> > > >  			       const struct intel_crtc_state *pipe_config,
> > > >  			       bool fastset);
> > > > --
> > > > 2.29.0
> > >
> > > --
> > > Ville Syrjälä
> > > Intel
> > 
> > --
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
