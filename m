Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C44B9629A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39B9E10E623;
	Tue, 23 Sep 2025 14:13:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P8SQBNDG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2EB310E623;
 Tue, 23 Sep 2025 14:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758636817; x=1790172817;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3lDijHYUygH+ZZ/62HHqUiwcSJHQW94lL0uX0sPyPLY=;
 b=P8SQBNDGePE4+Ee6gasnt08IBZ2nNhOYq7PagTn2V5LMD2ASXpE41BoL
 QM2PH077803wBqbyn7AQOHwQ77Uuw3OYGtFs1usj9fwmmZueD/RO7bjiv
 mzgCsvSOH28GtFIfmstJphhbr38m00AnmonJhOk2AMT1xYXBdoHnl3BHe
 wDEGBt7NhdbosT/bb0V4GEooKgsxfXqvs9MOhjzRGHFcftNrSB6uVzL3G
 /EEW2sRmtAUoSr3FHiKaB5cMYDYC9X+iS6IrOics/il8YcZzm+T7KHHsc
 mvM3K/bBfxorFKShv5xgJ96SmZHGQjBUCCUs+5KpCmZnd3FWUwxAUu0VX w==;
X-CSE-ConnectionGUID: mp44doUGSPG2R259MkFJVQ==
X-CSE-MsgGUID: LEr3OpIMT5m89lSDs/EFuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="64742785"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="64742785"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:13:36 -0700
X-CSE-ConnectionGUID: fpl2nQSMQdyTMrzcx+E7NA==
X-CSE-MsgGUID: eRGQmRPATriyIml9V5D7Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="181944319"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:13:32 -0700
Date: Tue, 23 Sep 2025 17:13:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/9] drm/i915/vrr:
 s/intel_vrr_vblank_delay/intel_vrr_scl_delay
Message-ID: <aNKrC6CZmNZ2u-rH@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
 <20250923131043.2628282-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250923131043.2628282-6-ankit.k.nautiyal@intel.com>
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

On Tue, Sep 23, 2025 at 06:40:39PM +0530, Ankit Nautiyal wrote:
> The helper intel_vrr_vblank_delay() is used to account for scl lines
> + extra_vblank_delay (for ICL/TGL case) for:
> - evasion logic for vrr case
> - to wait for SCL+ lines after send push operation.
> 
> Rename the helper to intel_vrr_scl_delay since we are interested in the
> SCL+ lines for the VRR cases.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
>  drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_vrr.h    | 2 +-
>  4 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index dee44d45b668..ca31e928ecb0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -128,7 +128,7 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
>  		 * scanline until the delayed vblank occurs after
>  		 * TRANS_PUSH has been written.
>  		 */
> -		return intel_vrr_vblank_delay(crtc_state) + 1;
> +		return intel_vrr_scl_delay(crtc_state) + 1;

I'd skip this renaming for now. I think after you've added the
safe window scanline wait you can replace all of these with
crtc_state->set_context_latency.

>  	else
>  		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
>  }
> @@ -723,7 +723,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>  		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
>  
>  	if (pre_commit_is_vrr_active(state, crtc)) {
> -		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
> +		int vblank_delay = intel_vrr_scl_delay(crtc_state);
>  
>  		end = intel_vrr_vmin_vblank_start(crtc_state);
>  		start = end - vblank_delay - latency;
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index c15234c1d96e..9441b7bacd27 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -681,7 +681,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>  		else
>  			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
>  
> -		vblank_delay = intel_vrr_vblank_delay(crtc_state);
> +		vblank_delay = intel_vrr_scl_delay(crtc_state);

I was pondering about this case especially, but I *think* it should
also be changed to crtc_state->set_context_latency. We don't want to
perform the commit while in the SCL here because then we're not in
the safe window and the DSB we use for LUT updates wouldn't start
until the next safe window starts (== next frame's vactive), whereas
the double buffered registers would latch already in the upcoming
delayed vblank.

But performing the commit while we're between undelayed vblank
and SCL start should be fine since that is part of the safe
window. So we don't need to evade the actual undelayed vblank
when in VRR mode.

The only exception here would be the LRR and M/N cases since those
perhaps still need to evade the undlayed vblank proper. But we always
drop out of VRR mode for those types of updates so they won't be
taking this codepath anyway.

>  	} else {
>  		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 1b90eaa6a776..40e256bce3cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -92,7 +92,7 @@ static int intel_vrr_extra_vblank_delay(struct intel_display *display)
>  	return DISPLAY_VER(display) < 13 ? 1 : 0;
>  }
>  
> -int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
> +int intel_vrr_scl_delay(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 38bf9996b883..b72e90b4abe5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -35,7 +35,7 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
> -int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_scl_delay(const struct intel_crtc_state *crtc_state);
>  bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
