Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F651EB04B
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 22:36:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 420BE6E0DE;
	Mon,  1 Jun 2020 20:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF5966E0DE
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 20:36:31 +0000 (UTC)
IronPort-SDR: x2NJEOfQGaDf9ECIZmQ4SBR7JfxSeHpFnPLhiufaS+xaCj5QVvOXyFvG3eS7NoJ9nbDE3bJk/T
 yZIhQ4eTFDcw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 13:36:31 -0700
IronPort-SDR: f8/VSEtYFVrwXFndgb4rFa8L5dLRHDMFtcvHYeWbliBtOV6A4tVGJhOL6vP96MPyssDcR7TRVu
 0aLDUPP42fUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,462,1583222400"; d="scan'208";a="347164536"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga001.jf.intel.com with ESMTP; 01 Jun 2020 13:36:31 -0700
Date: Mon, 1 Jun 2020 13:37:19 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200601203719.GB3731@intel.com>
References: <20200526094852.6967-1-stanislav.lisovskiy@intel.com>
 <20200529235738.GA3731@intel.com> <20200601074954.GA2239@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601074954.GA2239@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Fix wrong CDCLK adjustment
 changes
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 01, 2020 at 10:49:54AM +0300, Lisovskiy, Stanislav wrote:
> On Fri, May 29, 2020 at 04:57:38PM -0700, Manasi Navare wrote:
> > On Tue, May 26, 2020 at 12:48:52PM +0300, Stanislav Lisovskiy wrote:
> > > Previous patch didn't take into account all pipes
> > > but only those in state, which could cause wrong
> > > CDCLK conclcusions and calculations.
> > > Also there was a severe issue with min_cdclk being
> > > assigned to 0 every compare cycle.
> > > 
> > > Too bad this was found by me only after merge.
> > > This could be also causing the issues in test, however
> > > not clear - anyway marking this as fixing the
> > > "Adjust CDCLK accordingly to our DBuf bw needs".
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Fixes: cd1915460861 ("Adjust CDCLK accordingly to our DBuf bw needs")
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bw.c      | 51 ++++++++++++--------
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c   | 19 +++++---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 26 +++++-----
> > >  3 files changed, 53 insertions(+), 43 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > > index a79bd7aeb03b..8096138abecc 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > @@ -437,6 +437,7 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
> > >  	struct intel_crtc *crtc;
> > >  	int max_bw = 0;
> > >  	int slice_id;
> > > +	enum pipe pipe;
> > >  	int i;
> > >  
> > >  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> > > @@ -447,7 +448,9 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
> > >  		if (IS_ERR(new_bw_state))
> > >  			return PTR_ERR(new_bw_state);
> > >  
> > > -		crtc_bw = &new_bw_state->dbuf_bw[crtc->pipe];
> > > +		old_bw_state = intel_atomic_get_old_bw_state(state);
> > > +
> > > +		crtc_bw = &new_bw_state->dbuf_bw[pipe];
> > >  
> > >  		memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
> > >  
> > > @@ -478,6 +481,15 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
> > >  			for_each_dbuf_slice_in_mask(slice_id, dbuf_mask)
> > >  				crtc_bw->used_bw[slice_id] += data_rate;
> > >  		}
> > > +	}
> > > +
> > > +	if (!old_bw_state)
> > > +		return 0;
> > > +
> > > +	for_each_pipe(dev_priv, pipe) {
> > > +		struct intel_dbuf_bw *crtc_bw;
> > > +
> > 
> > So the condition !old_bw_state() will make sure we loop through
> > only the active pipes and compute crtc_bw only for those right?
> > 
> > Manasi
> 
> Well, in fact this condition just checks if we had any crtcs in state - 
> otherwise there were no changes, so bw_state global object doesn't need
> to be changed. Whenever something happens to crtc we should have it
> in the state, so this condition just checks if we need to modify bw_state
> or not. 
> 
> Regarding active/inactive pipes - currently for inactive pipes,
> we are going to get 0 dbuf slice mask, so we just won't accumulate any data
> rate for those. So if the pipe got disabled we will get less required min_cdclk
> which against old_bw_state, which will mean that we are going to acquire
> the global state lock for writing.
> 
> In fact we could optimize the code by skipping inactive pipes completely 
> i.e don't even calculate dbuf slice mask,
> which will be 0. However the logic and the end result would be
> the same anyway.

Okay yes this makes sense, thanks for the clarification.
So would be it be an easy change to add a condition to return for an inactive pipe?

Manasi

> 
> Stan
> 
> > 
> > > +		crtc_bw = &new_bw_state->dbuf_bw[pipe];
> > >  
> > >  		for_each_dbuf_slice(slice_id) {
> > >  			/*
> > > @@ -490,14 +502,9 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
> > >  			 */
> > >  			max_bw += crtc_bw->used_bw[slice_id];
> > >  		}
> > > -
> > > -		new_bw_state->min_cdclk = max_bw / 64;
> > > -
> > > -		old_bw_state = intel_atomic_get_old_bw_state(state);
> > >  	}
> > >  
> > > -	if (!old_bw_state)
> > > -		return 0;
> > > +	new_bw_state->min_cdclk = max_bw / 64;
> > >  
> > >  	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
> > >  		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
> > > @@ -511,34 +518,38 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
> > >  
> > >  int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
> > >  {
> > > -	int i;
> > > +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > > +	struct intel_bw_state *new_bw_state = NULL;
> > > +	struct intel_bw_state *old_bw_state = NULL;
> > >  	const struct intel_crtc_state *crtc_state;
> > >  	struct intel_crtc *crtc;
> > >  	int min_cdclk = 0;
> > > -	struct intel_bw_state *new_bw_state = NULL;
> > > -	struct intel_bw_state *old_bw_state = NULL;
> > > +	enum pipe pipe;
> > > +	int i;
> > >  
> > >  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> > > -		struct intel_cdclk_state *cdclk_state;
> > > -
> > >  		new_bw_state = intel_atomic_get_bw_state(state);
> > >  		if (IS_ERR(new_bw_state))
> > >  			return PTR_ERR(new_bw_state);
> > >  
> > > -		cdclk_state = intel_atomic_get_cdclk_state(state);
> > > -		if (IS_ERR(cdclk_state))
> > > -			return PTR_ERR(cdclk_state);
> > > -
> > > -		min_cdclk = max(cdclk_state->min_cdclk[crtc->pipe], min_cdclk);
> > > -
> > > -		new_bw_state->min_cdclk = min_cdclk;
> > > -
> > >  		old_bw_state = intel_atomic_get_old_bw_state(state);
> > >  	}
> > >  
> > >  	if (!old_bw_state)
> > >  		return 0;
> > >  
> > > +	for_each_pipe(dev_priv, pipe) {
> > > +		struct intel_cdclk_state *cdclk_state;
> > > +
> > > +		cdclk_state = intel_atomic_get_new_cdclk_state(state);
> > > +		if (!cdclk_state)
> > > +			return 0;
> > > +
> > > +		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
> > > +	}
> > > +
> > > +	new_bw_state->min_cdclk = min_cdclk;
> > > +
> > >  	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
> > >  		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
> > >  
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > index f9b0fc7317de..08468b121d02 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -2084,9 +2084,12 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> > >  static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
> > >  {
> > >  	struct intel_atomic_state *state = cdclk_state->base.state;
> > > +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > > +	struct intel_bw_state *bw_state = NULL;
> > >  	struct intel_crtc *crtc;
> > >  	struct intel_crtc_state *crtc_state;
> > >  	int min_cdclk, i;
> > > +	enum pipe pipe;
> > >  
> > >  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> > >  		int ret;
> > > @@ -2095,6 +2098,10 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
> > >  		if (min_cdclk < 0)
> > >  			return min_cdclk;
> > >  
> > > +		bw_state = intel_atomic_get_bw_state(state);
> > > +		if (IS_ERR(bw_state))
> > > +			return PTR_ERR(bw_state);
> > > +
> > >  		if (cdclk_state->min_cdclk[i] == min_cdclk)
> > >  			continue;
> > >  
> > > @@ -2106,15 +2113,11 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
> > >  	}
> > >  
> > >  	min_cdclk = cdclk_state->force_min_cdclk;
> > > +	for_each_pipe(dev_priv, pipe) {
> > > +		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
> > >  
> > > -	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> > > -		struct intel_bw_state *bw_state;
> > > -
> > > -		min_cdclk = max(cdclk_state->min_cdclk[crtc->pipe], min_cdclk);
> > > -
> > > -		bw_state = intel_atomic_get_bw_state(state);
> > > -		if (IS_ERR(bw_state))
> > > -			return PTR_ERR(bw_state);
> > > +		if (!bw_state)
> > > +			continue;
> > >  
> > >  		min_cdclk = max(bw_state->min_cdclk, min_cdclk);
> > >  	}
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index f40b909952cc..66af8f3053ed 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -14708,13 +14708,14 @@ static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
> > >  				    bool *need_cdclk_calc)
> > >  {
> > >  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > > -	int i;
> > > +	struct intel_cdclk_state *new_cdclk_state;
> > >  	struct intel_plane_state *plane_state;
> > > +	struct intel_bw_state *new_bw_state;
> > >  	struct intel_plane *plane;
> > > +	int min_cdclk = 0;
> > > +	enum pipe pipe;
> > >  	int ret;
> > > -	struct intel_cdclk_state *new_cdclk_state;
> > > -	struct intel_crtc_state *new_crtc_state;
> > > -	struct intel_crtc *crtc;
> > > +	int i;
> > >  	/*
> > >  	 * active_planes bitmask has been updated, and potentially
> > >  	 * affected planes are part of the state. We can now
> > > @@ -14735,23 +14736,18 @@ static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
> > >  	if (ret)
> > >  		return ret;
> > >  
> > > -	if (!new_cdclk_state)
> > > -		return 0;
> > > -
> > > -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > > -		struct intel_bw_state *bw_state;
> > > -		int min_cdclk = 0;
> > > +	new_bw_state = intel_atomic_get_new_bw_state(state);
> > >  
> > > -		min_cdclk = max(new_cdclk_state->min_cdclk[crtc->pipe], min_cdclk);
> > > +	if (!new_cdclk_state || !new_bw_state)
> > > +		return 0;
> > >  
> > > -		bw_state = intel_atomic_get_bw_state(state);
> > > -		if (IS_ERR(bw_state))
> > > -			return PTR_ERR(bw_state);
> > > +	for_each_pipe(dev_priv, pipe) {
> > > +		min_cdclk = max(new_cdclk_state->min_cdclk[pipe], min_cdclk);
> > >  
> > >  		/*
> > >  		 * Currently do this change only if we need to increase
> > >  		 */
> > > -		if (bw_state->min_cdclk > min_cdclk)
> > > +		if (new_bw_state->min_cdclk > min_cdclk)
> > >  			*need_cdclk_calc = true;
> > >  	}
> > >  
> > > -- 
> > > 2.24.1.485.gad05a3d8e5
> > > 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
