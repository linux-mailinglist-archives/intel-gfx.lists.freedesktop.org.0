Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C21845288
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 09:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C1910E5EB;
	Thu,  1 Feb 2024 08:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 988E310E5EA
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Feb 2024 08:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706775448; x=1738311448;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yfhmS6RLhfO8V6aDOiZ2TXhpIpppfd/o+ozWkwP/D+M=;
 b=F9BxjLi7LFgbu4Te4OsYTi1QMmDA4yJ57S+g7uxf6dp8CMfdGt4w95Ik
 +UXoJrEJq+mdEd3JkynbZhr2Xiz8mAzffTA4vynHxOtOMXz1ZMlV/d+X8
 0nmx3oS42TMlN5Qgu5E4PU/ojIFP2q+Zn/urRh5z8CUnlxlrPjJELzArC
 4M2UrNjWMkwM8aAkR0jb/835Z/ftXiFhvNLy+i0fAlTVzAQvBEuzT04J0
 nKC9FTyMGksEpee+cDMJLu6B5r+keX1eN7hpBPyWWJVQum1krtr6wXvQn
 nMtO7nlHsRFTSvWMlXgFc+PPsmNUkPTPEGN9GDH8ZVhsSeG3wOx1PGvVp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3700838"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="3700838"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 00:17:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="30805423"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 00:17:26 -0800
Date: Thu, 1 Feb 2024 10:17:18 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/3] drm/i915: Compute use_sagv_wm differently
Message-ID: <ZbtTYsTncs0i3H8E@intel.com>
References: <20231219130756.25986-1-ville.syrjala@linux.intel.com>
 <20231219130756.25986-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231219130756.25986-2-ville.syrjala@linux.intel.com>
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

On Tue, Dec 19, 2023 at 03:07:54PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> drm_atomic_check_only() gets upset if we try to add extra crtcs
> to any commit that isn't flagged with DRM_MODE_ATOMIC_ALLOW_MODESET.
> This conflicts with how SAGV watermarks work on pre-ADL as we
> need to manually switch over the SAGV watermarks before we can
> safely enable SAGV.
> 
> So in order to make SAGV usage possible we need to compute each
> pipe's use of SAGV watermarks as if there aren't any other
> active pipes. Ie. if the current pipe isn't the one blocking
> SAGV then we make it use the SAGV watermarks, even if some
> other pipe prevents SAGV from actually being used. Otherwise
> we could end up with a pipes using the normal watermarks (but
> not blocking SAGV), and some other pipe in parallel enabling
> SAGV, which would likely cause underruns.
> 
> The alternative approach of preventing SAGV usage until all
> pipes simultanously end up using SAGV watermarks would only
> really work if userspace always adds all pipes to every
> commits, which isn't the case typically.
> 
> The downside of this is that we will end up using the less
> optimal SAGV watermarks even if some other pipe prevents
> SAGV from actually being enabled. In which case the system
> won't achieve the minimum possible power consumption.

This is quite sad, that we have to do that, basically means
we might end up using SAGV watermarks, which use a bit more 
DBuf(taking into account SAGV related memory latency) just
because we can't sync properly with drm commit architecture
(as I understand the main problem is that crtc addition to the commit).
This is not catastrophical of course, but we are now basically
using the solution which we know for sure, that isn't optimal.

But as me personally and you probably as well, don't really 
have time resource to spend for solving it more efficiently,
lets use this as a solution.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 38 ++++++++++++--------
>  1 file changed, 23 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 56588d6e24ae..9cee19cbe253 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -443,12 +443,35 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
>  
>  	for_each_new_intel_crtc_in_state(state, crtc,
>  					 new_crtc_state, i) {
> +		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
> +
>  		new_bw_state = intel_atomic_get_bw_state(state);
>  		if (IS_ERR(new_bw_state))
>  			return PTR_ERR(new_bw_state);
>  
>  		old_bw_state = intel_atomic_get_old_bw_state(state);
>  
> +		/*
> +		 * We store use_sagv_wm in the crtc state rather than relying on
> +		 * that bw state since we have no convenient way to get at the
> +		 * latter from the plane commit hooks (especially in the legacy
> +		 * cursor case).
> +		 *
> +		 * drm_atomic_check_only() gets upset if we pull more crtcs
> +		 * into the state, so we have to calculate this based on the
> +		 * individual intel_crtc_can_enable_sagv() rather than
> +		 * the overall intel_crtc_can_enable_sagv(). Otherwise the
> +		 * crtcs not included in the commit would not switch to the
> +		 * SAGV watermarks when we are about to enable SAGV, and that
> +		 * would lead to underruns. This does mean extra power draw
> +		 * when only a subset of the crtcs are blocking SAGV as the
> +		 * other crtcs can't be allowed to use the more optimal
> +		 * normal (ie. non-SAGV) watermarks.
> +		 */
> +		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(i915) &&
> +			DISPLAY_VER(i915) >= 12 &&
> +			intel_crtc_can_enable_sagv(new_crtc_state);
> +
>  		if (intel_crtc_can_enable_sagv(new_crtc_state))
>  			new_bw_state->pipe_sagv_reject &= ~BIT(crtc->pipe);
>  		else
> @@ -478,21 +501,6 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
>  			return ret;
>  	}
>  
> -	for_each_new_intel_crtc_in_state(state, crtc,
> -					 new_crtc_state, i) {
> -		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
> -
> -		/*
> -		 * We store use_sagv_wm in the crtc state rather than relying on
> -		 * that bw state since we have no convenient way to get at the
> -		 * latter from the plane commit hooks (especially in the legacy
> -		 * cursor case)
> -		 */
> -		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(i915) &&
> -			DISPLAY_VER(i915) >= 12 &&
> -			intel_can_enable_sagv(i915, new_bw_state);
> -	}
> -
>  	return 0;
>  }
>  
> -- 
> 2.41.0
> 
