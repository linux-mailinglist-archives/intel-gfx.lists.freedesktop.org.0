Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 894B5996F7D
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 17:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 226AD10E76E;
	Wed,  9 Oct 2024 15:17:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iCGAf4HP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4131D10E76E;
 Wed,  9 Oct 2024 15:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728487020; x=1760023020;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wjiegIjpw0N8Qe1FpqgViIwP0TuwlWHz8YxfY+tbRjQ=;
 b=iCGAf4HPOxorpZPmVFuZ7hvlGPtpB/SRoNr1riVCrhvwAraeGoHYs5Rg
 Durvkty1NByh3UXt2d3wc5VsZaEJ/th/Z5fN0+YRCVg4sNWgffYXrdGsm
 hxwPTbI9OpjrkWQhF10QXuPWrN6g5oQrvb0TRMOVFVyeisAio0qt1sUZQ
 4emX+EbLYWOC7gPe3IEikDMtDgm+w4mT1n7aUZvTvxi9A+/E/PU7ZNeWK
 gAcktHhVzBrZcWUmCDlSseeYTG4tFTA4/SLKIiZbuP50wU6VPwdxpYSSa
 tqBZ4w7izw8g56V5E1RxjNdTAhYkQhRv2KfWDvCWtMufldLjjhDA1H4H7 Q==;
X-CSE-ConnectionGUID: mn2sBeibQnqIyDpE5Rhpdg==
X-CSE-MsgGUID: AJcdRhFWTqiJpIitS0dHGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="31494108"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="31494108"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 08:17:00 -0700
X-CSE-ConnectionGUID: de4/NUpWQh6PpVCs9u8b0g==
X-CSE-MsgGUID: QkkQPs5HRKWLxXdBhzUynA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76180337"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 08:16:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: nagavenkata.srikanth.v@intel.com
Subject: Re: [v2] drm/i915/dp: Add FEC Enable Retry mechanism
In-Reply-To: <20241008125331.2893681-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008125331.2893681-1-chaitanya.kumar.borah@intel.com>
Date: Wed, 09 Oct 2024 18:16:54 +0300
Message-ID: <87ldyx8fx5.fsf@intel.com>
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

On Tue, 08 Oct 2024, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> From PTL, FEC_DECODE_EN sequence can be sent to a DPRX independent
> of TRANS_CONF enable. This allows us to re-issue an FEC_DECODE_EN
> sequence without re-doing the whole mode set sequence. This separate
> control over FEC_ECODE_EN/DIS sequence enables us to have a retry
> mechanism in case the DPRX does not respond with an FEC_ENABLE
> within the stipulated 5ms.
>
> v2:
>  - Refactor code to avoid duplication and improve readability [Jani]
>  - In case of PTL, wait for FEC status directly after FEC enable [Srikanth]
>  - Wait for FEC_ENABLE_LIVE_STATUS to be cleared before
>    re-enabling FEC [Srikanth]
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

What you have here is really hard to understand.

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    | 79 +++++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_ddi.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +-
>  3 files changed, 67 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index fe1ded6707f9..047816a427d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2256,30 +2256,74 @@ static int read_fec_detected_status(struct drm_dp_aux *aux)
>  	return status;
>  }
>  
> -static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
> +static void retry_fec_enable(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state,
> +		struct drm_dp_aux *aux)

Probably shouldn't pass aux around.

> +{
> +	struct drm_i915_private *i915 = to_i915(aux->drm_dev);

struct intel_display for new code please.

> +	int ret = 0;

Unnecessary initialization.

> +
> +	ret = intel_de_wait_for_clear(i915, dp_tp_status_reg(encoder, crtc_state),
> +				      DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
> +
> +	if (ret)
> +		drm_err(&i915->drm,
> +			"Timeout waiting for FEC live state to get disabled during retry\n");
> +
> +	/* Clear FEC enable */
> +	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
> +		     DP_TP_CTL_FEC_ENABLE, 0);
> +
> +	/* Set FEC enable */
> +	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
> +		     0, DP_TP_CTL_FEC_ENABLE);
> +
> +	ret = intel_de_wait_for_set(i915, dp_tp_status_reg(encoder, crtc_state),
> +				    DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
> +	if (!ret)
> +		drm_dbg_kms(&i915->drm,
> +			    "Timeout waiting for FEC live state to get enabled");
> +}
> +
> +static void wait_for_fec_detected(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state,
> +		struct drm_dp_aux *aux, bool enabled, bool retry)

Multiple bool parameters make for a crappy interface.

