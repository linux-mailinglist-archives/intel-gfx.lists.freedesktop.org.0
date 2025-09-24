Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E19EB9A91D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 17:20:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7702B10E753;
	Wed, 24 Sep 2025 15:20:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k35HQROi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ECDF10E23E;
 Wed, 24 Sep 2025 15:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758727236; x=1790263236;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xIJfqUgIEIaaZk5MvYkxt5v1T5M2Ah3BLEs4MTX0r80=;
 b=k35HQROi4e8vklnj4j+kdrRMG5we2a/6IF+stAknVoZeNEdAWdXG5DGO
 mSF1Zx5pgs9misQiHnm4659QJ4fNA4sLC97xzdMNjpljTh83PO+G/WYVA
 ddWbNaECtjPYRNoA9JnpTRtbH4C7xufdnfx/y60fRJDCK+u7utYLcc8RB
 mBV8BEttm4pgsE2sm3n/TL3LP4U2XeOYjGph92CM/HAZuq3EvIYuJFCTe
 nPGNGwQE1UFgt4f7bWNOgLg+SpUf3pcwv5MrjyOweHL8W5etKCgW/SruO
 SpWoR/Hj3GaY3iE+I+QgETXaRKOUD4N4K8LErpFl8xv9VKW0eRkhsQ6DP A==;
X-CSE-ConnectionGUID: eRb5k2GhT7iWfRgQaUeEJw==
X-CSE-MsgGUID: bmRv7u2ERMSR5rz3Wv/sPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="63655741"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="63655741"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 08:20:35 -0700
X-CSE-ConnectionGUID: BVSZ22pPRHe2TiBmTQJAqQ==
X-CSE-MsgGUID: FHDFdi3jSQqPtGbmd1s3Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177500786"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.144])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 08:20:33 -0700
Date: Wed, 24 Sep 2025 18:20:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/10] drm/i915/dsb: Inline dsb_vblank_delay() into
 intel_dsb_wait_for_delayed_vblank()
Message-ID: <aNQMPqBkts5HKQa3@intel.com>
References: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
 <20250924141542.3122126-11-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250924141542.3122126-11-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Sep 24, 2025 at 07:45:42PM +0530, Ankit Nautiyal wrote:
> Drop the now single-use dsb_vblank_delay() helper and inline its logic
> directly into intel_dsb_wait_for_delayed_vblank().
> 
> This will help to keep all VRR related wait stuff in one place.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 56 ++++++++++--------------
>  1 file changed, 24 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index ae8574880ef2..44a465ff52d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -115,24 +115,6 @@ static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
>  	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
>  }
>  
> -static int dsb_vblank_delay(struct intel_atomic_state *state,
> -			    struct intel_crtc *crtc)
> -{
> -	const struct intel_crtc_state *crtc_state =
> -		intel_pre_commit_crtc_state(state, crtc);
> -
> -	if (pre_commit_is_vrr_active(state, crtc))
> -		/*
> -		 * When the push is sent during vblank it will trigger
> -		 * on the next scanline, hence we have up to one extra
> -		 * scanline until the delayed vblank occurs after
> -		 * TRANS_PUSH has been written.
> -		 */
> -		return crtc_state->set_context_latency + 1;
> -	else
> -		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
> -}
> -
>  static int dsb_vtotal(struct intel_atomic_state *state,
>  		      struct intel_crtc *crtc)
>  {
> @@ -821,24 +803,34 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>  	struct intel_crtc *crtc = dsb->crtc;
>  	const struct intel_crtc_state *crtc_state =
>  		intel_pre_commit_crtc_state(state, crtc);
> -	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
> -					     dsb_vblank_delay(state, crtc));
> +	int usecs;
>  
> -	/*
> -	 * If the push happened before the vmin decision boundary
> -	 * we don't know how far we are from the undelayed vblank.
> -	 * Wait until we're past the vmin safe window, at which
> -	 * point we're SCL lines away from the delayed vblank.
> -	 *
> -	 * If the push happened after the vmin decision boundary
> -	 * the hardware itself guarantees that we're SCL lines
> -	 * away from the delayed vblank, and we won't be inside
> -	 * the vmin safe window so this extra wait does nothing.
> -	 */
> -	if (pre_commit_is_vrr_active(state, crtc))
> +	if (pre_commit_is_vrr_active(state, crtc)) {
> +		/*
> +		 * If the push happened before the vmin decision boundary
> +		 * we don't know how far we are from the undelayed vblank.
> +		 * Wait until we're past the vmin safe window, at which
> +		 * point we're SCL lines away from the delayed vblank.
> +		 *
> +		 * If the push happened after the vmin decision boundary
> +		 * the hardware itself guarantees that we're SCL lines
> +		 * away from the delayed vblank, and we won't be inside
> +		 * the vmin safe window so this extra wait does nothing.
> +		 */
>  		intel_dsb_wait_scanline_out(state, dsb,
>  					    intel_vrr_safe_window_start(crtc_state),
>  					    intel_vrr_vmin_safe_window_end(crtc_state));
> +		/*
> +		 * When the push is sent during vblank it will trigger
> +		 * on the next scanline, hence we have up to one extra
> +		 * scanline until the delayed vblank occurs after
> +		 * TRANS_PUSH has been written.
> +		 */
> +		usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
> +						 crtc_state->set_context_latency + 1);
> +	} else {
> +		usecs = intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);

That also returns the delay in scanlines.

> +	}
>  
>  	intel_dsb_wait_usec(dsb, usecs);

So I guess just do the scanline_to_usec() conversion here when calling
wait_usec().

I think eventually we may want to change this part to be:

if (something)
	intel_dsb_wait_hblanks(x);
else
	intel_dsb_wait_usec(intel_scanlines_to_usecs(x));

But need to figure out what that "something" is. IIRC bspec
might not actually say which platforms have the "wait hblanks"
command. I gave it quick try on LNL but it didn't seem to work
there.

-- 
Ville Syrjälä
Intel
