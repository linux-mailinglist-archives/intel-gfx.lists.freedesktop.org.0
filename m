Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A245377D100
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 19:30:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 128B610E253;
	Tue, 15 Aug 2023 17:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82C3B10E253
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 17:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692120605; x=1723656605;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=RCz2zqX/VrMitv25v00QbF1kj2OXbwIMxXtbci20Tbs=;
 b=kKqbI4HcpFbRVq3rWKpyjr98gv9V89CD9XDrYNcRx0J7VSYHyp/WRLjB
 opjQi/sL6itd7hDV3YNjXDmjogopbO0EN8Wk4fznSwBFptu0vK/JP7rt3
 GDkqquNhlE58Pkei8aREtvtPBCsApY6e9FvjIww/SSVaTUgLAJKnc53bF
 3QrDOdFTi+KpEN3YQademMM5DE0cTDTumgEeoNvlao9s5D1w6i3yKtq8h
 ejrjYAaWXrZJ7gfCCgNEsJdMY3hDtpYIKSBsQvbWL9HNNjXF53svq9SMW
 uBmEw9DpqaOw3bqCH754+V9D+n8PrH8q5gNKA+RwW6AlKjl8APKDX36a8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="357311607"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="357311607"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:30:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="877421092"
Received: from zlukwins-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.48])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:30:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230815142921.404127-3-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230815142921.404127-1-vinod.govindapillai@intel.com>
 <20230815142921.404127-3-vinod.govindapillai@intel.com>
Date: Tue, 15 Aug 2023 20:29:59 +0300
Message-ID: <87r0o4b4dk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/display: combine has_audio
 check for DP and DP-MST
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

On Tue, 15 Aug 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Combine has_audio check for both DP and DP-MST into a single
> function.

I tried to explain the first step should be combining these two steps in
intel_dp_compute_config():

1)
	pipe_config->has_audio =
		intel_dp_has_audio(encoder, conn_state) &&
		intel_audio_compute_config(encoder, pipe_config, conn_state);

2)
	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);

The latter function should include step 1.

Simplify first, only add the MST complication afterwards. Not vice
versa.

>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 18 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 +--------------
>  3 files changed, 13 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 12bd2f322e62..97a14afbcfe8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2170,16 +2170,17 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
>  		pipe_config->dp_m2_n2.data_m *= pipe_config->splitter.link_count;
>  }
>  
> -static bool intel_dp_has_audio(struct intel_encoder *encoder,
> -			       const struct drm_connector_state *conn_state)
> +bool intel_dp_has_audio(struct intel_encoder *encoder,

Now you've created an intermediate step that requires this to be
non-static, but you also don't add static back afterwards.

> +			const struct drm_connector_state *conn_state,
> +			struct intel_dp *intel_dp)

There should be no need to pass intel_dp as parameter.

BR,
Jani.

>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -	struct intel_connector *connector = intel_dp->attached_connector;
>  	const struct intel_digital_connector_state *intel_conn_state =
>  		to_intel_digital_connector_state(conn_state);
> +	struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
>  
> -	if (!intel_dp_port_has_audio(i915, encoder->port))
> +	if (!intel_dp->is_mst && !intel_dp_port_has_audio(i915, encoder->port))
>  		return false;
>  
>  	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
> @@ -2240,9 +2241,8 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct drm_connector *connector = conn_state->connector;
>  
> -	pipe_config->sdp_split_enable =
> -		intel_dp_has_audio(encoder, conn_state) &&
> -		intel_dp_is_uhbr(pipe_config);
> +	pipe_config->sdp_split_enable = pipe_config->has_audio &&
> +					intel_dp_is_uhbr(pipe_config);
>  
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDP split enable: %s\n",
>  		    connector->base.id, connector->name,
> @@ -2265,7 +2265,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  		pipe_config->has_pch_encoder = true;
>  
>  	pipe_config->has_audio =
> -		intel_dp_has_audio(encoder, conn_state) &&
> +		intel_dp_has_audio(encoder, conn_state, intel_dp) &&
>  		intel_audio_compute_config(encoder, pipe_config, conn_state);
>  
>  	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 22099de3ca45..e7b515b685ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -69,6 +69,9 @@ bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
>  bool intel_dp_is_edp(struct intel_dp *intel_dp);
>  bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
>  bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
> +bool intel_dp_has_audio(struct intel_encoder *encoder,
> +			const struct drm_connector_state *conn_state,
> +			struct intel_dp *intel_dp);
>  enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *dig_port,
>  				  bool long_hpd);
>  void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index e3f176a093d2..8881cfd41ee7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -290,19 +290,6 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
>  	return 0;
>  }
>  
> -static bool intel_dp_mst_has_audio(const struct drm_connector_state *conn_state)
> -{
> -	const struct intel_digital_connector_state *intel_conn_state =
> -		to_intel_digital_connector_state(conn_state);
> -	struct intel_connector *connector =
> -		to_intel_connector(conn_state->connector);
> -
> -	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
> -		return connector->base.display_info.has_audio;
> -	else
> -		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
> -}
> -
>  static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  				       struct intel_crtc_state *pipe_config,
>  				       struct drm_connector_state *conn_state)
> @@ -323,7 +310,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	pipe_config->has_pch_encoder = false;
>  
>  	pipe_config->has_audio =
> -		intel_dp_mst_has_audio(conn_state) &&
> +		intel_dp_has_audio(encoder, conn_state, intel_dp) &&
>  		intel_audio_compute_config(encoder, pipe_config, conn_state);
>  
>  	/*

-- 
Jani Nikula, Intel Open Source Graphics Center
