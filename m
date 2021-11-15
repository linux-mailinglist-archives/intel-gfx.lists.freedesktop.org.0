Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D744508B6
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 16:39:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8A486E0E4;
	Mon, 15 Nov 2021 15:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3B256E107
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 15:39:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10168"; a="220672680"
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="220672680"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 07:39:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="494060717"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 15 Nov 2021 07:38:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 15 Nov 2021 17:38:58 +0200
Date: Mon, 15 Nov 2021 17:38:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YZJ/EoqyKMJUny3h@intel.com>
References: <20211112190904.62920-1-imre.deak@intel.com>
 <YY7ZTAMj/VKorHJH@intel.com>
 <20211115124536.GB117099@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211115124536.GB117099@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix fastsets on TypeC ports
 following a non-blocking modeset
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

On Mon, Nov 15, 2021 at 02:45:36PM +0200, Imre Deak wrote:
> On Fri, Nov 12, 2021 at 11:14:52PM +0200, Ville Syrj�l� wrote:
> > On Fri, Nov 12, 2021 at 09:09:04PM +0200, Imre Deak wrote:
> > > After a non-blocking modeset on a TypeC port's CRTC - possibly blocked
> > > later in drm_atomic_helper_wait_for_dependencies() - a fastset on the
> > > same CRTC may copy the state of CRTC before this gets updated to reflect
> > > the up-to-date DP-alt vs. TBT-alt TypeC mode DPLL used for the CRTC. In
> > > this case after the first (non-blocking) commit completes enabling the
> > > DPLL required for the up-to-date TypeC mode the following fastset will
> > > update the CRTC state pointing to the wrong DPLL. A subsequent disabling
> > > modeset will try to disable the wrong PLL, triggering a state checker
> > > WARN (and leaving the DPLL which is actually used active for good).
> > > 
> > > Fix the above race by copying the DPLL state for fastset CRTCs from the
> > > old CRTC state at the point where it's guaranteed to be up-to-date
> > > already. This could be handled in the encoder's update_prepare() hook as
> > > well, but that's a bigger change, which is better done as a follow-up.
> > > 
> > > Testcase: igt/kms_busy/extended-modeset-hang-newfb-with-reset
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4308
> > > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > 
> > This is getting a bit unpleasant.
> 
> Thanks for looking into this. Yes, special casing the fastset case and
> copying from the old crtc state is odd. I don't see a problem with it
> though, so is it acceptable as a minimal fix until a proper solution?
> 
> > Maybe we should just get rid of shared_dpll entirely and track the
> > currently active pll entirely elsewhere, I guess maybe in intel_crtc?
> > That would at least make it a bit more clear that it's no longer your
> > normal pre-computed state thing.
> 
> I also considered this initially (using intel_digital_port::tc_mode),
> but there were arguments against storing state in DRM objects. I agree
> that keeping crtc_state intact after pre-computing it and tracking more
> dynamic state in intel_crtc (akin to intel_crtc::active for instance)
> is the proper way, I can look into this as a follow-up.
> 
> > Though that would have some implications for state readout, so might
> > turn a bit hairy as well.  Dunno.
> 
> AFAICS, icl_port_dplls would still remain in intel_crtc_state - checked
> by intel_pipe_config_compare() - and
> intel_crtc_state::shared_dpll/dpll_hw_state could be moved to intel_crtc
> (as a pointer/index to icl_port_dplls), which would be checked in
> verify_crtc_state()/verify_shared_dpll_state().

Well, the issue is that during readout we don't want to clobber the
stuff stored under intel_crtc. So that would need its own special step
during the initial state readout, and perhaps some kind of extra sanity
check in the state checker. So could turn out far more annoying than the
current method.

Though we could perhaps make the current thing a bit less confusing by
always using the port_pll[] stuff on every platform, and just change
the current shared_pll to point at the selected port_pll[] instead.
That would also shrink the crtc state a bit by removing one redundant
pll state.

> 
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 25 ++++++++++++++++----
> > >  1 file changed, 20 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 0ceee8ac66717..76ebb3c91a75b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -1572,10 +1572,24 @@ intel_connector_primary_encoder(struct intel_connector *connector)
> > >  
> > >  static void intel_encoders_update_prepare(struct intel_atomic_state *state)
> > >  {
> > > +	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> > > +	struct intel_crtc *crtc;
> > >  	struct drm_connector_state *new_conn_state;
> > >  	struct drm_connector *connector;
> > >  	int i;
> > >  
> > > +	/*
> > > +	 * Make sure the DPLL state is up-to-date for fastset TypeC ports after non-blocking commits.
> > > +	 * TODO: Update the DPLL state for all cases in the encoder->update_prepare() hook.
> > > +	 */
> > > +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
> > > +		if (!intel_crtc_needs_modeset(new_crtc_state))
> > > +			new_crtc_state->shared_dpll = old_crtc_state->shared_dpll;
> > > +	}
> > 
> > Don't we want to copy the pll state as well?
> 
> Yes, forgot about that. (I don't think it's used anywhere after having
> enabled the PLL and having checked its state, but needs to be copied for
> consistency.)
> 
> We'd also need
> BUG_ON(sizeof(crtc_state->dpll_hw_state) < sizeof(crtc_state->mpllb_state));
> at places where this is assumed,

Or just not do the copy if shared_pll (or maybe dpll_mgr?) is NULL?

> and eventually make mpllb_state part of
> dpll_hw_state (maybe changing dpll_hw_state to be a union of per-platform
> dpll state structs?).

Yeah, the current mpllb stuff is quite annoying. Should just convert
it work like all the other PLLs on modern platforms to get rid of
all the special casing.

-- 
Ville Syrj�l�
Intel
