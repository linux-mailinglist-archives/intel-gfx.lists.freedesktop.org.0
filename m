Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E9297E663
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 09:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C0310E38D;
	Mon, 23 Sep 2024 07:10:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ClAP6fda";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16C210E38D;
 Mon, 23 Sep 2024 07:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727075418; x=1758611418;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=dsW1fSPQJneGrHgNPbXnnes4+Tif3JEMOALoC5rB9xo=;
 b=ClAP6fdaBWp5BenqG5lPUJMV3aMW0AiEC+hGiHqPrElbcoFxmtWen9y1
 W06epQlmoEAstGcntQbpdZXMG0/mmYcGNCmy1Yvk9g713GLZkTig/tb+S
 u33aa12VRqc9Ri04+vP5RMMt44eLZfdp18RvDRpTpa4SWCvkyw/mcGaQN
 gGewXpd9DTYHTfLT5dAxkzIhY1fkSpfZ0o+o9wPTPrnOYWnqb/BxjJGke
 bFobGWMLu2QnWOc7QMBOm/dXZeFh228Li4EvyuB/sM9fPmfpp0IxEawh0
 /3bBLrnA3romntcfvTMUbKjW/qJu7C68emKpPFAIGlRsuI+YcjGBg6aOA g==;
X-CSE-ConnectionGUID: ogOSretZQjeLYxZ0E/bSVg==
X-CSE-MsgGUID: yq7HRMeRQ1q6mNavBUzKPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="43525156"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="43525156"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 00:10:17 -0700
X-CSE-ConnectionGUID: bmsAbcTGRfO2WbnfEFaUwQ==
X-CSE-MsgGUID: ptlmt9UrR7CIH651x16mLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="70561344"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 00:10:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
In-Reply-To: <20240923045218.1813255-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240923045218.1813255-1-chaitanya.kumar.borah@intel.com>
Date: Mon, 23 Sep 2024 10:10:12 +0300
Message-ID: <87y13i7smj.fsf@intel.com>
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

On Mon, 23 Sep 2024, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> From PTL, FEC_DECODE_EN sequence can be sent to a DPRX independent
> of TRANS_CONF enable. This allows us to re-issue an FEC_DECODE_EN
> sequence without re-doing the whole mode set sequence. This separate
> control over FEC_ECODE_EN/DIS sequence enables us to have a retry
> mechanism in case the DPRX does not respond with an FEC_ENABLE
> within the stipulated 5ms.
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 61 +++++++++++++++++++++++-
>  1 file changed, 59 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 85e519a21542..589acea9906a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -78,6 +78,8 @@
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  
> +#define FEC_RETRY_COUNT 3

If there's only one user, I wouldn't bother with a macro.

> +
>  static const u8 index_to_dp_signal_levels[] = {
>  	[0] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_0,
>  	[1] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_1,
> @@ -2255,6 +2257,57 @@ static int read_fec_detected_status(struct drm_dp_aux *aux)
>  	return status;
>  }
>  
> +static void retry_fec_enable(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state,
> +			     struct drm_dp_aux *aux)
> +{
> +	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
> +	int ret = 0;
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
> +static void wait_for_fec_detected_with_retry(struct intel_encoder *encoder,
> +					     const struct intel_crtc_state *crtc_state,
> +					     struct drm_dp_aux *aux)
> +{
> +	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
> +	int status;
> +	int err;
> +	int retrycount = 0;
> +
> +	do {
> +		err = readx_poll_timeout(read_fec_detected_status, aux, status,
> +					 status & DP_FEC_DECODE_EN_DETECTED || status < 0,
> +					 500, 5000);
> +
> +		if (!err && status >= 0)
> +			return;
> +
> +		if (err == -ETIMEDOUT) {
> +			drm_dbg_kms(&i915->drm,
> +				    "Timeout waiting for FEC ENABLE to get detected, retrying\n");
> +			retry_fec_enable(encoder, crtc_state, aux);
> +		} else {
> +			drm_dbg_kms(&i915->drm, "FEC detected status read error: %d\n", status);
> +		}
> +	} while (retrycount++ < FEC_RETRY_COUNT);

Please use a regular for loop with for (i = 0; i < N; i++) so even I can
look at it and know in an instant how many times it's going to loop.

> +
> +	drm_err(&i915->drm, "FEC enable Failed after Retry\n");
> +}
> +

There's just way, way too much duplication between the above two
functions and the existing intel_ddi_wait_for_fec_status() and
wait_for_fec_detected(). We'll want *one* code path with the retry baked
in, with no retries for older platforms.

BR,
Jani.


>  static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
>  {
>  	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
> @@ -2303,8 +2356,12 @@ void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
>  	 * At least the Synoptics MST hub doesn't set the detected flag for
>  	 * FEC decoding disabling so skip waiting for that.
>  	 */
> -	if (enabled)
> -		wait_for_fec_detected(&intel_dp->aux, enabled);
> +	if (enabled) {
> +		if (DISPLAY_VER(i915) >= 30)
> +			wait_for_fec_detected_with_retry(encoder, crtc_state, &intel_dp->aux);
> +		else
> +			wait_for_fec_detected(&intel_dp->aux, enabled);
> +	}
>  }
>  
>  static void intel_ddi_enable_fec(struct intel_encoder *encoder,

-- 
Jani Nikula, Intel
