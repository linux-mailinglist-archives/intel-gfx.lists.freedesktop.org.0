Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 316C4A6C2B9
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 19:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADE8910E81A;
	Fri, 21 Mar 2025 18:43:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IGFLBfy8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFFDE10E81A;
 Fri, 21 Mar 2025 18:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742582617; x=1774118617;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=oFnoDcp4mHporUI59w+cIyZ1qRw0BPO5IS7LaaRpCEI=;
 b=IGFLBfy8P6qRBR7EXiIysjP6eNY6i1K4WfA+Mj3dsODE8q61Cm3mTtg+
 M49wB9raP9ypa3ddD3ds3f+AccfrEhyRM+GwpnLAjICdMZ4/PvNgXmFne
 tdd6AnGyptiwoVMvIWJZiD0itVA6QywgPVDTV+xun8ztFbB3qTGHq9SJT
 JovRv/Qv9S6K5l39UA0QErrlbHNwf8FOMxAXYPLTbtWZdIVMN0rwji5R4
 S3KlZZfNjdUTCzgUZPyGBNmejmbmvUIYJijCrZtk+amY51aRP9IBsIBtr
 TbrL3+41J2Xv926pdbZ7WMJ/XVFhJRoPnX+fULv2g6Epo3P3BJL6ogjZF Q==;
X-CSE-ConnectionGUID: DuhO5FFISfOEslAXppsu9g==
X-CSE-MsgGUID: Y8+/PXSRRMygyxgHGbVk3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="44020780"
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="44020780"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 11:43:37 -0700
X-CSE-ConnectionGUID: ZI1ystNPRfyjrBJnMH81kw==
X-CSE-MsgGUID: fuk5PrR5Tqa0MHLN6dd8Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="124255608"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 11:43:36 -0700
Date: Fri, 21 Mar 2025 20:43:37 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/pps: Use intel_pps_is_pipe_instance()
 instead of open-coding it
Message-ID: <Z92zWaQdI4UlHr2v@ideak-desk.fi.intel.com>
References: <20250321145626.94101-1-imre.deak@intel.com>
 <20250321145626.94101-4-imre.deak@intel.com>
 <Z92p1bF4uHTwJ1-d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z92p1bF4uHTwJ1-d@intel.com>
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

On Fri, Mar 21, 2025 at 08:03:01PM +0200, Ville Syrjälä wrote:
> On Fri, Mar 21, 2025 at 04:56:26PM +0200, Imre Deak wrote:
> > Use intel_pps_is_pipe_instance() instead of open-coding the same for all
> > conditional PPS programming required for a pipe instance PPS.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/g4x_dp.c    |  6 +++---
> >  drivers/gpu/drm/i915/display/intel_dp.c  |  2 +-
> >  drivers/gpu/drm/i915/display/intel_pps.c | 18 +++++++++---------
> >  drivers/gpu/drm/i915/display/intel_pps.h |  2 ++
> >  4 files changed, 15 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> > index 55b9e9bfcc4d0..f527b455ce904 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > @@ -474,7 +474,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
> >  
> >  	msleep(intel_dp->pps.panel_power_down_delay);
> >  
> > -	if (display->platform.valleyview || display->platform.cherryview)
> > +	if (intel_pps_is_pipe_instance(display))
> >  		vlv_pps_port_disable(encoder, old_crtc_state);
> 
> Most of these are of this form
> 
> if (intel_pps_is_pipe_instance())
> 	vlv_something();
> 
> so using an abstract name for intel_pps_is_pipe_instance()
> feels a bit confusing. Maybe it should just be
> intel_pps_is_vlv() or somehing?

Ok. Imo it makes sense to also indicate that the PPS is not port
specific (which would be the logical way), so how about
intel_pps_is_vlv_pipe_instance() ?

