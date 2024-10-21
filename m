Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A59CA9A6A86
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393A210E505;
	Mon, 21 Oct 2024 13:38:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YduIjEAO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAB1510E509;
 Mon, 21 Oct 2024 13:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729517935; x=1761053935;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+X8nHN0N4PsPjp1q5/BR1yE1bzb+YdPbEFUYYEoRSn4=;
 b=YduIjEAOg0mjRLGmXhUUdHMobdRDeOPjoCjE7o8z/6q7lCaK/2epn6rG
 /A4CdpInq9CDO1BoeeZrzSqxwoe8Vrl1asZoLyRBg2vOifICzjt7aiKxb
 OiC9WJAXQQFZYnhbKTQyzr34ysRHnaNNtxs+nV4ffkpXAiL00camP2Rej
 qP3OSr1bYsKQhNSxYVSxQ7ql88xiuc/4W6NhMfMZh1z2Ezht7SJKCj4Y5
 DlVmIltXBfCIVUGUs+n7HxSGWoRlnvREd3MOP6TlGU6wmITCCs0GHyZon
 h11a4tQXWKOeZkQSANsfFs+KDBAN/n0owXvoVzVC+OMTm0ZpLszeCCn1U g==;
X-CSE-ConnectionGUID: SrtA2+ICSZG0zKmeXGBMsA==
X-CSE-MsgGUID: WeOYjv5ZT46lz3gpqTD5TA==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="39621156"
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="39621156"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:38:55 -0700
X-CSE-ConnectionGUID: qvJM2qb7RgKbbLuKmjgyIg==
X-CSE-MsgGUID: qLkxLp0UT0yU/aDMAdLDbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="79474122"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:38:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, nagavenkata.srikanth.v@intel.com
Subject: Re: [v3] drm/i915/dp: Add FEC Enable Retry mechanism
In-Reply-To: <20241021124500.3691030-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241021124500.3691030-1-chaitanya.kumar.borah@intel.com>
Date: Mon, 21 Oct 2024 16:38:47 +0300
Message-ID: <87msixy3rs.fsf@intel.com>
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

On Mon, 21 Oct 2024, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
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
>  drivers/gpu/drm/i915/display/intel_ddi.c | 57 +++++++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_ddi.h |  6 +--
>  2 files changed, 50 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index fe1ded6707f9..0e1e9e45e180 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2256,7 +2256,7 @@ static int read_fec_detected_status(struct drm_dp_aux *aux)
>  	return status;
>  }
>  
> -static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
> +static int wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
>  {
>  	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
>  	int mask = enabled ? DP_FEC_DECODE_EN_DETECTED : DP_FEC_DECODE_DIS_DETECTED;
> @@ -2268,25 +2268,27 @@ static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
>  				 10000, 200000);
>  
>  	if (!err && status >= 0)
> -		return;
> +		return err;

It might be easier to handle failure cases first with early returns, and
return 0 for success at the end...

>  
>  	if (err == -ETIMEDOUT)
>  		drm_dbg_kms(&i915->drm, "Timeout waiting for FEC %s to get detected\n",
>  			    str_enabled_disabled(enabled));
>  	else
>  		drm_dbg_kms(&i915->drm, "FEC detected status read error: %d\n", status);
> +
> +	return err;

...because this will return success if err == 0 && status < 0, which
should be a failure.

>  }
>  
> -void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> -				   const struct intel_crtc_state *crtc_state,
> -				   bool enabled)
> +int intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state,
> +				  bool enabled)
>  {
>  	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -	int ret;
> +	int ret = 0;
>  
>  	if (!crtc_state->fec_enable)
> -		return;
> +		return ret;
>  
>  	if (enabled)
>  		ret = intel_de_wait_for_set(i915, dp_tp_status_reg(encoder, crtc_state),
> @@ -2297,27 +2299,62 @@ void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
>  
>  	if (ret)
>  		drm_err(&i915->drm,
> -			"Timeout waiting for FEC live state to get %s\n",
> -			str_enabled_disabled(enabled));
> +			"Failure in FEC live state to get %s: %d\n",
> +			str_enabled_disabled(enabled), ret);

Is this a necessary change?

>  
>  	/*
>  	 * At least the Synoptics MST hub doesn't set the detected flag for
>  	 * FEC decoding disabling so skip waiting for that.
>  	 */
>  	if (enabled)
> -		wait_for_fec_detected(&intel_dp->aux, enabled);
> +		ret = wait_for_fec_detected(&intel_dp->aux, enabled);

If we got a failure above, this might mask it.

> +
> +	return ret;
>  }
>  
>  static void intel_ddi_enable_fec(struct intel_encoder *encoder,
>  				 const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);

Would be nice to add struct intel_display *display =
to_intel_display(encoder); and use that for intel_de_rmw, debug logging,
display ver etc. so we don't have to change them again.

> +	int i;
> +	int ret;
>  
>  	if (!crtc_state->fec_enable)
>  		return;
>  
>  	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
>  		     0, DP_TP_CTL_FEC_ENABLE);
> +
> +	if (DISPLAY_VER(dev_priv) < 30)
> +		return;
> +
> +	for (i = 0; i < 3; i++) {
> +		ret = intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> +

No blank line here.

> +		if (!ret)
> +			return;

I think it would increase clarity if you moved the first wait and return
above the loop, and moved the last wait at the end inside the loop.

> +
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Failure waiting for FEC enabled to get detected (%d), retrying (%d/3)\n",
> +			    ret, i + 1);

intel_ddi_wait_for_fec_status() already printed an error. You can just
debug log about retrying, something like "Retry FEC enabling". %d/3 is
is duplicating the count and might go out of sync as stuff gets updated.

> +
> +		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> +			     DP_TP_CTL_FEC_ENABLE, 0);
> +
> +		ret = intel_ddi_wait_for_fec_status(encoder, crtc_state, false);
> +

No blank line here.

> +		if (ret)
> +			drm_err(&dev_priv->drm,
> +				"Timeout waiting for FEC live state to get disabled during retry\n");

intel_ddi_wait_for_fec_status() already printed an error.

> +
> +		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> +			     0, DP_TP_CTL_FEC_ENABLE);
> +	}
> +
> +	ret = intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> +

No blank line here.

> +	if (ret)
> +		drm_err(&dev_priv->drm, "Failed to enable FEC after 3 retries\n");

With the last wait inside the loop, you could just make this an
unconditional failure logging at the end. And drop the numbers, people
can see that in the logs, and it might go out of sync.

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
