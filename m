Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5B41EB060
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 22:42:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7746E0E9;
	Mon,  1 Jun 2020 20:42:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 382706E0E9
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 20:42:31 +0000 (UTC)
IronPort-SDR: JFGon4zBG9lDDBm//Moz60dKc98Z8EXEt/y0bBItTeDUyZNXtWLQMhiZAGbGRKCvsMMIKYSGMv
 T4mYbeUrBkGw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 13:42:30 -0700
IronPort-SDR: LAxx7cbEaIQbN8UUjjrNbXqNDpN277Fx4Bt3+XPbuYoginXHAfQbFDujvXsggKxW/VTRQx7ims
 OlGBYk0vO8aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,462,1583222400"; d="scan'208";a="258066290"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jun 2020 13:42:30 -0700
Date: Mon, 1 Jun 2020 13:43:19 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200601204319.GC3731@intel.com>
References: <20200601173058.5084-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601173058.5084-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix wrong CDCLK adjustment
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
Cc: intel-gfx@lists.freedesktop.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 01, 2020 at 08:30:58PM +0300, Stanislav Lisovskiy wrote:
> Previous patch didn't take into account all pipes
> but only those in state, which could cause wrong
> CDCLK conclcusions and calculations.
> Also there was a severe issue with min_cdclk being
> assigned to 0 every compare cycle.
> 
> Too bad this was found by me only after merge.
> This could be also causing the issues in test, however
> not clear - anyway marking this as fixing the
> "Adjust CDCLK accordingly to our DBuf bw needs".
> 
> v2: - s/pipe/crtc->pipe/
>     - save a bit of instructions by
>       skipping inactive pipes, without
>       getting 0 DBuf slice mask for it.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: cd1915460861 ("Adjust CDCLK accordingly to our DBuf bw needs")

