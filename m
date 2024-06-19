Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC5090EBCC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 15:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE6F10E05E;
	Wed, 19 Jun 2024 13:01:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k5SVL7+B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 397BC10E05E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 13:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718802066; x=1750338066;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hQ+QhUGtRvitdHbFEPZM+7Es96DoNmQjAnItInbEkgE=;
 b=k5SVL7+BNXOkcBlTg3nzBfX69YMvZl07dtvKmah5jiK8+xvM+i7pN7nY
 YLU5I+QL+5Aa9rvPFJuRk7r8mO3zrwxNRaWsOV6lKtTm/40ZKmmFJdnRq
 vhJYVqXtbMX8NRGEEoo2hZaddadpM4y87OA5+KtlQNLs0Qtvp5tHt2sNR
 XDQZrUbSQQDkKQuZk+lJvQZ6Kps6OEzFXFehNatnKPsGQnHRLyTgZ3vsp
 lDDngt3yfepX8QW9n+Xe8vy8xeKvcNqnvuSlDIz42+DQf1d+ZIgoqay2N
 RxsCdoGpwTs4rNcRHtstMXdUlDW976hiBbsivz/SvxafE7kZsstLbZBI+ w==;
X-CSE-ConnectionGUID: AmSXMZx7S8u00VMfbAr0mw==
X-CSE-MsgGUID: xZ23iLjpR2+HFTpMRWbpzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="15885434"
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="15885434"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 06:01:05 -0700
X-CSE-ConnectionGUID: TWcn3au+RyWZVgoK2y+bcA==
X-CSE-MsgGUID: hxWN7qQJRZ2PPb183T1LZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="41869748"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Jun 2024 06:01:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jun 2024 16:01:01 +0300
Date: Wed, 19 Jun 2024 16:01:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH v7] drm/i915/panelreplay: Panel replay workaround with VRR
Message-ID: <ZnLWjdUXvxGz8Bux@intel.com>
References: <20240618112215.2892017-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240618112215.2892017-1-animesh.manna@intel.com>
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

On Tue, Jun 18, 2024 at 04:52:15PM +0530, Animesh Manna wrote:
> Panel Replay VSC SDP not getting sent when VRR is enabled
> and W1 and W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
> 
> HSD: 14015406119
> 
> v1: Initial version.
> v2: Update timings stored in adjusted_mode struct. [Ville]
> v3: Add WA in compute_config(). [Ville]
> v4:
> - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> v5: Move to crtc_compute_config(). [Ville]
> v6: Restrict DISPLAY_VER till 14. [Mitul]
> v7:
> - Corrected code-comment. [Mitul]
> - dev_priv local variable removed. [Jani]
> 
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  2 files changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7bc4f3de691e..c3ff3a5c5fa3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2515,6 +2515,10 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	int ret;
>  
> +	/* wa_14015401596: display versions 13, 14 */
> +	if (IS_DISPLAY_VER(to_i915(crtc->base.dev), 13, 14))
> +		intel_crtc_vblank_delay(crtc_state);
> +
>  	ret = intel_dpll_crtc_compute_clock(state, crtc);
>  	if (ret)
>  		return ret;
> @@ -3924,6 +3928,23 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
>  	return true;
>  }
>  
> +void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	/*
> +	 * wa_14015401596 for display versions 13, 14.
> +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
> +	 * to at least a value of 1 when Panel Replay is enabled with VRR.
> +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
> +	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
> +	 * by 1 if both are equal.
> +	 */
> +	if (crtc_state->vrr.enable && crtc_state->has_panel_replay &&
> +	    adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay)
> +		adjusted_mode->crtc_vblank_start += 1;
> +}

This is probably too late actually. We already used the previous value
to calculate the VRR guardband/pipeline full values, which may or may
not now be incorrect. So NAK for now until someone actually checks how
it all works (I don't recall the details right now).

> +
>  int intel_dotclock_calculate(int link_freq,
>  			     const struct intel_link_m_n *m_n)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index b0cf6ca70952..f99a24e76608 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -428,6 +428,7 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>  struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> +void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state);
>  bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			       const struct intel_crtc_state *pipe_config,
>  			       bool fastset);
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
