Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B95A00AA4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 15:38:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9339310E2EA;
	Fri,  3 Jan 2025 14:38:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c+sxBV2Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3167910E2EA;
 Fri,  3 Jan 2025 14:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735915107; x=1767451107;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=gRd++uaiul0e/yCYq2j3ZCBwPQ1xOo64hoLK2x7IakA=;
 b=c+sxBV2ZOjIjSit0uUL5Z+pNk/gpX4eRoMYs0JFg3oE56OhxLME7l8hZ
 F30cYRXHryYSINVqdaecJK8ABiCssV0By5nJ4ylsVQIsDniR02UMAaRLp
 qDIzin2qpHlFtJSUmVyojZAaMWAUWHNP7/VD0V4cqQBwR5JMLxea1qQWx
 DYXEFFjnU1eYWH3w4+RD5EmB1xdFXCZvsKCmky0WBizyAAo9/PgRnu/d1
 C+dBaKmNxs+X7dpBCmUPCntsH2lhHO9pxzUUn5qUo1bLkZH/8QnZcc1Lw
 4Tbh9SUy5INCDpEs050WmGn20uBptV53p3nP/hc/FceT2GS/iR1jAmUjM A==;
X-CSE-ConnectionGUID: CmEatoh/Q566ey3G27NIQQ==
X-CSE-MsgGUID: KYnFscCxS1W0c5QnyaE9yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36314921"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36314921"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 06:38:27 -0800
X-CSE-ConnectionGUID: rfmQAqOARsK4rUeANvDHmQ==
X-CSE-MsgGUID: 67vjwSAySQ6bgz9E/UoGgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="106847162"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 06:38:26 -0800
Date: Fri, 3 Jan 2025 16:39:17 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 12/16] drm/i915/ddi: enable ACT handling for 128b/132b
 SST
Message-ID: <Z3f2lT_X49w7lSv6@ideak-desk.fi.intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
 <b0226471f9445d988917cee49dbbd93a1493f3c7.1735912293.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b0226471f9445d988917cee49dbbd93a1493f3c7.1735912293.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 03, 2025 at 03:52:35PM +0200, Jani Nikula wrote:
> Add ACT handling for 128b/132b SST enable/disable.
> 
> This is preparation for enabling 128b/132b SST. This path is not
> reachable yet.
> 
> v2:
> - Check for !is_hdmi (Imre)
> - Add disable sequence (Imre)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 29 ++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index cdfb7caadcee..541e89cfc347 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3199,7 +3199,9 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);

The above could've been scoped the same way as in intel_ddi_enable(),
but the patch looks ok:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  	struct intel_crtc *pipe_crtc;
> +	bool is_hdmi = intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI);
>  	int i;
>  
>  	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
> @@ -3211,6 +3213,20 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>  
>  	intel_disable_transcoder(old_crtc_state);
>  
> +	/* 128b/132b SST */
> +	if (!is_hdmi && intel_dp_is_uhbr(old_crtc_state)) {
> +		/* VCPID 1, start slot 0 for 128b/132b, clear */
> +		drm_dp_dpcd_write_payload(&intel_dp->aux, 1, 0, 0);
> +
> +		intel_ddi_clear_act_sent(encoder, old_crtc_state);
> +
> +		intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, old_crtc_state->cpu_transcoder),
> +			     TRANS_DDI_DP_VC_PAYLOAD_ALLOC, 0);
> +
> +		intel_ddi_wait_for_act_sent(encoder, old_crtc_state);
> +		drm_dp_dpcd_poll_act_handled(&intel_dp->aux, 0);
> +	}
> +
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>  
>  	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
> @@ -3493,6 +3509,19 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>  	/* Enable/Disable DP2.0 SDP split config before transcoder */
>  	intel_audio_sdp_split_update(crtc_state);
>  
> +	/* 128b/132b SST */
> +	if (!is_hdmi && intel_dp_is_uhbr(crtc_state)) {
> +		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +		intel_ddi_clear_act_sent(encoder, crtc_state);
> +
> +		intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, cpu_transcoder), 0,
> +			     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
> +
> +		intel_ddi_wait_for_act_sent(encoder, crtc_state);
> +		drm_dp_dpcd_poll_act_handled(&intel_dp->aux, 0);
> +	}
> +
>  	intel_enable_transcoder(crtc_state);
>  
>  	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> -- 
> 2.39.5
> 
