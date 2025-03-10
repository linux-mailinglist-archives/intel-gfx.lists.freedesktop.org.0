Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4F2A5A1CA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 19:13:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C113210E4AB;
	Mon, 10 Mar 2025 18:13:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mfVv40lu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E16FC10E4AB;
 Mon, 10 Mar 2025 18:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741630436; x=1773166436;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kkIMKVynwbfKksaRMXbkQLGN6QqZ7v/CfyDGmqiPWAU=;
 b=mfVv40luh9wNpMEsXay6z1b87t3T0xHs9pDCCm1bHwH+4QyosTKntbo/
 sI/9QqY23opyzChjtwXtlf2ZDHYi6xpTsygANUJCzaOg7UOdlrnsNM2mq
 XTNdF3OMyQ/52VKKxWnlxEIiz5BWPZ4J7019xC6kwHeTuyJ/XcplOJHvh
 6n7prrxRVGuvPUQ0g6ybquu7RkFXXbZyo17/IjcRy9yg3N6fMu2Fdzjcn
 zI1aWrHPbQ5sdnAnqq//oJvq+8yniDifIagKiUXGUnZr8IQl2UBl/prc9
 S4WItTXSJNc4Ed6vRVPSy/0NzaDeG199mRMm26/4gT/bZLB60NDOX8tKf Q==;
X-CSE-ConnectionGUID: eVo+kxHMRmqaqSIlZJnMyA==
X-CSE-MsgGUID: ktcWGoW0RiGRl2g9u1sEaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42674995"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="42674995"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 11:13:56 -0700
X-CSE-ConnectionGUID: hEwBbpHiQlaG7KuPcAFJXg==
X-CSE-MsgGUID: shKr5389T9CXMic0wGRSVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="125293798"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Mar 2025 11:13:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Mar 2025 20:13:52 +0200
Date: Mon, 10 Mar 2025 20:13:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 21/21] drm/i915/display: Add fixed_rr to crtc_state dump
Message-ID: <Z88r4PFBbFaP6TU6@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
 <20250310121615.1077079-22-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250310121615.1077079-22-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Mar 10, 2025 at 05:46:15PM +0530, Ankit Nautiyal wrote:
> Add fixed refresh rate mode in crtc_state dump.
> VRR Timing Generator is running in fixed refresh rate mode when
> vrr.vmin = vrr.vmax = vrr.flipline.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
>  drivers/gpu/drm/i915/display/intel_vrr.c             | 1 -
>  drivers/gpu/drm/i915/display/intel_vrr.h             | 1 +
>  3 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 599ddce96371..f204a5830c29 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -294,8 +294,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
>  		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
>  
> -	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
> +	drm_printf(&p, "vrr: %s, fixed_rr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",

s/fixed_rr/fixed rr/ for consistency with the other stuff.

With that
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  		   str_yes_no(pipe_config->vrr.enable),
> +		   str_yes_no(intel_vrr_is_fixed_rr(pipe_config)),
>  		   pipe_config->vrr.vmin, pipe_config->vrr.vmax, pipe_config->vrr.flipline,
>  		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
>  		   pipe_config->vrr.vsync_start, pipe_config->vrr.vsync_end);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 35f1463583f7..506305cbcbde 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -654,7 +654,6 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>  }
>  
> -static
>  bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>  {
>  	return crtc_state->vrr.flipline &&
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index c92d6dd26f6d..8086fb74126a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -40,5 +40,6 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>  bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
> +bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_VRR_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
