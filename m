Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF2390C54E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 11:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 722BE10E5F6;
	Tue, 18 Jun 2024 09:27:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="By1F7j8z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 205E810E5F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 09:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718702867; x=1750238867;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bGoSVlyY56t/GdVVAHJRLSM/y003t4eVX01yGZ0rvzw=;
 b=By1F7j8z0ExSgBLwbOjppxDaBRr9AA4r6oOxq9YbxjItfmdruAiwEWaH
 l0adjRTpbdErjBiJeErWDEy1YwJ18yhOkYH4xWPie/OZArm8AlvRR59WU
 1VOCbJ4UiW/HY8KBL7tA56sQBbIted3yE0txZV5KH+pwGc+cEAvO1FJUI
 tdAuLs3XhiXS5HBS3aOQm2aFr28IxrI6MKIdw+FSJV6G4zPWb/Xx4wYSh
 xVUrJkIxQROSjl53WH1FUu5iYgP0e2RP//MdctToR/OyEroUkWAB8nXzP
 Uvl5pkTv194EpNxsLIxQO0HJV4Vdz4inmI5KDkAPeA1yoq3WsgBJHnDxx Q==;
X-CSE-ConnectionGUID: 9tbr0QprS8atJ897hlscXQ==
X-CSE-MsgGUID: 9PeRSib5QW6e1stqZGJjeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="26981996"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="26981996"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 02:27:46 -0700
X-CSE-ConnectionGUID: EWQDq2pVQOGQo95Spxu2Sg==
X-CSE-MsgGUID: 7cLbFsAXR6qbZyPgtIst5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41599998"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 02:27:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, mitulkumar.ajitkumar.golani@intel.com, Animesh
 Manna <animesh.manna@intel.com>
Subject: Re: [PATCH v6] drm/i915/panelreplay: Panel replay workaround with VRR
In-Reply-To: <20240610083441.2421326-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240610083441.2421326-1-animesh.manna@intel.com>
Date: Tue, 18 Jun 2024 12:27:39 +0300
Message-ID: <87bk3yha7o.fsf@intel.com>
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

On Mon, 10 Jun 2024, Animesh Manna <animesh.manna@intel.com> wrote:
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
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  2 files changed, 23 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c608329dac42..96dd5938229b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2504,10 +2504,15 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>  static int intel_crtc_compute_config(struct intel_atomic_state *state,
>  				     struct intel_crtc *crtc)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

NAK on adding any new dev_priv local variables. There is no longer any
reason.

BR,
Jani.



>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	int ret;
>  
> +	/* wa_14015401596: display versions 13, 14 */
> +	if (IS_DISPLAY_VER(dev_priv, 13, 14))
> +		intel_crtc_vblank_delay(crtc_state);
> +
>  	ret = intel_dpll_crtc_compute_clock(state, crtc);
>  	if (ret)
>  		return ret;
> @@ -3917,6 +3922,23 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
>  	return true;
>  }
>  
> +void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	/*
> +	 * wa_14015401596 for display versions >= 13.
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
> +
>  int intel_dotclock_calculate(int link_freq,
>  			     const struct intel_link_m_n *m_n)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 56d1c0e3e62c..d426dd9f7f87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -428,6 +428,7 @@ bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
>  u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
>  struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> +void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state);
>  bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			       const struct intel_crtc_state *pipe_config,
>  			       bool fastset);

-- 
Jani Nikula, Intel
