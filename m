Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BF7BE4D82
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 19:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1472E10EA5C;
	Thu, 16 Oct 2025 17:29:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gDy1F7fj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9640710EA62;
 Thu, 16 Oct 2025 17:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760635776; x=1792171776;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ga6pb//lNICfxi2cjdhmmoSUwUHYhLvdoVDGa4s51Cs=;
 b=gDy1F7fjd6tF7luqVjtpUDjkEzsr8MFGox9iQR9Qqh/EGPoZbyIGl5XD
 8QqSkbuhYa6cSydcU1SCj/mJHWESN0LHc2okOfk45+c8DLOyl6yyPo7sU
 VJpP6BQLiNbr+O0Ub8KNhro6jLaFoyxHBmOkbMYfJn16aCii+uWiQwPFh
 GWUizPNwCd+TRKmz9/35QPEV395fHJxf+QMLV2idYmVfRRUKQDhEIznxV
 a/4jT2ooBTjwD6euwN22FS2h8CqN0tMUFGbqs+/6uf/xAZROzCpk9jFU/
 hEQDlFzI28c7MpaO+U2fw9gPMJXvivArZU1mJnGAPtZkOsbeGmaqOiXnO A==;
X-CSE-ConnectionGUID: S0aEYhP+RnickARGEYJ4Qg==
X-CSE-MsgGUID: dT9K+DRPQHGjS9mwGlCmEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="73442573"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="73442573"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 10:29:36 -0700
X-CSE-ConnectionGUID: bjzImVTuTneMzuGKZXBP6Q==
X-CSE-MsgGUID: 78waNF3cQRerHwwuNYLGgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182444932"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 10:29:35 -0700
Date: Thu, 16 Oct 2025 20:29:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/i915/vrr: Use the min static optimized guardband
Message-ID: <aPErfBZdYRTgd9n6@intel.com>
References: <20251016093009.2139105-1-ankit.k.nautiyal@intel.com>
 <20251016093009.2139105-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251016093009.2139105-7-ankit.k.nautiyal@intel.com>
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

On Thu, Oct 16, 2025 at 03:00:09PM +0530, Ankit Nautiyal wrote:
> In the current VRR implementation, vrr.vmin and vrr.guardband are set such
> that they do not need to change when switching from fixed refresh rate to
> variable refresh rate. Specifically, vrr.guardband is always set to match
> the vblank length. This approach works for most cases, but not for LRR,
> where the guardband would need to change while the VRR timing generator is
> still active.
> 
> With the VRR TG always active, live updates to guardband are unsafe and not
> recommended. To ensure hardware safety, guardband was moved out of the
> !fastset block, meaning any change now requires a full modeset.
> This breaks seamless LRR switching, which was previously supported.
> 
> Since the problem arises from guardband being matched to the vblank length,
> solution is to use a minimal, sufficient static value, instead. So we use a
> static guardband defined during mode-set that fits within the smallest
> expected vblank and remains unchanged in case of features like LRR where
> vtotal changes. To compute this minimum guardband we take into account
> latencies/delays due to different features as mentioned in the Bspec.
> 
> Introduce a helper to compute the minimal sufficient guardband.
> On platforms where the VRR timing generator is always ON, we optimize the
> guardband regardless of whether the display is operating in fixed or
> variable refresh rate mode.
> On platforms where the VRR timing generator is not always ON, we optimize
> the guardband only when VRR is enabled.
> 
> Bspec: 70151
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 50 +++++++++++++++++++++++-
>  1 file changed, 48 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 597008a6c744..732e356e6fac 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -6,12 +6,16 @@
>  
>  #include <drm/drm_print.h>
>  
> +#include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_psr.h"
>  #include "intel_vrr.h"
>  #include "intel_vrr_regs.h"
> +#include "skl_prefill.h"
> +#include "skl_watermark.h"
>  
>  #define FIXED_POINT_PRECISION		100
>  #define CMRR_PRECISION_TOLERANCE	10
> @@ -433,17 +437,59 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
>  		   intel_vrr_max_vblank_guardband(crtc_state));
>  }
>  
> +static
> +int intel_vrr_compute_optimized_guardband(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct skl_prefill_ctx prefill_ctx;
> +	int psr_min_guardband = 0;
> +	int sdp_min_guardband = 0;
> +	int prefill_min_guardband;
> +	int prefill_sagv_us;
> +	int guardband;
> +
> +	skl_prefill_init_worst(&prefill_ctx, crtc_state);
> +	prefill_sagv_us = display->sagv.block_time_us;

We want max(sagv, skl_wm_latency(1)) here or else we risk destroying
power savings.

> +	prefill_min_guardband =
> +		skl_prefill_min_guardband(&prefill_ctx,
> +					  crtc_state,
> +					  prefill_sagv_us);
> +
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		psr_min_guardband = intel_psr_min_guardband(crtc_state);
> +		sdp_min_guardband = intel_dp_sdp_min_guardband(crtc_state, true);
> +	}
> +
> +	guardband = max(sdp_min_guardband, psr_min_guardband);
> +
> +	guardband = max(guardband, prefill_min_guardband);

All these temp variables seem rather pointless. Could just do

guardband = prefill_min_guardband(...);
if (dp)
 guardband = max(guardband, intel_psr_min_guardband(...));
 guardband = max(guardband, intel_dp_sdp_min_guardband(...));
}

I'm also pondering what to do about HDMI. A quick glance at the spec
says a lot of the inforframes are transmitted a line of two after
vsync, but the double buffering point is at delayed vblank. That to
me suggests that for HDMI we'd want to makes sure the start of
vsync happens after delayed vblank. For now it's probably safest to
simply not use the optimized guardband on HDMI. We can take another
stab at it on some later date.

> +
> +	return guardband;
> +}
> +
> +static bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	return intel_vrr_always_use_vrr_tg(display) || crtc_state->vrr.enable;

I think we should do this in two separate patches:
 1. use optimzied guardband for intel_vrr_always_use_vrr_tg
 2. use if for vrr.enable as well

Easier to revert just 2. on its own if we have to.

> +}
> +
>  void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
> +	int guardband;
>  
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>  
> -	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
> -					intel_vrr_max_guardband(crtc_state));
> +	if (intel_vrr_use_optimized_guardband(crtc_state))
> +		guardband = intel_vrr_compute_optimized_guardband(crtc_state);
> +	else
> +		guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
> +
> +	crtc_state->vrr.guardband = min(guardband, intel_vrr_max_guardband(crtc_state));
>  
>  	if (intel_vrr_always_use_vrr_tg(display)) {
>  		adjusted_mode->crtc_vblank_start  =
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