> >  }
> >  
> > @@ -685,7 +685,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
> >  		return;
> >  
> >  	with_intel_pps_lock(intel_dp, wakeref) {
> > -		if (display->platform.valleyview || display->platform.cherryview)
> > +		if (intel_pps_is_pipe_instance(display))
> >  			vlv_pps_port_enable_unlocked(encoder, pipe_config);
> >  
> >  		intel_dp_enable_port(intel_dp, pipe_config);
> > @@ -1265,7 +1265,7 @@ static void intel_dp_encoder_reset(struct drm_encoder *encoder)
> >  	intel_dp->reset_link_params = true;
> >  	intel_dp_invalidate_source_oui(intel_dp);
> >  
> > -	if (display->platform.valleyview || display->platform.cherryview)
> > +	if (intel_pps_is_pipe_instance(display))
> >  		vlv_pps_pipe_reset(intel_dp);
> >  
> >  	intel_pps_encoder_reset(intel_dp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index e3821ccfabe30..b4a0e3775b7b4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -6518,7 +6518,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
> >  	intel_dp_set_default_sink_rates(intel_dp);
> >  	intel_dp_set_default_max_sink_lane_count(intel_dp);
> >  
> > -	if (display->platform.valleyview || display->platform.cherryview)
> > +	if (intel_pps_is_pipe_instance(display))
> >  		vlv_pps_pipe_init(intel_dp);
> >  
> >  	intel_dp_aux_init(intel_dp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> > index 7d7157983f25e..7b47346d4d559 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -26,7 +26,7 @@ static void vlv_steal_power_sequencer(struct intel_display *display,
> >  static void pps_init_delays(struct intel_dp *intel_dp);
> >  static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd);
> >  
> > -static bool intel_pps_is_pipe_instance(struct intel_display *display)
> > +bool intel_pps_is_pipe_instance(struct intel_display *display)
> >  {
> >  	return display->platform.valleyview || display->platform.cherryview;
> >  }
> > @@ -36,7 +36,7 @@ static const char *pps_name(struct intel_dp *intel_dp)
> >  	struct intel_display *display = to_intel_display(intel_dp);
> >  	struct intel_pps *pps = &intel_dp->pps;
> >  
> > -	if (display->platform.valleyview || display->platform.cherryview) {
> > +	if (intel_pps_is_pipe_instance(display)) {
> >  		switch (pps->vlv_pps_pipe) {
> >  		case INVALID_PIPE:
> >  			/*
> > @@ -411,7 +411,7 @@ pps_initial_setup(struct intel_dp *intel_dp)
> >  
> >  	lockdep_assert_held(&display->pps.mutex);
> >  
> > -	if (display->platform.valleyview || display->platform.cherryview) {
> > +	if (intel_pps_is_pipe_instance(display)) {
> >  		vlv_initial_power_sequencer_setup(intel_dp);
> >  		return true;
> >  	}
> > @@ -510,7 +510,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
> >  
> >  	memset(regs, 0, sizeof(*regs));
> >  
> > -	if (display->platform.valleyview || display->platform.cherryview)
> > +	if (intel_pps_is_pipe_instance(display))
> >  		pps_idx = vlv_power_sequencer_pipe(intel_dp);
> >  	else if (display->platform.geminilake || display->platform.broxton)
> >  		pps_idx = bxt_power_sequencer_idx(intel_dp);
> > @@ -556,7 +556,7 @@ static bool edp_have_panel_power(struct intel_dp *intel_dp)
> >  
> >  	lockdep_assert_held(&display->pps.mutex);
> >  
> > -	if ((display->platform.valleyview || display->platform.cherryview) &&
> > +	if (intel_pps_is_pipe_instance(display) &&
> >  	    intel_dp->pps.vlv_pps_pipe == INVALID_PIPE)
> >  		return false;
> >  
> > @@ -569,7 +569,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
> >  
> >  	lockdep_assert_held(&display->pps.mutex);
> >  
> > -	if ((display->platform.valleyview || display->platform.cherryview) &&
> > +	if (intel_pps_is_pipe_instance(display) &&
> >  	    intel_dp->pps.vlv_pps_pipe == INVALID_PIPE)
> >  		return false;
> >  
> > @@ -1758,7 +1758,7 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
> >  		 * Reinit the power sequencer also on the resume path, in case
> >  		 * BIOS did something nasty with it.
> >  		 */
> > -		if (display->platform.valleyview || display->platform.cherryview)
> > +		if (intel_pps_is_pipe_instance(display))
> >  			vlv_initial_power_sequencer_setup(intel_dp);
> >  
> >  		pps_init_delays(intel_dp);
> > @@ -1797,7 +1797,7 @@ static void pps_init_late(struct intel_dp *intel_dp)
> >  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> >  	struct intel_connector *connector = intel_dp->attached_connector;
> >  
> > -	if (display->platform.valleyview || display->platform.cherryview)
> > +	if (intel_pps_is_pipe_instance(display))
> >  		return;
> >  
> >  	if (intel_num_pps(display) < 2)
> > @@ -1931,7 +1931,7 @@ void assert_pps_unlocked(struct intel_display *display, enum pipe pipe)
> >  			MISSING_CASE(port_sel);
> >  			break;
> >  		}
> > -	} else if (display->platform.valleyview || display->platform.cherryview) {
> > +	} else if (intel_pps_is_pipe_instance(display)) {
> >  		/* presumably write lock depends on pipe, not port select */
> >  		pp_reg = PP_CONTROL(display, pipe);
> >  		panel_pipe = pipe;
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> > index 4390d05892325..1f4eed5fc55b8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.h
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> > @@ -17,6 +17,8 @@ struct intel_display;
> >  struct intel_dp;
> >  struct intel_encoder;
> >  
> > +bool intel_pps_is_pipe_instance(struct intel_display *display);
> > +
> >  intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp);
> >  intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref);
> >  
> > -- 
> > 2.44.2
> 
> -- 
> Ville Syrjälä
> Intel
