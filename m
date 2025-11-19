Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E477C70708
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 18:24:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492CF10E24B;
	Wed, 19 Nov 2025 17:24:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Je5jFumH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD4E210E24B;
 Wed, 19 Nov 2025 17:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763573068; x=1795109068;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Qzs+ShQRG3gNyHH4qumQuiDnBDPD1llzcKVCuzmNNEQ=;
 b=Je5jFumHe4OiKvVNXAG6IbqO249DX4ZxXog4MKWoxp6g450qbFpQM3Rs
 EzpWknbcoj+5Iznbt0RZoh6XHSojw9AUXkIOH4NClHzKMwcXDbfLJ0cR3
 TJUaVLcPf9McNM4HPzat5naTm9o5+9c/UL2YYbZLDOnltQrhlb04mzCLY
 /lYQd61VmPYYSXZGBMg63TmWseA/vPjt//PpsXW5Ri1SSd/E8Snd1IPp+
 C7/g7wrnBAQrxpyednfvOuT5zZvsKTps3lstNfd66FYjDUePEDQbeT8sm
 04pGUwgovmf2BOVjrcfADGD1bI2KTmSshZmlh3xF1d+akQ1cC5rtP5Mm1 A==;
X-CSE-ConnectionGUID: z2btax/+S3CCV/G/0L/nBQ==
X-CSE-MsgGUID: qqyzNltNQBWobjWMGmiV5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65556745"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="65556745"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 09:24:28 -0800
X-CSE-ConnectionGUID: 3TziqKyNSi2er1JGhwTtdg==
X-CSE-MsgGUID: 7PxKYeiOT5SSksTfz+xI0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="190372856"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.221.119])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 09:24:26 -0800
Date: Wed, 19 Nov 2025 19:24:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3] drm/i915/display: change pipe allocation order for
 discrete platforms
Message-ID: <aR39Rlq9kENqpBEl@intel.com>
References: <20251119153321.2640969-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251119153321.2640969-1-jani.nikula@intel.com>
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

On Wed, Nov 19, 2025 at 05:33:21PM +0200, Jani Nikula wrote:
> When big joiner is enabled, it reserves the adjacent pipe as the
> secondary pipe. This happens without the user space knowing, and
> subsequent attempts at using the CRTC with that pipe will fail. If the
> user space does not have a coping mechanism, i.e. trying another CRTC,
> this leads to a black screen.
> 
> Try to reduce the impact of the problem on discrete platforms by mapping
> the CRTCs to pipes in order A, C, B, and D. If the user space reserves
> CRTCs in order, this should trick it to using pipes that are more likely
> to be available for and after joining.
> 
> Limit this to discrete platforms, which have four pipes, and no eDP, a
> combination that should benefit the most with least drawbacks.
> 
> Although there are currently no platforms with more than four pipes, add
> a fallback for initializing the rest of the pipes to not miss them.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> v2: Also remove WARN_ON()
> 
> v3: Limit to discrete
> 
> There are a number of issues in IGT with assuming CRTC index == pipe, at
> least with CRC and vblank waits. With them being used a lot in tests, we
> won't get enough test coverage until they're fixed.
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  2 --
>  .../drm/i915/display/intel_display_driver.c   | 26 ++++++++++++++++++-
>  2 files changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 9d2a23c96c61..11e58d07ddef 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -394,8 +394,6 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
>  
>  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
>  
> -	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
> -
>  	if (HAS_CASF(display))
>  		drm_crtc_create_sharpness_strength_property(&crtc->base);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 7e000ba3e08b..b5c9cdf14a43 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -452,6 +452,7 @@ bool intel_display_driver_check_access(struct intel_display *display)
>  /* part #2: call after irq install, but before gem init */
>  int intel_display_driver_probe_nogem(struct intel_display *display)
>  {
> +	u8 pipe_mask = U8_MAX;
>  	enum pipe pipe;
>  	int ret;
>  
> @@ -470,7 +471,30 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
>  		    INTEL_NUM_PIPES(display),
>  		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
>  
> -	for_each_pipe(display, pipe) {
> +	/*
> +	 * Expose the pipes in order A, C, B, D on discrete platforms to trick
> +	 * user space into using pipes that are more likely to be available for
> +	 * both a) user space if pipe B has been reserved for the joiner, and b)
> +	 * the joiner if pipe A doesn't need the joiner.
> +	 *
> +	 * Fall back to normal initialization for the remaining pipes, if any.
> +	 */
> +	if (HAS_BIGJOINER(display) && display->platform.dgfx) {

uncompressed joiner is also a thing.

> +		enum pipe pipe_order[] = { PIPE_A, PIPE_C, PIPE_B, PIPE_D };
> +		int i;
> +
> +		for (i = 0; i < ARRAY_SIZE(pipe_order); i++) {
> +			pipe = pipe_order[i];
> +
> +			ret = intel_crtc_init(display, pipe);
> +			if (ret)
> +				goto err_mode_config;
> +
> +			pipe_mask &= ~BIT(pipe);
> +		}
> +	}

I was thinking it might be easier to just do the B<->C swap inside
intel_crtc_init(). Kinda similar how we we already do the plane
A<->B swap in intel_primary_plane_create(). But I guess the
loop here would become a bit more confusing since it would have
to iterate all possible pipes and not just the ones present in
the runtime info pipe_mask.

> +
> +	for_each_pipe_masked(display, pipe, pipe_mask) {
>  		ret = intel_crtc_init(display, pipe);
>  		if (ret)
>  			goto err_mode_config;
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
