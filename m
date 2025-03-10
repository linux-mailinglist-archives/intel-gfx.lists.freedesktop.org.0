Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEFDA5A1AD
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 19:09:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 888C510E4A9;
	Mon, 10 Mar 2025 18:09:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PYx7hSts";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C29610E4A6;
 Mon, 10 Mar 2025 18:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741630151; x=1773166151;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EXqMiV4OhKcR7YLOzub8F8krUKbF52XrNWUJ45FPlDc=;
 b=PYx7hStso4SM4FC/FWLHoXs7Pr93aVx4iMiQlD2xMU7lbi6UoAmASun0
 HeoKMcH72fJ2pnyERmn0TTx4tj3jkOi9Ftk2lSU4V/e01oI8Li3eEiJu6
 ILH6Z27hkv3R1zG3R9uocZd3t8pwGL4ittALYaW+IKS6E7YOg7FQdj9fr
 i4y6iXal1kMket7SfVl3fn2Dq1XlCY95Fa2CKHK6NL4dXu4Ns1bR+7FmL
 rF9oIXnwSldedqKeKig1NDU23nnGPceFX99mu7oaMpAVy2B50OUiQt+wi
 odM9g1BfuLN1FAkEfjHLiyCQhu4NopNIbIYXmt4iCNvoHpQq/Kl4a1hR4 Q==;
X-CSE-ConnectionGUID: OoCjYxLaQ3uTwR9AtbvCgQ==
X-CSE-MsgGUID: bx0Zt0BlTPOoG9ZEGgOSCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="41887352"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="41887352"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 11:09:11 -0700
X-CSE-ConnectionGUID: o/o41E7OQeGSaLyc2I5X/Q==
X-CSE-MsgGUID: /C29PqxPQCWrf0wVQwB2Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="125293005"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Mar 2025 11:09:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Mar 2025 20:09:07 +0200
Date: Mon, 10 Mar 2025 20:09:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 18/21] drm/i915/display: Move vrr.guardband/pipeline_full
 out of !fastset block
Message-ID: <Z88qw6ynmuB5bhV0@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
 <20250310121615.1077079-19-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250310121615.1077079-19-ankit.k.nautiyal@intel.com>
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

On Mon, Mar 10, 2025 at 05:46:12PM +0530, Ankit Nautiyal wrote:
> Since the vrr.guardband can now change for platforms that always use the
> VRR Timing Generator, and it is unsafe to reprogram the guardband on the
> fly, move the guardband and pipeline_full checks from the pure !fastboot
> path and add a check for intel_vrr_always_use_vrr_tg().
> 
> For older platforms the vrr.guardband change happens when VRR Timing
> generator is off. For the platforms that always use the VRR Timing
> Generator, this will prevent reprogramming the vrr.guardband without a
> full modeset. However, this will disrupt LRR functionality for these
> platforms.
> 
> v2: modify the check to avoid breaking the LRR on older platform.
> (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 1 -
>  drivers/gpu/drm/i915/display/intel_vrr.h     | 2 ++
>  3 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7ac504885869..53e2c11112c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5397,6 +5397,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_BOOL(cmrr.enable);

You neglected to remove them from this block.

With that sorted
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	}
>  
> +	if (!fastset || intel_vrr_always_use_vrr_tg(display)) {
> +		PIPE_CONF_CHECK_I(vrr.pipeline_full);
> +		PIPE_CONF_CHECK_I(vrr.guardband);
> +	}
> +
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
>  #undef PIPE_CONF_CHECK_LLI
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 57e9aef02b7c..b83b1c66c242 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -544,7 +544,6 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>  	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
>  }
>  
> -static
>  bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>  {
>  	if (!HAS_VRR(display))
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index d857633bc02c..c92d6dd26f6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -13,6 +13,7 @@ struct intel_atomic_state;
>  struct intel_connector;
>  struct intel_crtc_state;
>  struct intel_dsb;
> +struct intel_display;
>  
>  bool intel_vrr_is_capable(struct intel_connector *connector);
>  bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
> @@ -38,5 +39,6 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
> +bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>  
>  #endif /* __INTEL_VRR_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