>  {
>  	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
>  	int mask = enabled ? DP_FEC_DECODE_EN_DETECTED : DP_FEC_DECODE_DIS_DETECTED;
>  	int status;
>  	int err;
> +	int max_retries = retry ? 3 : 1;
>  
> -	err = readx_poll_timeout(read_fec_detected_status, aux, status,
> -				 status & mask || status < 0,
> -				 10000, 200000);
> +	for (int retrycount = 0; retrycount < max_retries; retrycount++) {
> +		err = readx_poll_timeout(read_fec_detected_status, aux, status,
> +					 status & mask || status < 0,
> +					 retry ? 500 : 10000,
> +					 retry ? 5000 : 200000);
>  
> -	if (!err && status >= 0)
> -		return;
> +		if (!err && status >= 0)
> +			return;
>  
> -	if (err == -ETIMEDOUT)
> -		drm_dbg_kms(&i915->drm, "Timeout waiting for FEC %s to get detected\n",
> -			    str_enabled_disabled(enabled));
> -	else
> -		drm_dbg_kms(&i915->drm, "FEC detected status read error: %d\n", status);
> +		if (err == -ETIMEDOUT) {
> +			drm_dbg_kms(&i915->drm,
> +				    "Timeout waiting for FEC %s to get detected, retrying (%d/%d)\n",
> +				    str_enabled_disabled(enabled), retrycount + 1, max_retries);
> +
> +			if (retry && enabled)
> +				retry_fec_enable(encoder, crtc_state, aux);

A function whose name is "wait for fec detected" really should *not*
retry itself. The point is to report status. The callers are supposed to
act on that. It's really hard to follow what's going on.

> +		} else {
> +			drm_dbg_kms(&i915->drm, "FEC detected status read error: %d\n", status);
> +			return;
> +		}
> +	}
> +
> +	drm_err(&i915->drm, "FEC %s Failed after %d attempts\n",
> +		str_enabled_disabled(enabled), max_retries);
>  }
>  
>  void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *crtc_state,
> -				   bool enabled)
> +				   bool enabled, bool retry)
>  {
>  	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> @@ -2305,7 +2349,7 @@ void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
>  	 * FEC decoding disabling so skip waiting for that.
>  	 */
>  	if (enabled)
> -		wait_for_fec_detected(&intel_dp->aux, enabled);
> +		wait_for_fec_detected(encoder, crtc_state, &intel_dp->aux, enabled, retry);
>  }
>  
>  static void intel_ddi_enable_fec(struct intel_encoder *encoder,
> @@ -2318,6 +2362,9 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
>  
>  	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
>  		     0, DP_TP_CTL_FEC_ENABLE);
> +
> +	if (DISPLAY_VER(dev_priv) >= 30)
> +		intel_ddi_wait_for_fec_status(encoder, crtc_state, true, true);

Ugh. So I was trying to say that I don't want duplication of fec
enable. But you still have that. Both intel_ddi_enable_fec() and
retry_fec_enable() have it.

It's probably intel_ddi_enable_fec() that should try multiple times for
display version 30+. Right here.

Adding the retries in "wait for status" is odd.

Add building blocks for doing parts of what needs to be done, and then
drive them at the high level.

>  }
>  
>  static void intel_ddi_disable_fec(struct intel_encoder *encoder,
> @@ -3010,7 +3057,7 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
>  		disable_ddi_buf(encoder, crtc_state);
>  	}
>  
> -	intel_ddi_wait_for_fec_status(encoder, crtc_state, false);
> +	intel_ddi_wait_for_fec_status(encoder, crtc_state, false, false);
>  }
>  
>  static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
> @@ -3383,6 +3430,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  			     const struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
>  {
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_crtc *pipe_crtc;
>  	int i;
> @@ -3394,7 +3442,8 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  
>  	intel_enable_transcoder(crtc_state);
>  
> -	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> +	if (DISPLAY_VER(i915) < 30)
> +		intel_ddi_wait_for_fec_status(encoder, crtc_state, true, false);

Presumably there's no harm in waiting on all platforms here. It gets
tricky with all the display version checks.

>  
>  	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state, i) {
>  		const struct intel_crtc_state *pipe_crtc_state =
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> index 6d85422bdefe..981e7702e11e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -65,7 +65,7 @@ void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
>  void intel_ddi_disable_transcoder_clock(const  struct intel_crtc_state *crtc_state);
>  void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *crtc_state,
> -				   bool enabled);
> +				   bool enabled, bool retry);
>  void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
>  			  const struct drm_connector_state *conn_state);
>  bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 732d7543ad06..226ac9a73a55 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1289,8 +1289,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  
>  	wait_for_act_sent(encoder, pipe_config);
>  
> -	if (first_mst_stream)
> -		intel_ddi_wait_for_fec_status(encoder, pipe_config, true);
> +	if (first_mst_stream && DISPLAY_VER(dev_priv) < 30)
> +		intel_ddi_wait_for_fec_status(encoder, pipe_config, true, false);

Ditto.

>  
>  	ret = drm_dp_add_payload_part2(&intel_dp->mst_mgr,
>  				       drm_atomic_get_mst_payload_state(mst_state,

-- 
Jani Nikula, Intel
