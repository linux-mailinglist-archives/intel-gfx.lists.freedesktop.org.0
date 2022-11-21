Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BADE632340
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 14:16:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 344B110E2C9;
	Mon, 21 Nov 2022 13:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999B610E2C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 13:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669036558; x=1700572558;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=z2ZLuAzrbiBDrc8ZrxT9UyfnADWOHnsr0VEquAOYKbU=;
 b=UJtRtWCN315bgmvcaG8uy7CQZHh3hrDjoEr9TP6m9Q9RqPMT2pX47hZP
 Oz9FUQlEHdjVviSFjSK5qYAsaE9efyEG/bBrExndgCl7rZENUgOmB3+wL
 xiDTpvGu4kCfwLlTMAOSoAbdwagMu9yphTGCmyD8V54IYZ3YJsZ5mgkAs
 w17JHFC9+w9VeejZXr6WDe0KAAJ0xxbyZQpZsjKV4LY5faozO9bhDDI5I
 5oGtnGQgUexUYH+iZmiHUW4Y1o4LqKVs12mLpr+Ok53vcJt2Ij/UNjMqo
 FIU8SDvYXHWE+Tpc7UxZhgUQJfwzX3wmZ5MTu8SBuWr/dNp5U/SOIP5+0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="312254739"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="312254739"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 05:15:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="641015823"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="641015823"
Received: from davermux-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.1.229])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 05:15:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221101112120.1138595-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221101112120.1138595-1-vinod.govindapillai@intel.com>
Date: Mon, 21 Nov 2022 15:15:48 +0200
Message-ID: <87pmdgzbwb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Enable SDP split for DP2.0
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

On Tue, 01 Nov 2022, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Enable the SDP split configuration for DP2.0.
>
> v2: Move the register handling out of compute config function (JaniN)
>
> v3: Patch styling and register access based on platform support (JaniN)
>
> v4: Rebased
>
> Bspec: 67768
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_audio.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  3 +++
>  .../drm/i915/display/intel_display_types.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 19 +++++++++++++++++++
>  5 files changed, 38 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index c3176c9c89a6..415ac3960272 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -798,6 +798,18 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
>  
> +void intel_audio_sdp_split_update(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum transcoder trans = crtc_state->cpu_transcoder;
> +	u32 clear = crtc_state->sdp_split_enable ? 0 : AUD_ENABLE_SDP_SPLIT;
> +	u32 set = crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0;
> +
> +	if (HAS_DP20(i915))
> +		intel_de_rmw(i915, AUD_DP_2DOT0_CTRL(trans), clear, set);

It's customary to unconditionally set the clear mask.

		intel_de_rmw(i915, AUD_DP_2DOT0_CTRL(trans), AUD_ENABLE_SDP_SPLIT,
			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);

With that fixed,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +}

I'm still not entirely happy about adding this very specific function to
intel_audio.[ch] interfaces, but I guess it's simple enough to change if
we find a nicer place for it.

> +
>  /**
>   * intel_audio_codec_enable - Enable the audio codec for HD audio
>   * @encoder: encoder on which to enable audio
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> index 63b22131dc45..1b87257c6a17 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -22,5 +22,7 @@ void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
>  void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
>  void intel_audio_init(struct drm_i915_private *dev_priv);
>  void intel_audio_deinit(struct drm_i915_private *dev_priv);
> +void intel_audio_sdp_split_update(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_AUDIO_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index e95bde5cf060..c84b7b0e4c19 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2917,6 +2917,9 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  
>  	intel_vrr_enable(encoder, crtc_state);
>  
> +	/* Enable/Disable DP2.0 SDP split config before transcoder */
> +	intel_audio_sdp_split_update(encoder, crtc_state);
> +
>  	intel_enable_transcoder(crtc_state);
>  
>  	intel_crtc_vblank_on(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 7f18c052ec16..07eab71d3fc2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1286,6 +1286,8 @@ struct intel_crtc_state {
>  	/* Forward Error correction State */
>  	bool fec_enable;
>  
> +	bool sdp_split_enable;
> +
>  	/* Pointer to master transcoder in case of tiled displays */
>  	enum transcoder master_transcoder;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7400d6b4c587..8a1af1294c6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2008,6 +2008,23 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>  	return ret;
>  }
>  
> +static void
> +intel_dp_audio_compute_config(struct intel_encoder *encoder,
> +			      struct intel_crtc_state *pipe_config,
> +			      struct drm_connector_state *conn_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct drm_connector *connector = conn_state->connector;
> +
> +	pipe_config->sdp_split_enable =
> +		    intel_dp_has_audio(encoder, pipe_config, conn_state) &&
> +		    intel_dp_is_uhbr(pipe_config);

The indentation is probably off here.

> +
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDP split enable: %s\n",
> +		    connector->base.id, connector->name,
> +		    str_yes_no(pipe_config->sdp_split_enable));
> +}
> +
>  int
>  intel_dp_compute_config(struct intel_encoder *encoder,
>  			struct intel_crtc_state *pipe_config,
> @@ -2091,6 +2108,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  		adjusted_mode->crtc_clock /= n;
>  	}
>  
> +	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
> +
>  	intel_link_compute_m_n(output_bpp,
>  			       pipe_config->lane_count,
>  			       adjusted_mode->crtc_clock,

-- 
Jani Nikula, Intel Open Source Graphics Center
