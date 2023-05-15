Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D09F9702972
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 11:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E866310E197;
	Mon, 15 May 2023 09:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D6010E197
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 09:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684143966; x=1715679966;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=K/UrMHqVQHnXSxCJy/L4ffRJjA6eiyfWCz2jMycKOkY=;
 b=eWmihXgCfnn0vhTU9anHnS41+9AU6BXHuKg+jfxU+Q9q84t29wbRPFNT
 JbiG8UjMctPTc6RhK/lX+Kd0FCghYqhCpBwCiRk9RA57trr6jhBEEbANl
 wHjW8+gChYFjZ/OJFAGy2AB1NIvw5equWrxQ5p5jA8mvLlgEbapMUUzu6
 /Y4NviOYTxWTjZoMBmjHu7EwM+U7INKx/HnuMRxl2Vp34hpMuXcWkMJ2r
 BfoWgVJ65IomryAvvzxag7fcy5GdFZRId0nW20mFTjduDrhshu3J5zhop
 seLhke+I3sN4XfX94Slh99hJRVI1+7P78OHkz1jDAtF57ZwKBpbMkrt8J w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="340510015"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="340510015"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 02:46:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="694947207"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="694947207"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 02:46:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230515051557.672109-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230515051557.672109-1-suraj.kandpal@intel.com>
 <20230515051557.672109-2-suraj.kandpal@intel.com>
Date: Mon, 15 May 2023 12:46:01 +0300
Message-ID: <87v8guhqqu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915/hdcp: add
 intel_atomic_state argument to hdcp_enable function
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

On Mon, 15 May 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Pass all the parameter in intel_encoder->enable()
> to intel_hdcp_enable as we need intel_atomic_state
> later down to get acquire_ctx.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    |  4 +---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +---
>  drivers/gpu/drm/i915/display/intel_hdcp.c   | 16 +++++++++-------
>  drivers/gpu/drm/i915/display/intel_hdcp.h   |  6 ++++--
>  4 files changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 29e4bfab4635..2d3071e46567 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3264,9 +3264,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  	/* Enable hdcp if it's desired */
>  	if (conn_state->content_protection ==
>  	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> -		intel_hdcp_enable(to_intel_connector(conn_state->connector),
> -				  crtc_state,
> -				  (u8)conn_state->hdcp_content_type);
> +		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>  }
>  
>  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 2c49d9ab86a2..da1666c7c2ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -800,9 +800,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	/* Enable hdcp if it's desired */
>  	if (conn_state->content_protection ==
>  	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> -		intel_hdcp_enable(to_intel_connector(conn_state->connector),
> -				  pipe_config,
> -				  (u8)conn_state->hdcp_content_type);
> +		intel_hdcp_enable(state, encoder, pipe_config, conn_state);
>  }
>  
>  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 650232c4892b..e2c5781ad0ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2330,10 +2330,14 @@ int intel_hdcp_init(struct intel_connector *connector,
>  	return 0;
>  }
>  
> -int intel_hdcp_enable(struct intel_connector *connector,
> -		      const struct intel_crtc_state *pipe_config, u8 content_type)
> +int intel_hdcp_enable(struct intel_atomic_state *state,
> +		      struct intel_encoder *encoder,
> +		      const struct intel_crtc_state *pipe_config,
> +		      const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	unsigned long check_link_interval = DRM_HDCP_CHECK_PERIOD_MS;
> @@ -2352,7 +2356,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
>  	mutex_lock(&dig_port->hdcp_mutex);
>  	drm_WARN_ON(&dev_priv->drm,
>  		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
> -	hdcp->content_type = content_type;
> +	hdcp->content_type = (u8)conn_state->content_type;
>  
>  	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
>  		hdcp->cpu_transcoder = pipe_config->mst_master_transcoder;
> @@ -2483,9 +2487,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  	}
>  
>  	if (desired_and_not_enabled || content_protection_type_changed)
> -		intel_hdcp_enable(connector,
> -				  crtc_state,
> -				  (u8)conn_state->hdcp_content_type);
> +		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>  }
>  
>  void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index 8f53b0c7fe5c..ce283f4f69fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -28,8 +28,10 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
>  int intel_hdcp_init(struct intel_connector *connector,
>  		    struct intel_digital_port *dig_port,
>  		    const struct intel_hdcp_shim *hdcp_shim);
> -int intel_hdcp_enable(struct intel_connector *connector,
> -		      const struct intel_crtc_state *pipe_config, u8 content_type);
> +int intel_hdcp_enable(struct intel_atomic_state *state,
> +		      struct intel_encoder *encoder,
> +		      const struct intel_crtc_state *pipe_config,
> +		      const struct drm_connector_state *conn_state);
>  int intel_hdcp_disable(struct intel_connector *connector);
>  void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  			    struct intel_encoder *encoder,

-- 
Jani Nikula, Intel Open Source Graphics Center
