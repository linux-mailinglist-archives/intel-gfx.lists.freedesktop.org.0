Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE0DB9DE25
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Sep 2025 09:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6198510E869;
	Thu, 25 Sep 2025 07:42:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mwIiAM3X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 415DA10E867;
 Thu, 25 Sep 2025 07:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758786168; x=1790322168;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lgVOkTah5j8A5ss2k8nkIkedWbdqkkdmqohqvHGlzs0=;
 b=mwIiAM3XjDjSYNGmsSno1v4ANxj19eZ9Zcohxb6DBTh48TVC5IlnreAT
 f3xVLQFJZPlxYIHFzCf6/tzERCDAR0TJ8FgGCBYP4Tcd6r6rUUrWnNrLi
 zwByCPdfTwgSlLrsN3elCgK/CpG94XAQYO5FHBaqyiHuJ79vUwfpz5NZn
 2PCUwP1i0oI8HXMRWVcbtw6z4Vvq1xuOM5dv4RN5Lfwnxe5gz/xJwwvaD
 xShAQmaCSOvr49iBszoZB1R0h/4s7zQUGIiTyFxB0J8NrduzQ0NiWz1Jm
 1KTOEodotpxbtwhpbyc4Sso8+qSfK3vovSD6oYKE/R3zprKUCKXLlDNVP Q==;
X-CSE-ConnectionGUID: E0oYDOMeSAucswJvGT0xmQ==
X-CSE-MsgGUID: sJ8oUP0UQGaE9uVBZ+eBIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="61203373"
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="61203373"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 00:42:48 -0700
X-CSE-ConnectionGUID: 0uvNr1BJTr21umUOzPhXkQ==
X-CSE-MsgGUID: 6jcIZcg1Qn+yfQPXOE6NmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="182530872"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.32])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 00:42:46 -0700
Date: Thu, 25 Sep 2025 10:42:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/10] drm/i915/dsb: Inline dsb_vblank_delay() into
 intel_dsb_wait_for_delayed_vblank()
Message-ID: <aNTydBiwrEr6hrGQ@intel.com>
References: <20250924141542.3122126-11-ankit.k.nautiyal@intel.com>
 <20250925022352.3129859-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250925022352.3129859-1-ankit.k.nautiyal@intel.com>
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

On Thu, Sep 25, 2025 at 07:53:52AM +0530, Ankit Nautiyal wrote:
> Drop the now single-use dsb_vblank_delay() helper and inline its logic
> directly into intel_dsb_wait_for_delayed_vblank().
> 
> This will help to keep all VRR related wait stuff in one place.
> 
> v2: Use intel_scanlines_to_usecs() in intel_dsb_wait_usec(). (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 59 +++++++++++-------------
>  1 file changed, 26 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index ae8574880ef2..4ad4efbf9253 100644
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
> @@ -821,26 +803,37 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>  	struct intel_crtc *crtc = dsb->crtc;
>  	const struct intel_crtc_state *crtc_state =
>  		intel_pre_commit_crtc_state(state, crtc);
> -	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
> -					     dsb_vblank_delay(state, crtc));
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	int wait_scanlines;
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
> +		wait_scanlines = crtc_state->set_context_latency + 1;
> +	} else {
> +		wait_scanlines = intel_mode_vblank_delay(adjusted_mode);
> +	}
>  
> -	intel_dsb_wait_usec(dsb, usecs);
> +	intel_dsb_wait_usec(dsb, intel_scanlines_to_usecs(adjusted_mode, wait_scanlines));
>  }
>  
>  /**
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
