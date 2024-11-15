Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A76C69CDC62
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 11:20:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4799E10E051;
	Fri, 15 Nov 2024 10:20:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EaDzwcF/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBD4210E051;
 Fri, 15 Nov 2024 10:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731666002; x=1763202002;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UF+RDfDilZQ9prdAlr9akq5bD/pUX2N2x4BJglcjQrU=;
 b=EaDzwcF/HNCsro2yI3pU98KmQNngxEaViLGg0rRoh5RiW8YyWO0DCpBy
 kGLGIom4PNJnRuWyetZf3Ymyisfs/xf5IblaPn64Si2xwhU07b4O4phXY
 5tP6m4vqnnSUM+MHzDBIM5/SkSvFnUcmQFm8dOOIDzIfDkU9YHUcChliu
 vgW9cERcpySVPV3oQ6zpfGgycjfOyt3N0WDPTH2ztL8n6zNEcSGVG7XOZ
 E7erelVJWkbkzZRHF8/w5Kbl8Hw6g83qjIGMjodHhPYqiPYMB1zwbekh2
 +PiEjn6b4JyONeUCgrAQmIPGQzkQPVFQAzp3xRCBwyo+QblhYHOREAgQX w==;
X-CSE-ConnectionGUID: oVpKU5GGTOS4+dx8hJj3MA==
X-CSE-MsgGUID: 3amT3UotRfCdmOPEytfU6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="19275668"
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="19275668"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 02:20:02 -0800
X-CSE-ConnectionGUID: p/bkfZm/RbSQt3A0a6T2PQ==
X-CSE-MsgGUID: edrtNPO6SLWMPFTLxDGb1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="93474537"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.64])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 02:19:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display: Refactor handling of dpkgc
 latency programming
In-Reply-To: <20241115063440.1422706-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241115063440.1422706-1-suraj.kandpal@intel.com>
Date: Fri, 15 Nov 2024 12:19:55 +0200
Message-ID: <87a5e06bp0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 15 Nov 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> - We want to make sure we have all the required values specially
> linetime which is computed after intel_wm_compute, this will also
> help implement some WA's which require linetime.
> -We do not want to write into any registers during compute_config phase
> While we are at it do some more refactors in the function like:
> -Use intel_display wherever possible
> -Move away from using enable_dpkgc bool and call it fixed_refresh_rate
> -Optimize value prepration

Please write proper sentences instead of bullet points. And the general
advice is to do one thing per patch.

