Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 467559AE0BF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 11:30:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3558E10E8E4;
	Thu, 24 Oct 2024 09:30:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oK3vaeQn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1BA710E8E1;
 Thu, 24 Oct 2024 09:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729762208; x=1761298208;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=VIAWnOT7yhKdqG1JVmEgroGJbK1+W4F0RAOiWRFw8Pw=;
 b=oK3vaeQnDL/8eBYAP4JTx9kW5RSmMG9uRYWl9z7fW3KVwCI2wE2EGC8X
 42QM7Oq9QZ3riA3vonlOoAOs1q8okabhuGbnKpf16JmzDMuSWg3NGF0Jx
 vUFESv0KN1TyMGW7PTYG1QWobcp8BUL2vcp8RjC2VnViGe3SNGHAFZync
 yoFH8jr4SCTb8P/RSYwt0s2BPP43IXIcRUAeG8pukhpZgzBzhNoAAaImD
 k6yealQNNF7gT+lky0Zb1WYSrsOQNcJvMn96C9MbNLSVVWwUNNZFfD5bW
 560TM4imSqjcIfioONfxfLTTceEK60e5+MicHhYgX2DUX3ZAjoR0W3XzR w==;
X-CSE-ConnectionGUID: Bq9SnjVLSdexUZFGYQX0OA==
X-CSE-MsgGUID: pbUMyxubTQejTtNa/qsvQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="28841352"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="28841352"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 02:30:08 -0700
X-CSE-ConnectionGUID: X5z3Ih9gQT6NHffI5vqHuw==
X-CSE-MsgGUID: 4N5IbP4hT7ij20Wai61rNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80465809"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.151])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 02:30:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: nagavenkata.srikanth.v@intel.com, imre.deak@intel.com
Subject: Re: [v4] drm/i915/dp: Add FEC Enable Retry mechanism
In-Reply-To: <20241024061002.4085137-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241024061002.4085137-1-chaitanya.kumar.borah@intel.com>
Date: Thu, 24 Oct 2024 12:30:02 +0300
Message-ID: <87zfmtsvad.fsf@intel.com>
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