Looks good to me, 

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c      | 52 +++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 19 ++++---
>  drivers/gpu/drm/i915/display/intel_display.c | 26 +++++-----
>  3 files changed, 55 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index a79bd7aeb03b..bd060404d249 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -437,6 +437,7 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  	struct intel_crtc *crtc;
>  	int max_bw = 0;
>  	int slice_id;
> +	enum pipe pipe;
>  	int i;
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> @@ -447,10 +448,15 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  		if (IS_ERR(new_bw_state))
>  			return PTR_ERR(new_bw_state);
>  
> +		old_bw_state = intel_atomic_get_old_bw_state(state);
> +
>  		crtc_bw = &new_bw_state->dbuf_bw[crtc->pipe];
>  
>  		memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
>  
> +		if (!crtc_state->hw.active)
> +			continue;
> +
>  		for_each_plane_id_on_crtc(crtc, plane_id) {
>  			const struct skl_ddb_entry *plane_alloc =
>  				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> @@ -478,6 +484,15 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  			for_each_dbuf_slice_in_mask(slice_id, dbuf_mask)
>  				crtc_bw->used_bw[slice_id] += data_rate;
>  		}
> +	}
> +
> +	if (!old_bw_state)
> +		return 0;
> +
> +	for_each_pipe(dev_priv, pipe) {
> +		struct intel_dbuf_bw *crtc_bw;
> +
> +		crtc_bw = &new_bw_state->dbuf_bw[pipe];
>  
>  		for_each_dbuf_slice(slice_id) {
>  			/*
> @@ -490,14 +505,9 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  			 */
>  			max_bw += crtc_bw->used_bw[slice_id];
>  		}
> -
> -		new_bw_state->min_cdclk = max_bw / 64;
> -
> -		old_bw_state = intel_atomic_get_old_bw_state(state);
>  	}
>  
> -	if (!old_bw_state)
> -		return 0;
> +	new_bw_state->min_cdclk = max_bw / 64;
>  
>  	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
>  		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
> @@ -511,34 +521,38 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  
>  int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  {
> -	int i;
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct intel_bw_state *new_bw_state = NULL;
> +	struct intel_bw_state *old_bw_state = NULL;
>  	const struct intel_crtc_state *crtc_state;
>  	struct intel_crtc *crtc;
>  	int min_cdclk = 0;
> -	struct intel_bw_state *new_bw_state = NULL;
> -	struct intel_bw_state *old_bw_state = NULL;
> +	enum pipe pipe;
> +	int i;
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> -		struct intel_cdclk_state *cdclk_state;
> -
>  		new_bw_state = intel_atomic_get_bw_state(state);
>  		if (IS_ERR(new_bw_state))
>  			return PTR_ERR(new_bw_state);
>  
> -		cdclk_state = intel_atomic_get_cdclk_state(state);
> -		if (IS_ERR(cdclk_state))
> -			return PTR_ERR(cdclk_state);
> -
> -		min_cdclk = max(cdclk_state->min_cdclk[crtc->pipe], min_cdclk);
> -
> -		new_bw_state->min_cdclk = min_cdclk;
> -
>  		old_bw_state = intel_atomic_get_old_bw_state(state);
>  	}
>  
>  	if (!old_bw_state)
>  		return 0;
>  
> +	for_each_pipe(dev_priv, pipe) {
> +		struct intel_cdclk_state *cdclk_state;
> +
> +		cdclk_state = intel_atomic_get_new_cdclk_state(state);
> +		if (!cdclk_state)
> +			return 0;
> +
> +		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
> +	}
> +
> +	new_bw_state->min_cdclk = min_cdclk;
> +
>  	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
>  		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index f9b0fc7317de..08468b121d02 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2084,9 +2084,12 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>  static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
>  {
>  	struct intel_atomic_state *state = cdclk_state->base.state;
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct intel_bw_state *bw_state = NULL;
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
>  	int min_cdclk, i;
> +	enum pipe pipe;
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>  		int ret;
> @@ -2095,6 +2098,10 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
>  		if (min_cdclk < 0)
>  			return min_cdclk;
>  
> +		bw_state = intel_atomic_get_bw_state(state);
> +		if (IS_ERR(bw_state))
> +			return PTR_ERR(bw_state);
> +
>  		if (cdclk_state->min_cdclk[i] == min_cdclk)
>  			continue;
>  
> @@ -2106,15 +2113,11 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
>  	}
>  
>  	min_cdclk = cdclk_state->force_min_cdclk;
> +	for_each_pipe(dev_priv, pipe) {
> +		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
>  
> -	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> -		struct intel_bw_state *bw_state;
> -
> -		min_cdclk = max(cdclk_state->min_cdclk[crtc->pipe], min_cdclk);
> -
> -		bw_state = intel_atomic_get_bw_state(state);
> -		if (IS_ERR(bw_state))
> -			return PTR_ERR(bw_state);
> +		if (!bw_state)
> +			continue;
>  
>  		min_cdclk = max(bw_state->min_cdclk, min_cdclk);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f40b909952cc..66af8f3053ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14708,13 +14708,14 @@ static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
>  				    bool *need_cdclk_calc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> -	int i;
> +	struct intel_cdclk_state *new_cdclk_state;
>  	struct intel_plane_state *plane_state;
> +	struct intel_bw_state *new_bw_state;
>  	struct intel_plane *plane;
> +	int min_cdclk = 0;
> +	enum pipe pipe;
>  	int ret;
> -	struct intel_cdclk_state *new_cdclk_state;
> -	struct intel_crtc_state *new_crtc_state;
> -	struct intel_crtc *crtc;
> +	int i;
>  	/*
>  	 * active_planes bitmask has been updated, and potentially
>  	 * affected planes are part of the state. We can now
> @@ -14735,23 +14736,18 @@ static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>  
> -	if (!new_cdclk_state)
> -		return 0;
> -
> -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> -		struct intel_bw_state *bw_state;
> -		int min_cdclk = 0;
> +	new_bw_state = intel_atomic_get_new_bw_state(state);
>  
> -		min_cdclk = max(new_cdclk_state->min_cdclk[crtc->pipe], min_cdclk);
> +	if (!new_cdclk_state || !new_bw_state)
> +		return 0;
>  
> -		bw_state = intel_atomic_get_bw_state(state);
> -		if (IS_ERR(bw_state))
> -			return PTR_ERR(bw_state);
> +	for_each_pipe(dev_priv, pipe) {
> +		min_cdclk = max(new_cdclk_state->min_cdclk[pipe], min_cdclk);
>  
>  		/*
>  		 * Currently do this change only if we need to increase
>  		 */
> -		if (bw_state->min_cdclk > min_cdclk)
> +		if (new_bw_state->min_cdclk > min_cdclk)
>  			*need_cdclk_calc = true;
>  	}
>  
> -- 
> 2.24.1.485.gad05a3d8e5
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