>
> --v2
> -No need to save anything in intel_display structure [Vinod]
> -Move computation and writing into register to intel_atomic_commit_tail
> [Vinod]
>
> --v3
> -Rename the subject [Vinod]
> -Rearrange the variable initialization and declaration [Vinod]
> -Reaarange condition evaluation for fixed_refresh_rate [Vinod]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +
>  drivers/gpu/drm/i915/display/intel_wm.c      | 56 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_wm.h      |  1 +
>  drivers/gpu/drm/i915/display/skl_watermark.c | 52 ------------------
>  4 files changed, 59 insertions(+), 52 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e790a2de5b3d..d1880e0a5d29 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7826,6 +7826,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
>  	dev_priv->display.funcs.display->commit_modeset_enables(state);
>  
> +	intel_program_dpkgc_latency(state);
> +
>  	if (state->modeset)
>  		intel_set_cdclk_post_plane_update(state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
> index d7dc49aecd27..4a2caf9cb03e 100644
> --- a/drivers/gpu/drm/i915/display/intel_wm.c
> +++ b/drivers/gpu/drm/i915/display/intel_wm.c
> @@ -7,9 +7,18 @@
>  
>  #include "i915_drv.h"
>  #include "i9xx_wm.h"
> +#include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_wm.h"
>  #include "skl_watermark.h"
> +#include "skl_watermark_regs.h"
> +
> +/*
> + * It is expected that DSB can do posted writes to every register in
> + * the pipe and planes within 100us. For flip queue use case, the
> + * recommended DSB execution time is 100us + one SAGV block time.
> + */
> +#define DSB_EXE_TIME 100
>  
>  /**
>   * intel_update_watermarks - update FIFO watermark values based on current modes
> @@ -131,6 +140,53 @@ bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
>  		return plane_state->uapi.visible;
>  }
>  
> +/*
> + * If Fixed Refresh Rate or For VRR case Vmin = Vmax = Flipline:
> + * Program DEEP PKG_C_LATENCY Pkg C with highest valid latency from
> + * watermark level1 and up and above. If watermark level 1 is
> + * invalid program it with all 1's.
> + * Program PKG_C_LATENCY Added Wake Time = DSB execution time
> + * If Variable Refresh Rate where Vmin != Vmax != Flipline:
> + * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
> + * Program PKG_C_LATENCY Added Wake Time = 0
> + */
> +void
> +intel_program_dpkgc_latency(struct intel_atomic_state *state)

The function prefix should match the file name i.e. a function in
intel_foo.[ch] should be named intel_foo_bar().

But why is the function being relocated at all? That's also not
explained in the commit message.

> +{
> +	struct intel_display *display = to_intel_display(state);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *new_crtc_state;
> +	u32 max_latency = LNL_PKG_C_LATENCY_MASK, added_waketime = 0;
> +	bool fixed_refresh_rate = false;
> +	u32 clear, val;
> +	int i;
> +
> +	if (DISPLAY_VER(display) < 20)
> +		return;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		if (!new_crtc_state->vrr.enable ||
> +		    (new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
> +		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline))
> +			fixed_refresh_rate = true;
> +	}
> +
> +	if (fixed_refresh_rate) {
> +		max_latency = skl_watermark_max_latency(i915, 1);
> +		if (max_latency == 0)
> +			max_latency = LNL_PKG_C_LATENCY_MASK;
> +		added_waketime = DSB_EXE_TIME +
> +			display->sagv.block_time_us;
> +	}
> +
> +	clear = LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
> +	val = REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
> +		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_waketime);
> +
> +	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
> +}
> +
>  void intel_print_wm_latency(struct drm_i915_private *dev_priv,
>  			    const char *name, const u16 wm[])
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
> index e97cdca89a5c..07e3d9359d73 100644
> --- a/drivers/gpu/drm/i915/display/intel_wm.h
> +++ b/drivers/gpu/drm/i915/display/intel_wm.h
> @@ -31,5 +31,6 @@ void intel_print_wm_latency(struct drm_i915_private *i915,
>  			    const char *name, const u16 wm[]);
>  void intel_wm_init(struct drm_i915_private *i915);
>  void intel_wm_debugfs_register(struct drm_i915_private *i915);
> +void intel_program_dpkgc_latency(struct intel_atomic_state *state);
>  
>  #endif /* __INTEL_WM_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 1a4c1fa24820..d419edb196c6 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -28,12 +28,6 @@
>  #include "skl_watermark.h"
>  #include "skl_watermark_regs.h"
>  
> -/*It is expected that DSB can do posted writes to every register in
> - * the pipe and planes within 100us. For flip queue use case, the
> - * recommended DSB execution time is 100us + one SAGV block time.
> - */
> -#define DSB_EXE_TIME 100
> -
>  static void skl_sagv_disable(struct drm_i915_private *i915);
>  
>  /* Stores plane specific WM parameters */
> @@ -2844,51 +2838,12 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> -/*
> - * If Fixed Refresh Rate or For VRR case Vmin = Vmax = Flipline:
> - * Program DEEP PKG_C_LATENCY Pkg C with highest valid latency from
> - * watermark level1 and up and above. If watermark level 1 is
> - * invalid program it with all 1's.
> - * Program PKG_C_LATENCY Added Wake Time = DSB execution time
> - * If Variable Refresh Rate where Vmin != Vmax != Flipline:
> - * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
> - * Program PKG_C_LATENCY Added Wake Time = 0
> - */
> -static void
> -skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
> -{
> -	u32 max_latency = 0;
> -	u32 clear = 0, val = 0;
> -	u32 added_wake_time = 0;
> -
> -	if (DISPLAY_VER(i915) < 20)
> -		return;
> -
> -	if (enable_dpkgc) {
> -		max_latency = skl_watermark_max_latency(i915, 1);
> -		if (max_latency == 0)
> -			max_latency = LNL_PKG_C_LATENCY_MASK;
> -		added_wake_time = DSB_EXE_TIME +
> -			i915->display.sagv.block_time_us;
> -	} else {
> -		max_latency = LNL_PKG_C_LATENCY_MASK;
> -		added_wake_time = 0;
> -	}
> -
> -	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
> -	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
> -	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
> -
> -	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
> -}
> -
>  static int
>  skl_compute_wm(struct intel_atomic_state *state)
>  {
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state __maybe_unused *new_crtc_state;
>  	int ret, i;
> -	bool enable_dpkgc = false;
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		ret = skl_build_pipe_wm(state, crtc);
> @@ -2913,15 +2868,8 @@ skl_compute_wm(struct intel_atomic_state *state)
>  		ret = skl_wm_add_affected_planes(state, crtc);
>  		if (ret)
>  			return ret;
> -
> -		if ((new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
> -		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
> -		    !new_crtc_state->vrr.enable)
> -			enable_dpkgc = true;
>  	}
>  
> -	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc);
> -
>  	skl_print_wm_changes(state);
>  
>  	return 0;

-- 
Jani Nikula, Intel
