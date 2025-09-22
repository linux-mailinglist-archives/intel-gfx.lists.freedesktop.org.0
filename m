Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7741B8FF67
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 12:18:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EBE010E406;
	Mon, 22 Sep 2025 10:18:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mOBC8JNa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98F310E406;
 Mon, 22 Sep 2025 10:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758536290; x=1790072290;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tRn6fXMcNAhyZUommy8x4zOWMGkXYixA5M4xM5VOMMM=;
 b=mOBC8JNa4ImfGVSlLHyuv2WpMsl8TM4BuZmFFxeWgoroc5FB09b9kB91
 NlMmbJsBnkNaQ/hvnYoSVmiGrBdYRpUpAoyXvpGVmmrhKGdzEZy1zHigE
 Rx7Oty4zxLox11XxgryimKr/xenVy+AO+amDOkGTaS7l3RHpmaDIKhDoS
 J11z6NNpGTp+vVw6PW/XMUiNbB9SXFNqycaBYr1VEVM+NDrw8pRqWFFuT
 LTCoJLbvoorm91pF4MzTsx8iX475tRfLtIRNcMMdf73ogg5BRRBL6B9CF
 pgHBQ7Ph0V785BaruKdSOw1PZW7a7BieDkhout3bIWPqsr9IHcn1KH+HW g==;
X-CSE-ConnectionGUID: Cv2lHcIJT0CrQOVHDu/v1w==
X-CSE-MsgGUID: EPrVLe09R0aU3rcbNp2oMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="71471443"
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="71471443"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:18:10 -0700
X-CSE-ConnectionGUID: r+9DN/e8SJOxddCKjw78Uw==
X-CSE-MsgGUID: fXl3Rr6WQ/2T8XPs6WnwAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="176883844"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:18:09 -0700
Date: Mon, 22 Sep 2025 13:18:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/9] drm/i915/display: Use set context latency in evasion
 logic
Message-ID: <aNEiXtXdiEXSxGCn@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250921043535.2012978-7-ankit.k.nautiyal@intel.com>
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

On Sun, Sep 21, 2025 at 10:05:32AM +0530, Ankit Nautiyal wrote:
> Currently we use difference between vactive and vblank delay to
> implicitly wait for SCL lines.
> 
> Remove the function intel_mode_vblank_delay as we can simply use
> the set context latency instead.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
>  drivers/gpu/drm/i915/display/intel_vblank.c | 7 +------
>  drivers/gpu/drm/i915/display/intel_vblank.h | 1 -
>  3 files changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index ca31e928ecb0..dfe928aefdcd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -130,7 +130,7 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
>  		 */
>  		return intel_vrr_scl_delay(crtc_state) + 1;
>  	else
> -		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
> +		return crtc_state->set_context_latency;

I think we want to leave all the non-VRR cases to use
intel_mode_vblank_delay(). Otherwise when running with fixed
refresh rate we won't account for a reduced guardband.

And for the cases where the fixed refresh rate is handle by the legacy
timing generator we actually need a slightly different delay for the
legacy and VRR timing generators on TGL (due to
intel_vrr_extra_vblank_delay() only affecting the VRR timing generator).

>  }
>  
>  static int dsb_vtotal(struct intel_atomic_state *state,
> @@ -733,7 +733,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>  		start = end - vblank_delay - latency;
>  		intel_dsb_wait_scanline_out(state, dsb, start, end);
>  	} else {
> -		int vblank_delay = intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
> +		int vblank_delay = crtc_state->set_context_latency;
>  
>  		end = intel_mode_vblank_start(&crtc_state->hw.adjusted_mode);
>  		start = end - vblank_delay - latency;
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 9441b7bacd27..8c4cb6913ef9 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -619,11 +619,6 @@ int intel_mode_vtotal(const struct drm_display_mode *mode)
>  	return vtotal;
>  }
>  
> -int intel_mode_vblank_delay(const struct drm_display_mode *mode)
> -{
> -	return intel_mode_vblank_start(mode) - intel_mode_vdisplay(mode);
> -}
> -
>  static const struct intel_crtc_state *
>  pre_commit_crtc_state(const struct intel_crtc_state *old_crtc_state,
>  		      const struct intel_crtc_state *new_crtc_state)
> @@ -685,7 +680,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>  	} else {
>  		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
>  
> -		vblank_delay = intel_mode_vblank_delay(adjusted_mode);
> +		vblank_delay = crtc_state->set_context_latency;
>  	}
>  
>  	/* FIXME needs to be calibrated sensibly */
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
> index 21fbb08d61d5..0fd6f7aeffd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> @@ -25,7 +25,6 @@ int intel_mode_vdisplay(const struct drm_display_mode *mode);
>  int intel_mode_vblank_start(const struct drm_display_mode *mode);
>  int intel_mode_vblank_end(const struct drm_display_mode *mode);
>  int intel_mode_vtotal(const struct drm_display_mode *mode);
> -int intel_mode_vblank_delay(const struct drm_display_mode *mode);
>  
>  void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>  			     const struct intel_crtc_state *new_crtc_state,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
