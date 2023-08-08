Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEC1773A73
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 15:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B98810E1B5;
	Tue,  8 Aug 2023 13:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32BC10E1B5
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 13:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691501017; x=1723037017;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ympumgLyDQOKxj1EvtVKmZYWqEZghjEiviicdoUaAvc=;
 b=OUA/708hL6Q/+lixcAZUP+lsgf0GzaB97NooZjMSfQD3RWI1Ai5qKSjI
 3kUjvgzlMJuRoNkCMuchTrkkwZP/gvsDZwOOzCeC9umKJhfwR1kuSzmdN
 MnCPpTuKjkL59usBIBf9Z2WM6aRDrEG6n0mKvJfo/mQ6KY5BG1zGkeURB
 jxAwxDr3vn2vwcwvNWJa935a3Eaoas8IQtD7JQWvKcnY1DtPBouoD17hG
 tvSmKB0nu9fosl3Q8MMAHSwUQ2F5d+4d4Mwg110nZz5WmUDitDD726/1g
 nTUSVotXzxDcHRjKByntxxLqKTq9wZNalaONoYTiqMa8QM9iawst4VAoZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="369719089"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="369719089"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 06:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="821361466"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="821361466"
Received: from sschwar3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.159])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 06:23:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230804150339.22012-2-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230804150339.22012-1-vinod.govindapillai@intel.com>
 <20230804150339.22012-2-vinod.govindapillai@intel.com>
Date: Tue, 08 Aug 2023 16:23:32 +0300
Message-ID: <877cq5u0q3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: optimize DP 2.0 sdp
 split update config
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

On Fri, 04 Aug 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Optimize DP 2 SDP split config update so that DP-MST code
> path can be supported as well.

What's the optimization?

>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c   |  6 +++---
>  drivers/gpu/drm/i915/display/intel_audio.h   |  3 +--
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  3 ---
>  drivers/gpu/drm/i915/display/intel_display.c |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp.c      | 16 +++++++---------
>  drivers/gpu/drm/i915/display/intel_dp.h      |  2 ++
>  6 files changed, 16 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 3d9c9b4f27f8..19605264a35c 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -759,10 +759,10 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
>  
> -void intel_audio_sdp_split_update(struct intel_encoder *encoder,
> -				  const struct intel_crtc_state *crtc_state)
> +void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	enum transcoder trans = crtc_state->cpu_transcoder;
>  
>  	if (HAS_DP20(i915))
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> index 07d034a981e9..9327954b801e 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -29,7 +29,6 @@ void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
>  void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
>  void intel_audio_init(struct drm_i915_private *dev_priv);
>  void intel_audio_deinit(struct drm_i915_private *dev_priv);
> -void intel_audio_sdp_split_update(struct intel_encoder *encoder,
> -				  const struct intel_crtc_state *crtc_state);
> +void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_AUDIO_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 3cd2191fa794..542bc521669a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3247,9 +3247,6 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
>  		intel_ddi_enable_transcoder_func(encoder, crtc_state);
>  
> -	/* Enable/Disable DP2.0 SDP split config before transcoder */
> -	intel_audio_sdp_split_update(encoder, crtc_state);
> -
>  	intel_enable_transcoder(crtc_state);
>  
>  	intel_crtc_vblank_on(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 43cba98f7753..54afc559f522 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -402,6 +402,9 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
>  
>  	assert_planes_disabled(crtc);
>  
> +	/* Enable/Disable DP2.0 SDP split config before transcoder */
> +	intel_audio_sdp_split_update(new_crtc_state);

The call belongs in the encoder code. Search for "audio" in
intel_display.c; there's almost nothing.

> +
>  	/*
>  	 * A pipe without a PLL won't actually be able to drive bits from
>  	 * a plane.  On ILK+ the pipe PLLs are integrated, so we don't
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 03675620e3ea..4a5be800715c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2232,17 +2232,15 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>  	return ret;
>  }
>  
> -static void
> -intel_dp_audio_compute_config(struct intel_encoder *encoder,
> -			      struct intel_crtc_state *pipe_config,
> -			      struct drm_connector_state *conn_state)
> +void intel_dp_audio_compute_config(struct intel_crtc_state *pipe_config,
> +				   struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	struct drm_connector *connector = conn_state->connector;
>  
> -	pipe_config->sdp_split_enable =
> -		intel_dp_has_audio(encoder, conn_state) &&
> -		intel_dp_is_uhbr(pipe_config);
> +	pipe_config->sdp_split_enable = pipe_config->has_audio &&
> +					intel_dp_is_uhbr(pipe_config);

Hmmh, I don't get this.

I guess the neatest thing to do would be to have a single
intel_dp_audio_compute_config() that would do everything needed for DP
and DP MST, as well as call intel_audio_compute_config().

It think it's somewhat confusing that the compute config hooks call both
intel_audio_compute_config() and intel_dp_audio_compute_config(). Seems
like the latter should call the former.

BR,
Jani.



>  
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDP split enable: %s\n",
>  		    connector->base.id, connector->name,
> @@ -2334,7 +2332,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  		adjusted_mode->crtc_clock /= n;
>  	}
>  
> -	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
> +	intel_dp_audio_compute_config(pipe_config, conn_state);
>  
>  	intel_link_compute_m_n(output_bpp,
>  			       pipe_config->lane_count,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 22099de3ca45..1a73820204ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -65,6 +65,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct link_config_limits *limits,
>  				int timeslots,
>  				bool recompute_pipe_bpp);
> +void intel_dp_audio_compute_config(struct intel_crtc_state *pipe_config,
> +				   struct drm_connector_state *conn_state);
>  bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
>  bool intel_dp_is_edp(struct intel_dp *intel_dp);
>  bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);

-- 
Jani Nikula, Intel Open Source Graphics Center
