Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FED9960E2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 09:30:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6683010E665;
	Wed,  9 Oct 2024 07:30:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E7ATcErF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5C410E665
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 07:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728459045; x=1759995045;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TSCyqJ5iCA1cXq3YVymDVVvBHFIAis2oPEZIYz8yH9g=;
 b=E7ATcErFSvO6N28zuENvd0exXMdjOPDE/ADSX/5BE/kBOozIM6te94Jb
 iXDB9JFqvHOgw/PgrFs50MYaEDoMhHU812JH6DIYdrCoKbz8zkiZTWNsu
 lNtXFra2s3TQz6rs95nPaSaaWnQLx0ZQxlyLl7mCJGtbFEZeq0xuOEDWJ
 tWvaXrLzQefaxwAACAxU0wYqC49GW06Lq/nfR9XwVXkfxQDnZRzVfmcBA
 uLGgV5S2+mSMeVv3AEdJIyJCa3Cz4ZDZ1erB3RTfrvJAD5mux8DrWWJrE
 OG2w6h+q9RSwZG13v5PVcsyX2pTU9rNOlpAhe50OaCSpLIKdmmTj3TgCg g==;
X-CSE-ConnectionGUID: X17BSHzCTJ6E5J/TnAGf8g==
X-CSE-MsgGUID: 50PmAkVdTbSX4gD1TeY1xA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27875547"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27875547"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 00:30:43 -0700
X-CSE-ConnectionGUID: b/BlI7JCRry2Lh5kO0ATTg==
X-CSE-MsgGUID: 2zqZgC33Q2S96OyKMqR+Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76269381"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Oct 2024 00:30:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 10:30:39 +0300
Date: Wed, 9 Oct 2024 10:30:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 ville.syrjala@intel.com, ankit.k.nautiyal@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH v13 3/3] drm/i915/panelreplay: Panel replay workaround
 with VRR
Message-ID: <ZwYxHyd_kzF-WaXj@intel.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241001134703.1128487-4-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241001134703.1128487-4-mitulkumar.ajitkumar.golani@intel.com>
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

On Tue, Oct 01, 2024 at 07:17:03PM +0530, Mitul Golani wrote:
> From: Animesh Manna <animesh.manna@intel.com>
> 
> Panel Replay VSC SDP not getting sent when VRR is enabled
> and W1 and W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
> The same is applicable for PSR1/PSR2 as well.
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
> v8: Introduce late_compute_config() which will take care late
> vblank-delay adjustment. [Ville]
> v9: Implementation simplified and split into multiple patches.
> v10:
> - Split vrr changes and use struct intel_display in DISPLAY_VER(). [Ankit]
> - Use for_each_new_intel_connector_in_state(). [Jani]
> v11: Remove loop and use flipline instead of vrr.enable flag. [Ville]
> v12:
> - Use intel_Vrr_possible helper.
> - Correct flag check for flipline.
> 
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  2 files changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c59d7bffbf57..a8f846b654e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2573,6 +2573,8 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	int ret;
>  
> +	intel_crtc_adjust_vblank_delay(crtc_state);
> +
>  	ret = intel_dpll_crtc_compute_clock(state, crtc);
>  	if (ret)
>  		return ret;
> @@ -3985,6 +3987,25 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
>  	return true;
>  }
>  
> +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	/*
> +	 * wa_14015401596 for display versions 13, 14.
> +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
> +	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled with VRR.
> +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
> +	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
> +	 * by 1 if both are equal.

You're just paraphrasing the code in different words here. 
Please don't, and just drop the whole comment (apart from the
w/a number ofc).

> +	 */
> +	if (intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
> +	    adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
> +	    IS_DISPLAY_VER(display, 13, 14))
> +		adjusted_mode->crtc_vblank_start += 1;
> +}
> +
>  int intel_dotclock_calculate(int link_freq,
>  			     const struct intel_link_m_n *m_n)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 1f0fed5ea7bc..e6bd03ef104d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -446,6 +446,7 @@ u8 _intel_modeset_primary_pipes(const struct intel_crtc_state *crtc_state);
>  u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state);
>  struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state);
>  bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			       const struct intel_crtc_state *pipe_config,
>  			       bool fastset);
> -- 
> 2.46.0

-- 
Ville Syrjälä
Intel