On Thu, 24 Oct 2024, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> Currently, even though there is a bit to control FEC enable/disable
> individually, the FEC Decode Enable sequence is sent by the SOC only
> once TRANS_CONF enable is set. This ties the FEC enabling too tightly
> to modeset and therefore cannot be re-issued (in case of failure)
> without a modeset.
>
> From PTL, FEC_DECODE_EN sequence can be sent to a DPRX independent
> of TRANS_CONF enable. This allows us to re-issue an FEC_DECODE_EN
> sequence without a modeset. Hence allowing us to have a retry
> mechanism in case the DPRX does not respond with an FEC_ENABLE
> within certain amount of time.
>
> While at it, replace struct drm_i915_private with struct intel_display
>
> v4:
>  - More code refactor [Jani]
>  - use struct intel_display [Jani]
>  - Optimize logging [Jani]
>
> v3:
>  - Make the commit message more legible [Jani]
>  - Refactor code to re-use existing code [Jani]
>  - Do away with platform dependent FEC enable checks [Jani]
>
> v2:
>  - Refactor code to avoid duplication and improve readability [Jani]
>  - In case of PTL, wait for FEC status directly after FEC enable [Srikanth]
>  - Wait for FEC_ENABLE_LIVE_STATUS to be cleared before
>    re-enabling FEC [Srikanth]
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 81 +++++++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_ddi.h |  6 +-
>  2 files changed, 61 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index fe1ded6707f9..ce95263d74ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2256,9 +2256,9 @@ static int read_fec_detected_status(struct drm_dp_aux *aux)
>  	return status;
>  }
>  
> -static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
> +static int wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
>  {
> -	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
> +	struct intel_display *display = to_intel_display(aux->drm_dev);
>  	int mask = enabled ? DP_FEC_DECODE_EN_DETECTED : DP_FEC_DECODE_DIS_DETECTED;
>  	int status;
>  	int err;
> @@ -2267,57 +2267,92 @@ static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
>  				 status & mask || status < 0,
>  				 10000, 200000);
>  
> -	if (!err && status >= 0)
> -		return;
> +	if (err || status < 0) {
> +		drm_dbg_kms(display->drm,
> +			    "Failed waiting for FEC %s to get detected: %d (status %d)\n",
> +			    str_enabled_disabled(enabled), err, status);
> +		return err ? err : status;
> +	}
>  
> -	if (err == -ETIMEDOUT)
> -		drm_dbg_kms(&i915->drm, "Timeout waiting for FEC %s to get detected\n",
> -			    str_enabled_disabled(enabled));
> -	else
> -		drm_dbg_kms(&i915->drm, "FEC detected status read error: %d\n", status);
> +	return 0;
>  }
>  
> -void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> -				   const struct intel_crtc_state *crtc_state,
> -				   bool enabled)
> +int intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state,
> +				  bool enabled)
>  {
> -	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	int ret;
>  
>  	if (!crtc_state->fec_enable)
> -		return;
> +		return 0;
>  
>  	if (enabled)
> -		ret = intel_de_wait_for_set(i915, dp_tp_status_reg(encoder, crtc_state),
> +		ret = intel_de_wait_for_set(display, dp_tp_status_reg(encoder, crtc_state),
>  					    DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
>  	else
> -		ret = intel_de_wait_for_clear(i915, dp_tp_status_reg(encoder, crtc_state),
> +		ret = intel_de_wait_for_clear(display, dp_tp_status_reg(encoder, crtc_state),
>  					      DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
>  
> -	if (ret)
> -		drm_err(&i915->drm,
> +	if (ret) {
> +		drm_err(display->drm,
>  			"Timeout waiting for FEC live state to get %s\n",
>  			str_enabled_disabled(enabled));
> -
> +		return ret;
> +	}

So the functional change here is that we skip the below wait if we timed
out above. I think it's probably fine.

I also think the patch evolved to be considerably neater than the
original. What do you think?

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  	/*
>  	 * At least the Synoptics MST hub doesn't set the detected flag for
>  	 * FEC decoding disabling so skip waiting for that.
>  	 */
> -	if (enabled)
> -		wait_for_fec_detected(&intel_dp->aux, enabled);
> +	if (enabled) {
> +		ret = wait_for_fec_detected(&intel_dp->aux, enabled);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
>  }
>  
>  static void intel_ddi_enable_fec(struct intel_encoder *encoder,
>  				 const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
> +	int i;
> +	int ret;
>  
>  	if (!crtc_state->fec_enable)
>  		return;
>  
> -	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> +	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
>  		     0, DP_TP_CTL_FEC_ENABLE);
> +
> +	if (DISPLAY_VER(display) < 30)
> +		return;
> +
> +	ret = intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> +	if (!ret)
> +		return;
> +
> +	for (i = 0; i < 3; i++) {
> +		drm_dbg_kms(display->drm, "Retry FEC enabling\n");
> +
> +		intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> +			     DP_TP_CTL_FEC_ENABLE, 0);
> +
> +		ret = intel_ddi_wait_for_fec_status(encoder, crtc_state, false);
> +		if (ret)
> +			continue;
> +
> +		intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> +			     0, DP_TP_CTL_FEC_ENABLE);
> +
> +		ret = intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> +		if (!ret)
> +			return;
> +	}
> +
> +	drm_err(display->drm, "Failed to enable FEC after retries\n");
>  }
>  
>  static void intel_ddi_disable_fec(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> index 6d85422bdefe..640851d46b1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -63,9 +63,9 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
>  void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
>  				       const struct intel_crtc_state *crtc_state);
>  void intel_ddi_disable_transcoder_clock(const  struct intel_crtc_state *crtc_state);
> -void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> -				   const struct intel_crtc_state *crtc_state,
> -				   bool enabled);
> +int intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state,
> +				  bool enabled);
>  void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
>  			  const struct drm_connector_state *conn_state);
>  bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector);

-- 
Jani Nikula, Intel
