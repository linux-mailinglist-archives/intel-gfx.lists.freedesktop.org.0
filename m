Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9C77D59AD
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 19:25:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7A9410E43B;
	Tue, 24 Oct 2023 17:25:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B980C10E43B
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 17:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698168321; x=1729704321;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YCYzB9OURR3zg5VVuMj+TEs7jX2+w+QkLFVRjCS6Naw=;
 b=iqpy71gUJ4baEb5CdMFT0VK6XfDjB9Rj625eB9U2Jdw3zAytiP04Agx4
 kFogFeqCyPd/4345aKrJZ2/V1sTK5jtQT1G/v6nbXfH+02yx26WmUGCkJ
 2opI69rrXAKt/zSXH/q2Dyelud1Xi2Je0f3RZKz90SBOs7iPE0AAHFMjS
 ijBU4VjVzmL7I1l+hAVbAiGoS+iPBOxx3VeYHguIrvyvkcX7eM8XfhjTU
 vrQF53CzBRQECKX3X5vEwhMav6tKZvD9j/b9wKvKVn1T2hSKTL1u/qCBU
 JKaC7PMrMT1bV/gyIwAgvAsBYX9g0Tz0y3RXqmIfd+3ZK3pSqD/TarLdl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="418245386"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="418245386"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 10:25:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="1005719529"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="1005719529"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 10:25:19 -0700
Date: Tue, 24 Oct 2023 20:25:10 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTf90dltuBUyhIZs@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-19-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-19-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 18/29] drm/i915/dp: Wait for FEC detected
 status in the sink
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 24, 2023 at 04:09:14AM +0300, Imre Deak wrote:
> As required by the DP standard wait for the sink to detect the FEC
> decode enabling symbol sent by the source.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    | 73 +++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_ddi.h    |  3 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++
>  3 files changed, 80 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index dac3b59758af7..6f9d0f2ff3d9a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -25,6 +25,7 @@
>   *
>   */
>  
> +#include <linux/iopoll.h>
>  #include <linux/string_helpers.h>
>  
>  #include <drm/display/drm_scdc_helper.h>
> @@ -2220,6 +2221,74 @@ static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
>  	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_CONFIGURATION, DP_FEC_READY) <= 0)
>  		drm_dbg_kms(&i915->drm,
>  			    "Failed to set FEC_READY in the sink\n");
> +
> +	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_STATUS,
> +			       DP_FEC_DECODE_EN_DETECTED | DP_FEC_DECODE_DIS_DETECTED) <= 0)
> +		drm_dbg_kms(&i915->drm, "Failed to clear FEC detected flags\n");
> +}
> +
> +static int read_fec_detected_status(struct drm_dp_aux *aux)
> +{
> +	int ret;
> +	u8 status;
> +
> +	ret = drm_dp_dpcd_readb(aux, DP_FEC_STATUS, &status);
> +	if (ret < 0)
> +		return ret;
> +
> +	return status;
> +}
> +
> +static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
> +{
> +	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
> +	int mask = enabled ? DP_FEC_DECODE_EN_DETECTED : DP_FEC_DECODE_DIS_DETECTED;
> +	int status;
> +	int err;
> +
> +	err = readx_poll_timeout(read_fec_detected_status, aux, status,
> +				 status & mask || status < 0,
> +				 10000, 200000);
> +
> +	if (!err && status >= 0)
> +		return;
> +
> +	if (err == -ETIMEDOUT)
> +		drm_err(&i915->drm, "Timeout waiting for FEC %s to get detected\n",
> +			str_enabled_disabled(enabled));
> +	else
> +		drm_dbg_kms(&i915->drm, "FEC detected status read error: %d\n", status);
> +}
> +
> +void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *crtc_state,
> +				   bool enabled)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	int ret;
> +
> +	if (!crtc_state->fec_enable)
> +		return;
> +
> +	if (enabled)
> +		ret = intel_de_wait_for_set(i915, dp_tp_status_reg(encoder, crtc_state),
> +					    DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
> +	else
> +		ret = intel_de_wait_for_clear(i915, dp_tp_status_reg(encoder, crtc_state),
> +					      DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
> +
> +	if (ret)
> +		drm_err(&i915->drm,
> +			"Timeout waiting for FEC live state to get %s\n",
> +			str_enabled_disabled(enabled));
> +
> +	/*
> +	 * At least the Synoptics MST hub doesn't set the detected flag for
> +	 * FEC decoding disabling so skip waiting for that.
> +	 */
> +	if (enabled)
> +		wait_for_fec_detected(&intel_dp->aux, enabled);
>  }
>  
>  static void intel_ddi_enable_fec(struct intel_encoder *encoder,
> @@ -2887,6 +2956,8 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
>  	} else {
>  		disable_ddi_buf(encoder, crtc_state);
>  	}
> +
> +	intel_ddi_wait_for_fec_status(encoder, crtc_state, false);
>  }
>  
>  static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
> @@ -3248,6 +3319,8 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
>  		intel_ddi_enable_transcoder_func(encoder, crtc_state);
>  
> +	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> +
>  	/* Enable/Disable DP2.0 SDP split config before transcoder */
>  	intel_audio_sdp_split_update(crtc_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> index 4999c0ee229bd..e939b93fc81c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -60,6 +60,9 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
>  void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
>  				       const struct intel_crtc_state *crtc_state);
>  void intel_ddi_disable_transcoder_clock(const  struct intel_crtc_state *crtc_state);
> +void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *crtc_state,
> +				   bool enabled);
>  void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
>  			  const struct drm_connector_state *conn_state);
>  bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index b7a9ce40cf59a..a1ea75cd5ea84 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -853,6 +853,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	struct drm_dp_mst_topology_state *mst_state =
>  		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
>  	enum transcoder trans = pipe_config->cpu_transcoder;
> +	bool first_mst_stream = intel_dp->active_mst_links == 1;
>  
>  	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
>  
> @@ -879,6 +880,9 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  
>  	wait_for_act_sent(encoder, pipe_config);
>  
> +	if (first_mst_stream)
> +		intel_ddi_wait_for_fec_status(encoder, pipe_config, true);
> +
>  	drm_dp_add_payload_part2(&intel_dp->mst_mgr, &state->base,
>  				 drm_atomic_get_mst_payload_state(mst_state, connector->port));
>  
> -- 
> 2.39.2
> 
